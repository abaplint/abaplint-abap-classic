* TS: src/abap/2_statements/statements/import.ts:8:1 Import
CLASS zcl_lnt_st_import DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_import IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = |TO|.
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
    DATA(t19) = |CLIENT|.
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
    DATA(t33) = |ID|.
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
    DATA(t47) = |USING|.
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
    DATA(t61) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    CLEAR t60.
    IF t61 IS BOUND.
      CREATE OBJECT t60.
      t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t60->cval = t61.
    ENDIF.
    t59 = t60.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t64.
    DATA(t65) = zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4.
    t64 = zcl_lnt_st_combi_module=>tok( i_t = t65 ).
    CLEAR t63.
    IF t64 IS BOUND.
      DATA t66 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t66.
      DATA t67 TYPE REF TO object.
      CLEAR t67.
      CLEAR t66.
      t67 = t64.
      TRY.
          t63 ?= t67.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t63 IS NOT BOUND.
        TRY.
            t66 ?= t64.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t66 IS BOUND.
          t63 = t66->source( ).
        ENDIF.
        IF t63 IS NOT BOUND.
          CREATE OBJECT t63.
          t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t63->oval = t64.
        ENDIF.
      ENDIF.
    ENDIF.
    t62 = t63.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t68.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t69.
    CREATE OBJECT t69.
    t68 = t69.
    DATA(t70) = t68.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t73.
    DATA(t74) = `^[\w$%\^]{2}$`.
    DATA(t75) = `^[A-Za-z0-9_$%\^]{2}$`.
    DATA(t76) = ||.
    CREATE OBJECT t73 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t75 flags = t76.
    t73->source = t74.
    t72 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t73 ).
    CLEAR t71.
    IF t72 IS BOUND.
      DATA t77 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t77.
      DATA t78 TYPE REF TO object.
      CLEAR t78.
      CLEAR t77.
      t78 = t72.
      TRY.
          t71 ?= t78.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t71 IS NOT BOUND.
        TRY.
            t77 ?= t72.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t77 IS BOUND.
          t71 = t77->source( ).
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
    DATA(t79) = t68.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    DATA t81 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t81.
    DATA(t82) = zlnt_runtime_desc_78196487750d=>zlnt_member_d30_2f4abb22e3612e.
    t81 = zcl_lnt_st_combi_module=>tok( i_t = t82 ).
    CLEAR t80.
    IF t81 IS BOUND.
      DATA t83 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t83.
      DATA t84 TYPE REF TO object.
      CLEAR t84.
      CLEAR t83.
      t84 = t81.
      TRY.
          t80 ?= t84.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t80 IS NOT BOUND.
        TRY.
            t83 ?= t81.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t83 IS BOUND.
          t80 = t83->source( ).
        ENDIF.
        IF t80 IS NOT BOUND.
          CREATE OBJECT t80.
          t80->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t80->oval = t81.
        ENDIF.
      ENDIF.
    ENDIF.
    t79->load( ).
    APPEND t80 TO t79->items.
    t79->save( ).
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t85.
    DATA(t86) = t59.
    DATA(t87) = t62.
    DATA(t88) = t68.
    t85 = zcl_lnt_st_combi_module=>seq( i_first = t86 i_second = t87 i_rest = t88 ).
    t58 = t85.
    t57 = t58.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t89.
    DATA t90 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA(t93) = |DATA BUFFER|.
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
    DATA(t105) = |KeyUser|.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA t107 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t107.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t108.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA(t110) = |MEMORY|.
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
    DATA(t118) = |ID|.
    CLEAR t117.
    CREATE OBJECT t117.
    t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t117->sval = t118.
    t116 = t117.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t119.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    DATA(t121) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t120.
    IF t121 IS BOUND.
      CREATE OBJECT t120.
      t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t120->cval = t121.
    ENDIF.
    t119 = t120.
    DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t122.
    DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t123.
    CREATE OBJECT t123.
    t122 = t123.
    DATA t124 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t124.
    DATA(t125) = t116.
    DATA(t126) = t119.
    DATA(t127) = t122.
    t124 = zcl_lnt_st_combi_module=>seq( i_first = t125 i_second = t126 i_rest = t127 ).
    t115 = t124.
    CLEAR t114.
    IF t115 IS BOUND.
      DATA t128 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t128.
      DATA t129 TYPE REF TO object.
      CLEAR t129.
      CLEAR t128.
      t129 = t115.
      TRY.
          t114 ?= t129.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t114 IS NOT BOUND.
        TRY.
            t128 ?= t115.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t128 IS BOUND.
          t114 = t128->source( ).
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
      DATA t130 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t130.
      DATA t131 TYPE REF TO object.
      CLEAR t131.
      CLEAR t130.
      t131 = t113.
      TRY.
          t112 ?= t131.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t112 IS NOT BOUND.
        TRY.
            t130 ?= t113.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t130 IS BOUND.
          t112 = t130->source( ).
        ENDIF.
        IF t112 IS NOT BOUND.
          CREATE OBJECT t112.
          t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t112->oval = t113.
        ENDIF.
      ENDIF.
    ENDIF.
    t111 = t112.
    DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t132.
    DATA t133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t133.
    CREATE OBJECT t133.
    t132 = t133.
    DATA t134 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t134.
    DATA(t135) = t108.
    DATA(t136) = t111.
    DATA(t137) = t132.
    t134 = zcl_lnt_st_combi_module=>seq( i_first = t135 i_second = t136 i_rest = t137 ).
    t107 = t134.
    CLEAR t106.
    IF t107 IS BOUND.
      DATA t138 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t138.
      DATA t139 TYPE REF TO object.
      CLEAR t139.
      CLEAR t138.
      t139 = t107.
      TRY.
          t106 ?= t139.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t106 IS NOT BOUND.
        TRY.
            t138 ?= t107.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t138 IS BOUND.
          t106 = t138->source( ).
        ENDIF.
        IF t106 IS NOT BOUND.
          CREATE OBJECT t106.
          t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t106->oval = t107.
        ENDIF.
      ENDIF.
    ENDIF.
    t104 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t105 i_first = t106 ).
    t103 = t104.
    DATA t140 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t140.
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t141.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    DATA(t144) = |INTERNAL TABLE|.
    CLEAR t143.
    CREATE OBJECT t143.
    t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t143->sval = t144.
    t142 = t143.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t145.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA(t147) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t146.
    IF t147 IS BOUND.
      CREATE OBJECT t146.
      t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t146->cval = t147.
    ENDIF.
    t145 = t146.
    DATA t148 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t148.
    DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t149.
    CREATE OBJECT t149.
    t148 = t149.
    DATA t150 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t150.
    DATA(t151) = t142.
    DATA(t152) = t145.
    DATA(t153) = t148.
    t150 = zcl_lnt_st_combi_module=>seq( i_first = t151 i_second = t152 i_rest = t153 ).
    t141 = t150.
    t140 = t141.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t154.
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t155.
    DATA(t156) = |KeyUser|.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    DATA t158 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t158.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t161.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t162.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t163.
    DATA(t164) = |SHARED MEMORY|.
    CLEAR t163.
    CREATE OBJECT t163.
    t163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t163->sval = t164.
    t162 = t163.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t165.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t166.
    DATA(t167) = |SHARED BUFFER|.
    CLEAR t166.
    CREATE OBJECT t166.
    t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t166->sval = t167.
    t165 = t166.
    DATA t168 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t168.
    DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t169.
    CREATE OBJECT t169.
    t168 = t169.
    DATA t170 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t170.
    DATA(t171) = t162.
    DATA(t172) = t165.
    DATA(t173) = t168.
    t170 = zcl_lnt_st_combi_module=>alt( i_first = t171 i_second = t172 i_rest = t173 ).
    t161 = t170.
    CLEAR t160.
    IF t161 IS BOUND.
      DATA t174 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t174.
      DATA t175 TYPE REF TO object.
      CLEAR t175.
      CLEAR t174.
      t175 = t161.
      TRY.
          t160 ?= t175.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t160 IS NOT BOUND.
        TRY.
            t174 ?= t161.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t174 IS BOUND.
          t160 = t174->source( ).
        ENDIF.
        IF t160 IS NOT BOUND.
          CREATE OBJECT t160.
          t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t160->oval = t161.
        ENDIF.
      ENDIF.
    ENDIF.
    t159 = t160.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t176.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t177.
    DATA(t178) = t57.
    CLEAR t177.
    IF t178 IS BOUND.
      DATA t179 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t179.
      DATA t180 TYPE REF TO object.
      CLEAR t180.
      CLEAR t179.
      t180 = t178.
      TRY.
          t177 ?= t180.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t177 IS NOT BOUND.
        TRY.
            t179 ?= t178.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t179 IS BOUND.
          t177 = t179->source( ).
        ENDIF.
        IF t177 IS NOT BOUND.
          CREATE OBJECT t177.
          t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t177->oval = t178.
        ENDIF.
      ENDIF.
    ENDIF.
    t176 = t177.
    DATA t181 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t181.
    DATA t182 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t182.
    CREATE OBJECT t182.
    t181 = t182.
    DATA(t183) = t181.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t184.
    DATA t185 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t185.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t186.
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t187.
    DATA(t188) = t1.
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
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t191.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t192.
    DATA(t193) = t15.
    CLEAR t192.
    IF t193 IS BOUND.
      DATA t194 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t194.
      DATA t195 TYPE REF TO object.
      CLEAR t195.
      CLEAR t194.
      t195 = t193.
      TRY.
          t192 ?= t195.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t192 IS NOT BOUND.
        TRY.
            t194 ?= t193.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t194 IS BOUND.
          t192 = t194->source( ).
        ENDIF.
        IF t192 IS NOT BOUND.
          CREATE OBJECT t192.
          t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t192->oval = t193.
        ENDIF.
      ENDIF.
    ENDIF.
    t191 = t192.
    DATA t196 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t196.
    DATA t197 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t197.
    CREATE OBJECT t197.
    t196 = t197.
    DATA(t198) = t196.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t199.
    DATA(t200) = t29.
    CLEAR t199.
    IF t200 IS BOUND.
      DATA t201 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t201.
      DATA t202 TYPE REF TO object.
      CLEAR t202.
      CLEAR t201.
      t202 = t200.
      TRY.
          t199 ?= t202.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t199 IS NOT BOUND.
        TRY.
            t201 ?= t200.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t201 IS BOUND.
          t199 = t201->source( ).
        ENDIF.
        IF t199 IS NOT BOUND.
          CREATE OBJECT t199.
          t199->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t199->oval = t200.
        ENDIF.
      ENDIF.
    ENDIF.
    t198->load( ).
    APPEND t199 TO t198->items.
    t198->save( ).
    DATA t203 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t203.
    DATA(t204) = t186.
    DATA(t205) = t191.
    DATA(t206) = t196.
    t203 = zcl_lnt_st_combi_module=>per( i_first = t204 i_second = t205 i_rest = t206 ).
    t185 = t203.
    CLEAR t184.
    IF t185 IS BOUND.
      DATA t207 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t207.
      DATA t208 TYPE REF TO object.
      CLEAR t208.
      CLEAR t207.
      t208 = t185.
      TRY.
          t184 ?= t208.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t184 IS NOT BOUND.
        TRY.
            t207 ?= t185.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t207 IS BOUND.
          t184 = t207->source( ).
        ENDIF.
        IF t184 IS NOT BOUND.
          CREATE OBJECT t184.
          t184->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t184->oval = t185.
        ENDIF.
      ENDIF.
    ENDIF.
    t183->load( ).
    APPEND t184 TO t183->items.
    t183->save( ).
    DATA t209 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t209.
    DATA(t210) = t159.
    DATA(t211) = t176.
    DATA(t212) = t181.
    t209 = zcl_lnt_st_combi_module=>seq( i_first = t210 i_second = t211 i_rest = t212 ).
    t158 = t209.
    CLEAR t157.
    IF t158 IS BOUND.
      DATA t213 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t213.
      DATA t214 TYPE REF TO object.
      CLEAR t214.
      CLEAR t213.
      t214 = t158.
      TRY.
          t157 ?= t214.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t157 IS NOT BOUND.
        TRY.
            t213 ?= t158.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t213 IS BOUND.
          t157 = t213->source( ).
        ENDIF.
        IF t157 IS NOT BOUND.
          CREATE OBJECT t157.
          t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t157->oval = t158.
        ENDIF.
      ENDIF.
    ENDIF.
    t155 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t156 i_first = t157 ).
    t154 = t155.
    DATA t215 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t215.
    DATA t216 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t216.
    DATA(t217) = |KeyUser|.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t218.
    DATA t219 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t219.
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t220.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t221.
    DATA(t222) = |DATABASE|.
    CLEAR t221.
    CREATE OBJECT t221.
    t221->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t221->sval = t222.
    t220 = t221.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t223.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t224.
    DATA(t225) = t57.
    CLEAR t224.
    IF t225 IS BOUND.
      DATA t226 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t226.
      DATA t227 TYPE REF TO object.
      CLEAR t227.
      CLEAR t226.
      t227 = t225.
      TRY.
          t224 ?= t227.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t224 IS NOT BOUND.
        TRY.
            t226 ?= t225.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t226 IS BOUND.
          t224 = t226->source( ).
        ENDIF.
        IF t224 IS NOT BOUND.
          CREATE OBJECT t224.
          t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t224->oval = t225.
        ENDIF.
      ENDIF.
    ENDIF.
    t223 = t224.
    DATA t228 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t228.
    DATA t229 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t229.
    CREATE OBJECT t229.
    t228 = t229.
    DATA(t230) = t228.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t231.
    DATA t232 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t232.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t233.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t234.
    DATA(t235) = t1.
    CLEAR t234.
    IF t235 IS BOUND.
      DATA t236 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t236.
      DATA t237 TYPE REF TO object.
      CLEAR t237.
      CLEAR t236.
      t237 = t235.
      TRY.
          t234 ?= t237.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t234 IS NOT BOUND.
        TRY.
            t236 ?= t235.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t236 IS BOUND.
          t234 = t236->source( ).
        ENDIF.
        IF t234 IS NOT BOUND.
          CREATE OBJECT t234.
          t234->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t234->oval = t235.
        ENDIF.
      ENDIF.
    ENDIF.
    t233 = t234.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t238.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t239.
    DATA(t240) = t15.
    CLEAR t239.
    IF t240 IS BOUND.
      DATA t241 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t241.
      DATA t242 TYPE REF TO object.
      CLEAR t242.
      CLEAR t241.
      t242 = t240.
      TRY.
          t239 ?= t242.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t239 IS NOT BOUND.
        TRY.
            t241 ?= t240.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t241 IS BOUND.
          t239 = t241->source( ).
        ENDIF.
        IF t239 IS NOT BOUND.
          CREATE OBJECT t239.
          t239->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t239->oval = t240.
        ENDIF.
      ENDIF.
    ENDIF.
    t238 = t239.
    DATA t243 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t243.
    DATA t244 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t244.
    CREATE OBJECT t244.
    t243 = t244.
    DATA(t245) = t243.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t246.
    DATA(t247) = t29.
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
    t245->load( ).
    APPEND t246 TO t245->items.
    t245->save( ).
    DATA(t250) = t243.
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t251.
    DATA(t252) = t43.
    CLEAR t251.
    IF t252 IS BOUND.
      DATA t253 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t253.
      DATA t254 TYPE REF TO object.
      CLEAR t254.
      CLEAR t253.
      t254 = t252.
      TRY.
          t251 ?= t254.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t251 IS NOT BOUND.
        TRY.
            t253 ?= t252.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t253 IS BOUND.
          t251 = t253->source( ).
        ENDIF.
        IF t251 IS NOT BOUND.
          CREATE OBJECT t251.
          t251->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t251->oval = t252.
        ENDIF.
      ENDIF.
    ENDIF.
    t250->load( ).
    APPEND t251 TO t250->items.
    t250->save( ).
    DATA t255 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t255.
    DATA(t256) = t233.
    DATA(t257) = t238.
    DATA(t258) = t243.
    t255 = zcl_lnt_st_combi_module=>per( i_first = t256 i_second = t257 i_rest = t258 ).
    t232 = t255.
    CLEAR t231.
    IF t232 IS BOUND.
      DATA t259 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t259.
      DATA t260 TYPE REF TO object.
      CLEAR t260.
      CLEAR t259.
      t260 = t232.
      TRY.
          t231 ?= t260.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t231 IS NOT BOUND.
        TRY.
            t259 ?= t232.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t259 IS BOUND.
          t231 = t259->source( ).
        ENDIF.
        IF t231 IS NOT BOUND.
          CREATE OBJECT t231.
          t231->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t231->oval = t232.
        ENDIF.
      ENDIF.
    ENDIF.
    t230->load( ).
    APPEND t231 TO t230->items.
    t230->save( ).
    DATA t261 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t261.
    DATA(t262) = t220.
    DATA(t263) = t223.
    DATA(t264) = t228.
    t261 = zcl_lnt_st_combi_module=>seq( i_first = t262 i_second = t263 i_rest = t264 ).
    t219 = t261.
    CLEAR t218.
    IF t219 IS BOUND.
      DATA t265 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t265.
      DATA t266 TYPE REF TO object.
      CLEAR t266.
      CLEAR t265.
      t266 = t219.
      TRY.
          t218 ?= t266.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t218 IS NOT BOUND.
        TRY.
            t265 ?= t219.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t265 IS BOUND.
          t218 = t265->source( ).
        ENDIF.
        IF t218 IS NOT BOUND.
          CREATE OBJECT t218.
          t218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t218->oval = t219.
        ENDIF.
      ENDIF.
    ENDIF.
    t216 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t217 i_first = t218 ).
    t215 = t216.
    DATA t267 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t267.
    DATA t268 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t268.
    DATA(t269) = |KeyUser|.
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t270.
    DATA t271 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t271.
    DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t272.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t273.
    DATA(t274) = |LOGFILE ID|.
    CLEAR t273.
    CREATE OBJECT t273.
    t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t273->sval = t274.
    t272 = t273.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t275.
    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t276.
    DATA(t277) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t276.
    IF t277 IS BOUND.
      CREATE OBJECT t276.
      t276->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t276->cval = t277.
    ENDIF.
    t275 = t276.
    DATA t278 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t278.
    DATA t279 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t279.
    CREATE OBJECT t279.
    t278 = t279.
    DATA t280 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t280.
    DATA(t281) = t272.
    DATA(t282) = t275.
    DATA(t283) = t278.
    t280 = zcl_lnt_st_combi_module=>seq( i_first = t281 i_second = t282 i_rest = t283 ).
    t271 = t280.
    CLEAR t270.
    IF t271 IS BOUND.
      DATA t284 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t284.
      DATA t285 TYPE REF TO object.
      CLEAR t285.
      CLEAR t284.
      t285 = t271.
      TRY.
          t270 ?= t285.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t270 IS NOT BOUND.
        TRY.
            t284 ?= t271.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t284 IS BOUND.
          t270 = t284->source( ).
        ENDIF.
        IF t270 IS NOT BOUND.
          CREATE OBJECT t270.
          t270->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t270->oval = t271.
        ENDIF.
      ENDIF.
    ENDIF.
    t268 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t269 i_first = t270 ).
    t267 = t268.
    DATA t286 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t286.
    DATA t287 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t287.
    DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t288.
    DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t289.
    DATA(t290) = t89.
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
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t293.
    DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t294.
    DATA(t295) = t103.
    CLEAR t294.
    IF t295 IS BOUND.
      DATA t296 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t296.
      DATA t297 TYPE REF TO object.
      CLEAR t297.
      CLEAR t296.
      t297 = t295.
      TRY.
          t294 ?= t297.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t294 IS NOT BOUND.
        TRY.
            t296 ?= t295.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t296 IS BOUND.
          t294 = t296->source( ).
        ENDIF.
        IF t294 IS NOT BOUND.
          CREATE OBJECT t294.
          t294->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t294->oval = t295.
        ENDIF.
      ENDIF.
    ENDIF.
    t293 = t294.
    DATA t298 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t298.
    DATA t299 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t299.
    CREATE OBJECT t299.
    t298 = t299.
    DATA(t300) = t298.
    DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t301.
    DATA(t302) = t215.
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
    DATA(t305) = t298.
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t306.
    DATA(t307) = t140.
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
    DATA(t310) = t298.
    DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t311.
    DATA(t312) = t154.
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
    DATA(t315) = t298.
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t316.
    DATA(t317) = t267.
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
    DATA(t321) = t288.
    DATA(t322) = t293.
    DATA(t323) = t298.
    t320 = zcl_lnt_st_combi_module=>alt( i_first = t321 i_second = t322 i_rest = t323 ).
    t287 = t320.
    t286 = t287.
    DATA t324 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t324.
    DATA t325 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t325.
    DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t326.
    DATA t327 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t327.
    DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t328.
    DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t329.
    DATA(t330) = zlnt_runtime_desc_78196487750d=>zlnt_member_d127_3599949d7390.
    CLEAR t329.
    IF t330 IS BOUND.
      CREATE OBJECT t329.
      t329->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t329->cval = t330.
    ENDIF.
    t328 = t329.
    DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t331.
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t332.
    DATA t333 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t333.
    DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t334.
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t335.
    DATA(t336) = |TO|.
    CLEAR t335.
    CREATE OBJECT t335.
    t335->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t335->sval = t336.
    t334 = t335.
    DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t337.
    DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t338.
    DATA(t339) = |INTO|.
    CLEAR t338.
    CREATE OBJECT t338.
    t338->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t338->sval = t339.
    t337 = t338.
    DATA t340 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t340.
    DATA t341 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t341.
    CREATE OBJECT t341.
    t340 = t341.
    DATA t342 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t342.
    DATA(t343) = t334.
    DATA(t344) = t337.
    DATA(t345) = t340.
    t342 = zcl_lnt_st_combi_module=>alt( i_first = t343 i_second = t344 i_rest = t345 ).
    t333 = t342.
    CLEAR t332.
    IF t333 IS BOUND.
      DATA t346 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t346.
      DATA t347 TYPE REF TO object.
      CLEAR t347.
      CLEAR t346.
      t347 = t333.
      TRY.
          t332 ?= t347.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t332 IS NOT BOUND.
        TRY.
            t346 ?= t333.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t346 IS BOUND.
          t332 = t346->source( ).
        ENDIF.
        IF t332 IS NOT BOUND.
          CREATE OBJECT t332.
          t332->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t332->oval = t333.
        ENDIF.
      ENDIF.
    ENDIF.
    t331 = t332.
    DATA t348 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t348.
    DATA t349 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t349.
    CREATE OBJECT t349.
    t348 = t349.
    DATA(t350) = t348.
    DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t351.
    DATA(t352) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t351.
    IF t352 IS BOUND.
      CREATE OBJECT t351.
      t351->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t351->cval = t352.
    ENDIF.
    t350->load( ).
    APPEND t351 TO t350->items.
    t350->save( ).
    DATA t353 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t353.
    DATA(t354) = t328.
    DATA(t355) = t331.
    DATA(t356) = t348.
    t353 = zcl_lnt_st_combi_module=>seq( i_first = t354 i_second = t355 i_rest = t356 ).
    t327 = t353.
    CLEAR t326.
    IF t327 IS BOUND.
      DATA t357 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t357.
      DATA t358 TYPE REF TO object.
      CLEAR t358.
      CLEAR t357.
      t358 = t327.
      TRY.
          t326 ?= t358.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t326 IS NOT BOUND.
        TRY.
            t357 ?= t327.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t357 IS BOUND.
          t326 = t357->source( ).
        ENDIF.
        IF t326 IS NOT BOUND.
          CREATE OBJECT t326.
          t326->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t326->oval = t327.
        ENDIF.
      ENDIF.
    ENDIF.
    t325 = zcl_lnt_st_combi_module=>plus( i_first = t326 ).
    t324 = t325.
    DATA t359 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t359.
    DATA t360 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t360.
    DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t361.
    DATA t362 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t362.
    DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t363.
    DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t364.
    DATA t365 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t365.
    DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t366.
    DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t367.
    DATA(t368) = zlnt_runtime_desc_78196487750d=>zlnt_member_d127_3599949d7390.
    CLEAR t367.
    IF t368 IS BOUND.
      CREATE OBJECT t367.
      t367->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t367->cval = t368.
    ENDIF.
    t366 = t367.
    DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t369.
    DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t370.
    DATA(t371) = zlnt_runtime_desc_78196487750d=>zlnt_member_d172_090204a1a05d.
    CLEAR t370.
    IF t371 IS BOUND.
      CREATE OBJECT t370.
      t370->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t370->cval = t371.
    ENDIF.
    t369 = t370.
    DATA t372 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t372.
    DATA t373 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t373.
    CREATE OBJECT t373.
    t372 = t373.
    DATA t374 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t374.
    DATA(t375) = t366.
    DATA(t376) = t369.
    DATA(t377) = t372.
    t374 = zcl_lnt_st_combi_module=>alt( i_first = t375 i_second = t376 i_rest = t377 ).
    t365 = t374.
    CLEAR t364.
    IF t365 IS BOUND.
      DATA t378 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t378.
      DATA t379 TYPE REF TO object.
      CLEAR t379.
      CLEAR t378.
      t379 = t365.
      TRY.
          t364 ?= t379.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t364 IS NOT BOUND.
        TRY.
            t378 ?= t365.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t378 IS BOUND.
          t364 = t378->source( ).
        ENDIF.
        IF t364 IS NOT BOUND.
          CREATE OBJECT t364.
          t364->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t364->oval = t365.
        ENDIF.
      ENDIF.
    ENDIF.
    t363 = t364.
    DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t380.
    DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t381.
    DATA(t382) = |=|.
    CLEAR t381.
    CREATE OBJECT t381.
    t381->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t381->sval = t382.
    t380 = t381.
    DATA t383 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t383.
    DATA t384 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t384.
    CREATE OBJECT t384.
    t383 = t384.
    DATA(t385) = t383.
    DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t386.
    DATA(t387) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t386.
    IF t387 IS BOUND.
      CREATE OBJECT t386.
      t386->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t386->cval = t387.
    ENDIF.
    t385->load( ).
    APPEND t386 TO t385->items.
    t385->save( ).
    DATA t388 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t388.
    DATA(t389) = t363.
    DATA(t390) = t380.
    DATA(t391) = t383.
    t388 = zcl_lnt_st_combi_module=>seq( i_first = t389 i_second = t390 i_rest = t391 ).
    t362 = t388.
    CLEAR t361.
    IF t362 IS BOUND.
      DATA t392 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t392.
      DATA t393 TYPE REF TO object.
      CLEAR t393.
      CLEAR t392.
      t393 = t362.
      TRY.
          t361 ?= t393.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t361 IS NOT BOUND.
        TRY.
            t392 ?= t362.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t392 IS BOUND.
          t361 = t392->source( ).
        ENDIF.
        IF t361 IS NOT BOUND.
          CREATE OBJECT t361.
          t361->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t361->oval = t362.
        ENDIF.
      ENDIF.
    ENDIF.
    t360 = zcl_lnt_st_combi_module=>plus( i_first = t361 ).
    t359 = t360.
    DATA t394 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t394.
    DATA t395 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t395.
    DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t396.
    DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t397.
    DATA(t398) = t359.
    CLEAR t397.
    IF t398 IS BOUND.
      DATA t399 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t399.
      DATA t400 TYPE REF TO object.
      CLEAR t400.
      CLEAR t399.
      t400 = t398.
      TRY.
          t397 ?= t400.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t397 IS NOT BOUND.
        TRY.
            t399 ?= t398.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t399 IS BOUND.
          t397 = t399->source( ).
        ENDIF.
        IF t397 IS NOT BOUND.
          CREATE OBJECT t397.
          t397->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t397->oval = t398.
        ENDIF.
      ENDIF.
    ENDIF.
    t396 = t397.
    DATA t401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t401.
    DATA t402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t402.
    DATA(t403) = t324.
    CLEAR t402.
    IF t403 IS BOUND.
      DATA t404 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t404.
      DATA t405 TYPE REF TO object.
      CLEAR t405.
      CLEAR t404.
      t405 = t403.
      TRY.
          t402 ?= t405.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t402 IS NOT BOUND.
        TRY.
            t404 ?= t403.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t404 IS BOUND.
          t402 = t404->source( ).
        ENDIF.
        IF t402 IS NOT BOUND.
          CREATE OBJECT t402.
          t402->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t402->oval = t403.
        ENDIF.
      ENDIF.
    ENDIF.
    t401 = t402.
    DATA t406 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t406.
    DATA t407 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t407.
    CREATE OBJECT t407.
    t406 = t407.
    DATA(t408) = t406.
    DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t409.
    DATA(t410) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    CLEAR t409.
    IF t410 IS BOUND.
      CREATE OBJECT t409.
      t409->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t409->cval = t410.
    ENDIF.
    t408->load( ).
    APPEND t409 TO t408->items.
    t408->save( ).
    DATA(t411) = t406.
    DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t412.
    DATA t413 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t413.
    DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t414.
    DATA(t415) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t414.
    IF t415 IS BOUND.
      CREATE OBJECT t414.
      t414->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t414->cval = t415.
    ENDIF.
    t413 = zcl_lnt_st_combi_module=>plus( i_first = t414 ).
    CLEAR t412.
    IF t413 IS BOUND.
      DATA t416 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t416.
      DATA t417 TYPE REF TO object.
      CLEAR t417.
      CLEAR t416.
      t417 = t413.
      TRY.
          t412 ?= t417.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t412 IS NOT BOUND.
        TRY.
            t416 ?= t413.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t416 IS BOUND.
          t412 = t416->source( ).
        ENDIF.
        IF t412 IS NOT BOUND.
          CREATE OBJECT t412.
          t412->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t412->oval = t413.
        ENDIF.
      ENDIF.
    ENDIF.
    t411->load( ).
    APPEND t412 TO t411->items.
    t411->save( ).
    DATA t418 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t418.
    DATA(t419) = t396.
    DATA(t420) = t401.
    DATA(t421) = t406.
    t418 = zcl_lnt_st_combi_module=>alt( i_first = t419 i_second = t420 i_rest = t421 ).
    t395 = t418.
    t394 = t395.
    DATA t422 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t422.
    DATA t423 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t423.
    DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t424.
    DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t425.
    DATA(t426) = |ACCEPTING PADDING|.
    CLEAR t425.
    CREATE OBJECT t425.
    t425->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t425->sval = t426.
    t424 = t425.
    DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t427.
    DATA t428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t428.
    DATA(t429) = |IGNORING CONVERSION ERRORS|.
    CLEAR t428.
    CREATE OBJECT t428.
    t428->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t428->sval = t429.
    t427 = t428.
    DATA t430 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t430.
    DATA t431 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t431.
    CREATE OBJECT t431.
    t430 = t431.
    DATA(t432) = t430.
    DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t433.
    DATA(t434) = |IN CHAR-TO-HEX MODE|.
    CLEAR t433.
    CREATE OBJECT t433.
    t433->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t433->sval = t434.
    t432->load( ).
    APPEND t433 TO t432->items.
    t432->save( ).
    DATA(t435) = t430.
    DATA t436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t436.
    DATA(t437) = |IGNORING STRUCTURE BOUNDARIES|.
    CLEAR t436.
    CREATE OBJECT t436.
    t436->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t436->sval = t437.
    t435->load( ).
    APPEND t436 TO t435->items.
    t435->save( ).
    DATA(t438) = t430.
    DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t439.
    DATA(t440) = |ACCEPTING TRUNCATION|.
    CLEAR t439.
    CREATE OBJECT t439.
    t439->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t439->sval = t440.
    t438->load( ).
    APPEND t439 TO t438->items.
    t438->save( ).
    DATA(t441) = t430.
    DATA t442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t442.
    DATA t443 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t443.
    DATA t444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t444.
    DATA t445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t445.
    DATA(t446) = |REPLACEMENT CHARACTER|.
    CLEAR t445.
    CREATE OBJECT t445.
    t445->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t445->sval = t446.
    t444 = t445.
    DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t447.
    DATA t448 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t448.
    DATA(t449) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t448.
    IF t449 IS BOUND.
      CREATE OBJECT t448.
      t448->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t448->cval = t449.
    ENDIF.
    t447 = t448.
    DATA t450 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t450.
    DATA t451 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t451.
    CREATE OBJECT t451.
    t450 = t451.
    DATA t452 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t452.
    DATA(t453) = t444.
    DATA(t454) = t447.
    DATA(t455) = t450.
    t452 = zcl_lnt_st_combi_module=>seq( i_first = t453 i_second = t454 i_rest = t455 ).
    t443 = t452.
    CLEAR t442.
    IF t443 IS BOUND.
      DATA t456 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t456.
      DATA t457 TYPE REF TO object.
      CLEAR t457.
      CLEAR t456.
      t457 = t443.
      TRY.
          t442 ?= t457.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t442 IS NOT BOUND.
        TRY.
            t456 ?= t443.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t456 IS BOUND.
          t442 = t456->source( ).
        ENDIF.
        IF t442 IS NOT BOUND.
          CREATE OBJECT t442.
          t442->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t442->oval = t443.
        ENDIF.
      ENDIF.
    ENDIF.
    t441->load( ).
    APPEND t442 TO t441->items.
    t441->save( ).
    DATA(t458) = t430.
    DATA t459 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t459.
    DATA t460 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t460.
    DATA t461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t461.
    DATA t462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t462.
    DATA(t463) = |CODE PAGE INTO|.
    CLEAR t462.
    CREATE OBJECT t462.
    t462->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t462->sval = t463.
    t461 = t462.
    DATA t464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t464.
    DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t465.
    DATA(t466) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t465.
    IF t466 IS BOUND.
      CREATE OBJECT t465.
      t465->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t465->cval = t466.
    ENDIF.
    t464 = t465.
    DATA t467 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t467.
    DATA t468 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t468.
    CREATE OBJECT t468.
    t467 = t468.
    DATA t469 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t469.
    DATA(t470) = t461.
    DATA(t471) = t464.
    DATA(t472) = t467.
    t469 = zcl_lnt_st_combi_module=>seq( i_first = t470 i_second = t471 i_rest = t472 ).
    t460 = t469.
    CLEAR t459.
    IF t460 IS BOUND.
      DATA t473 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t473.
      DATA t474 TYPE REF TO object.
      CLEAR t474.
      CLEAR t473.
      t474 = t460.
      TRY.
          t459 ?= t474.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t459 IS NOT BOUND.
        TRY.
            t473 ?= t460.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t473 IS BOUND.
          t459 = t473->source( ).
        ENDIF.
        IF t459 IS NOT BOUND.
          CREATE OBJECT t459.
          t459->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t459->oval = t460.
        ENDIF.
      ENDIF.
    ENDIF.
    t458->load( ).
    APPEND t459 TO t458->items.
    t458->save( ).
    DATA(t475) = t430.
    DATA t476 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t476.
    DATA t477 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t477.
    DATA t478 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t478.
    DATA t479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t479.
    DATA(t480) = |ENDIAN INTO|.
    CLEAR t479.
    CREATE OBJECT t479.
    t479->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t479->sval = t480.
    t478 = t479.
    DATA t481 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t481.
    DATA t482 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t482.
    DATA(t483) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t482.
    IF t483 IS BOUND.
      CREATE OBJECT t482.
      t482->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t482->cval = t483.
    ENDIF.
    t481 = t482.
    DATA t484 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t484.
    DATA t485 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t485.
    CREATE OBJECT t485.
    t484 = t485.
    DATA t486 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t486.
    DATA(t487) = t478.
    DATA(t488) = t481.
    DATA(t489) = t484.
    t486 = zcl_lnt_st_combi_module=>seq( i_first = t487 i_second = t488 i_rest = t489 ).
    t477 = t486.
    CLEAR t476.
    IF t477 IS BOUND.
      DATA t490 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t490.
      DATA t491 TYPE REF TO object.
      CLEAR t491.
      CLEAR t490.
      t491 = t477.
      TRY.
          t476 ?= t491.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t476 IS NOT BOUND.
        TRY.
            t490 ?= t477.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t490 IS BOUND.
          t476 = t490->source( ).
        ENDIF.
        IF t476 IS NOT BOUND.
          CREATE OBJECT t476.
          t476->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t476->oval = t477.
        ENDIF.
      ENDIF.
    ENDIF.
    t475->load( ).
    APPEND t476 TO t475->items.
    t475->save( ).
    DATA t492 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t492.
    DATA(t493) = t424.
    DATA(t494) = t427.
    DATA(t495) = t430.
    t492 = zcl_lnt_st_combi_module=>per( i_first = t493 i_second = t494 i_rest = t495 ).
    t423 = t492.
    t422 = t423.
    DATA t496 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t496.
    DATA t497 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t497.
    DATA t498 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t498.
    DATA t499 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t499.
    DATA(t500) = |IMPORT|.
    CLEAR t499.
    CREATE OBJECT t499.
    t499->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t499->sval = t500.
    t498 = t499.
    DATA t501 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t501.
    DATA t502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t502.
    DATA(t503) = t394.
    CLEAR t502.
    IF t503 IS BOUND.
      DATA t504 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t504.
      DATA t505 TYPE REF TO object.
      CLEAR t505.
      CLEAR t504.
      t505 = t503.
      TRY.
          t502 ?= t505.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t502 IS NOT BOUND.
        TRY.
            t504 ?= t503.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t504 IS BOUND.
          t502 = t504->source( ).
        ENDIF.
        IF t502 IS NOT BOUND.
          CREATE OBJECT t502.
          t502->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t502->oval = t503.
        ENDIF.
      ENDIF.
    ENDIF.
    t501 = t502.
    DATA t506 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t506.
    DATA t507 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t507.
    CREATE OBJECT t507.
    t506 = t507.
    DATA(t508) = t506.
    DATA t509 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t509.
    DATA(t510) = |FROM|.
    CLEAR t509.
    CREATE OBJECT t509.
    t509->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t509->sval = t510.
    t508->load( ).
    APPEND t509 TO t508->items.
    t508->save( ).
    DATA(t511) = t506.
    DATA t512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t512.
    DATA(t513) = t286.
    CLEAR t512.
    IF t513 IS BOUND.
      DATA t514 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t514.
      DATA t515 TYPE REF TO object.
      CLEAR t515.
      CLEAR t514.
      t515 = t513.
      TRY.
          t512 ?= t515.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t512 IS NOT BOUND.
        TRY.
            t514 ?= t513.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t514 IS BOUND.
          t512 = t514->source( ).
        ENDIF.
        IF t512 IS NOT BOUND.
          CREATE OBJECT t512.
          t512->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t512->oval = t513.
        ENDIF.
      ENDIF.
    ENDIF.
    t511->load( ).
    APPEND t512 TO t511->items.
    t511->save( ).
    DATA(t516) = t506.
    DATA t517 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t517.
    DATA t518 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t518.
    DATA t519 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t519.
    DATA(t520) = t422.
    CLEAR t519.
    IF t520 IS BOUND.
      DATA t521 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t521.
      DATA t522 TYPE REF TO object.
      CLEAR t522.
      CLEAR t521.
      t522 = t520.
      TRY.
          t519 ?= t522.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t519 IS NOT BOUND.
        TRY.
            t521 ?= t520.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t521 IS BOUND.
          t519 = t521->source( ).
        ENDIF.
        IF t519 IS NOT BOUND.
          CREATE OBJECT t519.
          t519->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t519->oval = t520.
        ENDIF.
      ENDIF.
    ENDIF.
    t518 = zcl_lnt_st_combi_module=>opt( i_first = t519 ).
    CLEAR t517.
    IF t518 IS BOUND.
      DATA t523 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t523.
      DATA t524 TYPE REF TO object.
      CLEAR t524.
      CLEAR t523.
      t524 = t518.
      TRY.
          t517 ?= t524.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t517 IS NOT BOUND.
        TRY.
            t523 ?= t518.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t523 IS BOUND.
          t517 = t523->source( ).
        ENDIF.
        IF t517 IS NOT BOUND.
          CREATE OBJECT t517.
          t517->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t517->oval = t518.
        ENDIF.
      ENDIF.
    ENDIF.
    t516->load( ).
    APPEND t517 TO t516->items.
    t516->save( ).
    DATA t525 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t525.
    DATA(t526) = t498.
    DATA(t527) = t501.
    DATA(t528) = t506.
    t525 = zcl_lnt_st_combi_module=>seq( i_first = t526 i_second = t527 i_rest = t528 ).
    t497 = t525.
    t496 = t497.
    DATA(t529) = t496.
    result = t529.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d526_f815f9eca95e.
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
