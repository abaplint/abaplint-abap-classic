* TS: src/abap/2_statements/statements/describe.ts:7:1 Describe
CLASS zcl_lnt_st_describe DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_describe IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = |LINES|.
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
    DATA(t19) = |KIND|.
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
    DATA(t33) = |OCCURS|.
    CLEAR t32.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = t33.
    t31 = t32.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
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
    DATA(t47) = |TABLE|.
    CLEAR t46.
    CREATE OBJECT t46.
    t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t46->sval = t47.
    t45 = t46.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
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
    DATA(t53) = t51.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA(t60) = t1.
    CLEAR t59.
    IF t60 IS BOUND.
      DATA t61 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t61.
      DATA t62 TYPE REF TO object.
      CLEAR t62.
      CLEAR t61.
      t62 = t60.
      TRY.
          t59 ?= t62.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t59 IS NOT BOUND.
        TRY.
            t61 ?= t60.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t61 IS BOUND.
          t59 = t61->source( ).
        ENDIF.
        IF t59 IS NOT BOUND.
          CREATE OBJECT t59.
          t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t59->oval = t60.
        ENDIF.
      ENDIF.
    ENDIF.
    t58 = t59.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA(t65) = t15.
    CLEAR t64.
    IF t65 IS BOUND.
      DATA t66 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t66.
      DATA t67 TYPE REF TO object.
      CLEAR t67.
      CLEAR t66.
      t67 = t65.
      TRY.
          t64 ?= t67.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t64 IS NOT BOUND.
        TRY.
            t66 ?= t65.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t66 IS BOUND.
          t64 = t66->source( ).
        ENDIF.
        IF t64 IS NOT BOUND.
          CREATE OBJECT t64.
          t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t64->oval = t65.
        ENDIF.
      ENDIF.
    ENDIF.
    t63 = t64.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t68.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t69.
    CREATE OBJECT t69.
    t68 = t69.
    DATA(t70) = t68.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA(t72) = t29.
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
    t70->load( ).
    APPEND t71 TO t70->items.
    t70->save( ).
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t75.
    DATA(t76) = t58.
    DATA(t77) = t63.
    DATA(t78) = t68.
    t75 = zcl_lnt_st_combi_module=>per( i_first = t76 i_second = t77 i_rest = t78 ).
    t57 = t75.
    CLEAR t56.
    IF t57 IS BOUND.
      DATA t79 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t79.
      DATA t80 TYPE REF TO object.
      CLEAR t80.
      CLEAR t79.
      t80 = t57.
      TRY.
          t56 ?= t80.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t56 IS NOT BOUND.
        TRY.
            t79 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t79 IS BOUND.
          t56 = t79->source( ).
        ENDIF.
        IF t56 IS NOT BOUND.
          CREATE OBJECT t56.
          t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t56->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    t55 = zcl_lnt_st_combi_module=>opt( i_first = t56 ).
    CLEAR t54.
    IF t55 IS BOUND.
      DATA t81 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t81.
      DATA t82 TYPE REF TO object.
      CLEAR t82.
      CLEAR t81.
      t82 = t55.
      TRY.
          t54 ?= t82.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t54 IS NOT BOUND.
        TRY.
            t81 ?= t55.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t81 IS BOUND.
          t54 = t81->source( ).
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
    DATA t83 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t83.
    DATA(t84) = t45.
    DATA(t85) = t48.
    DATA(t86) = t51.
    t83 = zcl_lnt_st_combi_module=>seq( i_first = t84 i_second = t85 i_rest = t86 ).
    t44 = t83.
    t43 = t44.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t87.
    DATA t88 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t88.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA(t91) = |IN|.
    CLEAR t90.
    CREATE OBJECT t90.
    t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t90->sval = t91.
    t89 = t90.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    DATA(t97) = |BYTE|.
    CLEAR t96.
    CREATE OBJECT t96.
    t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t96->sval = t97.
    t95 = t96.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    DATA(t100) = |CHARACTER|.
    CLEAR t99.
    CREATE OBJECT t99.
    t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t99->sval = t100.
    t98 = t99.
    DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t102.
    CREATE OBJECT t102.
    t101 = t102.
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t103.
    DATA(t104) = t95.
    DATA(t105) = t98.
    DATA(t106) = t101.
    t103 = zcl_lnt_st_combi_module=>alt( i_first = t104 i_second = t105 i_rest = t106 ).
    t94 = t103.
    CLEAR t93.
    IF t94 IS BOUND.
      DATA t107 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t107.
      DATA t108 TYPE REF TO object.
      CLEAR t108.
      CLEAR t107.
      t108 = t94.
      TRY.
          t93 ?= t108.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t93 IS NOT BOUND.
        TRY.
            t107 ?= t94.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t107 IS BOUND.
          t93 = t107->source( ).
        ENDIF.
        IF t93 IS NOT BOUND.
          CREATE OBJECT t93.
          t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t93->oval = t94.
        ENDIF.
      ENDIF.
    ENDIF.
    t92 = t93.
    DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t109.
    DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t110.
    CREATE OBJECT t110.
    t109 = t110.
    DATA(t111) = t109.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t112.
    DATA(t113) = |MODE|.
    CLEAR t112.
    CREATE OBJECT t112.
    t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t112->sval = t113.
    t111->load( ).
    APPEND t112 TO t111->items.
    t111->save( ).
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t114.
    DATA(t115) = t89.
    DATA(t116) = t92.
    DATA(t117) = t109.
    t114 = zcl_lnt_st_combi_module=>seq( i_first = t115 i_second = t116 i_rest = t117 ).
    t88 = t114.
    t87 = t88.
    DATA t118 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t118.
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t119.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    DATA(t122) = |FIELD|.
    CLEAR t121.
    CREATE OBJECT t121.
    t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t121->sval = t122.
    t120 = t121.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t123.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    DATA(t125) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t124.
    IF t125 IS BOUND.
      CREATE OBJECT t124.
      t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t124->cval = t125.
    ENDIF.
    t123 = t124.
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
    DATA t133 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t133.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t135.
    DATA(t136) = |TYPE|.
    CLEAR t135.
    CREATE OBJECT t135.
    t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t135->sval = t136.
    t134 = t135.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t137.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    DATA(t139) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t138.
    IF t139 IS BOUND.
      CREATE OBJECT t138.
      t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t138->cval = t139.
    ENDIF.
    t137 = t138.
    DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t140.
    DATA t141 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t141.
    CREATE OBJECT t141.
    t140 = t141.
    DATA t142 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t142.
    DATA(t143) = t134.
    DATA(t144) = t137.
    DATA(t145) = t140.
    t142 = zcl_lnt_st_combi_module=>seq( i_first = t143 i_second = t144 i_rest = t145 ).
    t133 = t142.
    CLEAR t132.
    IF t133 IS BOUND.
      DATA t146 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t146.
      DATA t147 TYPE REF TO object.
      CLEAR t147.
      CLEAR t146.
      t147 = t133.
      TRY.
          t132 ?= t147.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t132 IS NOT BOUND.
        TRY.
            t146 ?= t133.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t146 IS BOUND.
          t132 = t146->source( ).
        ENDIF.
        IF t132 IS NOT BOUND.
          CREATE OBJECT t132.
          t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t132->oval = t133.
        ENDIF.
      ENDIF.
    ENDIF.
    t131 = t132.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    DATA t150 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t150.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t151.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t152.
    DATA(t153) = |COMPONENTS|.
    CLEAR t152.
    CREATE OBJECT t152.
    t152->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t152->sval = t153.
    t151 = t152.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t154.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t155.
    DATA(t156) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t155.
    IF t156 IS BOUND.
      CREATE OBJECT t155.
      t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t155->cval = t156.
    ENDIF.
    t154 = t155.
    DATA t157 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t157.
    DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t158.
    CREATE OBJECT t158.
    t157 = t158.
    DATA t159 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t159.
    DATA(t160) = t151.
    DATA(t161) = t154.
    DATA(t162) = t157.
    t159 = zcl_lnt_st_combi_module=>seq( i_first = t160 i_second = t161 i_rest = t162 ).
    t150 = t159.
    CLEAR t149.
    IF t150 IS BOUND.
      DATA t163 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t163.
      DATA t164 TYPE REF TO object.
      CLEAR t164.
      CLEAR t163.
      t164 = t150.
      TRY.
          t149 ?= t164.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t149 IS NOT BOUND.
        TRY.
            t163 ?= t150.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t163 IS BOUND.
          t149 = t163->source( ).
        ENDIF.
        IF t149 IS NOT BOUND.
          CREATE OBJECT t149.
          t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t149->oval = t150.
        ENDIF.
      ENDIF.
    ENDIF.
    t148 = t149.
    DATA t165 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t165.
    DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t166.
    CREATE OBJECT t166.
    t165 = t166.
    DATA(t167) = t165.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t168.
    DATA t169 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t169.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t170.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t171.
    DATA(t172) = |LENGTH|.
    CLEAR t171.
    CREATE OBJECT t171.
    t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t171->sval = t172.
    t170 = t171.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t174.
    DATA(t175) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t174.
    IF t175 IS BOUND.
      CREATE OBJECT t174.
      t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t174->cval = t175.
    ENDIF.
    t173 = t174.
    DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t176.
    DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t177.
    CREATE OBJECT t177.
    t176 = t177.
    DATA(t178) = t176.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t179.
    DATA t180 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t180.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t181.
    DATA(t182) = t87.
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
    t180 = zcl_lnt_st_combi_module=>opt( i_first = t181 ).
    CLEAR t179.
    IF t180 IS BOUND.
      DATA t185 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t185.
      DATA t186 TYPE REF TO object.
      CLEAR t186.
      CLEAR t185.
      t186 = t180.
      TRY.
          t179 ?= t186.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t179 IS NOT BOUND.
        TRY.
            t185 ?= t180.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t185 IS BOUND.
          t179 = t185->source( ).
        ENDIF.
        IF t179 IS NOT BOUND.
          CREATE OBJECT t179.
          t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t179->oval = t180.
        ENDIF.
      ENDIF.
    ENDIF.
    t178->load( ).
    APPEND t179 TO t178->items.
    t178->save( ).
    DATA t187 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t187.
    DATA(t188) = t170.
    DATA(t189) = t173.
    DATA(t190) = t176.
    t187 = zcl_lnt_st_combi_module=>seq( i_first = t188 i_second = t189 i_rest = t190 ).
    t169 = t187.
    CLEAR t168.
    IF t169 IS BOUND.
      DATA t191 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t191.
      DATA t192 TYPE REF TO object.
      CLEAR t192.
      CLEAR t191.
      t192 = t169.
      TRY.
          t168 ?= t192.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t168 IS NOT BOUND.
        TRY.
            t191 ?= t169.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t191 IS BOUND.
          t168 = t191->source( ).
        ENDIF.
        IF t168 IS NOT BOUND.
          CREATE OBJECT t168.
          t168->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t168->oval = t169.
        ENDIF.
      ENDIF.
    ENDIF.
    t167->load( ).
    APPEND t168 TO t167->items.
    t167->save( ).
    DATA(t193) = t165.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    DATA t195 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t195.
    DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t196.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA(t198) = |DECIMALS|.
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
    t193->load( ).
    APPEND t194 TO t193->items.
    t193->save( ).
    DATA(t210) = t165.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t211.
    DATA t212 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t212.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t213.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t214.
    DATA(t215) = |HELP-ID|.
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
    CLEAR t211.
    IF t212 IS BOUND.
      DATA t225 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t225.
      DATA t226 TYPE REF TO object.
      CLEAR t226.
      CLEAR t225.
      t226 = t212.
      TRY.
          t211 ?= t226.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t211 IS NOT BOUND.
        TRY.
            t225 ?= t212.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t225 IS BOUND.
          t211 = t225->source( ).
        ENDIF.
        IF t211 IS NOT BOUND.
          CREATE OBJECT t211.
          t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t211->oval = t212.
        ENDIF.
      ENDIF.
    ENDIF.
    t210->load( ).
    APPEND t211 TO t210->items.
    t210->save( ).
    DATA(t227) = t165.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t228.
    DATA t229 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t229.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t230.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t231.
    DATA(t232) = |OUTPUT-LENGTH|.
    CLEAR t231.
    CREATE OBJECT t231.
    t231->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t231->sval = t232.
    t230 = t231.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t233.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t234.
    DATA(t235) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t234.
    IF t235 IS BOUND.
      CREATE OBJECT t234.
      t234->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t234->cval = t235.
    ENDIF.
    t233 = t234.
    DATA t236 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t236.
    DATA t237 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t237.
    CREATE OBJECT t237.
    t236 = t237.
    DATA t238 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t238.
    DATA(t239) = t230.
    DATA(t240) = t233.
    DATA(t241) = t236.
    t238 = zcl_lnt_st_combi_module=>seq( i_first = t239 i_second = t240 i_rest = t241 ).
    t229 = t238.
    CLEAR t228.
    IF t229 IS BOUND.
      DATA t242 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t242.
      DATA t243 TYPE REF TO object.
      CLEAR t243.
      CLEAR t242.
      t243 = t229.
      TRY.
          t228 ?= t243.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t228 IS NOT BOUND.
        TRY.
            t242 ?= t229.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t242 IS BOUND.
          t228 = t242->source( ).
        ENDIF.
        IF t228 IS NOT BOUND.
          CREATE OBJECT t228.
          t228->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t228->oval = t229.
        ENDIF.
      ENDIF.
    ENDIF.
    t227->load( ).
    APPEND t228 TO t227->items.
    t227->save( ).
    DATA(t244) = t165.
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t245.
    DATA t246 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t246.
    DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t247.
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t248.
    DATA(t249) = |EDIT MASK|.
    CLEAR t248.
    CREATE OBJECT t248.
    t248->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t248->sval = t249.
    t247 = t248.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t250.
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t251.
    DATA(t252) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t251.
    IF t252 IS BOUND.
      CREATE OBJECT t251.
      t251->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t251->cval = t252.
    ENDIF.
    t250 = t251.
    DATA t253 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t253.
    DATA t254 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t254.
    CREATE OBJECT t254.
    t253 = t254.
    DATA t255 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t255.
    DATA(t256) = t247.
    DATA(t257) = t250.
    DATA(t258) = t253.
    t255 = zcl_lnt_st_combi_module=>seq( i_first = t256 i_second = t257 i_rest = t258 ).
    t246 = t255.
    CLEAR t245.
    IF t246 IS BOUND.
      DATA t259 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t259.
      DATA t260 TYPE REF TO object.
      CLEAR t260.
      CLEAR t259.
      t260 = t246.
      TRY.
          t245 ?= t260.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t245 IS NOT BOUND.
        TRY.
            t259 ?= t246.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t259 IS BOUND.
          t245 = t259->source( ).
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
    DATA(t261) = t165.
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t262.
    DATA t263 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t263.
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t264.
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t265.
    DATA(t266) = |INTO|.
    CLEAR t265.
    CREATE OBJECT t265.
    t265->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t265->sval = t266.
    t264 = t265.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t267.
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t268.
    DATA(t269) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t268.
    IF t269 IS BOUND.
      CREATE OBJECT t268.
      t268->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t268->cval = t269.
    ENDIF.
    t267 = t268.
    DATA t270 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t270.
    DATA t271 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t271.
    CREATE OBJECT t271.
    t270 = t271.
    DATA t272 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t272.
    DATA(t273) = t264.
    DATA(t274) = t267.
    DATA(t275) = t270.
    t272 = zcl_lnt_st_combi_module=>seq( i_first = t273 i_second = t274 i_rest = t275 ).
    t263 = t272.
    CLEAR t262.
    IF t263 IS BOUND.
      DATA t276 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t276.
      DATA t277 TYPE REF TO object.
      CLEAR t277.
      CLEAR t276.
      t277 = t263.
      TRY.
          t262 ?= t277.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t262 IS NOT BOUND.
        TRY.
            t276 ?= t263.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t276 IS BOUND.
          t262 = t276->source( ).
        ENDIF.
        IF t262 IS NOT BOUND.
          CREATE OBJECT t262.
          t262->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t262->oval = t263.
        ENDIF.
      ENDIF.
    ENDIF.
    t261->load( ).
    APPEND t262 TO t261->items.
    t261->save( ).
    DATA t278 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t278.
    DATA(t279) = t131.
    DATA(t280) = t148.
    DATA(t281) = t165.
    t278 = zcl_lnt_st_combi_module=>per( i_first = t279 i_second = t280 i_rest = t281 ).
    t130 = t278.
    CLEAR t129.
    IF t130 IS BOUND.
      DATA t282 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t282.
      DATA t283 TYPE REF TO object.
      CLEAR t283.
      CLEAR t282.
      t283 = t130.
      TRY.
          t129 ?= t283.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t129 IS NOT BOUND.
        TRY.
            t282 ?= t130.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t282 IS BOUND.
          t129 = t282->source( ).
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
    DATA t284 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t284.
    DATA(t285) = t120.
    DATA(t286) = t123.
    DATA(t287) = t126.
    t284 = zcl_lnt_st_combi_module=>seq( i_first = t285 i_second = t286 i_rest = t287 ).
    t119 = t284.
    t118 = t119.
    DATA t288 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t288.
    DATA t289 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t289.
    DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t290.
    DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t291.
    DATA(t292) = |DISTANCE BETWEEN|.
    CLEAR t291.
    CREATE OBJECT t291.
    t291->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t291->sval = t292.
    t290 = t291.
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t293.
    DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t294.
    DATA(t295) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t294.
    IF t295 IS BOUND.
      CREATE OBJECT t294.
      t294->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t294->cval = t295.
    ENDIF.
    t293 = t294.
    DATA t296 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t296.
    DATA t297 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t297.
    CREATE OBJECT t297.
    t296 = t297.
    DATA(t298) = t296.
    DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t299.
    DATA(t300) = |AND|.
    CLEAR t299.
    CREATE OBJECT t299.
    t299->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t299->sval = t300.
    t298->load( ).
    APPEND t299 TO t298->items.
    t298->save( ).
    DATA(t301) = t296.
    DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t302.
    DATA(t303) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t302.
    IF t303 IS BOUND.
      CREATE OBJECT t302.
      t302->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t302->cval = t303.
    ENDIF.
    t301->load( ).
    APPEND t302 TO t301->items.
    t301->save( ).
    DATA(t304) = t296.
    DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t305.
    DATA(t306) = |INTO|.
    CLEAR t305.
    CREATE OBJECT t305.
    t305->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t305->sval = t306.
    t304->load( ).
    APPEND t305 TO t304->items.
    t304->save( ).
    DATA(t307) = t296.
    DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t308.
    DATA(t309) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t308.
    IF t309 IS BOUND.
      CREATE OBJECT t308.
      t308->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t308->cval = t309.
    ENDIF.
    t307->load( ).
    APPEND t308 TO t307->items.
    t307->save( ).
    DATA(t310) = t296.
    DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t311.
    DATA t312 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t312.
    DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t313.
    DATA(t314) = t87.
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
    t312 = zcl_lnt_st_combi_module=>opt( i_first = t313 ).
    CLEAR t311.
    IF t312 IS BOUND.
      DATA t317 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t317.
      DATA t318 TYPE REF TO object.
      CLEAR t318.
      CLEAR t317.
      t318 = t312.
      TRY.
          t311 ?= t318.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t311 IS NOT BOUND.
        TRY.
            t317 ?= t312.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t317 IS BOUND.
          t311 = t317->source( ).
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
    DATA t319 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t319.
    DATA(t320) = t290.
    DATA(t321) = t293.
    DATA(t322) = t296.
    t319 = zcl_lnt_st_combi_module=>seq( i_first = t320 i_second = t321 i_rest = t322 ).
    t289 = t319.
    t288 = t289.
    DATA t323 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t323.
    DATA t324 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t324.
    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t325.
    DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t326.
    DATA(t327) = |NUMBER OF LINES|.
    CLEAR t326.
    CREATE OBJECT t326.
    t326->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t326->sval = t327.
    t325 = t326.
    DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t328.
    DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t329.
    DATA(t330) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t329.
    IF t330 IS BOUND.
      CREATE OBJECT t329.
      t329->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t329->cval = t330.
    ENDIF.
    t328 = t329.
    DATA t331 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t331.
    DATA t332 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t332.
    CREATE OBJECT t332.
    t331 = t332.
    DATA t333 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t333.
    DATA(t334) = t325.
    DATA(t335) = t328.
    DATA(t336) = t331.
    t333 = zcl_lnt_st_combi_module=>seq( i_first = t334 i_second = t335 i_rest = t336 ).
    t324 = t333.
    t323 = t324.
    DATA t337 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t337.
    DATA t338 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t338.
    DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t339.
    DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t340.
    DATA(t341) = |NUMBER OF PAGES|.
    CLEAR t340.
    CREATE OBJECT t340.
    t340->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t340->sval = t341.
    t339 = t340.
    DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t342.
    DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t343.
    DATA(t344) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t343.
    IF t344 IS BOUND.
      CREATE OBJECT t343.
      t343->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t343->cval = t344.
    ENDIF.
    t342 = t343.
    DATA t345 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t345.
    DATA t346 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t346.
    CREATE OBJECT t346.
    t345 = t346.
    DATA t347 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t347.
    DATA(t348) = t339.
    DATA(t349) = t342.
    DATA(t350) = t345.
    t347 = zcl_lnt_st_combi_module=>seq( i_first = t348 i_second = t349 i_rest = t350 ).
    t338 = t347.
    t337 = t338.
    DATA t351 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t351.
    DATA t352 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t352.
    DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t353.
    DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t354.
    DATA(t355) = |LINE|.
    CLEAR t354.
    CREATE OBJECT t354.
    t354->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t354->sval = t355.
    t353 = t354.
    DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t356.
    DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t357.
    DATA(t358) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t357.
    IF t358 IS BOUND.
      CREATE OBJECT t357.
      t357->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t357->cval = t358.
    ENDIF.
    t356 = t357.
    DATA t359 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t359.
    DATA t360 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t360.
    CREATE OBJECT t360.
    t359 = t360.
    DATA t361 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t361.
    DATA(t362) = t353.
    DATA(t363) = t356.
    DATA(t364) = t359.
    t361 = zcl_lnt_st_combi_module=>seq( i_first = t362 i_second = t363 i_rest = t364 ).
    t352 = t361.
    t351 = t352.
    DATA t365 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t365.
    DATA t366 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t366.
    DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t367.
    DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t368.
    DATA(t369) = |PAGE|.
    CLEAR t368.
    CREATE OBJECT t368.
    t368->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t368->sval = t369.
    t367 = t368.
    DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t370.
    DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t371.
    DATA(t372) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t371.
    IF t372 IS BOUND.
      CREATE OBJECT t371.
      t371->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t371->cval = t372.
    ENDIF.
    t370 = t371.
    DATA t373 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t373.
    DATA t374 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t374.
    CREATE OBJECT t374.
    t373 = t374.
    DATA t375 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t375.
    DATA(t376) = t367.
    DATA(t377) = t370.
    DATA(t378) = t373.
    t375 = zcl_lnt_st_combi_module=>seq( i_first = t376 i_second = t377 i_rest = t378 ).
    t366 = t375.
    t365 = t366.
    DATA t379 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t379.
    DATA t380 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t380.
    DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t381.
    DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t382.
    DATA(t383) = |INDEX|.
    CLEAR t382.
    CREATE OBJECT t382.
    t382->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t382->sval = t383.
    t381 = t382.
    DATA t384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t384.
    DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t385.
    DATA(t386) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t385.
    IF t386 IS BOUND.
      CREATE OBJECT t385.
      t385->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t385->cval = t386.
    ENDIF.
    t384 = t385.
    DATA t387 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t387.
    DATA t388 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t388.
    CREATE OBJECT t388.
    t387 = t388.
    DATA t389 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t389.
    DATA(t390) = t381.
    DATA(t391) = t384.
    DATA(t392) = t387.
    t389 = zcl_lnt_st_combi_module=>seq( i_first = t390 i_second = t391 i_rest = t392 ).
    t380 = t389.
    t379 = t380.
    DATA t393 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t393.
    DATA t394 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t394.
    DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t395.
    DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t396.
    DATA(t397) = |TOP-LINES|.
    CLEAR t396.
    CREATE OBJECT t396.
    t396->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t396->sval = t397.
    t395 = t396.
    DATA t398 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t398.
    DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t399.
    DATA(t400) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t399.
    IF t400 IS BOUND.
      CREATE OBJECT t399.
      t399->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t399->cval = t400.
    ENDIF.
    t398 = t399.
    DATA t401 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t401.
    DATA t402 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t402.
    CREATE OBJECT t402.
    t401 = t402.
    DATA t403 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t403.
    DATA(t404) = t395.
    DATA(t405) = t398.
    DATA(t406) = t401.
    t403 = zcl_lnt_st_combi_module=>seq( i_first = t404 i_second = t405 i_rest = t406 ).
    t394 = t403.
    t393 = t394.
    DATA t407 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t407.
    DATA t408 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t408.
    DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t409.
    DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t410.
    DATA(t411) = |LINE-SIZE|.
    CLEAR t410.
    CREATE OBJECT t410.
    t410->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t410->sval = t411.
    t409 = t410.
    DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t412.
    DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t413.
    DATA(t414) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t413.
    IF t414 IS BOUND.
      CREATE OBJECT t413.
      t413->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t413->cval = t414.
    ENDIF.
    t412 = t413.
    DATA t415 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t415.
    DATA t416 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t416.
    CREATE OBJECT t416.
    t415 = t416.
    DATA t417 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t417.
    DATA(t418) = t409.
    DATA(t419) = t412.
    DATA(t420) = t415.
    t417 = zcl_lnt_st_combi_module=>seq( i_first = t418 i_second = t419 i_rest = t420 ).
    t408 = t417.
    t407 = t408.
    DATA t421 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t421.
    DATA t422 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t422.
    DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t423.
    DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t424.
    DATA(t425) = |LINE-COUNT|.
    CLEAR t424.
    CREATE OBJECT t424.
    t424->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t424->sval = t425.
    t423 = t424.
    DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t426.
    DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t427.
    DATA(t428) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t427.
    IF t428 IS BOUND.
      CREATE OBJECT t427.
      t427->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t427->cval = t428.
    ENDIF.
    t426 = t427.
    DATA t429 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t429.
    DATA t430 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t430.
    CREATE OBJECT t430.
    t429 = t430.
    DATA t431 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t431.
    DATA(t432) = t423.
    DATA(t433) = t426.
    DATA(t434) = t429.
    t431 = zcl_lnt_st_combi_module=>seq( i_first = t432 i_second = t433 i_rest = t434 ).
    t422 = t431.
    t421 = t422.
    DATA t435 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t435.
    DATA t436 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t436.
    DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t437.
    DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t438.
    DATA(t439) = |FIRST-LINE|.
    CLEAR t438.
    CREATE OBJECT t438.
    t438->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t438->sval = t439.
    t437 = t438.
    DATA t440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t440.
    DATA t441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t441.
    DATA(t442) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t441.
    IF t442 IS BOUND.
      CREATE OBJECT t441.
      t441->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t441->cval = t442.
    ENDIF.
    t440 = t441.
    DATA t443 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t443.
    DATA t444 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t444.
    CREATE OBJECT t444.
    t443 = t444.
    DATA t445 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t445.
    DATA(t446) = t437.
    DATA(t447) = t440.
    DATA(t448) = t443.
    t445 = zcl_lnt_st_combi_module=>seq( i_first = t446 i_second = t447 i_rest = t448 ).
    t436 = t445.
    t435 = t436.
    DATA t449 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t449.
    DATA t450 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t450.
    DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t451.
    DATA t452 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t452.
    DATA(t453) = |LIST|.
    CLEAR t452.
    CREATE OBJECT t452.
    t452->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t452->sval = t453.
    t451 = t452.
    DATA t454 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t454.
    DATA t455 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t455.
    DATA t456 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t456.
    DATA t457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t457.
    DATA t458 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t458.
    DATA(t459) = t323.
    CLEAR t458.
    IF t459 IS BOUND.
      DATA t460 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t460.
      DATA t461 TYPE REF TO object.
      CLEAR t461.
      CLEAR t460.
      t461 = t459.
      TRY.
          t458 ?= t461.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t458 IS NOT BOUND.
        TRY.
            t460 ?= t459.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t460 IS BOUND.
          t458 = t460->source( ).
        ENDIF.
        IF t458 IS NOT BOUND.
          CREATE OBJECT t458.
          t458->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t458->oval = t459.
        ENDIF.
      ENDIF.
    ENDIF.
    t457 = t458.
    DATA t462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t462.
    DATA t463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t463.
    DATA(t464) = t337.
    CLEAR t463.
    IF t464 IS BOUND.
      DATA t465 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t465.
      DATA t466 TYPE REF TO object.
      CLEAR t466.
      CLEAR t465.
      t466 = t464.
      TRY.
          t463 ?= t466.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t463 IS NOT BOUND.
        TRY.
            t465 ?= t464.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t465 IS BOUND.
          t463 = t465->source( ).
        ENDIF.
        IF t463 IS NOT BOUND.
          CREATE OBJECT t463.
          t463->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t463->oval = t464.
        ENDIF.
      ENDIF.
    ENDIF.
    t462 = t463.
    DATA t467 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t467.
    DATA t468 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t468.
    CREATE OBJECT t468.
    t467 = t468.
    DATA(t469) = t467.
    DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t470.
    DATA(t471) = t379.
    CLEAR t470.
    IF t471 IS BOUND.
      DATA t472 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t472.
      DATA t473 TYPE REF TO object.
      CLEAR t473.
      CLEAR t472.
      t473 = t471.
      TRY.
          t470 ?= t473.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t470 IS NOT BOUND.
        TRY.
            t472 ?= t471.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t472 IS BOUND.
          t470 = t472->source( ).
        ENDIF.
        IF t470 IS NOT BOUND.
          CREATE OBJECT t470.
          t470->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t470->oval = t471.
        ENDIF.
      ENDIF.
    ENDIF.
    t469->load( ).
    APPEND t470 TO t469->items.
    t469->save( ).
    DATA(t474) = t467.
    DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t475.
    DATA(t476) = t351.
    CLEAR t475.
    IF t476 IS BOUND.
      DATA t477 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t477.
      DATA t478 TYPE REF TO object.
      CLEAR t478.
      CLEAR t477.
      t478 = t476.
      TRY.
          t475 ?= t478.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t475 IS NOT BOUND.
        TRY.
            t477 ?= t476.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t477 IS BOUND.
          t475 = t477->source( ).
        ENDIF.
        IF t475 IS NOT BOUND.
          CREATE OBJECT t475.
          t475->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t475->oval = t476.
        ENDIF.
      ENDIF.
    ENDIF.
    t474->load( ).
    APPEND t475 TO t474->items.
    t474->save( ).
    DATA(t479) = t467.
    DATA t480 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t480.
    DATA(t481) = t365.
    CLEAR t480.
    IF t481 IS BOUND.
      DATA t482 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t482.
      DATA t483 TYPE REF TO object.
      CLEAR t483.
      CLEAR t482.
      t483 = t481.
      TRY.
          t480 ?= t483.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t480 IS NOT BOUND.
        TRY.
            t482 ?= t481.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t482 IS BOUND.
          t480 = t482->source( ).
        ENDIF.
        IF t480 IS NOT BOUND.
          CREATE OBJECT t480.
          t480->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t480->oval = t481.
        ENDIF.
      ENDIF.
    ENDIF.
    t479->load( ).
    APPEND t480 TO t479->items.
    t479->save( ).
    DATA(t484) = t467.
    DATA t485 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t485.
    DATA(t486) = t393.
    CLEAR t485.
    IF t486 IS BOUND.
      DATA t487 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t487.
      DATA t488 TYPE REF TO object.
      CLEAR t488.
      CLEAR t487.
      t488 = t486.
      TRY.
          t485 ?= t488.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t485 IS NOT BOUND.
        TRY.
            t487 ?= t486.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t487 IS BOUND.
          t485 = t487->source( ).
        ENDIF.
        IF t485 IS NOT BOUND.
          CREATE OBJECT t485.
          t485->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t485->oval = t486.
        ENDIF.
      ENDIF.
    ENDIF.
    t484->load( ).
    APPEND t485 TO t484->items.
    t484->save( ).
    DATA(t489) = t467.
    DATA t490 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t490.
    DATA(t491) = t435.
    CLEAR t490.
    IF t491 IS BOUND.
      DATA t492 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t492.
      DATA t493 TYPE REF TO object.
      CLEAR t493.
      CLEAR t492.
      t493 = t491.
      TRY.
          t490 ?= t493.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t490 IS NOT BOUND.
        TRY.
            t492 ?= t491.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t492 IS BOUND.
          t490 = t492->source( ).
        ENDIF.
        IF t490 IS NOT BOUND.
          CREATE OBJECT t490.
          t490->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t490->oval = t491.
        ENDIF.
      ENDIF.
    ENDIF.
    t489->load( ).
    APPEND t490 TO t489->items.
    t489->save( ).
    DATA(t494) = t467.
    DATA t495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t495.
    DATA(t496) = t1.
    CLEAR t495.
    IF t496 IS BOUND.
      DATA t497 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t497.
      DATA t498 TYPE REF TO object.
      CLEAR t498.
      CLEAR t497.
      t498 = t496.
      TRY.
          t495 ?= t498.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t495 IS NOT BOUND.
        TRY.
            t497 ?= t496.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t497 IS BOUND.
          t495 = t497->source( ).
        ENDIF.
        IF t495 IS NOT BOUND.
          CREATE OBJECT t495.
          t495->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t495->oval = t496.
        ENDIF.
      ENDIF.
    ENDIF.
    t494->load( ).
    APPEND t495 TO t494->items.
    t494->save( ).
    DATA(t499) = t467.
    DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t500.
    DATA(t501) = t407.
    CLEAR t500.
    IF t501 IS BOUND.
      DATA t502 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t502.
      DATA t503 TYPE REF TO object.
      CLEAR t503.
      CLEAR t502.
      t503 = t501.
      TRY.
          t500 ?= t503.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t500 IS NOT BOUND.
        TRY.
            t502 ?= t501.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t502 IS BOUND.
          t500 = t502->source( ).
        ENDIF.
        IF t500 IS NOT BOUND.
          CREATE OBJECT t500.
          t500->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t500->oval = t501.
        ENDIF.
      ENDIF.
    ENDIF.
    t499->load( ).
    APPEND t500 TO t499->items.
    t499->save( ).
    DATA(t504) = t467.
    DATA t505 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t505.
    DATA(t506) = t421.
    CLEAR t505.
    IF t506 IS BOUND.
      DATA t507 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t507.
      DATA t508 TYPE REF TO object.
      CLEAR t508.
      CLEAR t507.
      t508 = t506.
      TRY.
          t505 ?= t508.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t505 IS NOT BOUND.
        TRY.
            t507 ?= t506.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t507 IS BOUND.
          t505 = t507->source( ).
        ENDIF.
        IF t505 IS NOT BOUND.
          CREATE OBJECT t505.
          t505->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t505->oval = t506.
        ENDIF.
      ENDIF.
    ENDIF.
    t504->load( ).
    APPEND t505 TO t504->items.
    t504->save( ).
    DATA t509 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t509.
    DATA(t510) = t457.
    DATA(t511) = t462.
    DATA(t512) = t467.
    t509 = zcl_lnt_st_combi_module=>per( i_first = t510 i_second = t511 i_rest = t512 ).
    t456 = t509.
    CLEAR t455.
    IF t456 IS BOUND.
      DATA t513 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t513.
      DATA t514 TYPE REF TO object.
      CLEAR t514.
      CLEAR t513.
      t514 = t456.
      TRY.
          t455 ?= t514.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t455 IS NOT BOUND.
        TRY.
            t513 ?= t456.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t513 IS BOUND.
          t455 = t513->source( ).
        ENDIF.
        IF t455 IS NOT BOUND.
          CREATE OBJECT t455.
          t455->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t455->oval = t456.
        ENDIF.
      ENDIF.
    ENDIF.
    t454 = t455.
    DATA t515 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t515.
    DATA t516 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t516.
    CREATE OBJECT t516.
    t515 = t516.
    DATA t517 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t517.
    DATA(t518) = t451.
    DATA(t519) = t454.
    DATA(t520) = t515.
    t517 = zcl_lnt_st_combi_module=>seq( i_first = t518 i_second = t519 i_rest = t520 ).
    t450 = t517.
    t449 = t450.
    DATA t521 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t521.
    DATA t522 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t522.
    DATA t523 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t523.
    DATA t524 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t524.
    DATA(t525) = |DESCRIBE|.
    CLEAR t524.
    CREATE OBJECT t524.
    t524->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t524->sval = t525.
    t523 = t524.
    DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t526.
    DATA t527 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t527.
    DATA t528 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t528.
    DATA t529 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t529.
    DATA t530 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t530.
    DATA(t531) = t43.
    CLEAR t530.
    IF t531 IS BOUND.
      DATA t532 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t532.
      DATA t533 TYPE REF TO object.
      CLEAR t533.
      CLEAR t532.
      t533 = t531.
      TRY.
          t530 ?= t533.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t530 IS NOT BOUND.
        TRY.
            t532 ?= t531.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t532 IS BOUND.
          t530 = t532->source( ).
        ENDIF.
        IF t530 IS NOT BOUND.
          CREATE OBJECT t530.
          t530->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t530->oval = t531.
        ENDIF.
      ENDIF.
    ENDIF.
    t529 = t530.
    DATA t534 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t534.
    DATA t535 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t535.
    DATA(t536) = t118.
    CLEAR t535.
    IF t536 IS BOUND.
      DATA t537 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t537.
      DATA t538 TYPE REF TO object.
      CLEAR t538.
      CLEAR t537.
      t538 = t536.
      TRY.
          t535 ?= t538.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t535 IS NOT BOUND.
        TRY.
            t537 ?= t536.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t537 IS BOUND.
          t535 = t537->source( ).
        ENDIF.
        IF t535 IS NOT BOUND.
          CREATE OBJECT t535.
          t535->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t535->oval = t536.
        ENDIF.
      ENDIF.
    ENDIF.
    t534 = t535.
    DATA t539 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t539.
    DATA t540 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t540.
    CREATE OBJECT t540.
    t539 = t540.
    DATA(t541) = t539.
    DATA t542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t542.
    DATA(t543) = t288.
    CLEAR t542.
    IF t543 IS BOUND.
      DATA t544 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t544.
      DATA t545 TYPE REF TO object.
      CLEAR t545.
      CLEAR t544.
      t545 = t543.
      TRY.
          t542 ?= t545.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t542 IS NOT BOUND.
        TRY.
            t544 ?= t543.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t544 IS BOUND.
          t542 = t544->source( ).
        ENDIF.
        IF t542 IS NOT BOUND.
          CREATE OBJECT t542.
          t542->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t542->oval = t543.
        ENDIF.
      ENDIF.
    ENDIF.
    t541->load( ).
    APPEND t542 TO t541->items.
    t541->save( ).
    DATA(t546) = t539.
    DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t547.
    DATA(t548) = t449.
    CLEAR t547.
    IF t548 IS BOUND.
      DATA t549 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t549.
      DATA t550 TYPE REF TO object.
      CLEAR t550.
      CLEAR t549.
      t550 = t548.
      TRY.
          t547 ?= t550.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t547 IS NOT BOUND.
        TRY.
            t549 ?= t548.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t549 IS BOUND.
          t547 = t549->source( ).
        ENDIF.
        IF t547 IS NOT BOUND.
          CREATE OBJECT t547.
          t547->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t547->oval = t548.
        ENDIF.
      ENDIF.
    ENDIF.
    t546->load( ).
    APPEND t547 TO t546->items.
    t546->save( ).
    DATA t551 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t551.
    DATA(t552) = t529.
    DATA(t553) = t534.
    DATA(t554) = t539.
    t551 = zcl_lnt_st_combi_module=>alt_prio( i_first = t552 i_second = t553 i_rest = t554 ).
    t528 = t551.
    CLEAR t527.
    IF t528 IS BOUND.
      DATA t555 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t555.
      DATA t556 TYPE REF TO object.
      CLEAR t556.
      CLEAR t555.
      t556 = t528.
      TRY.
          t527 ?= t556.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t527 IS NOT BOUND.
        TRY.
            t555 ?= t528.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t555 IS BOUND.
          t527 = t555->source( ).
        ENDIF.
        IF t527 IS NOT BOUND.
          CREATE OBJECT t527.
          t527->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t527->oval = t528.
        ENDIF.
      ENDIF.
    ENDIF.
    t526 = t527.
    DATA t557 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t557.
    DATA t558 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t558.
    CREATE OBJECT t558.
    t557 = t558.
    DATA t559 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t559.
    DATA(t560) = t523.
    DATA(t561) = t526.
    DATA(t562) = t557.
    t559 = zcl_lnt_st_combi_module=>seq( i_first = t560 i_second = t561 i_rest = t562 ).
    t522 = t559.
    t521 = t522.
    DATA t563 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t563.
    DATA(t564) = |Cloud|.
    DATA t565 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t565.
    DATA(t566) = t521.
    CLEAR t565.
    IF t566 IS BOUND.
      DATA t567 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t567.
      DATA t568 TYPE REF TO object.
      CLEAR t568.
      CLEAR t567.
      t568 = t566.
      TRY.
          t565 ?= t568.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t565 IS NOT BOUND.
        TRY.
            t567 ?= t566.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t567 IS BOUND.
          t565 = t567->source( ).
        ENDIF.
        IF t565 IS NOT BOUND.
          CREATE OBJECT t565.
          t565->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t565->oval = t566.
        ENDIF.
      ENDIF.
    ENDIF.
    t563 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t564 i_first = t565 ).
    result = t563.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d450_5d14e5d4dc2d.
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
