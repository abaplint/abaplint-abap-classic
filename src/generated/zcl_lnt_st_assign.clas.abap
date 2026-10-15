* TS: src/abap/2_statements/statements/assign.ts:7:1 Assign
CLASS zcl_lnt_st_assign DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_assign IMPLEMENTATION.
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
    DATA(t6) = |KeyUser|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    CLEAR t7.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    t5 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t6 i_first = t7 ).
    CLEAR t4.
    IF t5 IS BOUND.
      DATA t9 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t9.
      DATA t10 TYPE REF TO object.
      CLEAR t10.
      CLEAR t9.
      t10 = t5.
      TRY.
          t4 ?= t10.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t9 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t9 IS BOUND.
          t4 = t9->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    t3 = t4.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    CLEAR t12.
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t12->cval = t13.
    ENDIF.
    t11 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t15.
    CREATE OBJECT t15.
    t14 = t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t16.
    DATA(t17) = t3.
    DATA(t18) = t11.
    DATA(t19) = t14.
    t16 = zcl_lnt_st_combi_module=>alt_prio( i_first = t17 i_second = t18 i_rest = t19 ).
    t2 = t16.
    t1 = t2.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t20.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA(t24) = |TYPE|.
    CLEAR t23.
    CREATE OBJECT t23.
    t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t23->sval = t24.
    t22 = t23.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA(t27) = t1.
    CLEAR t26.
    IF t27 IS BOUND.
      DATA t28 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t28.
      DATA t29 TYPE REF TO object.
      CLEAR t29.
      CLEAR t28.
      t29 = t27.
      TRY.
          t26 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t26 IS NOT BOUND.
        TRY.
            t28 ?= t27.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t28 IS BOUND.
          t26 = t28->source( ).
        ENDIF.
        IF t26 IS NOT BOUND.
          CREATE OBJECT t26.
          t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t26->oval = t27.
        ENDIF.
      ENDIF.
    ENDIF.
    t25 = t26.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t31.
    CREATE OBJECT t31.
    t30 = t31.
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t32.
    DATA(t33) = t22.
    DATA(t34) = t25.
    DATA(t35) = t30.
    t32 = zcl_lnt_st_combi_module=>seq( i_first = t33 i_second = t34 i_rest = t35 ).
    t21 = t32.
    t20 = t21.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t36.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA(t40) = |LIKE|.
    CLEAR t39.
    CREATE OBJECT t39.
    t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t39->sval = t40.
    t38 = t39.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    CLEAR t45.
    IF t46 IS BOUND.
      CREATE OBJECT t45.
      t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t45->cval = t46.
    ENDIF.
    t44 = t45.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t48.
    IF t49 IS BOUND.
      CREATE OBJECT t48.
      t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t48->cval = t49.
    ENDIF.
    t47 = t48.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t51.
    CREATE OBJECT t51.
    t50 = t51.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t52.
    DATA(t53) = t44.
    DATA(t54) = t47.
    DATA(t55) = t50.
    t52 = zcl_lnt_st_combi_module=>alt_prio( i_first = t53 i_second = t54 i_rest = t55 ).
    t43 = t52.
    CLEAR t42.
    IF t43 IS BOUND.
      DATA t56 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t56.
      DATA t57 TYPE REF TO object.
      CLEAR t57.
      CLEAR t56.
      t57 = t43.
      TRY.
          t42 ?= t57.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t42 IS NOT BOUND.
        TRY.
            t56 ?= t43.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t56 IS BOUND.
          t42 = t56->source( ).
        ENDIF.
        IF t42 IS NOT BOUND.
          CREATE OBJECT t42.
          t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t42->oval = t43.
        ENDIF.
      ENDIF.
    ENDIF.
    t41 = t42.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t59.
    CREATE OBJECT t59.
    t58 = t59.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t60.
    DATA(t61) = t38.
    DATA(t62) = t41.
    DATA(t63) = t58.
    t60 = zcl_lnt_st_combi_module=>seq( i_first = t61 i_second = t62 i_rest = t63 ).
    t37 = t60.
    t36 = t37.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t64.
    DATA t65 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t65.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA(t68) = |TYPE HANDLE|.
    CLEAR t67.
    CREATE OBJECT t67.
    t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t67->sval = t68.
    t66 = t67.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA(t71) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t70.
    IF t71 IS BOUND.
      CREATE OBJECT t70.
      t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t70->cval = t71.
    ENDIF.
    t69 = t70.
    DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t73.
    CREATE OBJECT t73.
    t72 = t73.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t74.
    DATA(t75) = t66.
    DATA(t76) = t69.
    DATA(t77) = t72.
    t74 = zcl_lnt_st_combi_module=>seq( i_first = t75 i_second = t76 i_rest = t77 ).
    t65 = t74.
    t64 = t65.
    DATA t78 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t78.
    DATA t79 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t79.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA(t82) = |RANGE|.
    CLEAR t81.
    CREATE OBJECT t81.
    t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t81->sval = t82.
    t80 = t81.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA(t85) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
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
    DATA t88 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t88.
    DATA(t89) = t80.
    DATA(t90) = t83.
    DATA(t91) = t86.
    t88 = zcl_lnt_st_combi_module=>seq( i_first = t89 i_second = t90 i_rest = t91 ).
    t79 = t88.
    t78 = t79.
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t92.
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t93.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA(t96) = |DECIMALS|.
    CLEAR t95.
    CREATE OBJECT t95.
    t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t95->sval = t96.
    t94 = t95.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA(t99) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t98.
    IF t99 IS BOUND.
      CREATE OBJECT t98.
      t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t98->cval = t99.
    ENDIF.
    t97 = t98.
    DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t101.
    CREATE OBJECT t101.
    t100 = t101.
    DATA t102 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t102.
    DATA(t103) = t94.
    DATA(t104) = t97.
    DATA(t105) = t100.
    t102 = zcl_lnt_st_combi_module=>seq( i_first = t103 i_second = t104 i_rest = t105 ).
    t93 = t102.
    t92 = t93.
    DATA t106 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t106.
    DATA t107 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t107.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t108.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA(t110) = |CASTING|.
    CLEAR t109.
    CREATE OBJECT t109.
    t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t109->sval = t110.
    t108 = t109.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t112.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t113.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t115.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA(t118) = t36.
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
    DATA(t123) = t64.
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
    DATA t130 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA(t133) = t20.
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
    t131 = t132.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t136.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t137.
    DATA(t138) = t92.
    CLEAR t137.
    IF t138 IS BOUND.
      DATA t139 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t139.
      DATA t140 TYPE REF TO object.
      CLEAR t140.
      CLEAR t139.
      t140 = t138.
      TRY.
          t137 ?= t140.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t137 IS NOT BOUND.
        TRY.
            t139 ?= t138.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t139 IS BOUND.
          t137 = t139->source( ).
        ENDIF.
        IF t137 IS NOT BOUND.
          CREATE OBJECT t137.
          t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t137->oval = t138.
        ENDIF.
      ENDIF.
    ENDIF.
    t136 = t137.
    DATA t141 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t141.
    DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t142.
    CREATE OBJECT t142.
    t141 = t142.
    DATA t143 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t143.
    DATA(t144) = t131.
    DATA(t145) = t136.
    DATA(t146) = t141.
    t143 = zcl_lnt_st_combi_module=>per( i_first = t144 i_second = t145 i_rest = t146 ).
    t130 = t143.
    CLEAR t129.
    IF t130 IS BOUND.
      DATA t147 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t147.
      DATA t148 TYPE REF TO object.
      CLEAR t148.
      CLEAR t147.
      t148 = t130.
      TRY.
          t129 ?= t148.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t129 IS NOT BOUND.
        TRY.
            t147 ?= t130.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t147 IS BOUND.
          t129 = t147->source( ).
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
    DATA t149 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t149.
    DATA(t150) = t116.
    DATA(t151) = t121.
    DATA(t152) = t126.
    t149 = zcl_lnt_st_combi_module=>alt( i_first = t150 i_second = t151 i_rest = t152 ).
    t115 = t149.
    CLEAR t114.
    IF t115 IS BOUND.
      DATA t153 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t153.
      DATA t154 TYPE REF TO object.
      CLEAR t154.
      CLEAR t153.
      t154 = t115.
      TRY.
          t114 ?= t154.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t114 IS NOT BOUND.
        TRY.
            t153 ?= t115.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t153 IS BOUND.
          t114 = t153->source( ).
        ENDIF.
        IF t114 IS NOT BOUND.
          CREATE OBJECT t114.
          t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t114->oval = t115.
        ENDIF.
      ENDIF.
    ENDIF.
    t113 = zcl_lnt_st_combi_module=>opt( i_first = t114 ).
    CLEAR t112.
    IF t113 IS BOUND.
      DATA t155 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t155.
      DATA t156 TYPE REF TO object.
      CLEAR t156.
      CLEAR t155.
      t156 = t113.
      TRY.
          t112 ?= t156.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t112 IS NOT BOUND.
        TRY.
            t155 ?= t113.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t155 IS BOUND.
          t112 = t155->source( ).
        ENDIF.
        IF t112 IS NOT BOUND.
          CREATE OBJECT t112.
          t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t112->oval = t113.
        ENDIF.
      ENDIF.
    ENDIF.
    t111 = t112.
    DATA t157 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t157.
    DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t158.
    CREATE OBJECT t158.
    t157 = t158.
    DATA t159 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t159.
    DATA(t160) = t108.
    DATA(t161) = t111.
    DATA(t162) = t157.
    t159 = zcl_lnt_st_combi_module=>seq( i_first = t160 i_second = t161 i_rest = t162 ).
    t107 = t159.
    t106 = t107.
    DATA t163 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t163.
    DATA t164 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t164.
    DATA(t165) = |KeyUser|.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t166.
    DATA(t167) = t106.
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
    t164 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t165 i_first = t166 ).
    t163 = t164.
    DATA t170 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t170.
    DATA t171 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t171.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t172.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    DATA(t174) = |TYPE|.
    CLEAR t173.
    CREATE OBJECT t173.
    t173->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t173->sval = t174.
    t172 = t173.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t175.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t176.
    DATA(t177) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t176.
    IF t177 IS BOUND.
      CREATE OBJECT t176.
      t176->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t176->cval = t177.
    ENDIF.
    t175 = t176.
    DATA t178 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t178.
    DATA t179 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t179.
    CREATE OBJECT t179.
    t178 = t179.
    DATA(t180) = t178.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t181.
    DATA t182 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t182.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    DATA(t184) = t92.
    CLEAR t183.
    IF t184 IS BOUND.
      DATA t185 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t185.
      DATA t186 TYPE REF TO object.
      CLEAR t186.
      CLEAR t185.
      t186 = t184.
      TRY.
          t183 ?= t186.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t183 IS NOT BOUND.
        TRY.
            t185 ?= t184.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t185 IS BOUND.
          t183 = t185->source( ).
        ENDIF.
        IF t183 IS NOT BOUND.
          CREATE OBJECT t183.
          t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t183->oval = t184.
        ENDIF.
      ENDIF.
    ENDIF.
    t182 = zcl_lnt_st_combi_module=>opt_prio( i_first = t183 ).
    CLEAR t181.
    IF t182 IS BOUND.
      DATA t187 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t187.
      DATA t188 TYPE REF TO object.
      CLEAR t188.
      CLEAR t187.
      t188 = t182.
      TRY.
          t181 ?= t188.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t181 IS NOT BOUND.
        TRY.
            t187 ?= t182.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t187 IS BOUND.
          t181 = t187->source( ).
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
    DATA t189 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t189.
    DATA(t190) = t172.
    DATA(t191) = t175.
    DATA(t192) = t178.
    t189 = zcl_lnt_st_combi_module=>seq( i_first = t190 i_second = t191 i_rest = t192 ).
    t171 = t189.
    t170 = t171.
    DATA t193 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t193.
    DATA t194 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t194.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t195.
    DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t196.
    DATA(t197) = |ASSIGN|.
    CLEAR t196.
    CREATE OBJECT t196.
    t196->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t196->sval = t197.
    t195 = t196.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t198.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t199.
    DATA t200 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t200.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t201.
    DATA t202 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t202.
    DATA(t203) = |KeyUser|.
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t204.
    DATA t205 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t205.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t206.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t207.
    DATA(t208) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t207.
    IF t208 IS BOUND.
      CREATE OBJECT t207.
      t207->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t207->cval = t208.
    ENDIF.
    t206 = t207.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t209.
    DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t210.
    DATA(t211) = |INCREMENT|.
    CLEAR t210.
    CREATE OBJECT t210.
    t210->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t210->sval = t211.
    t209 = t210.
    DATA t212 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t212.
    DATA t213 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t213.
    CREATE OBJECT t213.
    t212 = t213.
    DATA t214 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t214.
    DATA(t215) = t206.
    DATA(t216) = t209.
    DATA(t217) = t212.
    t214 = zcl_lnt_st_combi_module=>seq( i_first = t215 i_second = t216 i_rest = t217 ).
    t205 = t214.
    CLEAR t204.
    IF t205 IS BOUND.
      DATA t218 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t218.
      DATA t219 TYPE REF TO object.
      CLEAR t219.
      CLEAR t218.
      t219 = t205.
      TRY.
          t204 ?= t219.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t204 IS NOT BOUND.
        TRY.
            t218 ?= t205.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t218 IS BOUND.
          t204 = t218->source( ).
        ENDIF.
        IF t204 IS NOT BOUND.
          CREATE OBJECT t204.
          t204->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t204->oval = t205.
        ENDIF.
      ENDIF.
    ENDIF.
    t202 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t203 i_first = t204 ).
    CLEAR t201.
    IF t202 IS BOUND.
      DATA t220 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t220.
      DATA t221 TYPE REF TO object.
      CLEAR t221.
      CLEAR t220.
      t221 = t202.
      TRY.
          t201 ?= t221.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t201 IS NOT BOUND.
        TRY.
            t220 ?= t202.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t220 IS BOUND.
          t201 = t220->source( ).
        ENDIF.
        IF t201 IS NOT BOUND.
          CREATE OBJECT t201.
          t201->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t201->oval = t202.
        ENDIF.
      ENDIF.
    ENDIF.
    t200 = zcl_lnt_st_combi_module=>opt( i_first = t201 ).
    CLEAR t199.
    IF t200 IS BOUND.
      DATA t222 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t222.
      DATA t223 TYPE REF TO object.
      CLEAR t223.
      CLEAR t222.
      t223 = t200.
      TRY.
          t199 ?= t223.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t199 IS NOT BOUND.
        TRY.
            t222 ?= t200.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t222 IS BOUND.
          t199 = t222->source( ).
        ENDIF.
        IF t199 IS NOT BOUND.
          CREATE OBJECT t199.
          t199->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t199->oval = t200.
        ENDIF.
      ENDIF.
    ENDIF.
    t198 = t199.
    DATA t224 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t224.
    DATA t225 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t225.
    CREATE OBJECT t225.
    t224 = t225.
    DATA(t226) = t224.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t227.
    DATA(t228) = zlnt_runtime_desc_78196487750d=>zlnt_member_d98_aa488fc184edca.
    CLEAR t227.
    IF t228 IS BOUND.
      CREATE OBJECT t227.
      t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t227->cval = t228.
    ENDIF.
    t226->load( ).
    APPEND t227 TO t226->items.
    t226->save( ).
    DATA(t229) = t224.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t230.
    DATA(t231) = |TO|.
    CLEAR t230.
    CREATE OBJECT t230.
    t230->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t230->sval = t231.
    t229->load( ).
    APPEND t230 TO t229->items.
    t229->save( ).
    DATA(t232) = t224.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t233.
    DATA(t234) = zlnt_runtime_desc_78196487750d=>zlnt_member_d194_b8c1a7611ef6.
    CLEAR t233.
    IF t234 IS BOUND.
      CREATE OBJECT t233.
      t233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t233->cval = t234.
    ENDIF.
    t232->load( ).
    APPEND t233 TO t232->items.
    t232->save( ).
    DATA(t235) = t224.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t236.
    DATA t237 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t237.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t238.
    DATA t239 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t239.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t240.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t241.
    DATA(t242) = t163.
    CLEAR t241.
    IF t242 IS BOUND.
      DATA t243 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t243.
      DATA t244 TYPE REF TO object.
      CLEAR t244.
      CLEAR t243.
      t244 = t242.
      TRY.
          t241 ?= t244.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t241 IS NOT BOUND.
        TRY.
            t243 ?= t242.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t243 IS BOUND.
          t241 = t243->source( ).
        ENDIF.
        IF t241 IS NOT BOUND.
          CREATE OBJECT t241.
          t241->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t241->oval = t242.
        ENDIF.
      ENDIF.
    ENDIF.
    t240 = t241.
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t245.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t246.
    DATA(t247) = t170.
    CLEAR t246.
    IF t247 IS BOUND.
      DATA t248 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t248.
      DATA t249 TYPE REF TO object.
      CLEAR t249.
      CLEAR t248.
      t249 = t247.
      TRY.
          t246 ?= t249.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t246 IS NOT BOUND.
        TRY.
            t248 ?= t247.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t248 IS BOUND.
          t246 = t248->source( ).
        ENDIF.
        IF t246 IS NOT BOUND.
          CREATE OBJECT t246.
          t246->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t246->oval = t247.
        ENDIF.
      ENDIF.
    ENDIF.
    t245 = t246.
    DATA t250 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t250.
    DATA t251 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t251.
    CREATE OBJECT t251.
    t250 = t251.
    DATA(t252) = t250.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t253.
    DATA(t254) = t92.
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
    t252->load( ).
    APPEND t253 TO t252->items.
    t252->save( ).
    DATA t257 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t257.
    DATA(t258) = t240.
    DATA(t259) = t245.
    DATA(t260) = t250.
    t257 = zcl_lnt_st_combi_module=>alt_prio( i_first = t258 i_second = t259 i_rest = t260 ).
    t239 = t257.
    CLEAR t238.
    IF t239 IS BOUND.
      DATA t261 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t261.
      DATA t262 TYPE REF TO object.
      CLEAR t262.
      CLEAR t261.
      t262 = t239.
      TRY.
          t238 ?= t262.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t238 IS NOT BOUND.
        TRY.
            t261 ?= t239.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t261 IS BOUND.
          t238 = t261->source( ).
        ENDIF.
        IF t238 IS NOT BOUND.
          CREATE OBJECT t238.
          t238->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t238->oval = t239.
        ENDIF.
      ENDIF.
    ENDIF.
    t237 = zcl_lnt_st_combi_module=>opt( i_first = t238 ).
    CLEAR t236.
    IF t237 IS BOUND.
      DATA t263 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t263.
      DATA t264 TYPE REF TO object.
      CLEAR t264.
      CLEAR t263.
      t264 = t237.
      TRY.
          t236 ?= t264.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t236 IS NOT BOUND.
        TRY.
            t263 ?= t237.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t263 IS BOUND.
          t236 = t263->source( ).
        ENDIF.
        IF t236 IS NOT BOUND.
          CREATE OBJECT t236.
          t236->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t236->oval = t237.
        ENDIF.
      ENDIF.
    ENDIF.
    t235->load( ).
    APPEND t236 TO t235->items.
    t235->save( ).
    DATA(t265) = t224.
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t266.
    DATA t267 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t267.
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t268.
    DATA(t269) = t78.
    CLEAR t268.
    IF t269 IS BOUND.
      DATA t270 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t270.
      DATA t271 TYPE REF TO object.
      CLEAR t271.
      CLEAR t270.
      t271 = t269.
      TRY.
          t268 ?= t271.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t268 IS NOT BOUND.
        TRY.
            t270 ?= t269.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t270 IS BOUND.
          t268 = t270->source( ).
        ENDIF.
        IF t268 IS NOT BOUND.
          CREATE OBJECT t268.
          t268->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t268->oval = t269.
        ENDIF.
      ENDIF.
    ENDIF.
    t267 = zcl_lnt_st_combi_module=>opt( i_first = t268 ).
    CLEAR t266.
    IF t267 IS BOUND.
      DATA t272 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t272.
      DATA t273 TYPE REF TO object.
      CLEAR t273.
      CLEAR t272.
      t273 = t267.
      TRY.
          t266 ?= t273.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t266 IS NOT BOUND.
        TRY.
            t272 ?= t267.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t272 IS BOUND.
          t266 = t272->source( ).
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
    DATA(t274) = t224.
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
    DATA t280 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t280.
    DATA t281 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t281.
    DATA t282 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t282.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t282 = zcl_lnt_version_module=>release_b8cd.
    DATA(t283) = |v757|.
    t281 = t282->get( p0 = t283 ).
    t280 = t281.
    CLEAR t279.
    IF t280 IS BOUND.
      DATA t284 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t284.
      DATA t285 TYPE REF TO object.
      CLEAR t285.
      CLEAR t284.
      t285 = t280.
      TRY.
          t279 ?= t285.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t279 IS NOT BOUND.
        TRY.
            t284 ?= t280.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t284 IS BOUND.
          t279 = t284->source( ).
        ENDIF.
        IF t279 IS NOT BOUND.
          CREATE OBJECT t279.
          t279->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t279->oval = t280.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t286.
    DATA(t287) = |ELSE UNASSIGN|.
    CLEAR t286.
    CREATE OBJECT t286.
    t286->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t286->sval = t287.
    DATA t288 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t288.
    t278 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t279 i_first = t286 i_opts = t288 ).
    CLEAR t277.
    IF t278 IS BOUND.
      DATA t289 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t289.
      DATA t290 TYPE REF TO object.
      CLEAR t290.
      CLEAR t289.
      t290 = t278.
      TRY.
          t277 ?= t290.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t277 IS NOT BOUND.
        TRY.
            t289 ?= t278.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t289 IS BOUND.
          t277 = t289->source( ).
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
      DATA t291 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t291.
      DATA t292 TYPE REF TO object.
      CLEAR t292.
      CLEAR t291.
      t292 = t276.
      TRY.
          t275 ?= t292.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t275 IS NOT BOUND.
        TRY.
            t291 ?= t276.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t291 IS BOUND.
          t275 = t291->source( ).
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
    DATA t293 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t293.
    DATA(t294) = t195.
    DATA(t295) = t198.
    DATA(t296) = t224.
    t293 = zcl_lnt_st_combi_module=>seq( i_first = t294 i_second = t295 i_rest = t296 ).
    t194 = t293.
    t193 = t194.
    DATA(t297) = t193.
    result = t297.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d375_ab389f7000ba.
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
