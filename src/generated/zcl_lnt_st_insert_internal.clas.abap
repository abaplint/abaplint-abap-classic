* TS: src/abap/2_statements/statements/insert_internal.ts:7:1 InsertInternal
CLASS zcl_lnt_st_insert_internal DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_insert_internal IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t4.
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t4->cval = t5.
    ENDIF.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
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
    t11 = zcl_lnt_st_combi_module=>alt_prio( i_first = t12 i_second = t13 i_rest = t14 ).
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
    DATA(t19) = |ASSIGNING|.
    CLEAR t18.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d194_b8c1a7611ef6.
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
    DATA(t33) = |REFERENCE INTO|.
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
    DATA(t47) = |INDEX|.
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
    DATA(t59) = |INITIAL LINE|.
    t58 = zcl_lnt_st_combi_module=>str( i_s = t59 ).
    t57 = t58.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t60.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA(t64) = |INTO|.
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
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA(t78) = |INTO TABLE|.
    CLEAR t77.
    CREATE OBJECT t77.
    t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t77->sval = t78.
    t76 = t77.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    DATA(t81) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t80.
    IF t81 IS BOUND.
      CREATE OBJECT t80.
      t80->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t80->cval = t81.
    ENDIF.
    t79 = t80.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t83.
    CREATE OBJECT t83.
    t82 = t83.
    DATA(t84) = t82.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA t88 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t88.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA(t91) = t29.
    CLEAR t90.
    IF t91 IS BOUND.
      DATA t92 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t92.
      DATA t93 TYPE REF TO object.
      CLEAR t93.
      CLEAR t92.
      t93 = t91.
      TRY.
          t90 ?= t93.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t90 IS NOT BOUND.
        TRY.
            t92 ?= t91.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t92 IS BOUND.
          t90 = t92->source( ).
        ENDIF.
        IF t90 IS NOT BOUND.
          CREATE OBJECT t90.
          t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t90->oval = t91.
        ENDIF.
      ENDIF.
    ENDIF.
    t89 = t90.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA(t96) = t15.
    CLEAR t95.
    IF t96 IS BOUND.
      DATA t97 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t97.
      DATA t98 TYPE REF TO object.
      CLEAR t98.
      CLEAR t97.
      t98 = t96.
      TRY.
          t95 ?= t98.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t95 IS NOT BOUND.
        TRY.
            t97 ?= t96.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t97 IS BOUND.
          t95 = t97->source( ).
        ENDIF.
        IF t95 IS NOT BOUND.
          CREATE OBJECT t95.
          t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t95->oval = t96.
        ENDIF.
      ENDIF.
    ENDIF.
    t94 = t95.
    DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t100.
    CREATE OBJECT t100.
    t99 = t100.
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t101.
    DATA(t102) = t89.
    DATA(t103) = t94.
    DATA(t104) = t99.
    t101 = zcl_lnt_st_combi_module=>alt( i_first = t102 i_second = t103 i_rest = t104 ).
    t88 = t101.
    CLEAR t87.
    IF t88 IS BOUND.
      DATA t105 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t105.
      DATA t106 TYPE REF TO object.
      CLEAR t106.
      CLEAR t105.
      t106 = t88.
      TRY.
          t87 ?= t106.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t87 IS NOT BOUND.
        TRY.
            t105 ?= t88.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t105 IS BOUND.
          t87 = t105->source( ).
        ENDIF.
        IF t87 IS NOT BOUND.
          CREATE OBJECT t87.
          t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t87->oval = t88.
        ENDIF.
      ENDIF.
    ENDIF.
    t86 = zcl_lnt_st_combi_module=>opt( i_first = t87 ).
    CLEAR t85.
    IF t86 IS BOUND.
      DATA t107 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t107.
      DATA t108 TYPE REF TO object.
      CLEAR t108.
      CLEAR t107.
      t108 = t86.
      TRY.
          t85 ?= t108.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t85 IS NOT BOUND.
        TRY.
            t107 ?= t86.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t107 IS BOUND.
          t85 = t107->source( ).
        ENDIF.
        IF t85 IS NOT BOUND.
          CREATE OBJECT t85.
          t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t85->oval = t86.
        ENDIF.
      ENDIF.
    ENDIF.
    t84->load( ).
    APPEND t85 TO t84->items.
    t84->save( ).
    DATA t109 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t109.
    DATA(t110) = t76.
    DATA(t111) = t79.
    DATA(t112) = t82.
    t109 = zcl_lnt_st_combi_module=>seq( i_first = t110 i_second = t111 i_rest = t112 ).
    t75 = t109.
    t74 = t75.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t113.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA(t117) = |TO|.
    CLEAR t116.
    CREATE OBJECT t116.
    t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t116->sval = t117.
    t115 = t116.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t119.
    DATA(t120) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t119.
    IF t120 IS BOUND.
      CREATE OBJECT t119.
      t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t119->cval = t120.
    ENDIF.
    t118 = t119.
    DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t121.
    DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t122.
    CREATE OBJECT t122.
    t121 = t122.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t123.
    DATA(t124) = t115.
    DATA(t125) = t118.
    DATA(t126) = t121.
    t123 = zcl_lnt_st_combi_module=>seq( i_first = t124 i_second = t125 i_rest = t126 ).
    t114 = t123.
    t113 = t114.
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t127.
    DATA t128 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t128.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t129.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    DATA(t131) = |FROM|.
    CLEAR t130.
    CREATE OBJECT t130.
    t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t130->sval = t131.
    t129 = t130.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t133.
    DATA(t134) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t133.
    IF t134 IS BOUND.
      CREATE OBJECT t133.
      t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t133->cval = t134.
    ENDIF.
    t132 = t133.
    DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t135.
    DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t136.
    CREATE OBJECT t136.
    t135 = t136.
    DATA t137 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t137.
    DATA(t138) = t129.
    DATA(t139) = t132.
    DATA(t140) = t135.
    t137 = zcl_lnt_st_combi_module=>seq( i_first = t138 i_second = t139 i_rest = t140 ).
    t128 = t137.
    t127 = t128.
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t141.
    DATA t142 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    DATA t144 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t144.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t145.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA(t147) = t127.
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
    DATA(t152) = t113.
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
    t142 = zcl_lnt_st_combi_module=>opt( i_first = t143 ).
    t141 = t142.
    DATA t163 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t163.
    DATA t164 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t164.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t165.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t166.
    DATA(t167) = t74.
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
    t165 = t166.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t170.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t171.
    DATA t172 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t172.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t174.
    DATA(t175) = t60.
    CLEAR t174.
    IF t175 IS BOUND.
      DATA t176 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t176.
      DATA t177 TYPE REF TO object.
      CLEAR t177.
      CLEAR t176.
      t177 = t175.
      TRY.
          t174 ?= t177.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t174 IS NOT BOUND.
        TRY.
            t176 ?= t175.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t176 IS BOUND.
          t174 = t176->source( ).
        ENDIF.
        IF t174 IS NOT BOUND.
          CREATE OBJECT t174.
          t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t174->oval = t175.
        ENDIF.
      ENDIF.
    ENDIF.
    t173 = t174.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t178.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t179.
    DATA t180 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t180.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t181.
    DATA t182 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t182.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t184.
    DATA(t185) = t43.
    CLEAR t184.
    IF t185 IS BOUND.
      DATA t186 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t186.
      DATA t187 TYPE REF TO object.
      CLEAR t187.
      CLEAR t186.
      t187 = t185.
      TRY.
          t184 ?= t187.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t184 IS NOT BOUND.
        TRY.
            t186 ?= t185.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t186 IS BOUND.
          t184 = t186->source( ).
        ENDIF.
        IF t184 IS NOT BOUND.
          CREATE OBJECT t184.
          t184->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t184->oval = t185.
        ENDIF.
      ENDIF.
    ENDIF.
    t183 = t184.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t188.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t189.
    DATA t190 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t190.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t191.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t192.
    DATA(t193) = t29.
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
    DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t196.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA(t198) = t15.
    CLEAR t197.
    IF t198 IS BOUND.
      DATA t199 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t199.
      DATA t200 TYPE REF TO object.
      CLEAR t200.
      CLEAR t199.
      t200 = t198.
      TRY.
          t197 ?= t200.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t197 IS NOT BOUND.
        TRY.
            t199 ?= t198.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t199 IS BOUND.
          t197 = t199->source( ).
        ENDIF.
        IF t197 IS NOT BOUND.
          CREATE OBJECT t197.
          t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t197->oval = t198.
        ENDIF.
      ENDIF.
    ENDIF.
    t196 = t197.
    DATA t201 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t201.
    DATA t202 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t202.
    CREATE OBJECT t202.
    t201 = t202.
    DATA t203 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t203.
    DATA(t204) = t191.
    DATA(t205) = t196.
    DATA(t206) = t201.
    t203 = zcl_lnt_st_combi_module=>alt( i_first = t204 i_second = t205 i_rest = t206 ).
    t190 = t203.
    CLEAR t189.
    IF t190 IS BOUND.
      DATA t207 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t207.
      DATA t208 TYPE REF TO object.
      CLEAR t208.
      CLEAR t207.
      t208 = t190.
      TRY.
          t189 ?= t208.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t189 IS NOT BOUND.
        TRY.
            t207 ?= t190.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t207 IS BOUND.
          t189 = t207->source( ).
        ENDIF.
        IF t189 IS NOT BOUND.
          CREATE OBJECT t189.
          t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t189->oval = t190.
        ENDIF.
      ENDIF.
    ENDIF.
    t188 = t189.
    DATA t209 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t209.
    DATA t210 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t210.
    CREATE OBJECT t210.
    t209 = t210.
    DATA t211 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t211.
    DATA(t212) = t183.
    DATA(t213) = t188.
    DATA(t214) = t209.
    t211 = zcl_lnt_st_combi_module=>per( i_first = t212 i_second = t213 i_rest = t214 ).
    t182 = t211.
    CLEAR t181.
    IF t182 IS BOUND.
      DATA t215 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t215.
      DATA t216 TYPE REF TO object.
      CLEAR t216.
      CLEAR t215.
      t216 = t182.
      TRY.
          t181 ?= t216.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t181 IS NOT BOUND.
        TRY.
            t215 ?= t182.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t215 IS BOUND.
          t181 = t215->source( ).
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
      DATA t217 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t217.
      DATA t218 TYPE REF TO object.
      CLEAR t218.
      CLEAR t217.
      t218 = t180.
      TRY.
          t179 ?= t218.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t179 IS NOT BOUND.
        TRY.
            t217 ?= t180.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t217 IS BOUND.
          t179 = t217->source( ).
        ENDIF.
        IF t179 IS NOT BOUND.
          CREATE OBJECT t179.
          t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t179->oval = t180.
        ENDIF.
      ENDIF.
    ENDIF.
    t178 = t179.
    DATA t219 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t219.
    DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t220.
    CREATE OBJECT t220.
    t219 = t220.
    DATA t221 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t221.
    DATA(t222) = t173.
    DATA(t223) = t178.
    DATA(t224) = t219.
    t221 = zcl_lnt_st_combi_module=>seq( i_first = t222 i_second = t223 i_rest = t224 ).
    t172 = t221.
    CLEAR t171.
    IF t172 IS BOUND.
      DATA t225 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t225.
      DATA t226 TYPE REF TO object.
      CLEAR t226.
      CLEAR t225.
      t226 = t172.
      TRY.
          t171 ?= t226.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t171 IS NOT BOUND.
        TRY.
            t225 ?= t172.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t225 IS BOUND.
          t171 = t225->source( ).
        ENDIF.
        IF t171 IS NOT BOUND.
          CREATE OBJECT t171.
          t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t171->oval = t172.
        ENDIF.
      ENDIF.
    ENDIF.
    t170 = t171.
    DATA t227 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t227.
    DATA t228 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t228.
    CREATE OBJECT t228.
    t227 = t228.
    DATA(t229) = t227.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t230.
    DATA t231 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t231.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t232.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t233.
    DATA(t234) = t43.
    CLEAR t233.
    IF t234 IS BOUND.
      DATA t235 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t235.
      DATA t236 TYPE REF TO object.
      CLEAR t236.
      CLEAR t235.
      t236 = t234.
      TRY.
          t233 ?= t236.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t233 IS NOT BOUND.
        TRY.
            t235 ?= t234.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t235 IS BOUND.
          t233 = t235->source( ).
        ENDIF.
        IF t233 IS NOT BOUND.
          CREATE OBJECT t233.
          t233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t233->oval = t234.
        ENDIF.
      ENDIF.
    ENDIF.
    t232 = t233.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t237.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t238.
    DATA t239 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t239.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t240.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t241.
    DATA(t242) = t29.
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
    DATA(t247) = t15.
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
    DATA t252 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t252.
    DATA(t253) = t240.
    DATA(t254) = t245.
    DATA(t255) = t250.
    t252 = zcl_lnt_st_combi_module=>alt( i_first = t253 i_second = t254 i_rest = t255 ).
    t239 = t252.
    CLEAR t238.
    IF t239 IS BOUND.
      DATA t256 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t256.
      DATA t257 TYPE REF TO object.
      CLEAR t257.
      CLEAR t256.
      t257 = t239.
      TRY.
          t238 ?= t257.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t238 IS NOT BOUND.
        TRY.
            t256 ?= t239.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t256 IS BOUND.
          t238 = t256->source( ).
        ENDIF.
        IF t238 IS NOT BOUND.
          CREATE OBJECT t238.
          t238->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t238->oval = t239.
        ENDIF.
      ENDIF.
    ENDIF.
    t237 = t238.
    DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t258.
    DATA t259 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t259.
    CREATE OBJECT t259.
    t258 = t259.
    DATA t260 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t260.
    DATA(t261) = t232.
    DATA(t262) = t237.
    DATA(t263) = t258.
    t260 = zcl_lnt_st_combi_module=>per( i_first = t261 i_second = t262 i_rest = t263 ).
    t231 = t260.
    CLEAR t230.
    IF t231 IS BOUND.
      DATA t264 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t264.
      DATA t265 TYPE REF TO object.
      CLEAR t265.
      CLEAR t264.
      t265 = t231.
      TRY.
          t230 ?= t265.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t230 IS NOT BOUND.
        TRY.
            t264 ?= t231.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t264 IS BOUND.
          t230 = t264->source( ).
        ENDIF.
        IF t230 IS NOT BOUND.
          CREATE OBJECT t230.
          t230->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t230->oval = t231.
        ENDIF.
      ENDIF.
    ENDIF.
    t229->load( ).
    APPEND t230 TO t229->items.
    t229->save( ).
    DATA t266 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t266.
    DATA(t267) = t165.
    DATA(t268) = t170.
    DATA(t269) = t227.
    t266 = zcl_lnt_st_combi_module=>alt( i_first = t267 i_second = t268 i_rest = t269 ).
    t164 = t266.
    t163 = t164.
    DATA t270 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t270.
    DATA t271 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t271.
    DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t272.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t273.
    DATA(t274) = |LINES OF|.
    CLEAR t273.
    CREATE OBJECT t273.
    t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t273->sval = t274.
    t272 = t273.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t275.
    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t276.
    DATA(t277) = t1.
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
    t275 = t276.
    DATA t280 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t280.
    DATA t281 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t281.
    CREATE OBJECT t281.
    t280 = t281.
    DATA(t282) = t280.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t283.
    DATA t284 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t284.
    DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t285.
    DATA(t286) = t141.
    CLEAR t285.
    IF t286 IS BOUND.
      DATA t287 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t287.
      DATA t288 TYPE REF TO object.
      CLEAR t288.
      CLEAR t287.
      t288 = t286.
      TRY.
          t285 ?= t288.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t285 IS NOT BOUND.
        TRY.
            t287 ?= t286.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t287 IS BOUND.
          t285 = t287->source( ).
        ENDIF.
        IF t285 IS NOT BOUND.
          CREATE OBJECT t285.
          t285->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t285->oval = t286.
        ENDIF.
      ENDIF.
    ENDIF.
    t284 = zcl_lnt_st_combi_module=>opt( i_first = t285 ).
    CLEAR t283.
    IF t284 IS BOUND.
      DATA t289 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t289.
      DATA t290 TYPE REF TO object.
      CLEAR t290.
      CLEAR t289.
      t290 = t284.
      TRY.
          t283 ?= t290.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t283 IS NOT BOUND.
        TRY.
            t289 ?= t284.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t289 IS BOUND.
          t283 = t289->source( ).
        ENDIF.
        IF t283 IS NOT BOUND.
          CREATE OBJECT t283.
          t283->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t283->oval = t284.
        ENDIF.
      ENDIF.
    ENDIF.
    t282->load( ).
    APPEND t283 TO t282->items.
    t282->save( ).
    DATA t291 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t291.
    DATA(t292) = t272.
    DATA(t293) = t275.
    DATA(t294) = t280.
    t291 = zcl_lnt_st_combi_module=>seq( i_first = t292 i_second = t293 i_rest = t294 ).
    t271 = t291.
    t270 = t271.
    DATA t295 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t295.
    DATA t296 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t296.
    DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t297.
    DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t298.
    DATA(t299) = zlnt_runtime_desc_78196487750d=>zlnt_member_d129_b622fad61480.
    CLEAR t298.
    IF t299 IS BOUND.
      CREATE OBJECT t298.
      t298->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t298->cval = t299.
    ENDIF.
    t297 = t298.
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t300.
    DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t301.
    DATA t302 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t302.
    DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t303.
    DATA t304 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t304.
    DATA t305 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t305.
    DATA t306 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t306.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t306 = zcl_lnt_version_module=>release_b8cd.
    DATA(t307) = |v740sp02|.
    t305 = t306->get( p0 = t307 ).
    t304 = t305.
    CLEAR t303.
    IF t304 IS BOUND.
      DATA t308 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t308.
      DATA t309 TYPE REF TO object.
      CLEAR t309.
      CLEAR t308.
      t309 = t304.
      TRY.
          t303 ?= t309.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t303 IS NOT BOUND.
        TRY.
            t308 ?= t304.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t308 IS BOUND.
          t303 = t308->source( ).
        ENDIF.
        IF t303 IS NOT BOUND.
          CREATE OBJECT t303.
          t303->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t303->oval = t304.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t310.
    DATA(t311) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t310.
    IF t311 IS BOUND.
      CREATE OBJECT t310.
      t310->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t310->cval = t311.
    ENDIF.
    DATA t312 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t312.
    DATA(t313) = abap_true.
    IF t313 = abap_true.
      DATA t314 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t314.
      DATA t315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t315.
      DATA t316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t316.
      DATA(t317) = abap_true.
      IF t317 = abap_true.
        DATA(t318) = |OpenABAP|.
        DATA(t319) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t319->has = abap_true.
        t319->value = t318.
        t316 = t319.
      ELSE.
        DATA t320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t320.
        t316 = t320.
      ENDIF.
      t315 = t316.
      t314 = NEW zcl_lnt_iver_options( i_also = t315 ).
      CREATE OBJECT t314->zlnt_view_ownkeys_b0e8086400eb.
      t314->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t321.
      IF t314->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t314->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t321 ).
      ENDIF.
      CREATE OBJECT t314->zlnt_json_ownkeys_70e5fd461788.
      t314->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t322) = |also|.
      DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t323.
      IF t314->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t314->zlnt_json_ownkeys_70e5fd461788->put( p0 = t322 p1 = t323 ).
      ENDIF.
      t312 = t314.
    ELSE.
      DATA t324 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t324.
      t312 = t324.
    ENDIF.
    t302 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t303 i_first = t310 i_opts = t312 ).
    CLEAR t301.
    IF t302 IS BOUND.
      DATA t325 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t325.
      DATA t326 TYPE REF TO object.
      CLEAR t326.
      CLEAR t325.
      t326 = t302.
      TRY.
          t301 ?= t326.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t301 IS NOT BOUND.
        TRY.
            t325 ?= t302.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t325 IS BOUND.
          t301 = t325->source( ).
        ENDIF.
        IF t301 IS NOT BOUND.
          CREATE OBJECT t301.
          t301->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t301->oval = t302.
        ENDIF.
      ENDIF.
    ENDIF.
    t300 = t301.
    DATA t327 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t327.
    DATA t328 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t328.
    CREATE OBJECT t328.
    t327 = t328.
    DATA t329 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t329.
    DATA(t330) = t297.
    DATA(t331) = t300.
    DATA(t332) = t327.
    t329 = zcl_lnt_st_combi_module=>alt( i_first = t330 i_second = t331 i_rest = t332 ).
    t296 = t329.
    t295 = t296.
    DATA t333 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t333.
    DATA t334 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t334.
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t335.
    DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t336.
    DATA(t337) = |TABLE|.
    CLEAR t336.
    CREATE OBJECT t336.
    t336->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t336->sval = t337.
    t335 = t336.
    DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t338.
    DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t339.
    DATA(t340) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t339.
    IF t340 IS BOUND.
      CREATE OBJECT t339.
      t339->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t339->cval = t340.
    ENDIF.
    t338 = t339.
    DATA t341 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t341.
    DATA t342 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t342.
    CREATE OBJECT t342.
    t341 = t342.
    DATA t343 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t343.
    DATA(t344) = t335.
    DATA(t345) = t338.
    DATA(t346) = t341.
    t343 = zcl_lnt_st_combi_module=>seq( i_first = t344 i_second = t345 i_rest = t346 ).
    t334 = t343.
    t333 = t334.
    DATA t347 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t347.
    DATA t348 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t348.
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t349.
    DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t350.
    DATA(t351) = |INSERT|.
    CLEAR t350.
    CREATE OBJECT t350.
    t350->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t350->sval = t351.
    t349 = t350.
    DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t352.
    DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t353.
    DATA t354 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t354.
    DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t355.
    DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t356.
    DATA(t357) = t333.
    CLEAR t356.
    IF t357 IS BOUND.
      DATA t358 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t358.
      DATA t359 TYPE REF TO object.
      CLEAR t359.
      CLEAR t358.
      t359 = t357.
      TRY.
          t356 ?= t359.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t356 IS NOT BOUND.
        TRY.
            t358 ?= t357.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t358 IS BOUND.
          t356 = t358->source( ).
        ENDIF.
        IF t356 IS NOT BOUND.
          CREATE OBJECT t356.
          t356->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t356->oval = t357.
        ENDIF.
      ENDIF.
    ENDIF.
    t355 = t356.
    DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
    DATA(t368) = t57.
    CLEAR t367.
    IF t368 IS BOUND.
      DATA t369 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t369.
      DATA t370 TYPE REF TO object.
      CLEAR t370.
      CLEAR t369.
      t370 = t368.
      TRY.
          t367 ?= t370.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t367 IS NOT BOUND.
        TRY.
            t369 ?= t368.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t369 IS BOUND.
          t367 = t369->source( ).
        ENDIF.
        IF t367 IS NOT BOUND.
          CREATE OBJECT t367.
          t367->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t367->oval = t368.
        ENDIF.
      ENDIF.
    ENDIF.
    t366 = t367.
    DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t371.
    DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t372.
    DATA(t373) = t270.
    CLEAR t372.
    IF t373 IS BOUND.
      DATA t374 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t374.
      DATA t375 TYPE REF TO object.
      CLEAR t375.
      CLEAR t374.
      t375 = t373.
      TRY.
          t372 ?= t375.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t372 IS NOT BOUND.
        TRY.
            t374 ?= t373.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t374 IS BOUND.
          t372 = t374->source( ).
        ENDIF.
        IF t372 IS NOT BOUND.
          CREATE OBJECT t372.
          t372->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t372->oval = t373.
        ENDIF.
      ENDIF.
    ENDIF.
    t371 = t372.
    DATA t376 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t376.
    DATA t377 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t377.
    CREATE OBJECT t377.
    t376 = t377.
    DATA(t378) = t376.
    DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t379.
    DATA(t380) = t295.
    CLEAR t379.
    IF t380 IS BOUND.
      DATA t381 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t381.
      DATA t382 TYPE REF TO object.
      CLEAR t382.
      CLEAR t381.
      t382 = t380.
      TRY.
          t379 ?= t382.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t379 IS NOT BOUND.
        TRY.
            t381 ?= t380.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t381 IS BOUND.
          t379 = t381->source( ).
        ENDIF.
        IF t379 IS NOT BOUND.
          CREATE OBJECT t379.
          t379->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t379->oval = t380.
        ENDIF.
      ENDIF.
    ENDIF.
    t378->load( ).
    APPEND t379 TO t378->items.
    t378->save( ).
    DATA t383 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t383.
    DATA(t384) = t366.
    DATA(t385) = t371.
    DATA(t386) = t376.
    t383 = zcl_lnt_st_combi_module=>alt_prio( i_first = t384 i_second = t385 i_rest = t386 ).
    t365 = t383.
    CLEAR t364.
    IF t365 IS BOUND.
      DATA t387 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t387.
      DATA t388 TYPE REF TO object.
      CLEAR t388.
      CLEAR t387.
      t388 = t365.
      TRY.
          t364 ?= t388.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t364 IS NOT BOUND.
        TRY.
            t387 ?= t365.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t387 IS BOUND.
          t364 = t387->source( ).
        ENDIF.
        IF t364 IS NOT BOUND.
          CREATE OBJECT t364.
          t364->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t364->oval = t365.
        ENDIF.
      ENDIF.
    ENDIF.
    t363 = t364.
    DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t389.
    DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t390.
    DATA(t391) = t163.
    CLEAR t390.
    IF t391 IS BOUND.
      DATA t392 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t392.
      DATA t393 TYPE REF TO object.
      CLEAR t393.
      CLEAR t392.
      t393 = t391.
      TRY.
          t390 ?= t393.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t390 IS NOT BOUND.
        TRY.
            t392 ?= t391.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t392 IS BOUND.
          t390 = t392->source( ).
        ENDIF.
        IF t390 IS NOT BOUND.
          CREATE OBJECT t390.
          t390->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t390->oval = t391.
        ENDIF.
      ENDIF.
    ENDIF.
    t389 = t390.
    DATA t394 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t394.
    DATA t395 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t395.
    CREATE OBJECT t395.
    t394 = t395.
    DATA t396 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t396.
    DATA(t397) = t363.
    DATA(t398) = t389.
    DATA(t399) = t394.
    t396 = zcl_lnt_st_combi_module=>seq( i_first = t397 i_second = t398 i_rest = t399 ).
    t362 = t396.
    CLEAR t361.
    IF t362 IS BOUND.
      DATA t400 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t400.
      DATA t401 TYPE REF TO object.
      CLEAR t401.
      CLEAR t400.
      t401 = t362.
      TRY.
          t361 ?= t401.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t361 IS NOT BOUND.
        TRY.
            t400 ?= t362.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t400 IS BOUND.
          t361 = t400->source( ).
        ENDIF.
        IF t361 IS NOT BOUND.
          CREATE OBJECT t361.
          t361->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t361->oval = t362.
        ENDIF.
      ENDIF.
    ENDIF.
    t360 = t361.
    DATA t402 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t402.
    DATA t403 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t403.
    CREATE OBJECT t403.
    t402 = t403.
    DATA t404 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t404.
    DATA(t405) = t355.
    DATA(t406) = t360.
    DATA(t407) = t402.
    t404 = zcl_lnt_st_combi_module=>alt_prio( i_first = t405 i_second = t406 i_rest = t407 ).
    t354 = t404.
    CLEAR t353.
    IF t354 IS BOUND.
      DATA t408 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t408.
      DATA t409 TYPE REF TO object.
      CLEAR t409.
      CLEAR t408.
      t409 = t354.
      TRY.
          t353 ?= t409.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t353 IS NOT BOUND.
        TRY.
            t408 ?= t354.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t408 IS BOUND.
          t353 = t408->source( ).
        ENDIF.
        IF t353 IS NOT BOUND.
          CREATE OBJECT t353.
          t353->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t353->oval = t354.
        ENDIF.
      ENDIF.
    ENDIF.
    t352 = t353.
    DATA t410 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t410.
    DATA t411 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t411.
    CREATE OBJECT t411.
    t410 = t411.
    DATA t412 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t412.
    DATA(t413) = t349.
    DATA(t414) = t352.
    DATA(t415) = t410.
    t412 = zcl_lnt_st_combi_module=>seq( i_first = t413 i_second = t414 i_rest = t415 ).
    t348 = t412.
    t347 = t348.
    DATA(t416) = t347.
    result = t416.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d536_087fe30efad2.
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
