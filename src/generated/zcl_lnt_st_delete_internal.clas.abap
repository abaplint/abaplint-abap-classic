* TS: src/abap/2_statements/statements/delete_internal.ts:7:1 DeleteInternal
CLASS zcl_lnt_st_delete_internal DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_delete_internal IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = |INDEX|.
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
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d173_fd387289a527.
    CLEAR t18.
    IF t19 IS BOUND.
      CREATE OBJECT t18.
      t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t18->cval = t19.
    ENDIF.
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
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
    t25 = zcl_lnt_st_combi_module=>alt_prio( i_first = t26 i_second = t27 i_rest = t28 ).
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
    DATA(t33) = |USING KEY|.
    CLEAR t32.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = t33.
    t31 = t32.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA(t36) = t15.
    CLEAR t35.
    IF t36 IS BOUND.
      DATA t37 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t37.
      DATA t38 TYPE REF TO object.
      CLEAR t38.
      CLEAR t37.
      t38 = t36.
      TRY.
          t35 ?= t38.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t35 IS NOT BOUND.
        TRY.
            t37 ?= t36.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t37 IS BOUND.
          t35 = t37->source( ).
        ENDIF.
        IF t35 IS NOT BOUND.
          CREATE OBJECT t35.
          t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t35->oval = t36.
        ENDIF.
      ENDIF.
    ENDIF.
    t34 = t35.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t40.
    CREATE OBJECT t40.
    t39 = t40.
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t41.
    DATA(t42) = t31.
    DATA(t43) = t34.
    DATA(t44) = t39.
    t41 = zcl_lnt_st_combi_module=>seq( i_first = t42 i_second = t43 i_rest = t44 ).
    t30 = t41.
    t29 = t30.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t45.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA(t49) = |FROM|.
    CLEAR t48.
    CREATE OBJECT t48.
    t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t48->sval = t49.
    t47 = t48.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA(t52) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t51.
    IF t52 IS BOUND.
      CREATE OBJECT t51.
      t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t51->cval = t52.
    ENDIF.
    t50 = t51.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t54.
    CREATE OBJECT t54.
    t53 = t54.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t55.
    DATA(t56) = t47.
    DATA(t57) = t50.
    DATA(t58) = t53.
    t55 = zcl_lnt_st_combi_module=>seq( i_first = t56 i_second = t57 i_rest = t58 ).
    t46 = t55.
    t45 = t46.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t59.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA t63 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA(t65) = t45.
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
    t63 = zcl_lnt_st_combi_module=>opt_prio( i_first = t64 ).
    CLEAR t62.
    IF t63 IS BOUND.
      DATA t68 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t68.
      DATA t69 TYPE REF TO object.
      CLEAR t69.
      CLEAR t68.
      t69 = t63.
      TRY.
          t62 ?= t69.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t62 IS NOT BOUND.
        TRY.
            t68 ?= t63.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t68 IS BOUND.
          t62 = t68->source( ).
        ENDIF.
        IF t62 IS NOT BOUND.
          CREATE OBJECT t62.
          t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t62->oval = t63.
        ENDIF.
      ENDIF.
    ENDIF.
    t61 = t62.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA(t77) = |TO|.
    CLEAR t76.
    CREATE OBJECT t76.
    t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t76->sval = t77.
    t75 = t76.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA(t80) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t79.
    IF t80 IS BOUND.
      CREATE OBJECT t79.
      t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t79->cval = t80.
    ENDIF.
    t78 = t79.
    DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t81.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t82.
    CREATE OBJECT t82.
    t81 = t82.
    DATA t83 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t83.
    DATA(t84) = t75.
    DATA(t85) = t78.
    DATA(t86) = t81.
    t83 = zcl_lnt_st_combi_module=>seq( i_first = t84 i_second = t85 i_rest = t86 ).
    t74 = t83.
    CLEAR t73.
    IF t74 IS BOUND.
      DATA t87 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t87.
      DATA t88 TYPE REF TO object.
      CLEAR t88.
      CLEAR t87.
      t88 = t74.
      TRY.
          t73 ?= t88.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t73 IS NOT BOUND.
        TRY.
            t87 ?= t74.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t87 IS BOUND.
          t73 = t87->source( ).
        ENDIF.
        IF t73 IS NOT BOUND.
          CREATE OBJECT t73.
          t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t73->oval = t74.
        ENDIF.
      ENDIF.
    ENDIF.
    t72 = zcl_lnt_st_combi_module=>opt_prio( i_first = t73 ).
    CLEAR t71.
    IF t72 IS BOUND.
      DATA t89 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t89.
      DATA t90 TYPE REF TO object.
      CLEAR t90.
      CLEAR t89.
      t90 = t72.
      TRY.
          t71 ?= t90.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t71 IS NOT BOUND.
        TRY.
            t89 ?= t72.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t89 IS BOUND.
          t71 = t89->source( ).
        ENDIF.
        IF t71 IS NOT BOUND.
          CREATE OBJECT t71.
          t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t71->oval = t72.
        ENDIF.
      ENDIF.
    ENDIF.
    t70 = t71.
    DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t92.
    CREATE OBJECT t92.
    t91 = t92.
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t93.
    DATA(t94) = t61.
    DATA(t95) = t70.
    DATA(t96) = t91.
    t93 = zcl_lnt_st_combi_module=>seq( i_first = t94 i_second = t95 i_rest = t96 ).
    t60 = t93.
    t59 = t60.
    DATA t97 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t97.
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA(t101) = |WHERE|.
    CLEAR t100.
    CREATE OBJECT t100.
    t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t100->sval = t101.
    t99 = t100.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t104.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA(t107) = zlnt_runtime_desc_78196487750d=>zlnt_member_d133_716522bf3a6a.
    CLEAR t106.
    IF t107 IS BOUND.
      CREATE OBJECT t106.
      t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t106->cval = t107.
    ENDIF.
    t105 = t106.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t108.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA t110 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t110.
    DATA(t111) = |KeyUser|.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t112.
    DATA(t113) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    CLEAR t112.
    IF t113 IS BOUND.
      CREATE OBJECT t112.
      t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t112->cval = t113.
    ENDIF.
    t110 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t111 i_first = t112 ).
    CLEAR t109.
    IF t110 IS BOUND.
      DATA t114 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t114.
      DATA t115 TYPE REF TO object.
      CLEAR t115.
      CLEAR t114.
      t115 = t110.
      TRY.
          t109 ?= t115.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t109 IS NOT BOUND.
        TRY.
            t114 ?= t110.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t114 IS BOUND.
          t109 = t114->source( ).
        ENDIF.
        IF t109 IS NOT BOUND.
          CREATE OBJECT t109.
          t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t109->oval = t110.
        ENDIF.
      ENDIF.
    ENDIF.
    t108 = t109.
    DATA t116 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t116.
    DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t117.
    CREATE OBJECT t117.
    t116 = t117.
    DATA t118 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t118.
    DATA(t119) = t105.
    DATA(t120) = t108.
    DATA(t121) = t116.
    t118 = zcl_lnt_st_combi_module=>alt( i_first = t119 i_second = t120 i_rest = t121 ).
    t104 = t118.
    CLEAR t103.
    IF t104 IS BOUND.
      DATA t122 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t122.
      DATA t123 TYPE REF TO object.
      CLEAR t123.
      CLEAR t122.
      t123 = t104.
      TRY.
          t103 ?= t123.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t103 IS NOT BOUND.
        TRY.
            t122 ?= t104.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t122 IS BOUND.
          t103 = t122->source( ).
        ENDIF.
        IF t103 IS NOT BOUND.
          CREATE OBJECT t103.
          t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t103->oval = t104.
        ENDIF.
      ENDIF.
    ENDIF.
    t102 = t103.
    DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t124.
    DATA t125 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t125.
    CREATE OBJECT t125.
    t124 = t125.
    DATA t126 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t126.
    DATA(t127) = t99.
    DATA(t128) = t102.
    DATA(t129) = t124.
    t126 = zcl_lnt_st_combi_module=>seq( i_first = t127 i_second = t128 i_rest = t129 ).
    t98 = t126.
    t97 = t98.
    DATA t130 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t130.
    DATA t131 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t131.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t133.
    DATA(t134) = |WITH TABLE KEY|.
    CLEAR t133.
    CREATE OBJECT t133.
    t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t133->sval = t134.
    t132 = t133.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t135.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t136.
    DATA t137 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t137.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    DATA t139 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t139.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t140.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t141.
    DATA(t142) = t15.
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
    t140 = t141.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t145.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA(t147) = |COMPONENTS|.
    CLEAR t146.
    CREATE OBJECT t146.
    t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t146->sval = t147.
    t145 = t146.
    DATA t148 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t148.
    DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t149.
    CREATE OBJECT t149.
    t148 = t149.
    DATA t150 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t150.
    DATA(t151) = t140.
    DATA(t152) = t145.
    DATA(t153) = t148.
    t150 = zcl_lnt_st_combi_module=>seq( i_first = t151 i_second = t152 i_rest = t153 ).
    t139 = t150.
    CLEAR t138.
    IF t139 IS BOUND.
      DATA t154 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t154.
      DATA t155 TYPE REF TO object.
      CLEAR t155.
      CLEAR t154.
      t155 = t139.
      TRY.
          t138 ?= t155.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t138 IS NOT BOUND.
        TRY.
            t154 ?= t139.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t154 IS BOUND.
          t138 = t154->source( ).
        ENDIF.
        IF t138 IS NOT BOUND.
          CREATE OBJECT t138.
          t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t138->oval = t139.
        ENDIF.
      ENDIF.
    ENDIF.
    t137 = zcl_lnt_st_combi_module=>opt( i_first = t138 ).
    CLEAR t136.
    IF t137 IS BOUND.
      DATA t156 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t156.
      DATA t157 TYPE REF TO object.
      CLEAR t157.
      CLEAR t156.
      t157 = t137.
      TRY.
          t136 ?= t157.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t136 IS NOT BOUND.
        TRY.
            t156 ?= t137.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t156 IS BOUND.
          t136 = t156->source( ).
        ENDIF.
        IF t136 IS NOT BOUND.
          CREATE OBJECT t136.
          t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t136->oval = t137.
        ENDIF.
      ENDIF.
    ENDIF.
    t135 = t136.
    DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t158.
    DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t159.
    CREATE OBJECT t159.
    t158 = t159.
    DATA(t160) = t158.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t161.
    DATA t162 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t162.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t163.
    DATA(t164) = zlnt_runtime_desc_78196487750d=>zlnt_member_d128_b497db583ff7.
    CLEAR t163.
    IF t164 IS BOUND.
      CREATE OBJECT t163.
      t163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t163->cval = t164.
    ENDIF.
    t162 = zcl_lnt_st_combi_module=>plus( i_first = t163 ).
    CLEAR t161.
    IF t162 IS BOUND.
      DATA t165 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t165.
      DATA t166 TYPE REF TO object.
      CLEAR t166.
      CLEAR t165.
      t166 = t162.
      TRY.
          t161 ?= t166.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t161 IS NOT BOUND.
        TRY.
            t165 ?= t162.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t165 IS BOUND.
          t161 = t165->source( ).
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
    DATA t167 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t167.
    DATA(t168) = t132.
    DATA(t169) = t135.
    DATA(t170) = t158.
    t167 = zcl_lnt_st_combi_module=>seq( i_first = t168 i_second = t169 i_rest = t170 ).
    t131 = t167.
    t130 = t131.
    DATA t171 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t171.
    DATA t172 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t172.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t174.
    DATA(t175) = |TABLE|.
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
    DATA(t181) = t179.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t182.
    DATA t183 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t183.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t184.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t185.
    DATA t186 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t186.
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t187.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t188.
    DATA(t189) = t1.
    CLEAR t188.
    IF t189 IS BOUND.
      DATA t190 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t190.
      DATA t191 TYPE REF TO object.
      CLEAR t191.
      CLEAR t190.
      t191 = t189.
      TRY.
          t188 ?= t191.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t188 IS NOT BOUND.
        TRY.
            t190 ?= t189.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t190 IS BOUND.
          t188 = t190->source( ).
        ENDIF.
        IF t188 IS NOT BOUND.
          CREATE OBJECT t188.
          t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t188->oval = t189.
        ENDIF.
      ENDIF.
    ENDIF.
    t187 = t188.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t192.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t193.
    DATA(t194) = t29.
    CLEAR t193.
    IF t194 IS BOUND.
      DATA t195 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t195.
      DATA t196 TYPE REF TO object.
      CLEAR t196.
      CLEAR t195.
      t196 = t194.
      TRY.
          t193 ?= t196.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t193 IS NOT BOUND.
        TRY.
            t195 ?= t194.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t195 IS BOUND.
          t193 = t195->source( ).
        ENDIF.
        IF t193 IS NOT BOUND.
          CREATE OBJECT t193.
          t193->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t193->oval = t194.
        ENDIF.
      ENDIF.
    ENDIF.
    t192 = t193.
    DATA t197 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t197.
    DATA t198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t198.
    CREATE OBJECT t198.
    t197 = t198.
    DATA t199 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t199.
    DATA(t200) = t187.
    DATA(t201) = t192.
    DATA(t202) = t197.
    t199 = zcl_lnt_st_combi_module=>per( i_first = t200 i_second = t201 i_rest = t202 ).
    t186 = t199.
    CLEAR t185.
    IF t186 IS BOUND.
      DATA t203 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t203.
      DATA t204 TYPE REF TO object.
      CLEAR t204.
      CLEAR t203.
      t204 = t186.
      TRY.
          t185 ?= t204.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t185 IS NOT BOUND.
        TRY.
            t203 ?= t186.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t203 IS BOUND.
          t185 = t203->source( ).
        ENDIF.
        IF t185 IS NOT BOUND.
          CREATE OBJECT t185.
          t185->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t185->oval = t186.
        ENDIF.
      ENDIF.
    ENDIF.
    t184 = t185.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t205.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t206.
    DATA t207 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t207.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t208.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t209.
    DATA t210 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t210.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t211.
    DATA(t212) = t45.
    CLEAR t211.
    IF t212 IS BOUND.
      DATA t213 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t213.
      DATA t214 TYPE REF TO object.
      CLEAR t214.
      CLEAR t213.
      t214 = t212.
      TRY.
          t211 ?= t214.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t211 IS NOT BOUND.
        TRY.
            t213 ?= t212.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t213 IS BOUND.
          t211 = t213->source( ).
        ENDIF.
        IF t211 IS NOT BOUND.
          CREATE OBJECT t211.
          t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t211->oval = t212.
        ENDIF.
      ENDIF.
    ENDIF.
    t210 = zcl_lnt_st_combi_module=>opt_prio( i_first = t211 ).
    CLEAR t209.
    IF t210 IS BOUND.
      DATA t215 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t215.
      DATA t216 TYPE REF TO object.
      CLEAR t216.
      CLEAR t215.
      t216 = t210.
      TRY.
          t209 ?= t216.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t209 IS NOT BOUND.
        TRY.
            t215 ?= t210.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t215 IS BOUND.
          t209 = t215->source( ).
        ENDIF.
        IF t209 IS NOT BOUND.
          CREATE OBJECT t209.
          t209->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t209->oval = t210.
        ENDIF.
      ENDIF.
    ENDIF.
    t208 = t209.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t217.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t218.
    DATA t219 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t219.
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t220.
    DATA(t221) = t29.
    CLEAR t220.
    IF t221 IS BOUND.
      DATA t222 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t222.
      DATA t223 TYPE REF TO object.
      CLEAR t223.
      CLEAR t222.
      t223 = t221.
      TRY.
          t220 ?= t223.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t220 IS NOT BOUND.
        TRY.
            t222 ?= t221.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t222 IS BOUND.
          t220 = t222->source( ).
        ENDIF.
        IF t220 IS NOT BOUND.
          CREATE OBJECT t220.
          t220->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t220->oval = t221.
        ENDIF.
      ENDIF.
    ENDIF.
    t219 = zcl_lnt_st_combi_module=>opt_prio( i_first = t220 ).
    CLEAR t218.
    IF t219 IS BOUND.
      DATA t224 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t224.
      DATA t225 TYPE REF TO object.
      CLEAR t225.
      CLEAR t224.
      t225 = t219.
      TRY.
          t218 ?= t225.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t218 IS NOT BOUND.
        TRY.
            t224 ?= t219.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t224 IS BOUND.
          t218 = t224->source( ).
        ENDIF.
        IF t218 IS NOT BOUND.
          CREATE OBJECT t218.
          t218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t218->oval = t219.
        ENDIF.
      ENDIF.
    ENDIF.
    t217 = t218.
    DATA t226 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t226.
    DATA t227 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t227.
    CREATE OBJECT t227.
    t226 = t227.
    DATA t228 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t228.
    DATA(t229) = t208.
    DATA(t230) = t217.
    DATA(t231) = t226.
    t228 = zcl_lnt_st_combi_module=>seq( i_first = t229 i_second = t230 i_rest = t231 ).
    t207 = t228.
    CLEAR t206.
    IF t207 IS BOUND.
      DATA t232 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t232.
      DATA t233 TYPE REF TO object.
      CLEAR t233.
      CLEAR t232.
      t233 = t207.
      TRY.
          t206 ?= t233.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t206 IS NOT BOUND.
        TRY.
            t232 ?= t207.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t232 IS BOUND.
          t206 = t232->source( ).
        ENDIF.
        IF t206 IS NOT BOUND.
          CREATE OBJECT t206.
          t206->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t206->oval = t207.
        ENDIF.
      ENDIF.
    ENDIF.
    t205 = t206.
    DATA t234 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t234.
    DATA t235 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t235.
    CREATE OBJECT t235.
    t234 = t235.
    DATA(t236) = t234.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t237.
    DATA(t238) = t130.
    CLEAR t237.
    IF t238 IS BOUND.
      DATA t239 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t239.
      DATA t240 TYPE REF TO object.
      CLEAR t240.
      CLEAR t239.
      t240 = t238.
      TRY.
          t237 ?= t240.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t237 IS NOT BOUND.
        TRY.
            t239 ?= t238.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t239 IS BOUND.
          t237 = t239->source( ).
        ENDIF.
        IF t237 IS NOT BOUND.
          CREATE OBJECT t237.
          t237->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t237->oval = t238.
        ENDIF.
      ENDIF.
    ENDIF.
    t236->load( ).
    APPEND t237 TO t236->items.
    t236->save( ).
    DATA t241 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t241.
    DATA(t242) = t184.
    DATA(t243) = t205.
    DATA(t244) = t234.
    t241 = zcl_lnt_st_combi_module=>alt( i_first = t242 i_second = t243 i_rest = t244 ).
    t183 = t241.
    CLEAR t182.
    IF t183 IS BOUND.
      DATA t245 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t245.
      DATA t246 TYPE REF TO object.
      CLEAR t246.
      CLEAR t245.
      t246 = t183.
      TRY.
          t182 ?= t246.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t182 IS NOT BOUND.
        TRY.
            t245 ?= t183.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t245 IS BOUND.
          t182 = t245->source( ).
        ENDIF.
        IF t182 IS NOT BOUND.
          CREATE OBJECT t182.
          t182->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t182->oval = t183.
        ENDIF.
      ENDIF.
    ENDIF.
    t181->load( ).
    APPEND t182 TO t181->items.
    t181->save( ).
    DATA t247 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t247.
    DATA(t248) = t173.
    DATA(t249) = t176.
    DATA(t250) = t179.
    t247 = zcl_lnt_st_combi_module=>seq( i_first = t248 i_second = t249 i_rest = t250 ).
    t172 = t247.
    t171 = t172.
    DATA t251 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t251.
    DATA t252 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t252.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t253.
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t254.
    DATA(t255) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t254.
    IF t255 IS BOUND.
      CREATE OBJECT t254.
      t254->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t254->cval = t255.
    ENDIF.
    t253 = t254.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t256.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t257.
    DATA t258 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t258.
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t259.
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t260.
    DATA t261 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t261.
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t262.
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t263.
    DATA(t264) = t1.
    CLEAR t263.
    IF t264 IS BOUND.
      DATA t265 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t265.
      DATA t266 TYPE REF TO object.
      CLEAR t266.
      CLEAR t265.
      t266 = t264.
      TRY.
          t263 ?= t266.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t263 IS NOT BOUND.
        TRY.
            t265 ?= t264.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t265 IS BOUND.
          t263 = t265->source( ).
        ENDIF.
        IF t263 IS NOT BOUND.
          CREATE OBJECT t263.
          t263->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t263->oval = t264.
        ENDIF.
      ENDIF.
    ENDIF.
    t262 = t263.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t267.
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t268.
    DATA(t269) = t29.
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
    t267 = t268.
    DATA t272 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t272.
    DATA t273 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t273.
    CREATE OBJECT t273.
    t272 = t273.
    DATA t274 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t274.
    DATA(t275) = t262.
    DATA(t276) = t267.
    DATA(t277) = t272.
    t274 = zcl_lnt_st_combi_module=>per( i_first = t275 i_second = t276 i_rest = t277 ).
    t261 = t274.
    CLEAR t260.
    IF t261 IS BOUND.
      DATA t278 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t278.
      DATA t279 TYPE REF TO object.
      CLEAR t279.
      CLEAR t278.
      t279 = t261.
      TRY.
          t260 ?= t279.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t260 IS NOT BOUND.
        TRY.
            t278 ?= t261.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t278 IS BOUND.
          t260 = t278->source( ).
        ENDIF.
        IF t260 IS NOT BOUND.
          CREATE OBJECT t260.
          t260->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t260->oval = t261.
        ENDIF.
      ENDIF.
    ENDIF.
    t259 = t260.
    DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t280.
    DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t281.
    DATA(t282) = t59.
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
    t280 = t281.
    DATA t285 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t285.
    DATA t286 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t286.
    CREATE OBJECT t286.
    t285 = t286.
    DATA(t287) = t285.
    DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t288.
    DATA(t289) = t130.
    CLEAR t288.
    IF t289 IS BOUND.
      DATA t290 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t290.
      DATA t291 TYPE REF TO object.
      CLEAR t291.
      CLEAR t290.
      t291 = t289.
      TRY.
          t288 ?= t291.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t288 IS NOT BOUND.
        TRY.
            t290 ?= t289.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t290 IS BOUND.
          t288 = t290->source( ).
        ENDIF.
        IF t288 IS NOT BOUND.
          CREATE OBJECT t288.
          t288->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t288->oval = t289.
        ENDIF.
      ENDIF.
    ENDIF.
    t287->load( ).
    APPEND t288 TO t287->items.
    t287->save( ).
    DATA t292 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t292.
    DATA(t293) = t259.
    DATA(t294) = t280.
    DATA(t295) = t285.
    t292 = zcl_lnt_st_combi_module=>alt( i_first = t293 i_second = t294 i_rest = t295 ).
    t258 = t292.
    CLEAR t257.
    IF t258 IS BOUND.
      DATA t296 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t296.
      DATA t297 TYPE REF TO object.
      CLEAR t297.
      CLEAR t296.
      t297 = t258.
      TRY.
          t257 ?= t297.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t257 IS NOT BOUND.
        TRY.
            t296 ?= t258.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t296 IS BOUND.
          t257 = t296->source( ).
        ENDIF.
        IF t257 IS NOT BOUND.
          CREATE OBJECT t257.
          t257->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t257->oval = t258.
        ENDIF.
      ENDIF.
    ENDIF.
    t256 = t257.
    DATA t298 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t298.
    DATA t299 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t299.
    CREATE OBJECT t299.
    t298 = t299.
    DATA(t300) = t298.
    DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t301.
    DATA t302 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t302.
    DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t303.
    DATA(t304) = t97.
    CLEAR t303.
    IF t304 IS BOUND.
      DATA t305 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t305.
      DATA t306 TYPE REF TO object.
      CLEAR t306.
      CLEAR t305.
      t306 = t304.
      TRY.
          t303 ?= t306.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t303 IS NOT BOUND.
        TRY.
            t305 ?= t304.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t305 IS BOUND.
          t303 = t305->source( ).
        ENDIF.
        IF t303 IS NOT BOUND.
          CREATE OBJECT t303.
          t303->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t303->oval = t304.
        ENDIF.
      ENDIF.
    ENDIF.
    t302 = zcl_lnt_st_combi_module=>opt( i_first = t303 ).
    CLEAR t301.
    IF t302 IS BOUND.
      DATA t307 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t307.
      DATA t308 TYPE REF TO object.
      CLEAR t308.
      CLEAR t307.
      t308 = t302.
      TRY.
          t301 ?= t308.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t301 IS NOT BOUND.
        TRY.
            t307 ?= t302.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t307 IS BOUND.
          t301 = t307->source( ).
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
    DATA t309 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t309.
    DATA(t310) = t253.
    DATA(t311) = t256.
    DATA(t312) = t298.
    t309 = zcl_lnt_st_combi_module=>seq( i_first = t310 i_second = t311 i_rest = t312 ).
    t252 = t309.
    t251 = t252.
    DATA t313 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t313.
    DATA t314 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t314.
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t315.
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t316.
    DATA(t317) = zlnt_runtime_desc_78196487750d=>zlnt_member_d171_8a7e3c79c08f.
    CLEAR t316.
    IF t317 IS BOUND.
      CREATE OBJECT t316.
      t316->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t316->cval = t317.
    ENDIF.
    t315 = t316.
    DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t318.
    DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t319.
    DATA t320 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t320.
    DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t321.
    DATA(t322) = zlnt_runtime_desc_78196487750d=>zlnt_member_d103_04a0f92dd4f1.
    CLEAR t321.
    IF t322 IS BOUND.
      CREATE OBJECT t321.
      t321->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t321->cval = t322.
    ENDIF.
    t320 = zcl_lnt_st_combi_module=>opt_prio( i_first = t321 ).
    CLEAR t319.
    IF t320 IS BOUND.
      DATA t323 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t323.
      DATA t324 TYPE REF TO object.
      CLEAR t324.
      CLEAR t323.
      t324 = t320.
      TRY.
          t319 ?= t324.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t319 IS NOT BOUND.
        TRY.
            t323 ?= t320.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t323 IS BOUND.
          t319 = t323->source( ).
        ENDIF.
        IF t319 IS NOT BOUND.
          CREATE OBJECT t319.
          t319->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t319->oval = t320.
        ENDIF.
      ENDIF.
    ENDIF.
    t318 = t319.
    DATA t325 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t325.
    DATA t326 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t326.
    CREATE OBJECT t326.
    t325 = t326.
    DATA(t327) = t325.
    DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t328.
    DATA t329 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t329.
    DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t330.
    DATA(t331) = zlnt_runtime_desc_78196487750d=>zlnt_member_d104_b395e4e66ee3.
    CLEAR t330.
    IF t331 IS BOUND.
      CREATE OBJECT t330.
      t330->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t330->cval = t331.
    ENDIF.
    t329 = zcl_lnt_st_combi_module=>opt_prio( i_first = t330 ).
    CLEAR t328.
    IF t329 IS BOUND.
      DATA t332 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t332.
      DATA t333 TYPE REF TO object.
      CLEAR t333.
      CLEAR t332.
      t333 = t329.
      TRY.
          t328 ?= t333.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t328 IS NOT BOUND.
        TRY.
            t332 ?= t329.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t332 IS BOUND.
          t328 = t332->source( ).
        ENDIF.
        IF t328 IS NOT BOUND.
          CREATE OBJECT t328.
          t328->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t328->oval = t329.
        ENDIF.
      ENDIF.
    ENDIF.
    t327->load( ).
    APPEND t328 TO t327->items.
    t327->save( ).
    DATA t334 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t334.
    DATA(t335) = t315.
    DATA(t336) = t318.
    DATA(t337) = t325.
    t334 = zcl_lnt_st_combi_module=>seq( i_first = t335 i_second = t336 i_rest = t337 ).
    t314 = t334.
    t313 = t314.
    DATA t338 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t338.
    DATA t339 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t339.
    DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t340.
    DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t341.
    DATA(t342) = |ADJACENT DUPLICATES FROM|.
    CLEAR t341.
    CREATE OBJECT t341.
    t341->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t341->sval = t342.
    t340 = t341.
    DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t343.
    DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t344.
    DATA(t345) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t344.
    IF t345 IS BOUND.
      CREATE OBJECT t344.
      t344->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t344->cval = t345.
    ENDIF.
    t343 = t344.
    DATA t346 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t346.
    DATA t347 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t347.
    CREATE OBJECT t347.
    t346 = t347.
    DATA(t348) = t346.
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t349.
    DATA t350 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t350.
    DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t351.
    DATA(t352) = t29.
    CLEAR t351.
    IF t352 IS BOUND.
      DATA t353 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t353.
      DATA t354 TYPE REF TO object.
      CLEAR t354.
      CLEAR t353.
      t354 = t352.
      TRY.
          t351 ?= t354.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t351 IS NOT BOUND.
        TRY.
            t353 ?= t352.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t353 IS BOUND.
          t351 = t353->source( ).
        ENDIF.
        IF t351 IS NOT BOUND.
          CREATE OBJECT t351.
          t351->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t351->oval = t352.
        ENDIF.
      ENDIF.
    ENDIF.
    t350 = zcl_lnt_st_combi_module=>opt_prio( i_first = t351 ).
    CLEAR t349.
    IF t350 IS BOUND.
      DATA t355 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t355.
      DATA t356 TYPE REF TO object.
      CLEAR t356.
      CLEAR t355.
      t356 = t350.
      TRY.
          t349 ?= t356.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t349 IS NOT BOUND.
        TRY.
            t355 ?= t350.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t355 IS BOUND.
          t349 = t355->source( ).
        ENDIF.
        IF t349 IS NOT BOUND.
          CREATE OBJECT t349.
          t349->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t349->oval = t350.
        ENDIF.
      ENDIF.
    ENDIF.
    t348->load( ).
    APPEND t349 TO t348->items.
    t348->save( ).
    DATA(t357) = t346.
    DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t358.
    DATA t359 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t359.
    DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t360.
    DATA t361 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t361.
    DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t362.
    DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t363.
    DATA(t364) = |COMPARING|.
    CLEAR t363.
    CREATE OBJECT t363.
    t363->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t363->sval = t364.
    t362 = t363.
    DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t365.
    DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t366.
    DATA t367 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t367.
    DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t368.
    DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t369.
    DATA(t370) = |ALL FIELDS|.
    CLEAR t369.
    CREATE OBJECT t369.
    t369->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t369->sval = t370.
    t368 = t369.
    DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t371.
    DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t372.
    DATA t373 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t373.
    DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t374.
    DATA t375 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t375.
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t376.
    DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t377.
    DATA(t378) = t313.
    CLEAR t377.
    IF t378 IS BOUND.
      DATA t379 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t379.
      DATA t380 TYPE REF TO object.
      CLEAR t380.
      CLEAR t379.
      t380 = t378.
      TRY.
          t377 ?= t380.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t377 IS NOT BOUND.
        TRY.
            t379 ?= t378.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t379 IS BOUND.
          t377 = t379->source( ).
        ENDIF.
        IF t377 IS NOT BOUND.
          CREATE OBJECT t377.
          t377->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t377->oval = t378.
        ENDIF.
      ENDIF.
    ENDIF.
    t376 = t377.
    DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t381.
    DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t382.
    DATA(t383) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    CLEAR t382.
    IF t383 IS BOUND.
      CREATE OBJECT t382.
      t382->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t382->cval = t383.
    ENDIF.
    t381 = t382.
    DATA t384 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t384.
    DATA t385 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t385.
    CREATE OBJECT t385.
    t384 = t385.
    DATA t386 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t386.
    DATA(t387) = t376.
    DATA(t388) = t381.
    DATA(t389) = t384.
    t386 = zcl_lnt_st_combi_module=>alt_prio( i_first = t387 i_second = t388 i_rest = t389 ).
    t375 = t386.
    CLEAR t374.
    IF t375 IS BOUND.
      DATA t390 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t390.
      DATA t391 TYPE REF TO object.
      CLEAR t391.
      CLEAR t390.
      t391 = t375.
      TRY.
          t374 ?= t391.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t374 IS NOT BOUND.
        TRY.
            t390 ?= t375.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t390 IS BOUND.
          t374 = t390->source( ).
        ENDIF.
        IF t374 IS NOT BOUND.
          CREATE OBJECT t374.
          t374->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t374->oval = t375.
        ENDIF.
      ENDIF.
    ENDIF.
    t373 = zcl_lnt_st_combi_module=>plus( i_first = t374 ).
    CLEAR t372.
    IF t373 IS BOUND.
      DATA t392 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t392.
      DATA t393 TYPE REF TO object.
      CLEAR t393.
      CLEAR t392.
      t393 = t373.
      TRY.
          t372 ?= t393.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t372 IS NOT BOUND.
        TRY.
            t392 ?= t373.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t392 IS BOUND.
          t372 = t392->source( ).
        ENDIF.
        IF t372 IS NOT BOUND.
          CREATE OBJECT t372.
          t372->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t372->oval = t373.
        ENDIF.
      ENDIF.
    ENDIF.
    t371 = t372.
    DATA t394 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t394.
    DATA t395 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t395.
    CREATE OBJECT t395.
    t394 = t395.
    DATA t396 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t396.
    DATA(t397) = t368.
    DATA(t398) = t371.
    DATA(t399) = t394.
    t396 = zcl_lnt_st_combi_module=>alt_prio( i_first = t397 i_second = t398 i_rest = t399 ).
    t367 = t396.
    CLEAR t366.
    IF t367 IS BOUND.
      DATA t400 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t400.
      DATA t401 TYPE REF TO object.
      CLEAR t401.
      CLEAR t400.
      t401 = t367.
      TRY.
          t366 ?= t401.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t366 IS NOT BOUND.
        TRY.
            t400 ?= t367.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t400 IS BOUND.
          t366 = t400->source( ).
        ENDIF.
        IF t366 IS NOT BOUND.
          CREATE OBJECT t366.
          t366->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t366->oval = t367.
        ENDIF.
      ENDIF.
    ENDIF.
    t365 = t366.
    DATA t402 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t402.
    DATA t403 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t403.
    CREATE OBJECT t403.
    t402 = t403.
    DATA t404 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t404.
    DATA(t405) = t362.
    DATA(t406) = t365.
    DATA(t407) = t402.
    t404 = zcl_lnt_st_combi_module=>seq( i_first = t405 i_second = t406 i_rest = t407 ).
    t361 = t404.
    CLEAR t360.
    IF t361 IS BOUND.
      DATA t408 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t408.
      DATA t409 TYPE REF TO object.
      CLEAR t409.
      CLEAR t408.
      t409 = t361.
      TRY.
          t360 ?= t409.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t360 IS NOT BOUND.
        TRY.
            t408 ?= t361.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t408 IS BOUND.
          t360 = t408->source( ).
        ENDIF.
        IF t360 IS NOT BOUND.
          CREATE OBJECT t360.
          t360->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t360->oval = t361.
        ENDIF.
      ENDIF.
    ENDIF.
    t359 = zcl_lnt_st_combi_module=>opt( i_first = t360 ).
    CLEAR t358.
    IF t359 IS BOUND.
      DATA t410 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t410.
      DATA t411 TYPE REF TO object.
      CLEAR t411.
      CLEAR t410.
      t411 = t359.
      TRY.
          t358 ?= t411.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t358 IS NOT BOUND.
        TRY.
            t410 ?= t359.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t410 IS BOUND.
          t358 = t410->source( ).
        ENDIF.
        IF t358 IS NOT BOUND.
          CREATE OBJECT t358.
          t358->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t358->oval = t359.
        ENDIF.
      ENDIF.
    ENDIF.
    t357->load( ).
    APPEND t358 TO t357->items.
    t357->save( ).
    DATA(t412) = t346.
    DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t413.
    DATA t414 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t414.
    DATA t415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t415.
    DATA(t416) = t29.
    CLEAR t415.
    IF t416 IS BOUND.
      DATA t417 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t417.
      DATA t418 TYPE REF TO object.
      CLEAR t418.
      CLEAR t417.
      t418 = t416.
      TRY.
          t415 ?= t418.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t415 IS NOT BOUND.
        TRY.
            t417 ?= t416.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t417 IS BOUND.
          t415 = t417->source( ).
        ENDIF.
        IF t415 IS NOT BOUND.
          CREATE OBJECT t415.
          t415->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t415->oval = t416.
        ENDIF.
      ENDIF.
    ENDIF.
    t414 = zcl_lnt_st_combi_module=>opt_prio( i_first = t415 ).
    CLEAR t413.
    IF t414 IS BOUND.
      DATA t419 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t419.
      DATA t420 TYPE REF TO object.
      CLEAR t420.
      CLEAR t419.
      t420 = t414.
      TRY.
          t413 ?= t420.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t413 IS NOT BOUND.
        TRY.
            t419 ?= t414.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t419 IS BOUND.
          t413 = t419->source( ).
        ENDIF.
        IF t413 IS NOT BOUND.
          CREATE OBJECT t413.
          t413->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t413->oval = t414.
        ENDIF.
      ENDIF.
    ENDIF.
    t412->load( ).
    APPEND t413 TO t412->items.
    t412->save( ).
    DATA t421 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t421.
    DATA(t422) = t340.
    DATA(t423) = t343.
    DATA(t424) = t346.
    t421 = zcl_lnt_st_combi_module=>seq( i_first = t422 i_second = t423 i_rest = t424 ).
    t339 = t421.
    t338 = t339.
    DATA t425 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t425.
    DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t426.
    DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t427.
    DATA(t428) = |DELETE|.
    CLEAR t427.
    CREATE OBJECT t427.
    t427->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t427->sval = t428.
    t426 = t427.
    DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t429.
    DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t430.
    DATA t431 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t431.
    DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t432.
    DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t433.
    DATA(t434) = t171.
    CLEAR t433.
    IF t434 IS BOUND.
      DATA t435 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t435.
      DATA t436 TYPE REF TO object.
      CLEAR t436.
      CLEAR t435.
      t436 = t434.
      TRY.
          t433 ?= t436.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t433 IS NOT BOUND.
        TRY.
            t435 ?= t434.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t435 IS BOUND.
          t433 = t435->source( ).
        ENDIF.
        IF t433 IS NOT BOUND.
          CREATE OBJECT t433.
          t433->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t433->oval = t434.
        ENDIF.
      ENDIF.
    ENDIF.
    t432 = t433.
    DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t437.
    DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t438.
    DATA(t439) = t338.
    CLEAR t438.
    IF t439 IS BOUND.
      DATA t440 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t440.
      DATA t441 TYPE REF TO object.
      CLEAR t441.
      CLEAR t440.
      t441 = t439.
      TRY.
          t438 ?= t441.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t438 IS NOT BOUND.
        TRY.
            t440 ?= t439.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t440 IS BOUND.
          t438 = t440->source( ).
        ENDIF.
        IF t438 IS NOT BOUND.
          CREATE OBJECT t438.
          t438->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t438->oval = t439.
        ENDIF.
      ENDIF.
    ENDIF.
    t437 = t438.
    DATA t442 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t442.
    DATA t443 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t443.
    CREATE OBJECT t443.
    t442 = t443.
    DATA(t444) = t442.
    DATA t445 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t445.
    DATA(t446) = t251.
    CLEAR t445.
    IF t446 IS BOUND.
      DATA t447 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t447.
      DATA t448 TYPE REF TO object.
      CLEAR t448.
      CLEAR t447.
      t448 = t446.
      TRY.
          t445 ?= t448.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t445 IS NOT BOUND.
        TRY.
            t447 ?= t446.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t447 IS BOUND.
          t445 = t447->source( ).
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
    DATA t449 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t449.
    DATA(t450) = t432.
    DATA(t451) = t437.
    DATA(t452) = t442.
    t449 = zcl_lnt_st_combi_module=>alt( i_first = t450 i_second = t451 i_rest = t452 ).
    t431 = t449.
    CLEAR t430.
    IF t431 IS BOUND.
      DATA t453 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t453.
      DATA t454 TYPE REF TO object.
      CLEAR t454.
      CLEAR t453.
      t454 = t431.
      TRY.
          t430 ?= t454.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t430 IS NOT BOUND.
        TRY.
            t453 ?= t431.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t453 IS BOUND.
          t430 = t453->source( ).
        ENDIF.
        IF t430 IS NOT BOUND.
          CREATE OBJECT t430.
          t430->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t430->oval = t431.
        ENDIF.
      ENDIF.
    ENDIF.
    t429 = t430.
    DATA t455 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t455.
    DATA t456 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t456.
    CREATE OBJECT t456.
    t455 = t456.
    DATA t457 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t457.
    DATA(t458) = t426.
    DATA(t459) = t429.
    DATA(t460) = t455.
    t457 = zcl_lnt_st_combi_module=>seq( i_first = t458 i_second = t459 i_rest = t460 ).
    t425 = t457.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d445_c8667ee83c64.
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
