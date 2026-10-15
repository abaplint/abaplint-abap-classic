* TS: src/abap/2_statements/statements/open_dataset.ts:7:1 OpenDataset
CLASS zcl_lnt_st_open_dataset DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_open_dataset IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = |IN|.
    CLEAR t4.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA(t10) = |LEGACY|.
    CLEAR t9.
    CREATE OBJECT t9.
    t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t9->sval = t10.
    t8 = zcl_lnt_st_combi_module=>opt( i_first = t9 ).
    CLEAR t7.
    IF t8 IS BOUND.
      DATA t11 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t11.
      DATA t12 TYPE REF TO object.
      CLEAR t12.
      CLEAR t11.
      t12 = t8.
      TRY.
          t7 ?= t12.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7 IS NOT BOUND.
        TRY.
            t11 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t11 IS BOUND.
          t7 = t11->source( ).
        ENDIF.
        IF t7 IS NOT BOUND.
          CREATE OBJECT t7.
          t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->oval = t8.
        ENDIF.
      ENDIF.
    ENDIF.
    t6 = t7.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t14.
    CREATE OBJECT t14.
    t13 = t14.
    DATA(t15) = t13.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA(t20) = |BINARY MODE|.
    CLEAR t19.
    CREATE OBJECT t19.
    t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t19->sval = t20.
    t18 = t19.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA(t23) = |TEXT MODE|.
    CLEAR t22.
    CREATE OBJECT t22.
    t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t22->sval = t23.
    t21 = t22.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t25.
    CREATE OBJECT t25.
    t24 = t25.
    DATA t26 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t26.
    DATA(t27) = t18.
    DATA(t28) = t21.
    DATA(t29) = t24.
    t26 = zcl_lnt_st_combi_module=>alt_prio( i_first = t27 i_second = t28 i_rest = t29 ).
    t17 = t26.
    CLEAR t16.
    IF t17 IS BOUND.
      DATA t30 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t30.
      DATA t31 TYPE REF TO object.
      CLEAR t31.
      CLEAR t30.
      t31 = t17.
      TRY.
          t16 ?= t31.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t16 IS NOT BOUND.
        TRY.
            t30 ?= t17.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t30 IS BOUND.
          t16 = t30->source( ).
        ENDIF.
        IF t16 IS NOT BOUND.
          CREATE OBJECT t16.
          t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t16->oval = t17.
        ENDIF.
      ENDIF.
    ENDIF.
    t15->load( ).
    APPEND t16 TO t15->items.
    t15->save( ).
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t32.
    DATA(t33) = t3.
    DATA(t34) = t6.
    DATA(t35) = t13.
    t32 = zcl_lnt_st_combi_module=>seq( i_first = t33 i_second = t34 i_rest = t35 ).
    t2 = t32.
    t1 = t2.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t36.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA(t40) = |CODE PAGE|.
    CLEAR t39.
    CREATE OBJECT t39.
    t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t39->sval = t40.
    t38 = t39.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA(t43) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t42.
    IF t43 IS BOUND.
      CREATE OBJECT t42.
      t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t42->cval = t43.
    ENDIF.
    t41 = t42.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t45.
    CREATE OBJECT t45.
    t44 = t45.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t46.
    DATA(t47) = t38.
    DATA(t48) = t41.
    DATA(t49) = t44.
    t46 = zcl_lnt_st_combi_module=>seq( i_first = t47 i_second = t48 i_rest = t49 ).
    t37 = t46.
    t36 = t37.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t50.
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA(t54) = |FOR|.
    CLEAR t53.
    CREATE OBJECT t53.
    t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t53->sval = t54.
    t52 = t53.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA(t60) = |OUTPUT|.
    CLEAR t59.
    CREATE OBJECT t59.
    t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t59->sval = t60.
    t58 = t59.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA(t63) = |INPUT|.
    CLEAR t62.
    CREATE OBJECT t62.
    t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t62->sval = t63.
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
    DATA(t68) = |UPDATE|.
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
    DATA(t71) = |APPENDING|.
    CLEAR t70.
    CREATE OBJECT t70.
    t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t70->sval = t71.
    t69->load( ).
    APPEND t70 TO t69->items.
    t69->save( ).
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t72.
    DATA(t73) = t58.
    DATA(t74) = t61.
    DATA(t75) = t64.
    t72 = zcl_lnt_st_combi_module=>alt_prio( i_first = t73 i_second = t74 i_rest = t75 ).
    t57 = t72.
    CLEAR t56.
    IF t57 IS BOUND.
      DATA t76 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t76.
      DATA t77 TYPE REF TO object.
      CLEAR t77.
      CLEAR t76.
      t77 = t57.
      TRY.
          t56 ?= t77.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t56 IS NOT BOUND.
        TRY.
            t76 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t76 IS BOUND.
          t56 = t76->source( ).
        ENDIF.
        IF t56 IS NOT BOUND.
          CREATE OBJECT t56.
          t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t56->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    t55 = t56.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t79.
    CREATE OBJECT t79.
    t78 = t79.
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t80.
    DATA(t81) = t52.
    DATA(t82) = t55.
    DATA(t83) = t78.
    t80 = zcl_lnt_st_combi_module=>seq( i_first = t81 i_second = t82 i_rest = t83 ).
    t51 = t80.
    t50 = t51.
    DATA t84 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t84.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t85.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA(t88) = |ENCODING|.
    CLEAR t87.
    CREATE OBJECT t87.
    t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t87->sval = t88.
    t86 = t87.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA(t94) = |DEFAULT|.
    CLEAR t93.
    CREATE OBJECT t93.
    t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t93->sval = t94.
    t92 = t93.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    DATA(t97) = |UTF-8|.
    CLEAR t96.
    CREATE OBJECT t96.
    t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t96->sval = t97.
    t95 = t96.
    DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t99.
    CREATE OBJECT t99.
    t98 = t99.
    DATA(t100) = t98.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA(t102) = |NON-UNICODE|.
    CLEAR t101.
    CREATE OBJECT t101.
    t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t101->sval = t102.
    t100->load( ).
    APPEND t101 TO t100->items.
    t100->save( ).
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t103.
    DATA(t104) = t92.
    DATA(t105) = t95.
    DATA(t106) = t98.
    t103 = zcl_lnt_st_combi_module=>alt_prio( i_first = t104 i_second = t105 i_rest = t106 ).
    t91 = t103.
    CLEAR t90.
    IF t91 IS BOUND.
      DATA t107 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t107.
      DATA t108 TYPE REF TO object.
      CLEAR t108.
      CLEAR t107.
      t108 = t91.
      TRY.
          t90 ?= t108.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t90 IS NOT BOUND.
        TRY.
            t107 ?= t91.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t107 IS BOUND.
          t90 = t107->source( ).
        ENDIF.
        IF t90 IS NOT BOUND.
          CREATE OBJECT t90.
          t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t90->oval = t91.
        ENDIF.
      ENDIF.
    ENDIF.
    t89 = t90.
    DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t109.
    DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t110.
    CREATE OBJECT t110.
    t109 = t110.
    DATA t111 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t111.
    DATA(t112) = t86.
    DATA(t113) = t89.
    DATA(t114) = t109.
    t111 = zcl_lnt_st_combi_module=>seq( i_first = t112 i_second = t113 i_rest = t114 ).
    t85 = t111.
    t84 = t85.
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t115.
    DATA t116 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t116.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA(t119) = |AT POSITION|.
    CLEAR t118.
    CREATE OBJECT t118.
    t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t118->sval = t119.
    t117 = t118.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    DATA(t122) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t121.
    IF t122 IS BOUND.
      CREATE OBJECT t121.
      t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t121->cval = t122.
    ENDIF.
    t120 = t121.
    DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t123.
    DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t124.
    CREATE OBJECT t124.
    t123 = t124.
    DATA t125 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t125.
    DATA(t126) = t117.
    DATA(t127) = t120.
    DATA(t128) = t123.
    t125 = zcl_lnt_st_combi_module=>seq( i_first = t126 i_second = t127 i_rest = t128 ).
    t116 = t125.
    t115 = t116.
    DATA t129 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t129.
    DATA t130 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA(t133) = |MESSAGE|.
    CLEAR t132.
    CREATE OBJECT t132.
    t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t132->sval = t133.
    t131 = t132.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t135.
    DATA(t136) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
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
    DATA t139 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t139.
    DATA(t140) = t131.
    DATA(t141) = t134.
    DATA(t142) = t137.
    t139 = zcl_lnt_st_combi_module=>seq( i_first = t140 i_second = t141 i_rest = t142 ).
    t130 = t139.
    t129 = t130.
    DATA t143 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t143.
    DATA t144 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t144.
    DATA(t145) = |IGNORING CONVERSION ERRORS|.
    t144 = zcl_lnt_st_combi_module=>str( i_s = t145 ).
    t143 = t144.
    DATA t146 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t146.
    DATA t147 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t147.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    DATA(t150) = |REPLACEMENT CHARACTER|.
    CLEAR t149.
    CREATE OBJECT t149.
    t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t149->sval = t150.
    t148 = t149.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t151.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t152.
    DATA(t153) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t152.
    IF t153 IS BOUND.
      CREATE OBJECT t152.
      t152->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t152->cval = t153.
    ENDIF.
    t151 = t152.
    DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t154.
    DATA t155 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t155.
    CREATE OBJECT t155.
    t154 = t155.
    DATA t156 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t156.
    DATA(t157) = t148.
    DATA(t158) = t151.
    DATA(t159) = t154.
    t156 = zcl_lnt_st_combi_module=>seq( i_first = t157 i_second = t158 i_rest = t159 ).
    t147 = t156.
    t146 = t147.
    DATA t160 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t160.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t161.
    DATA(t162) = |SKIPPING BYTE-ORDER MARK|.
    t161 = zcl_lnt_st_combi_module=>str( i_s = t162 ).
    t160 = t161.
    DATA t163 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t163.
    DATA t164 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t164.
    DATA(t165) = |WITH BYTE-ORDER MARK|.
    t164 = zcl_lnt_st_combi_module=>str( i_s = t165 ).
    t163 = t164.
    DATA t166 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t166.
    DATA t167 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t167.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t168.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t169.
    DATA(t170) = |TYPE|.
    CLEAR t169.
    CREATE OBJECT t169.
    t169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t169->sval = t170.
    t168 = t169.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t171.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t172.
    DATA(t173) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t172.
    IF t173 IS BOUND.
      CREATE OBJECT t172.
      t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t172->cval = t173.
    ENDIF.
    t171 = t172.
    DATA t174 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t174.
    DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t175.
    CREATE OBJECT t175.
    t174 = t175.
    DATA t176 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t176.
    DATA(t177) = t168.
    DATA(t178) = t171.
    DATA(t179) = t174.
    t176 = zcl_lnt_st_combi_module=>seq( i_first = t177 i_second = t178 i_rest = t179 ).
    t167 = t176.
    t166 = t167.
    DATA t180 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t180.
    DATA t181 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t181.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t182.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    DATA(t184) = |FILTER|.
    CLEAR t183.
    CREATE OBJECT t183.
    t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t183->sval = t184.
    t182 = t183.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t185.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t186.
    DATA(t187) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t186.
    IF t187 IS BOUND.
      CREATE OBJECT t186.
      t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t186->cval = t187.
    ENDIF.
    t185 = t186.
    DATA t188 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t188.
    DATA t189 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t189.
    CREATE OBJECT t189.
    t188 = t189.
    DATA t190 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t190.
    DATA(t191) = t182.
    DATA(t192) = t185.
    DATA(t193) = t188.
    t190 = zcl_lnt_st_combi_module=>seq( i_first = t191 i_second = t192 i_rest = t193 ).
    t181 = t190.
    t180 = t181.
    DATA t194 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t194.
    DATA t195 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t195.
    DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t196.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA(t198) = |SMART|.
    CLEAR t197.
    CREATE OBJECT t197.
    t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t197->sval = t198.
    t196 = t197.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t199.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t200.
    DATA(t201) = |NATIVE|.
    CLEAR t200.
    CREATE OBJECT t200.
    t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t200->sval = t201.
    t199 = t200.
    DATA t202 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t202.
    DATA t203 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t203.
    CREATE OBJECT t203.
    t202 = t203.
    DATA(t204) = t202.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t205.
    DATA(t206) = |UNIX|.
    CLEAR t205.
    CREATE OBJECT t205.
    t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t205->sval = t206.
    t204->load( ).
    APPEND t205 TO t204->items.
    t204->save( ).
    DATA t207 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t207.
    DATA(t208) = t196.
    DATA(t209) = t199.
    DATA(t210) = t202.
    t207 = zcl_lnt_st_combi_module=>alt_prio( i_first = t208 i_second = t209 i_rest = t210 ).
    t195 = t207.
    t194 = t195.
    DATA t211 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t211.
    DATA t212 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t212.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t213.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t214.
    DATA(t215) = |WITH|.
    CLEAR t214.
    CREATE OBJECT t214.
    t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t214->sval = t215.
    t213 = t214.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t216.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t217.
    DATA(t218) = t194.
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
    t216 = t217.
    DATA t221 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t221.
    DATA t222 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t222.
    CREATE OBJECT t222.
    t221 = t222.
    DATA(t223) = t221.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t224.
    DATA(t225) = |LINEFEED|.
    CLEAR t224.
    CREATE OBJECT t224.
    t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t224->sval = t225.
    t223->load( ).
    APPEND t224 TO t223->items.
    t223->save( ).
    DATA t226 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t226.
    DATA(t227) = t213.
    DATA(t228) = t216.
    DATA(t229) = t221.
    t226 = zcl_lnt_st_combi_module=>seq( i_first = t227 i_second = t228 i_rest = t229 ).
    t212 = t226.
    t211 = t212.
    DATA t230 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t230.
    DATA t231 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t231.
    DATA(t232) = |WITH WINDOWS LINEFEED|.
    t231 = zcl_lnt_st_combi_module=>str( i_s = t232 ).
    t230 = t231.
    DATA t233 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t233.
    DATA t234 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t234.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t235.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t236.
    DATA(t237) = |OPEN DATASET|.
    CLEAR t236.
    CREATE OBJECT t236.
    t236->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t236->sval = t237.
    t235 = t236.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t238.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t239.
    DATA(t240) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t239.
    IF t240 IS BOUND.
      CREATE OBJECT t239.
      t239->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t239->cval = t240.
    ENDIF.
    t238 = t239.
    DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t241.
    DATA t242 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t242.
    CREATE OBJECT t242.
    t241 = t242.
    DATA(t243) = t241.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t244.
    DATA t245 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t245.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t246.
    DATA t247 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t247.
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t248.
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t249.
    DATA(t250) = t50.
    CLEAR t249.
    IF t250 IS BOUND.
      DATA t251 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t251.
      DATA t252 TYPE REF TO object.
      CLEAR t252.
      CLEAR t251.
      t252 = t250.
      TRY.
          t249 ?= t252.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t249 IS NOT BOUND.
        TRY.
            t251 ?= t250.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t251 IS BOUND.
          t249 = t251->source( ).
        ENDIF.
        IF t249 IS NOT BOUND.
          CREATE OBJECT t249.
          t249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t249->oval = t250.
        ENDIF.
      ENDIF.
    ENDIF.
    t248 = t249.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t253.
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t254.
    DATA(t255) = t166.
    CLEAR t254.
    IF t255 IS BOUND.
      DATA t256 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t256.
      DATA t257 TYPE REF TO object.
      CLEAR t257.
      CLEAR t256.
      t257 = t255.
      TRY.
          t254 ?= t257.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t254 IS NOT BOUND.
        TRY.
            t256 ?= t255.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t256 IS BOUND.
          t254 = t256->source( ).
        ENDIF.
        IF t254 IS NOT BOUND.
          CREATE OBJECT t254.
          t254->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t254->oval = t255.
        ENDIF.
      ENDIF.
    ENDIF.
    t253 = t254.
    DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t258.
    DATA t259 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t259.
    CREATE OBJECT t259.
    t258 = t259.
    DATA(t260) = t258.
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t261.
    DATA(t262) = t1.
    CLEAR t261.
    IF t262 IS BOUND.
      DATA t263 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t263.
      DATA t264 TYPE REF TO object.
      CLEAR t264.
      CLEAR t263.
      t264 = t262.
      TRY.
          t261 ?= t264.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t261 IS NOT BOUND.
        TRY.
            t263 ?= t262.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t263 IS BOUND.
          t261 = t263->source( ).
        ENDIF.
        IF t261 IS NOT BOUND.
          CREATE OBJECT t261.
          t261->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t261->oval = t262.
        ENDIF.
      ENDIF.
    ENDIF.
    t260->load( ).
    APPEND t261 TO t260->items.
    t260->save( ).
    DATA(t265) = t258.
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t266.
    DATA(t267) = t163.
    CLEAR t266.
    IF t267 IS BOUND.
      DATA t268 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t268.
      DATA t269 TYPE REF TO object.
      CLEAR t269.
      CLEAR t268.
      t269 = t267.
      TRY.
          t266 ?= t269.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t266 IS NOT BOUND.
        TRY.
            t268 ?= t267.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t268 IS BOUND.
          t266 = t268->source( ).
        ENDIF.
        IF t266 IS NOT BOUND.
          CREATE OBJECT t266.
          t266->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t266->oval = t267.
        ENDIF.
      ENDIF.
    ENDIF.
    t265->load( ).
    APPEND t266 TO t265->items.
    t265->save( ).
    DATA(t270) = t258.
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t271.
    DATA(t272) = t146.
    CLEAR t271.
    IF t272 IS BOUND.
      DATA t273 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t273.
      DATA t274 TYPE REF TO object.
      CLEAR t274.
      CLEAR t273.
      t274 = t272.
      TRY.
          t271 ?= t274.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t271 IS NOT BOUND.
        TRY.
            t273 ?= t272.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t273 IS BOUND.
          t271 = t273->source( ).
        ENDIF.
        IF t271 IS NOT BOUND.
          CREATE OBJECT t271.
          t271->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t271->oval = t272.
        ENDIF.
      ENDIF.
    ENDIF.
    t270->load( ).
    APPEND t271 TO t270->items.
    t270->save( ).
    DATA(t275) = t258.
    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t276.
    DATA(t277) = t180.
    CLEAR t276.
    IF t277 IS BOUND.
      DATA t278 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t278.
      DATA t279 TYPE REF TO object.
      CLEAR t279.
      CLEAR t278.
      t279 = t277.
      TRY.
          t276 ?= t279.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t276 IS NOT BOUND.
        TRY.
            t278 ?= t277.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t278 IS BOUND.
          t276 = t278->source( ).
        ENDIF.
        IF t276 IS NOT BOUND.
          CREATE OBJECT t276.
          t276->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t276->oval = t277.
        ENDIF.
      ENDIF.
    ENDIF.
    t275->load( ).
    APPEND t276 TO t275->items.
    t275->save( ).
    DATA(t280) = t258.
    DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t281.
    DATA(t282) = t84.
    CLEAR t281.
    IF t282 IS BOUND.
      DATA t283 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t283.
      DATA t284 TYPE REF TO object.
      CLEAR t284.
      CLEAR t283.
      t284 = t282.
      TRY.
          t281 ?= t284.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t281 IS NOT BOUND.
        TRY.
            t283 ?= t282.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t283 IS BOUND.
          t281 = t283->source( ).
        ENDIF.
        IF t281 IS NOT BOUND.
          CREATE OBJECT t281.
          t281->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t281->oval = t282.
        ENDIF.
      ENDIF.
    ENDIF.
    t280->load( ).
    APPEND t281 TO t280->items.
    t280->save( ).
    DATA(t285) = t258.
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t286.
    DATA(t287) = t115.
    CLEAR t286.
    IF t287 IS BOUND.
      DATA t288 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t288.
      DATA t289 TYPE REF TO object.
      CLEAR t289.
      CLEAR t288.
      t289 = t287.
      TRY.
          t286 ?= t289.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t286 IS NOT BOUND.
        TRY.
            t288 ?= t287.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t288 IS BOUND.
          t286 = t288->source( ).
        ENDIF.
        IF t286 IS NOT BOUND.
          CREATE OBJECT t286.
          t286->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t286->oval = t287.
        ENDIF.
      ENDIF.
    ENDIF.
    t285->load( ).
    APPEND t286 TO t285->items.
    t285->save( ).
    DATA(t290) = t258.
    DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t291.
    DATA(t292) = t129.
    CLEAR t291.
    IF t292 IS BOUND.
      DATA t293 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t293.
      DATA t294 TYPE REF TO object.
      CLEAR t294.
      CLEAR t293.
      t294 = t292.
      TRY.
          t291 ?= t294.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t291 IS NOT BOUND.
        TRY.
            t293 ?= t292.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t293 IS BOUND.
          t291 = t293->source( ).
        ENDIF.
        IF t291 IS NOT BOUND.
          CREATE OBJECT t291.
          t291->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t291->oval = t292.
        ENDIF.
      ENDIF.
    ENDIF.
    t290->load( ).
    APPEND t291 TO t290->items.
    t290->save( ).
    DATA(t295) = t258.
    DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t296.
    DATA(t297) = t143.
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
    DATA(t300) = t258.
    DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t301.
    DATA(t302) = t160.
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
    DATA(t305) = t258.
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t306.
    DATA(t307) = t36.
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
    DATA(t310) = t258.
    DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t311.
    DATA(t312) = t211.
    CLEAR t311.
    IF t312 IS BOUND.
      DATA t313 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t313.
      DATA t314 TYPE REF TO object.
      CLEAR t314.
      CLEAR t313.
      t314 = t312.
      TRY.
          t311 ?= t314.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t311 IS NOT BOUND.
        TRY.
            t313 ?= t312.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t313 IS BOUND.
          t311 = t313->source( ).
        ENDIF.
        IF t311 IS NOT BOUND.
          CREATE OBJECT t311.
          t311->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t311->oval = t312.
        ENDIF.
      ENDIF.
    ENDIF.
    t310->load( ).
    APPEND t311 TO t310->items.
    t310->save( ).
    DATA(t315) = t258.
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t316.
    DATA(t317) = t230.
    CLEAR t316.
    IF t317 IS BOUND.
      DATA t318 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t318.
      DATA t319 TYPE REF TO object.
      CLEAR t319.
      CLEAR t318.
      t319 = t317.
      TRY.
          t316 ?= t319.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t316 IS NOT BOUND.
        TRY.
            t318 ?= t317.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t318 IS BOUND.
          t316 = t318->source( ).
        ENDIF.
        IF t316 IS NOT BOUND.
          CREATE OBJECT t316.
          t316->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t316->oval = t317.
        ENDIF.
      ENDIF.
    ENDIF.
    t315->load( ).
    APPEND t316 TO t315->items.
    t315->save( ).
    DATA t320 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t320.
    DATA(t321) = t248.
    DATA(t322) = t253.
    DATA(t323) = t258.
    t320 = zcl_lnt_st_combi_module=>per( i_first = t321 i_second = t322 i_rest = t323 ).
    t247 = t320.
    CLEAR t246.
    IF t247 IS BOUND.
      DATA t324 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t324.
      DATA t325 TYPE REF TO object.
      CLEAR t325.
      CLEAR t324.
      t325 = t247.
      TRY.
          t246 ?= t325.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t246 IS NOT BOUND.
        TRY.
            t324 ?= t247.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t324 IS BOUND.
          t246 = t324->source( ).
        ENDIF.
        IF t246 IS NOT BOUND.
          CREATE OBJECT t246.
          t246->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t246->oval = t247.
        ENDIF.
      ENDIF.
    ENDIF.
    t245 = zcl_lnt_st_combi_module=>opt( i_first = t246 ).
    CLEAR t244.
    IF t245 IS BOUND.
      DATA t326 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t326.
      DATA t327 TYPE REF TO object.
      CLEAR t327.
      CLEAR t326.
      t327 = t245.
      TRY.
          t244 ?= t327.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t244 IS NOT BOUND.
        TRY.
            t326 ?= t245.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t326 IS BOUND.
          t244 = t326->source( ).
        ENDIF.
        IF t244 IS NOT BOUND.
          CREATE OBJECT t244.
          t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t244->oval = t245.
        ENDIF.
      ENDIF.
    ENDIF.
    t243->load( ).
    APPEND t244 TO t243->items.
    t243->save( ).
    DATA t328 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t328.
    DATA(t329) = t235.
    DATA(t330) = t238.
    DATA(t331) = t241.
    t328 = zcl_lnt_st_combi_module=>seq( i_first = t329 i_second = t330 i_rest = t331 ).
    t234 = t328.
    t233 = t234.
    DATA t332 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t332.
    DATA(t333) = |Cloud|.
    DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t334.
    DATA(t335) = t233.
    CLEAR t334.
    IF t335 IS BOUND.
      DATA t336 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t336.
      DATA t337 TYPE REF TO object.
      CLEAR t337.
      CLEAR t336.
      t337 = t335.
      TRY.
          t334 ?= t337.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t334 IS NOT BOUND.
        TRY.
            t336 ?= t335.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t336 IS BOUND.
          t334 = t336->source( ).
        ENDIF.
        IF t334 IS NOT BOUND.
          CREATE OBJECT t334.
          t334->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t334->oval = t335.
        ENDIF.
      ENDIF.
    ENDIF.
    t332 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t333 i_first = t334 ).
    result = t332.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d569_b67e4c7404df.
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
