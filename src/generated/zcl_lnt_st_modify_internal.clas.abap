* TS: src/abap/2_statements/statements/modify_internal.ts:6:1 ModifyInternal
CLASS zcl_lnt_st_modify_internal DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_modify_internal IMPLEMENTATION.
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
    DATA(t19) = |FROM|.
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
    DATA(t33) = |TRANSPORTING|.
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
    DATA t38 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA(t41) = zlnt_runtime_desc_78196487750d=>zlnt_member_d127_3599949d7390.
    CLEAR t40.
    IF t41 IS BOUND.
      CREATE OBJECT t40.
      t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t40->cval = t41.
    ENDIF.
    t39 = t40.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA(t44) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    CLEAR t43.
    IF t44 IS BOUND.
      CREATE OBJECT t43.
      t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t43->cval = t44.
    ENDIF.
    t42 = t43.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t46.
    CREATE OBJECT t46.
    t45 = t46.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t47.
    DATA(t48) = t39.
    DATA(t49) = t42.
    DATA(t50) = t45.
    t47 = zcl_lnt_st_combi_module=>alt( i_first = t48 i_second = t49 i_rest = t50 ).
    t38 = t47.
    CLEAR t37.
    IF t38 IS BOUND.
      DATA t51 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t51.
      DATA t52 TYPE REF TO object.
      CLEAR t52.
      CLEAR t51.
      t52 = t38.
      TRY.
          t37 ?= t52.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t37 IS NOT BOUND.
        TRY.
            t51 ?= t38.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t51 IS BOUND.
          t37 = t51->source( ).
        ENDIF.
        IF t37 IS NOT BOUND.
          CREATE OBJECT t37.
          t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t37->oval = t38.
        ENDIF.
      ENDIF.
    ENDIF.
    t36 = zcl_lnt_st_combi_module=>plus( i_first = t37 ).
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
    DATA(t65) = |WHERE|.
    CLEAR t64.
    CREATE OBJECT t64.
    t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t64->sval = t65.
    t63 = t64.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA(t68) = zlnt_runtime_desc_78196487750d=>zlnt_member_d133_716522bf3a6a.
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
    DATA(t79) = |ASSIGNING|.
    CLEAR t78.
    CREATE OBJECT t78.
    t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t78->sval = t79.
    t77 = t78.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA(t82) = zlnt_runtime_desc_78196487750d=>zlnt_member_d194_b8c1a7611ef6.
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
    DATA(t93) = |USING KEY|.
    CLEAR t92.
    CREATE OBJECT t92.
    t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t92->sval = t93.
    t91 = t92.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA(t96) = zlnt_runtime_desc_78196487750d=>zlnt_member_d173_fd387289a527.
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
    DATA(t107) = t61.
    CLEAR t106.
    IF t107 IS BOUND.
      DATA t108 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t108.
      DATA t109 TYPE REF TO object.
      CLEAR t109.
      CLEAR t108.
      t109 = t107.
      TRY.
          t106 ?= t109.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t106 IS NOT BOUND.
        TRY.
            t108 ?= t107.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t108 IS BOUND.
          t106 = t108->source( ).
        ENDIF.
        IF t106 IS NOT BOUND.
          CREATE OBJECT t106.
          t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t106->oval = t107.
        ENDIF.
      ENDIF.
    ENDIF.
    t105 = t106.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t110.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    DATA(t112) = t75.
    CLEAR t111.
    IF t112 IS BOUND.
      DATA t113 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t113.
      DATA t114 TYPE REF TO object.
      CLEAR t114.
      CLEAR t113.
      t114 = t112.
      TRY.
          t111 ?= t114.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t111 IS NOT BOUND.
        TRY.
            t113 ?= t112.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t113 IS BOUND.
          t111 = t113->source( ).
        ENDIF.
        IF t111 IS NOT BOUND.
          CREATE OBJECT t111.
          t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t111->oval = t112.
        ENDIF.
      ENDIF.
    ENDIF.
    t110 = t111.
    DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t115.
    DATA t116 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t116.
    CREATE OBJECT t116.
    t115 = t116.
    DATA(t117) = t115.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA(t119) = t89.
    CLEAR t118.
    IF t119 IS BOUND.
      DATA t120 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t120.
      DATA t121 TYPE REF TO object.
      CLEAR t121.
      CLEAR t120.
      t121 = t119.
      TRY.
          t118 ?= t121.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t118 IS NOT BOUND.
        TRY.
            t120 ?= t119.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t120 IS BOUND.
          t118 = t120->source( ).
        ENDIF.
        IF t118 IS NOT BOUND.
          CREATE OBJECT t118.
          t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t118->oval = t119.
        ENDIF.
      ENDIF.
    ENDIF.
    t117->load( ).
    APPEND t118 TO t117->items.
    t117->save( ).
    DATA t122 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t122.
    DATA(t123) = t105.
    DATA(t124) = t110.
    DATA(t125) = t115.
    t122 = zcl_lnt_st_combi_module=>per( i_first = t123 i_second = t124 i_rest = t125 ).
    t104 = t122.
    t103 = t104.
    DATA t126 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t126.
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t127.
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
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA(t133) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    CLEAR t132.
    IF t133 IS BOUND.
      CREATE OBJECT t132.
      t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t132->cval = t133.
    ENDIF.
    t131 = t132.
    DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t134.
    DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t135.
    CREATE OBJECT t135.
    t134 = t135.
    DATA t136 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t136.
    DATA(t137) = t128.
    DATA(t138) = t131.
    DATA(t139) = t134.
    t136 = zcl_lnt_st_combi_module=>alt( i_first = t137 i_second = t138 i_rest = t139 ).
    t127 = t136.
    t126 = t127.
    DATA t140 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t140.
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t141.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    DATA t144 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t144.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t145.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA(t147) = t1.
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
    t145 = t146.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t150.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t151.
    DATA(t152) = t29.
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
    t150 = t151.
    DATA t155 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t155.
    DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t156.
    CREATE OBJECT t156.
    t155 = t156.
    DATA t157 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t157.
    DATA(t158) = t145.
    DATA(t159) = t150.
    DATA(t160) = t155.
    t157 = zcl_lnt_st_combi_module=>per( i_first = t158 i_second = t159 i_rest = t160 ).
    t144 = t157.
    CLEAR t143.
    IF t144 IS BOUND.
      DATA t161 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t161.
      DATA t162 TYPE REF TO object.
      CLEAR t162.
      CLEAR t161.
      t162 = t144.
      TRY.
          t143 ?= t162.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t143 IS NOT BOUND.
        TRY.
            t161 ?= t144.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t161 IS BOUND.
          t143 = t161->source( ).
        ENDIF.
        IF t143 IS NOT BOUND.
          CREATE OBJECT t143.
          t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t143->oval = t144.
        ENDIF.
      ENDIF.
    ENDIF.
    t142 = t143.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t163.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t164.
    DATA t165 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t165.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t166.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t167.
    DATA(t168) = t15.
    CLEAR t167.
    IF t168 IS BOUND.
      DATA t169 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t169.
      DATA t170 TYPE REF TO object.
      CLEAR t170.
      CLEAR t169.
      t170 = t168.
      TRY.
          t167 ?= t170.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t167 IS NOT BOUND.
        TRY.
            t169 ?= t168.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t169 IS BOUND.
          t167 = t169->source( ).
        ENDIF.
        IF t167 IS NOT BOUND.
          CREATE OBJECT t167.
          t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t167->oval = t168.
        ENDIF.
      ENDIF.
    ENDIF.
    t166 = t167.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t171.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t172.
    DATA t173 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t173.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t174.
    DATA t175 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t175.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t176.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t177.
    DATA(t178) = t1.
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
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t181.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t182.
    DATA(t183) = t29.
    CLEAR t182.
    IF t183 IS BOUND.
      DATA t184 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t184.
      DATA t185 TYPE REF TO object.
      CLEAR t185.
      CLEAR t184.
      t185 = t183.
      TRY.
          t182 ?= t185.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t182 IS NOT BOUND.
        TRY.
            t184 ?= t183.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t184 IS BOUND.
          t182 = t184->source( ).
        ENDIF.
        IF t182 IS NOT BOUND.
          CREATE OBJECT t182.
          t182->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t182->oval = t183.
        ENDIF.
      ENDIF.
    ENDIF.
    t181 = t182.
    DATA t186 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t186.
    DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t187.
    CREATE OBJECT t187.
    t186 = t187.
    DATA(t188) = t186.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t189.
    DATA(t190) = t89.
    CLEAR t189.
    IF t190 IS BOUND.
      DATA t191 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t191.
      DATA t192 TYPE REF TO object.
      CLEAR t192.
      CLEAR t191.
      t192 = t190.
      TRY.
          t189 ?= t192.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t189 IS NOT BOUND.
        TRY.
            t191 ?= t190.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t191 IS BOUND.
          t189 = t191->source( ).
        ENDIF.
        IF t189 IS NOT BOUND.
          CREATE OBJECT t189.
          t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t189->oval = t190.
        ENDIF.
      ENDIF.
    ENDIF.
    t188->load( ).
    APPEND t189 TO t188->items.
    t188->save( ).
    DATA t193 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t193.
    DATA(t194) = t176.
    DATA(t195) = t181.
    DATA(t196) = t186.
    t193 = zcl_lnt_st_combi_module=>per( i_first = t194 i_second = t195 i_rest = t196 ).
    t175 = t193.
    CLEAR t174.
    IF t175 IS BOUND.
      DATA t197 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t197.
      DATA t198 TYPE REF TO object.
      CLEAR t198.
      CLEAR t197.
      t198 = t175.
      TRY.
          t174 ?= t198.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t174 IS NOT BOUND.
        TRY.
            t197 ?= t175.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t197 IS BOUND.
          t174 = t197->source( ).
        ENDIF.
        IF t174 IS NOT BOUND.
          CREATE OBJECT t174.
          t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t174->oval = t175.
        ENDIF.
      ENDIF.
    ENDIF.
    t173 = zcl_lnt_st_combi_module=>opt( i_first = t174 ).
    CLEAR t172.
    IF t173 IS BOUND.
      DATA t199 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t199.
      DATA t200 TYPE REF TO object.
      CLEAR t200.
      CLEAR t199.
      t200 = t173.
      TRY.
          t172 ?= t200.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t172 IS NOT BOUND.
        TRY.
            t199 ?= t173.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t199 IS BOUND.
          t172 = t199->source( ).
        ENDIF.
        IF t172 IS NOT BOUND.
          CREATE OBJECT t172.
          t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t172->oval = t173.
        ENDIF.
      ENDIF.
    ENDIF.
    t171 = t172.
    DATA t201 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t201.
    DATA t202 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t202.
    CREATE OBJECT t202.
    t201 = t202.
    DATA t203 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t203.
    DATA(t204) = t166.
    DATA(t205) = t171.
    DATA(t206) = t201.
    t203 = zcl_lnt_st_combi_module=>seq( i_first = t204 i_second = t205 i_rest = t206 ).
    t165 = t203.
    CLEAR t164.
    IF t165 IS BOUND.
      DATA t207 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t207.
      DATA t208 TYPE REF TO object.
      CLEAR t208.
      CLEAR t207.
      t208 = t165.
      TRY.
          t164 ?= t208.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t164 IS NOT BOUND.
        TRY.
            t207 ?= t165.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t207 IS BOUND.
          t164 = t207->source( ).
        ENDIF.
        IF t164 IS NOT BOUND.
          CREATE OBJECT t164.
          t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t164->oval = t165.
        ENDIF.
      ENDIF.
    ENDIF.
    t163 = t164.
    DATA t209 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t209.
    DATA t210 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t210.
    CREATE OBJECT t210.
    t209 = t210.
    DATA(t211) = t209.
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t212.
    DATA t213 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t213.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t214.
    DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t215.
    DATA t216 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t216.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t217.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t218.
    DATA(t219) = t1.
    CLEAR t218.
    IF t219 IS BOUND.
      DATA t220 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t220.
      DATA t221 TYPE REF TO object.
      CLEAR t221.
      CLEAR t220.
      t221 = t219.
      TRY.
          t218 ?= t221.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t218 IS NOT BOUND.
        TRY.
            t220 ?= t219.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t220 IS BOUND.
          t218 = t220->source( ).
        ENDIF.
        IF t218 IS NOT BOUND.
          CREATE OBJECT t218.
          t218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t218->oval = t219.
        ENDIF.
      ENDIF.
    ENDIF.
    t217 = t218.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t222.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t223.
    DATA(t224) = t29.
    CLEAR t223.
    IF t224 IS BOUND.
      DATA t225 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t225.
      DATA t226 TYPE REF TO object.
      CLEAR t226.
      CLEAR t225.
      t226 = t224.
      TRY.
          t223 ?= t226.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t223 IS NOT BOUND.
        TRY.
            t225 ?= t224.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t225 IS BOUND.
          t223 = t225->source( ).
        ENDIF.
        IF t223 IS NOT BOUND.
          CREATE OBJECT t223.
          t223->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t223->oval = t224.
        ENDIF.
      ENDIF.
    ENDIF.
    t222 = t223.
    DATA t227 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t227.
    DATA t228 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t228.
    CREATE OBJECT t228.
    t227 = t228.
    DATA t229 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t229.
    DATA(t230) = t217.
    DATA(t231) = t222.
    DATA(t232) = t227.
    t229 = zcl_lnt_st_combi_module=>per( i_first = t230 i_second = t231 i_rest = t232 ).
    t216 = t229.
    CLEAR t215.
    IF t216 IS BOUND.
      DATA t233 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t233.
      DATA t234 TYPE REF TO object.
      CLEAR t234.
      CLEAR t233.
      t234 = t216.
      TRY.
          t215 ?= t234.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t215 IS NOT BOUND.
        TRY.
            t233 ?= t216.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t233 IS BOUND.
          t215 = t233->source( ).
        ENDIF.
        IF t215 IS NOT BOUND.
          CREATE OBJECT t215.
          t215->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t215->oval = t216.
        ENDIF.
      ENDIF.
    ENDIF.
    t214 = t215.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t235.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t236.
    DATA(t237) = t15.
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
    DATA(t242) = t240.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t243.
    DATA t244 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t244.
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
    DATA t259 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t259.
    DATA(t260) = t247.
    DATA(t261) = t252.
    DATA(t262) = t257.
    t259 = zcl_lnt_st_combi_module=>per( i_first = t260 i_second = t261 i_rest = t262 ).
    t246 = t259.
    CLEAR t245.
    IF t246 IS BOUND.
      DATA t263 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t263.
      DATA t264 TYPE REF TO object.
      CLEAR t264.
      CLEAR t263.
      t264 = t246.
      TRY.
          t245 ?= t264.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t245 IS NOT BOUND.
        TRY.
            t263 ?= t246.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t263 IS BOUND.
          t245 = t263->source( ).
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
      DATA t265 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t265.
      DATA t266 TYPE REF TO object.
      CLEAR t266.
      CLEAR t265.
      t266 = t244.
      TRY.
          t243 ?= t266.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t243 IS NOT BOUND.
        TRY.
            t265 ?= t244.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t265 IS BOUND.
          t243 = t265->source( ).
        ENDIF.
        IF t243 IS NOT BOUND.
          CREATE OBJECT t243.
          t243->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t243->oval = t244.
        ENDIF.
      ENDIF.
    ENDIF.
    t242->load( ).
    APPEND t243 TO t242->items.
    t242->save( ).
    DATA t267 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t267.
    DATA(t268) = t214.
    DATA(t269) = t235.
    DATA(t270) = t240.
    t267 = zcl_lnt_st_combi_module=>seq( i_first = t268 i_second = t269 i_rest = t270 ).
    t213 = t267.
    CLEAR t212.
    IF t213 IS BOUND.
      DATA t271 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t271.
      DATA t272 TYPE REF TO object.
      CLEAR t272.
      CLEAR t271.
      t272 = t213.
      TRY.
          t212 ?= t272.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t212 IS NOT BOUND.
        TRY.
            t271 ?= t213.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t271 IS BOUND.
          t212 = t271->source( ).
        ENDIF.
        IF t212 IS NOT BOUND.
          CREATE OBJECT t212.
          t212->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t212->oval = t213.
        ENDIF.
      ENDIF.
    ENDIF.
    t211->load( ).
    APPEND t212 TO t211->items.
    t211->save( ).
    DATA t273 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t273.
    DATA(t274) = t142.
    DATA(t275) = t163.
    DATA(t276) = t209.
    t273 = zcl_lnt_st_combi_module=>alt( i_first = t274 i_second = t275 i_rest = t276 ).
    t141 = t273.
    t140 = t141.
    DATA t277 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t277.
    DATA t278 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t278.
    DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t279.
    DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t280.
    DATA(t281) = |MODIFY|.
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
    DATA(t293) = t126.
    CLEAR t292.
    IF t293 IS BOUND.
      DATA t294 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t294.
      DATA t295 TYPE REF TO object.
      CLEAR t295.
      CLEAR t294.
      t295 = t293.
      TRY.
          t292 ?= t295.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t292 IS NOT BOUND.
        TRY.
            t294 ?= t293.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t294 IS BOUND.
          t292 = t294->source( ).
        ENDIF.
        IF t292 IS NOT BOUND.
          CREATE OBJECT t292.
          t292->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t292->oval = t293.
        ENDIF.
      ENDIF.
    ENDIF.
    t291->load( ).
    APPEND t292 TO t291->items.
    t291->save( ).
    DATA(t296) = t289.
    DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t297.
    DATA t298 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t298.
    DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t299.
    DATA(t300) = t140.
    CLEAR t299.
    IF t300 IS BOUND.
      DATA t301 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t301.
      DATA t302 TYPE REF TO object.
      CLEAR t302.
      CLEAR t301.
      t302 = t300.
      TRY.
          t299 ?= t302.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t299 IS NOT BOUND.
        TRY.
            t301 ?= t300.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t301 IS BOUND.
          t299 = t301->source( ).
        ENDIF.
        IF t299 IS NOT BOUND.
          CREATE OBJECT t299.
          t299->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t299->oval = t300.
        ENDIF.
      ENDIF.
    ENDIF.
    t298 = zcl_lnt_st_combi_module=>opt( i_first = t299 ).
    CLEAR t297.
    IF t298 IS BOUND.
      DATA t303 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t303.
      DATA t304 TYPE REF TO object.
      CLEAR t304.
      CLEAR t303.
      t304 = t298.
      TRY.
          t297 ?= t304.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t297 IS NOT BOUND.
        TRY.
            t303 ?= t298.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t303 IS BOUND.
          t297 = t303->source( ).
        ENDIF.
        IF t297 IS NOT BOUND.
          CREATE OBJECT t297.
          t297->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t297->oval = t298.
        ENDIF.
      ENDIF.
    ENDIF.
    t296->load( ).
    APPEND t297 TO t296->items.
    t296->save( ).
    DATA(t305) = t289.
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t306.
    DATA t307 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t307.
    DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t308.
    DATA(t309) = t103.
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
    t307 = zcl_lnt_st_combi_module=>opt( i_first = t308 ).
    CLEAR t306.
    IF t307 IS BOUND.
      DATA t312 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t312.
      DATA t313 TYPE REF TO object.
      CLEAR t313.
      CLEAR t312.
      t313 = t307.
      TRY.
          t306 ?= t313.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t306 IS NOT BOUND.
        TRY.
            t312 ?= t307.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t312 IS BOUND.
          t306 = t312->source( ).
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
    DATA t314 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t314.
    DATA(t315) = t279.
    DATA(t316) = t282.
    DATA(t317) = t289.
    t314 = zcl_lnt_st_combi_module=>seq( i_first = t315 i_second = t316 i_rest = t317 ).
    t278 = t314.
    t277 = t278.
    DATA t318 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t318.
    DATA t319 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t319.
    DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t320.
    DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t321.
    DATA(t322) = |MODIFY TABLE|.
    CLEAR t321.
    CREATE OBJECT t321.
    t321->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t321->sval = t322.
    t320 = t321.
    DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t323.
    DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t324.
    DATA(t325) = t126.
    CLEAR t324.
    IF t325 IS BOUND.
      DATA t326 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t326.
      DATA t327 TYPE REF TO object.
      CLEAR t327.
      CLEAR t326.
      t327 = t325.
      TRY.
          t324 ?= t327.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t324 IS NOT BOUND.
        TRY.
            t326 ?= t325.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t326 IS BOUND.
          t324 = t326->source( ).
        ENDIF.
        IF t324 IS NOT BOUND.
          CREATE OBJECT t324.
          t324->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t324->oval = t325.
        ENDIF.
      ENDIF.
    ENDIF.
    t323 = t324.
    DATA t328 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t328.
    DATA t329 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t329.
    CREATE OBJECT t329.
    t328 = t329.
    DATA(t330) = t328.
    DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t331.
    DATA t332 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t332.
    DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t333.
    DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t334.
    DATA(t335) = t15.
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
    t333 = t334.
    DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t338.
    DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t339.
    DATA(t340) = t89.
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
    DATA t343 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t343.
    DATA t344 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t344.
    CREATE OBJECT t344.
    t343 = t344.
    DATA t345 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t345.
    DATA(t346) = t333.
    DATA(t347) = t338.
    DATA(t348) = t343.
    t345 = zcl_lnt_st_combi_module=>per( i_first = t346 i_second = t347 i_rest = t348 ).
    t332 = t345.
    CLEAR t331.
    IF t332 IS BOUND.
      DATA t349 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t349.
      DATA t350 TYPE REF TO object.
      CLEAR t350.
      CLEAR t349.
      t350 = t332.
      TRY.
          t331 ?= t350.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t331 IS NOT BOUND.
        TRY.
            t349 ?= t332.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t349 IS BOUND.
          t331 = t349->source( ).
        ENDIF.
        IF t331 IS NOT BOUND.
          CREATE OBJECT t331.
          t331->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t331->oval = t332.
        ENDIF.
      ENDIF.
    ENDIF.
    t330->load( ).
    APPEND t331 TO t330->items.
    t330->save( ).
    DATA t351 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t351.
    DATA(t352) = t320.
    DATA(t353) = t323.
    DATA(t354) = t328.
    t351 = zcl_lnt_st_combi_module=>seq( i_first = t352 i_second = t353 i_rest = t354 ).
    t319 = t351.
    t318 = t319.
    DATA t355 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t355.
    DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t356.
    DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t357.
    DATA(t358) = t277.
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
    DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t361.
    DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t362.
    DATA(t363) = t318.
    CLEAR t362.
    IF t363 IS BOUND.
      DATA t364 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t364.
      DATA t365 TYPE REF TO object.
      CLEAR t365.
      CLEAR t364.
      t365 = t363.
      TRY.
          t362 ?= t365.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t362 IS NOT BOUND.
        TRY.
            t364 ?= t363.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t364 IS BOUND.
          t362 = t364->source( ).
        ENDIF.
        IF t362 IS NOT BOUND.
          CREATE OBJECT t362.
          t362->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t362->oval = t363.
        ENDIF.
      ENDIF.
    ENDIF.
    t361 = t362.
    DATA t366 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t366.
    DATA t367 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t367.
    CREATE OBJECT t367.
    t366 = t367.
    DATA t368 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t368.
    DATA(t369) = t356.
    DATA(t370) = t361.
    DATA(t371) = t366.
    t368 = zcl_lnt_st_combi_module=>alt( i_first = t369 i_second = t370 i_rest = t371 ).
    t355 = t368.
    result = t355.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d557_3b89d313f054.
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
