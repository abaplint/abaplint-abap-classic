* TS: src/cds/expressions/cds_select.ts:7:1 CDSSelect
CLASS zcl_lnt_cds_select DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_select IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
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
    DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t7.
    CREATE OBJECT t7.
    t6 = t7.
    DATA(t8) = t6.
    DATA(t9) = |FROM|.
    t8->load( ).
    APPEND t9 TO t8->items.
    t8->save( ).
    DATA t10 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t10.
    DATA(t11) = t6.
    t10 = zcl_lnt_st_combi_module=>stop_before1( i_words = t11 ).
    t5 = t10.
    CLEAR t4.
    IF t5 IS BOUND.
      DATA t12 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t12.
      DATA t13 TYPE REF TO object.
      CLEAR t13.
      CLEAR t12.
      t13 = t5.
      TRY.
          t4 ?= t13.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t12 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t12 IS BOUND.
          t4 = t12->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    t3 = t4.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1085_7cdb0f50a2e1.
    CLEAR t20.
    IF t21 IS BOUND.
      CREATE OBJECT t20.
      t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t20->cval = t21.
    ENDIF.
    t19 = t20.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA(t24) = |,|.
    CLEAR t23.
    CREATE OBJECT t23.
    t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t23->sval = t24.
    t22 = t23.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t26.
    CREATE OBJECT t26.
    t25 = t26.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t27.
    DATA(t28) = t19.
    DATA(t29) = t22.
    DATA(t30) = t25.
    t27 = zcl_lnt_st_combi_module=>seq( i_first = t28 i_second = t29 i_rest = t30 ).
    t18 = t27.
    CLEAR t17.
    IF t18 IS BOUND.
      DATA t31 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t31.
      DATA t32 TYPE REF TO object.
      CLEAR t32.
      CLEAR t31.
      t32 = t18.
      TRY.
          t17 ?= t32.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t17 IS NOT BOUND.
        TRY.
            t31 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t31 IS BOUND.
          t17 = t31->source( ).
        ENDIF.
        IF t17 IS NOT BOUND.
          CREATE OBJECT t17.
          t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t17->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    t16 = zcl_lnt_st_combi_module=>star( i_first = t17 ).
    CLEAR t15.
    IF t16 IS BOUND.
      DATA t33 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t33.
      DATA t34 TYPE REF TO object.
      CLEAR t34.
      CLEAR t33.
      t34 = t16.
      TRY.
          t15 ?= t34.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t15 IS NOT BOUND.
        TRY.
            t33 ?= t16.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t33 IS BOUND.
          t15 = t33->source( ).
        ENDIF.
        IF t15 IS NOT BOUND.
          CREATE OBJECT t15.
          t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t15->oval = t16.
        ENDIF.
      ENDIF.
    ENDIF.
    t14 = t15.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t36.
    CREATE OBJECT t36.
    t35 = t36.
    DATA(t37) = t35.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1085_7cdb0f50a2e1.
    CLEAR t38.
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t38->cval = t39.
    ENDIF.
    t37->load( ).
    APPEND t38 TO t37->items.
    t37->save( ).
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t40.
    DATA(t41) = t3.
    DATA(t42) = t14.
    DATA(t43) = t35.
    t40 = zcl_lnt_st_combi_module=>seq( i_first = t41 i_second = t42 i_rest = t43 ).
    t2 = t40.
    t1 = t2.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t44.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t45.
    DATA(t46) = |DISTINCT|.
    t45 = zcl_lnt_st_combi_module=>str( i_s = t46 ).
    t44 = t45.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t47.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA(t51) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1085_7cdb0f50a2e1.
    CLEAR t50.
    IF t51 IS BOUND.
      CREATE OBJECT t50.
      t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t50->cval = t51.
    ENDIF.
    t49 = t50.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA(t59) = |,|.
    CLEAR t58.
    CREATE OBJECT t58.
    t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t58->sval = t59.
    t57 = t58.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA(t62) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1085_7cdb0f50a2e1.
    CLEAR t61.
    IF t62 IS BOUND.
      CREATE OBJECT t61.
      t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t61->cval = t62.
    ENDIF.
    t60 = t61.
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t64.
    CREATE OBJECT t64.
    t63 = t64.
    DATA t65 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t65.
    DATA(t66) = t57.
    DATA(t67) = t60.
    DATA(t68) = t63.
    t65 = zcl_lnt_st_combi_module=>seq( i_first = t66 i_second = t67 i_rest = t68 ).
    t56 = t65.
    CLEAR t55.
    IF t56 IS BOUND.
      DATA t69 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t69.
      DATA t70 TYPE REF TO object.
      CLEAR t70.
      CLEAR t69.
      t70 = t56.
      TRY.
          t55 ?= t70.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t55 IS NOT BOUND.
        TRY.
            t69 ?= t56.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t69 IS BOUND.
          t55 = t69->source( ).
        ENDIF.
        IF t55 IS NOT BOUND.
          CREATE OBJECT t55.
          t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t55->oval = t56.
        ENDIF.
      ENDIF.
    ENDIF.
    t54 = zcl_lnt_st_combi_module=>star( i_first = t55 ).
    CLEAR t53.
    IF t54 IS BOUND.
      DATA t71 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t71.
      DATA t72 TYPE REF TO object.
      CLEAR t72.
      CLEAR t71.
      t72 = t54.
      TRY.
          t53 ?= t72.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t53 IS NOT BOUND.
        TRY.
            t71 ?= t54.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t71 IS BOUND.
          t53 = t71->source( ).
        ENDIF.
        IF t53 IS NOT BOUND.
          CREATE OBJECT t53.
          t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t53->oval = t54.
        ENDIF.
      ENDIF.
    ENDIF.
    t52 = t53.
    DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t74.
    CREATE OBJECT t74.
    t73 = t74.
    DATA(t75) = t73.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA(t79) = |,|.
    CLEAR t78.
    CREATE OBJECT t78.
    t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t78->sval = t79.
    t77 = zcl_lnt_st_combi_module=>opt( i_first = t78 ).
    CLEAR t76.
    IF t77 IS BOUND.
      DATA t80 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t80.
      DATA t81 TYPE REF TO object.
      CLEAR t81.
      CLEAR t80.
      t81 = t77.
      TRY.
          t76 ?= t81.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t76 IS NOT BOUND.
        TRY.
            t80 ?= t77.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t80 IS BOUND.
          t76 = t80->source( ).
        ENDIF.
        IF t76 IS NOT BOUND.
          CREATE OBJECT t76.
          t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t76->oval = t77.
        ENDIF.
      ENDIF.
    ENDIF.
    t75->load( ).
    APPEND t76 TO t75->items.
    t75->save( ).
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t82.
    DATA(t83) = t49.
    DATA(t84) = t52.
    DATA(t85) = t73.
    t82 = zcl_lnt_st_combi_module=>seq( i_first = t83 i_second = t84 i_rest = t85 ).
    t48 = t82.
    t47 = t48.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t86.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA t90 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t90.
    DATA(t91) = |\{|.
    t90 = zcl_lnt_st_combi_module=>str( i_s = t91 ).
    CLEAR t89.
    IF t90 IS BOUND.
      DATA t92 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t92.
      DATA t93 TYPE REF TO object.
      CLEAR t93.
      CLEAR t92.
      t93 = t90.
      TRY.
          t89 ?= t93.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t89 IS NOT BOUND.
        TRY.
            t92 ?= t90.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t92 IS BOUND.
          t89 = t92->source( ).
        ENDIF.
        IF t89 IS NOT BOUND.
          CREATE OBJECT t89.
          t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t89->oval = t90.
        ENDIF.
      ENDIF.
    ENDIF.
    t88 = t89.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t96.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA(t99) = |*|.
    CLEAR t98.
    CREATE OBJECT t98.
    t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t98->sval = t99.
    t97 = t98.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA(t102) = t47.
    CLEAR t101.
    IF t102 IS BOUND.
      DATA t103 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t103.
      DATA t104 TYPE REF TO object.
      CLEAR t104.
      CLEAR t103.
      t104 = t102.
      TRY.
          t101 ?= t104.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t101 IS NOT BOUND.
        TRY.
            t103 ?= t102.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t103 IS BOUND.
          t101 = t103->source( ).
        ENDIF.
        IF t101 IS NOT BOUND.
          CREATE OBJECT t101.
          t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t101->oval = t102.
        ENDIF.
      ENDIF.
    ENDIF.
    t100 = t101.
    DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t105.
    DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t106.
    CREATE OBJECT t106.
    t105 = t106.
    DATA t107 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t107.
    DATA(t108) = t97.
    DATA(t109) = t100.
    DATA(t110) = t105.
    t107 = zcl_lnt_st_combi_module=>alt_prio( i_first = t108 i_second = t109 i_rest = t110 ).
    t96 = t107.
    CLEAR t95.
    IF t96 IS BOUND.
      DATA t111 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t111.
      DATA t112 TYPE REF TO object.
      CLEAR t112.
      CLEAR t111.
      t112 = t96.
      TRY.
          t95 ?= t112.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t95 IS NOT BOUND.
        TRY.
            t111 ?= t96.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t111 IS BOUND.
          t95 = t111->source( ).
        ENDIF.
        IF t95 IS NOT BOUND.
          CREATE OBJECT t95.
          t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t95->oval = t96.
        ENDIF.
      ENDIF.
    ENDIF.
    t94 = t95.
    DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t113.
    DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t114.
    CREATE OBJECT t114.
    t113 = t114.
    DATA(t115) = t113.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA t117 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t117.
    DATA(t118) = |\}|.
    t117 = zcl_lnt_st_combi_module=>str( i_s = t118 ).
    CLEAR t116.
    IF t117 IS BOUND.
      DATA t119 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t119.
      DATA t120 TYPE REF TO object.
      CLEAR t120.
      CLEAR t119.
      t120 = t117.
      TRY.
          t116 ?= t120.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t116 IS NOT BOUND.
        TRY.
            t119 ?= t117.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t119 IS BOUND.
          t116 = t119->source( ).
        ENDIF.
        IF t116 IS NOT BOUND.
          CREATE OBJECT t116.
          t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t116->oval = t117.
        ENDIF.
      ENDIF.
    ENDIF.
    t115->load( ).
    APPEND t116 TO t115->items.
    t115->save( ).
    DATA t121 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t121.
    DATA(t122) = t88.
    DATA(t123) = t94.
    DATA(t124) = t113.
    t121 = zcl_lnt_st_combi_module=>seq( i_first = t122 i_second = t123 i_rest = t124 ).
    t87 = t121.
    t86 = t87.
    DATA t125 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t125.
    DATA t126 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t126.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t127.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    DATA(t129) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1075_bb8c443f99f5.
    CLEAR t128.
    IF t129 IS BOUND.
      CREATE OBJECT t128.
      t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t128->cval = t129.
    ENDIF.
    t127 = t128.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA(t132) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
    CLEAR t131.
    IF t132 IS BOUND.
      CREATE OBJECT t131.
      t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t131->cval = t132.
    ENDIF.
    t130 = t131.
    DATA t133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t133.
    DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t134.
    CREATE OBJECT t134.
    t133 = t134.
    DATA t135 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t135.
    DATA(t136) = t127.
    DATA(t137) = t130.
    DATA(t138) = t133.
    t135 = zcl_lnt_st_combi_module=>seq( i_first = t136 i_second = t137 i_rest = t138 ).
    t126 = t135.
    t125 = t126.
    DATA t139 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t139.
    DATA t140 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t140.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t141.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t142.
    DATA(t143) = t125.
    CLEAR t142.
    IF t143 IS BOUND.
      DATA t144 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t144.
      DATA t145 TYPE REF TO object.
      CLEAR t145.
      CLEAR t144.
      t145 = t143.
      TRY.
          t142 ?= t145.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t142 IS NOT BOUND.
        TRY.
            t144 ?= t143.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t144 IS BOUND.
          t142 = t144->source( ).
        ENDIF.
        IF t142 IS NOT BOUND.
          CREATE OBJECT t142.
          t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t142->oval = t143.
        ENDIF.
      ENDIF.
    ENDIF.
    t141 = t142.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t147.
    DATA(t148) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
    CLEAR t147.
    IF t148 IS BOUND.
      CREATE OBJECT t147.
      t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t147->cval = t148.
    ENDIF.
    t146 = t147.
    DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t149.
    DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t150.
    CREATE OBJECT t150.
    t149 = t150.
    DATA(t151) = t149.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t152.
    DATA(t153) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    CLEAR t152.
    IF t153 IS BOUND.
      CREATE OBJECT t152.
      t152->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t152->cval = t153.
    ENDIF.
    t151->load( ).
    APPEND t152 TO t151->items.
    t151->save( ).
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t154.
    DATA(t155) = t141.
    DATA(t156) = t146.
    DATA(t157) = t149.
    t154 = zcl_lnt_st_combi_module=>alt_prio( i_first = t155 i_second = t156 i_rest = t157 ).
    t140 = t154.
    t139 = t140.
    DATA t158 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t158.
    DATA t159 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t159.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t161.
    DATA(t162) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    CLEAR t161.
    IF t162 IS BOUND.
      CREATE OBJECT t161.
      t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t161->cval = t162.
    ENDIF.
    t160 = t161.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t163.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t164.
    DATA(t165) = |=|.
    CLEAR t164.
    CREATE OBJECT t164.
    t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t164->sval = t165.
    t163 = t164.
    DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t166.
    DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t167.
    CREATE OBJECT t167.
    t166 = t167.
    DATA(t168) = t166.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t169.
    DATA(t170) = |>|.
    CLEAR t169.
    CREATE OBJECT t169.
    t169->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t169->sval = t170.
    t168->load( ).
    APPEND t169 TO t168->items.
    t168->save( ).
    DATA(t171) = t166.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t172.
    DATA(t173) = t139.
    CLEAR t172.
    IF t173 IS BOUND.
      DATA t174 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t174.
      DATA t175 TYPE REF TO object.
      CLEAR t175.
      CLEAR t174.
      t175 = t173.
      TRY.
          t172 ?= t175.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t172 IS NOT BOUND.
        TRY.
            t174 ?= t173.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t174 IS BOUND.
          t172 = t174->source( ).
        ENDIF.
        IF t172 IS NOT BOUND.
          CREATE OBJECT t172.
          t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t172->oval = t173.
        ENDIF.
      ENDIF.
    ENDIF.
    t171->load( ).
    APPEND t172 TO t171->items.
    t171->save( ).
    DATA t176 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t176.
    DATA(t177) = t160.
    DATA(t178) = t163.
    DATA(t179) = t166.
    t176 = zcl_lnt_st_combi_module=>seq( i_first = t177 i_second = t178 i_rest = t179 ).
    t159 = t176.
    t158 = t159.
    DATA t180 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t180.
    DATA t181 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t181.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t182.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    DATA(t184) = |BIND|.
    CLEAR t183.
    CREATE OBJECT t183.
    t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t183->sval = t184.
    t182 = t183.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t185.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t186.
    DATA(t187) = |ASPECT|.
    CLEAR t186.
    CREATE OBJECT t186.
    t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t186->sval = t187.
    t185 = t186.
    DATA t188 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t188.
    DATA t189 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t189.
    CREATE OBJECT t189.
    t188 = t189.
    DATA(t190) = t188.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t191.
    DATA(t192) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    CLEAR t191.
    IF t192 IS BOUND.
      CREATE OBJECT t191.
      t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t191->cval = t192.
    ENDIF.
    t190->load( ).
    APPEND t191 TO t190->items.
    t190->save( ).
    DATA(t193) = t188.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    DATA(t195) = |(|.
    CLEAR t194.
    CREATE OBJECT t194.
    t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t194->sval = t195.
    t193->load( ).
    APPEND t194 TO t193->items.
    t193->save( ).
    DATA(t196) = t188.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA(t198) = t158.
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
    t196->load( ).
    APPEND t197 TO t196->items.
    t196->save( ).
    DATA(t201) = t188.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t202.
    DATA t203 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t203.
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t204.
    DATA t205 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t205.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t206.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t207.
    DATA(t208) = |,|.
    CLEAR t207.
    CREATE OBJECT t207.
    t207->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t207->sval = t208.
    t206 = t207.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t209.
    DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t210.
    DATA(t211) = t158.
    CLEAR t210.
    IF t211 IS BOUND.
      DATA t212 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t212.
      DATA t213 TYPE REF TO object.
      CLEAR t213.
      CLEAR t212.
      t213 = t211.
      TRY.
          t210 ?= t213.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t210 IS NOT BOUND.
        TRY.
            t212 ?= t211.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t212 IS BOUND.
          t210 = t212->source( ).
        ENDIF.
        IF t210 IS NOT BOUND.
          CREATE OBJECT t210.
          t210->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t210->oval = t211.
        ENDIF.
      ENDIF.
    ENDIF.
    t209 = t210.
    DATA t214 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t214.
    DATA t215 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t215.
    CREATE OBJECT t215.
    t214 = t215.
    DATA t216 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t216.
    DATA(t217) = t206.
    DATA(t218) = t209.
    DATA(t219) = t214.
    t216 = zcl_lnt_st_combi_module=>seq( i_first = t217 i_second = t218 i_rest = t219 ).
    t205 = t216.
    CLEAR t204.
    IF t205 IS BOUND.
      DATA t220 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t220.
      DATA t221 TYPE REF TO object.
      CLEAR t221.
      CLEAR t220.
      t221 = t205.
      TRY.
          t204 ?= t221.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t204 IS NOT BOUND.
        TRY.
            t220 ?= t205.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t220 IS BOUND.
          t204 = t220->source( ).
        ENDIF.
        IF t204 IS NOT BOUND.
          CREATE OBJECT t204.
          t204->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t204->oval = t205.
        ENDIF.
      ENDIF.
    ENDIF.
    t203 = zcl_lnt_st_combi_module=>star_prio( i_first = t204 ).
    CLEAR t202.
    IF t203 IS BOUND.
      DATA t222 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t222.
      DATA t223 TYPE REF TO object.
      CLEAR t223.
      CLEAR t222.
      t223 = t203.
      TRY.
          t202 ?= t223.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t202 IS NOT BOUND.
        TRY.
            t222 ?= t203.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t222 IS BOUND.
          t202 = t222->source( ).
        ENDIF.
        IF t202 IS NOT BOUND.
          CREATE OBJECT t202.
          t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t202->oval = t203.
        ENDIF.
      ENDIF.
    ENDIF.
    t201->load( ).
    APPEND t202 TO t201->items.
    t201->save( ).
    DATA(t224) = t188.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t225.
    DATA(t226) = |)|.
    CLEAR t225.
    CREATE OBJECT t225.
    t225->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t225->sval = t226.
    t224->load( ).
    APPEND t225 TO t224->items.
    t224->save( ).
    DATA(t227) = t188.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t228.
    DATA t229 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t229.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t230.
    DATA t231 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t231.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t232.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t233.
    DATA(t234) = |AS|.
    CLEAR t233.
    CREATE OBJECT t233.
    t233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t233->sval = t234.
    t232 = t233.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t235.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t236.
    DATA(t237) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    CLEAR t236.
    IF t237 IS BOUND.
      CREATE OBJECT t236.
      t236->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t236->cval = t237.
    ENDIF.
    t235 = t236.
    DATA t238 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t238.
    DATA t239 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t239.
    CREATE OBJECT t239.
    t238 = t239.
    DATA t240 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t240.
    DATA(t241) = t232.
    DATA(t242) = t235.
    DATA(t243) = t238.
    t240 = zcl_lnt_st_combi_module=>seq( i_first = t241 i_second = t242 i_rest = t243 ).
    t231 = t240.
    CLEAR t230.
    IF t231 IS BOUND.
      DATA t244 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t244.
      DATA t245 TYPE REF TO object.
      CLEAR t245.
      CLEAR t244.
      t245 = t231.
      TRY.
          t230 ?= t245.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t230 IS NOT BOUND.
        TRY.
            t244 ?= t231.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t244 IS BOUND.
          t230 = t244->source( ).
        ENDIF.
        IF t230 IS NOT BOUND.
          CREATE OBJECT t230.
          t230->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t230->oval = t231.
        ENDIF.
      ENDIF.
    ENDIF.
    t229 = zcl_lnt_st_combi_module=>opt_prio( i_first = t230 ).
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
    t227->load( ).
    APPEND t228 TO t227->items.
    t227->save( ).
    DATA t248 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t248.
    DATA(t249) = t182.
    DATA(t250) = t185.
    DATA(t251) = t188.
    t248 = zcl_lnt_st_combi_module=>seq( i_first = t249 i_second = t250 i_rest = t251 ).
    t181 = t248.
    t180 = t181.
    DATA t252 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t252.
    DATA t253 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t253.
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t254.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t255.
    DATA(t256) = |(|.
    CLEAR t255.
    CREATE OBJECT t255.
    t255->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t255->sval = t256.
    t254 = t255.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t257.
    DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t258.
    DATA(t259) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1112_606bcf340c7d.
    CLEAR t258.
    IF t259 IS BOUND.
      CREATE OBJECT t258.
      t258->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t258->cval = t259.
    ENDIF.
    t257 = t258.
    DATA t260 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t260.
    DATA t261 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t261.
    CREATE OBJECT t261.
    t260 = t261.
    DATA(t262) = t260.
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t263.
    DATA(t264) = |)|.
    CLEAR t263.
    CREATE OBJECT t263.
    t263->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t263->sval = t264.
    t262->load( ).
    APPEND t263 TO t262->items.
    t262->save( ).
    DATA t265 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t265.
    DATA(t266) = t254.
    DATA(t267) = t257.
    DATA(t268) = t260.
    t265 = zcl_lnt_st_combi_module=>seq( i_first = t266 i_second = t267 i_rest = t268 ).
    t253 = t265.
    t252 = t253.
    DATA t269 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t269.
    DATA t270 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t270.
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t271.
    DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t272.
    DATA(t273) = t252.
    CLEAR t272.
    IF t273 IS BOUND.
      DATA t274 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t274.
      DATA t275 TYPE REF TO object.
      CLEAR t275.
      CLEAR t274.
      t275 = t273.
      TRY.
          t272 ?= t275.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t272 IS NOT BOUND.
        TRY.
            t274 ?= t273.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t274 IS BOUND.
          t272 = t274->source( ).
        ENDIF.
        IF t272 IS NOT BOUND.
          CREATE OBJECT t272.
          t272->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t272->oval = t273.
        ENDIF.
      ENDIF.
    ENDIF.
    t271 = t272.
    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t276.
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t277.
    DATA(t278) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1112_606bcf340c7d.
    CLEAR t277.
    IF t278 IS BOUND.
      CREATE OBJECT t277.
      t277->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t277->cval = t278.
    ENDIF.
    t276 = t277.
    DATA t279 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t279.
    DATA t280 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t280.
    CREATE OBJECT t280.
    t279 = t280.
    DATA t281 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t281.
    DATA(t282) = t271.
    DATA(t283) = t276.
    DATA(t284) = t279.
    t281 = zcl_lnt_st_combi_module=>alt_prio( i_first = t282 i_second = t283 i_rest = t284 ).
    t270 = t281.
    t269 = t270.
    DATA t285 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t285.
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t286.
    DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t287.
    DATA(t288) = |SELECT|.
    CLEAR t287.
    CREATE OBJECT t287.
    t287->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t287->sval = t288.
    t286 = t287.
    DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t289.
    DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t290.
    DATA t291 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t291.
    DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t292.
    DATA(t293) = t44.
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
    t291 = zcl_lnt_st_combi_module=>opt_prio( i_first = t292 ).
    CLEAR t290.
    IF t291 IS BOUND.
      DATA t296 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t296.
      DATA t297 TYPE REF TO object.
      CLEAR t297.
      CLEAR t296.
      t297 = t291.
      TRY.
          t290 ?= t297.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t290 IS NOT BOUND.
        TRY.
            t296 ?= t291.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t296 IS BOUND.
          t290 = t296->source( ).
        ENDIF.
        IF t290 IS NOT BOUND.
          CREATE OBJECT t290.
          t290->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t290->oval = t291.
        ENDIF.
      ENDIF.
    ENDIF.
    t289 = t290.
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
    DATA t304 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t304.
    DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t305.
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t306.
    DATA(t307) = |*|.
    CLEAR t306.
    CREATE OBJECT t306.
    t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t306->sval = t307.
    t305 = t306.
    DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t308.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t309.
    DATA(t310) = t1.
    CLEAR t309.
    IF t310 IS BOUND.
      DATA t311 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t311.
      DATA t312 TYPE REF TO object.
      CLEAR t312.
      CLEAR t311.
      t312 = t310.
      TRY.
          t309 ?= t312.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t309 IS NOT BOUND.
        TRY.
            t311 ?= t310.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t311 IS BOUND.
          t309 = t311->source( ).
        ENDIF.
        IF t309 IS NOT BOUND.
          CREATE OBJECT t309.
          t309->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t309->oval = t310.
        ENDIF.
      ENDIF.
    ENDIF.
    t308 = t309.
    DATA t313 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t313.
    DATA t314 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t314.
    CREATE OBJECT t314.
    t313 = t314.
    DATA t315 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t315.
    DATA(t316) = t305.
    DATA(t317) = t308.
    DATA(t318) = t313.
    t315 = zcl_lnt_st_combi_module=>alt_prio( i_first = t316 i_second = t317 i_rest = t318 ).
    t304 = t315.
    CLEAR t303.
    IF t304 IS BOUND.
      DATA t319 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t319.
      DATA t320 TYPE REF TO object.
      CLEAR t320.
      CLEAR t319.
      t320 = t304.
      TRY.
          t303 ?= t320.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t303 IS NOT BOUND.
        TRY.
            t319 ?= t304.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t319 IS BOUND.
          t303 = t319->source( ).
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
      DATA t321 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t321.
      DATA t322 TYPE REF TO object.
      CLEAR t322.
      CLEAR t321.
      t322 = t302.
      TRY.
          t301 ?= t322.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t301 IS NOT BOUND.
        TRY.
            t321 ?= t302.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t321 IS BOUND.
          t301 = t321->source( ).
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
    DATA(t323) = t298.
    DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t324.
    DATA(t325) = |FROM|.
    CLEAR t324.
    CREATE OBJECT t324.
    t324->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t324->sval = t325.
    t323->load( ).
    APPEND t324 TO t323->items.
    t323->save( ).
    DATA(t326) = t298.
    DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t327.
    DATA(t328) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1107_afe2bbfbbd93.
    CLEAR t327.
    IF t328 IS BOUND.
      CREATE OBJECT t327.
      t327->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t327->cval = t328.
    ENDIF.
    t326->load( ).
    APPEND t327 TO t326->items.
    t326->save( ).
    DATA(t329) = t298.
    DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t330.
    DATA t331 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t331.
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t332.
    DATA(t333) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1108_9ad6b30e9664.
    CLEAR t332.
    IF t333 IS BOUND.
      CREATE OBJECT t332.
      t332->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t332->cval = t333.
    ENDIF.
    t331 = zcl_lnt_st_combi_module=>star( i_first = t332 ).
    CLEAR t330.
    IF t331 IS BOUND.
      DATA t334 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t334.
      DATA t335 TYPE REF TO object.
      CLEAR t335.
      CLEAR t334.
      t335 = t331.
      TRY.
          t330 ?= t335.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t330 IS NOT BOUND.
        TRY.
            t334 ?= t331.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t334 IS BOUND.
          t330 = t334->source( ).
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
    DATA(t336) = t298.
    DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t337.
    DATA t338 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t338.
    DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t339.
    DATA t340 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t340.
    DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t341.
    DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t342.
    DATA(t343) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1096_358eab8a400f.
    CLEAR t342.
    IF t343 IS BOUND.
      CREATE OBJECT t342.
      t342->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t342->cval = t343.
    ENDIF.
    t341 = t342.
    DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t344.
    DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t345.
    DATA(t346) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1095_9dff9bf77964.
    CLEAR t345.
    IF t346 IS BOUND.
      CREATE OBJECT t345.
      t345->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t345->cval = t346.
    ENDIF.
    t344 = t345.
    DATA t347 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t347.
    DATA t348 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t348.
    CREATE OBJECT t348.
    t347 = t348.
    DATA t349 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t349.
    DATA(t350) = t341.
    DATA(t351) = t344.
    DATA(t352) = t347.
    t349 = zcl_lnt_st_combi_module=>alt_prio( i_first = t350 i_second = t351 i_rest = t352 ).
    t340 = t349.
    CLEAR t339.
    IF t340 IS BOUND.
      DATA t353 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t353.
      DATA t354 TYPE REF TO object.
      CLEAR t354.
      CLEAR t353.
      t354 = t340.
      TRY.
          t339 ?= t354.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t339 IS NOT BOUND.
        TRY.
            t353 ?= t340.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t353 IS BOUND.
          t339 = t353->source( ).
        ENDIF.
        IF t339 IS NOT BOUND.
          CREATE OBJECT t339.
          t339->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t339->oval = t340.
        ENDIF.
      ENDIF.
    ENDIF.
    t338 = zcl_lnt_st_combi_module=>star( i_first = t339 ).
    CLEAR t337.
    IF t338 IS BOUND.
      DATA t355 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t355.
      DATA t356 TYPE REF TO object.
      CLEAR t356.
      CLEAR t355.
      t356 = t338.
      TRY.
          t337 ?= t356.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t337 IS NOT BOUND.
        TRY.
            t355 ?= t338.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t355 IS BOUND.
          t337 = t355->source( ).
        ENDIF.
        IF t337 IS NOT BOUND.
          CREATE OBJECT t337.
          t337->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t337->oval = t338.
        ENDIF.
      ENDIF.
    ENDIF.
    t336->load( ).
    APPEND t337 TO t336->items.
    t336->save( ).
    DATA(t357) = t298.
    DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t358.
    DATA t359 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t359.
    DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t360.
    DATA(t361) = t180.
    CLEAR t360.
    IF t361 IS BOUND.
      DATA t362 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t362.
      DATA t363 TYPE REF TO object.
      CLEAR t363.
      CLEAR t362.
      t363 = t361.
      TRY.
          t360 ?= t363.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t360 IS NOT BOUND.
        TRY.
            t362 ?= t361.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t362 IS BOUND.
          t360 = t362->source( ).
        ENDIF.
        IF t360 IS NOT BOUND.
          CREATE OBJECT t360.
          t360->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t360->oval = t361.
        ENDIF.
      ENDIF.
    ENDIF.
    t359 = zcl_lnt_st_combi_module=>star_prio( i_first = t360 ).
    CLEAR t358.
    IF t359 IS BOUND.
      DATA t364 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t364.
      DATA t365 TYPE REF TO object.
      CLEAR t365.
      CLEAR t364.
      t365 = t359.
      TRY.
          t358 ?= t365.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t358 IS NOT BOUND.
        TRY.
            t364 ?= t359.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t364 IS BOUND.
          t358 = t364->source( ).
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
    DATA(t366) = t298.
    DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t367.
    DATA t368 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t368.
    DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t369.
    DATA(t370) = t86.
    CLEAR t369.
    IF t370 IS BOUND.
      DATA t371 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t371.
      DATA t372 TYPE REF TO object.
      CLEAR t372.
      CLEAR t371.
      t372 = t370.
      TRY.
          t369 ?= t372.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t369 IS NOT BOUND.
        TRY.
            t371 ?= t370.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t371 IS BOUND.
          t369 = t371->source( ).
        ENDIF.
        IF t369 IS NOT BOUND.
          CREATE OBJECT t369.
          t369->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t369->oval = t370.
        ENDIF.
      ENDIF.
    ENDIF.
    t368 = zcl_lnt_st_combi_module=>opt( i_first = t369 ).
    CLEAR t367.
    IF t368 IS BOUND.
      DATA t373 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t373.
      DATA t374 TYPE REF TO object.
      CLEAR t374.
      CLEAR t373.
      t374 = t368.
      TRY.
          t367 ?= t374.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t367 IS NOT BOUND.
        TRY.
            t373 ?= t368.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t373 IS BOUND.
          t367 = t373->source( ).
        ENDIF.
        IF t367 IS NOT BOUND.
          CREATE OBJECT t367.
          t367->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t367->oval = t368.
        ENDIF.
      ENDIF.
    ENDIF.
    t366->load( ).
    APPEND t367 TO t366->items.
    t366->save( ).
    DATA(t375) = t298.
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t376.
    DATA t377 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t377.
    DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t378.
    DATA(t379) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1104_02fd7d49de66.
    CLEAR t378.
    IF t379 IS BOUND.
      CREATE OBJECT t378.
      t378->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t378->cval = t379.
    ENDIF.
    t377 = zcl_lnt_st_combi_module=>opt_prio( i_first = t378 ).
    CLEAR t376.
    IF t377 IS BOUND.
      DATA t380 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t380.
      DATA t381 TYPE REF TO object.
      CLEAR t381.
      CLEAR t380.
      t381 = t377.
      TRY.
          t376 ?= t381.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t376 IS NOT BOUND.
        TRY.
            t380 ?= t377.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t380 IS BOUND.
          t376 = t380->source( ).
        ENDIF.
        IF t376 IS NOT BOUND.
          CREATE OBJECT t376.
          t376->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t376->oval = t377.
        ENDIF.
      ENDIF.
    ENDIF.
    t375->load( ).
    APPEND t376 TO t375->items.
    t375->save( ).
    DATA(t382) = t298.
    DATA t383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t383.
    DATA t384 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t384.
    DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t385.
    DATA(t386) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1115_36a563593830.
    CLEAR t385.
    IF t386 IS BOUND.
      CREATE OBJECT t385.
      t385->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t385->cval = t386.
    ENDIF.
    t384 = zcl_lnt_st_combi_module=>opt_prio( i_first = t385 ).
    CLEAR t383.
    IF t384 IS BOUND.
      DATA t387 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t387.
      DATA t388 TYPE REF TO object.
      CLEAR t388.
      CLEAR t387.
      t388 = t384.
      TRY.
          t383 ?= t388.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t383 IS NOT BOUND.
        TRY.
            t387 ?= t384.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t387 IS BOUND.
          t383 = t387->source( ).
        ENDIF.
        IF t383 IS NOT BOUND.
          CREATE OBJECT t383.
          t383->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t383->oval = t384.
        ENDIF.
      ENDIF.
    ENDIF.
    t382->load( ).
    APPEND t383 TO t382->items.
    t382->save( ).
    DATA(t389) = t298.
    DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t390.
    DATA t391 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t391.
    DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t392.
    DATA(t393) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1118_b270eb02b737.
    CLEAR t392.
    IF t393 IS BOUND.
      CREATE OBJECT t392.
      t392->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t392->cval = t393.
    ENDIF.
    t391 = zcl_lnt_st_combi_module=>opt_prio( i_first = t392 ).
    CLEAR t390.
    IF t391 IS BOUND.
      DATA t394 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t394.
      DATA t395 TYPE REF TO object.
      CLEAR t395.
      CLEAR t394.
      t395 = t391.
      TRY.
          t390 ?= t395.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t390 IS NOT BOUND.
        TRY.
            t394 ?= t391.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t394 IS BOUND.
          t390 = t394->source( ).
        ENDIF.
        IF t390 IS NOT BOUND.
          CREATE OBJECT t390.
          t390->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t390->oval = t391.
        ENDIF.
      ENDIF.
    ENDIF.
    t389->load( ).
    APPEND t390 TO t389->items.
    t389->save( ).
    DATA(t396) = t298.
    DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t397.
    DATA t398 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t398.
    DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t399.
    DATA t400 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t400.
    DATA t401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t401.
    DATA t402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t402.
    DATA t403 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t403.
    DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t404.
    DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t405.
    DATA(t406) = |UNION|.
    CLEAR t405.
    CREATE OBJECT t405.
    t405->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t405->sval = t406.
    t404 = t405.
    DATA t407 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t407.
    DATA t408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t408.
    DATA t409 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t409.
    DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t410.
    DATA(t411) = |ALL|.
    CLEAR t410.
    CREATE OBJECT t410.
    t410->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t410->sval = t411.
    t409 = zcl_lnt_st_combi_module=>opt_prio( i_first = t410 ).
    CLEAR t408.
    IF t409 IS BOUND.
      DATA t412 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t412.
      DATA t413 TYPE REF TO object.
      CLEAR t413.
      CLEAR t412.
      t413 = t409.
      TRY.
          t408 ?= t413.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t408 IS NOT BOUND.
        TRY.
            t412 ?= t409.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t412 IS BOUND.
          t408 = t412->source( ).
        ENDIF.
        IF t408 IS NOT BOUND.
          CREATE OBJECT t408.
          t408->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t408->oval = t409.
        ENDIF.
      ENDIF.
    ENDIF.
    t407 = t408.
    DATA t414 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t414.
    DATA t415 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t415.
    CREATE OBJECT t415.
    t414 = t415.
    DATA(t416) = t414.
    DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t417.
    DATA(t418) = t269.
    CLEAR t417.
    IF t418 IS BOUND.
      DATA t419 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t419.
      DATA t420 TYPE REF TO object.
      CLEAR t420.
      CLEAR t419.
      t420 = t418.
      TRY.
          t417 ?= t420.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t417 IS NOT BOUND.
        TRY.
            t419 ?= t418.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t419 IS BOUND.
          t417 = t419->source( ).
        ENDIF.
        IF t417 IS NOT BOUND.
          CREATE OBJECT t417.
          t417->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t417->oval = t418.
        ENDIF.
      ENDIF.
    ENDIF.
    t416->load( ).
    APPEND t417 TO t416->items.
    t416->save( ).
    DATA t421 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t421.
    DATA(t422) = t404.
    DATA(t423) = t407.
    DATA(t424) = t414.
    t421 = zcl_lnt_st_combi_module=>seq( i_first = t422 i_second = t423 i_rest = t424 ).
    t403 = t421.
    CLEAR t402.
    IF t403 IS BOUND.
      DATA t425 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t425.
      DATA t426 TYPE REF TO object.
      CLEAR t426.
      CLEAR t425.
      t426 = t403.
      TRY.
          t402 ?= t426.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t402 IS NOT BOUND.
        TRY.
            t425 ?= t403.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t425 IS BOUND.
          t402 = t425->source( ).
        ENDIF.
        IF t402 IS NOT BOUND.
          CREATE OBJECT t402.
          t402->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t402->oval = t403.
        ENDIF.
      ENDIF.
    ENDIF.
    t401 = t402.
    DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t427.
    DATA t428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t428.
    DATA t429 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t429.
    DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t430.
    DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t431.
    DATA(t432) = |EXCEPT|.
    CLEAR t431.
    CREATE OBJECT t431.
    t431->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t431->sval = t432.
    t430 = t431.
    DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t433.
    DATA t434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t434.
    DATA(t435) = t269.
    CLEAR t434.
    IF t435 IS BOUND.
      DATA t436 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t436.
      DATA t437 TYPE REF TO object.
      CLEAR t437.
      CLEAR t436.
      t437 = t435.
      TRY.
          t434 ?= t437.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t434 IS NOT BOUND.
        TRY.
            t436 ?= t435.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t436 IS BOUND.
          t434 = t436->source( ).
        ENDIF.
        IF t434 IS NOT BOUND.
          CREATE OBJECT t434.
          t434->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t434->oval = t435.
        ENDIF.
      ENDIF.
    ENDIF.
    t433 = t434.
    DATA t438 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t438.
    DATA t439 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t439.
    CREATE OBJECT t439.
    t438 = t439.
    DATA t440 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t440.
    DATA(t441) = t430.
    DATA(t442) = t433.
    DATA(t443) = t438.
    t440 = zcl_lnt_st_combi_module=>seq( i_first = t441 i_second = t442 i_rest = t443 ).
    t429 = t440.
    CLEAR t428.
    IF t429 IS BOUND.
      DATA t444 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t444.
      DATA t445 TYPE REF TO object.
      CLEAR t445.
      CLEAR t444.
      t445 = t429.
      TRY.
          t428 ?= t445.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t428 IS NOT BOUND.
        TRY.
            t444 ?= t429.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t444 IS BOUND.
          t428 = t444->source( ).
        ENDIF.
        IF t428 IS NOT BOUND.
          CREATE OBJECT t428.
          t428->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t428->oval = t429.
        ENDIF.
      ENDIF.
    ENDIF.
    t427 = t428.
    DATA t446 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t446.
    DATA t447 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t447.
    CREATE OBJECT t447.
    t446 = t447.
    DATA(t448) = t446.
    DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t449.
    DATA t450 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t450.
    DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t451.
    DATA t452 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t452.
    DATA(t453) = |INTERSECT|.
    CLEAR t452.
    CREATE OBJECT t452.
    t452->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t452->sval = t453.
    t451 = t452.
    DATA t454 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t454.
    DATA t455 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t455.
    DATA(t456) = t269.
    CLEAR t455.
    IF t456 IS BOUND.
      DATA t457 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t457.
      DATA t458 TYPE REF TO object.
      CLEAR t458.
      CLEAR t457.
      t458 = t456.
      TRY.
          t455 ?= t458.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t455 IS NOT BOUND.
        TRY.
            t457 ?= t456.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t457 IS BOUND.
          t455 = t457->source( ).
        ENDIF.
        IF t455 IS NOT BOUND.
          CREATE OBJECT t455.
          t455->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t455->oval = t456.
        ENDIF.
      ENDIF.
    ENDIF.
    t454 = t455.
    DATA t459 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t459.
    DATA t460 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t460.
    CREATE OBJECT t460.
    t459 = t460.
    DATA t461 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t461.
    DATA(t462) = t451.
    DATA(t463) = t454.
    DATA(t464) = t459.
    t461 = zcl_lnt_st_combi_module=>seq( i_first = t462 i_second = t463 i_rest = t464 ).
    t450 = t461.
    CLEAR t449.
    IF t450 IS BOUND.
      DATA t465 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t465.
      DATA t466 TYPE REF TO object.
      CLEAR t466.
      CLEAR t465.
      t466 = t450.
      TRY.
          t449 ?= t466.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t449 IS NOT BOUND.
        TRY.
            t465 ?= t450.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t465 IS BOUND.
          t449 = t465->source( ).
        ENDIF.
        IF t449 IS NOT BOUND.
          CREATE OBJECT t449.
          t449->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t449->oval = t450.
        ENDIF.
      ENDIF.
    ENDIF.
    t448->load( ).
    APPEND t449 TO t448->items.
    t448->save( ).
    DATA t467 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t467.
    DATA(t468) = t401.
    DATA(t469) = t427.
    DATA(t470) = t446.
    t467 = zcl_lnt_st_combi_module=>alt_prio( i_first = t468 i_second = t469 i_rest = t470 ).
    t400 = t467.
    CLEAR t399.
    IF t400 IS BOUND.
      DATA t471 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t471.
      DATA t472 TYPE REF TO object.
      CLEAR t472.
      CLEAR t471.
      t472 = t400.
      TRY.
          t399 ?= t472.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t399 IS NOT BOUND.
        TRY.
            t471 ?= t400.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t471 IS BOUND.
          t399 = t471->source( ).
        ENDIF.
        IF t399 IS NOT BOUND.
          CREATE OBJECT t399.
          t399->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t399->oval = t400.
        ENDIF.
      ENDIF.
    ENDIF.
    t398 = zcl_lnt_st_combi_module=>opt_prio( i_first = t399 ).
    CLEAR t397.
    IF t398 IS BOUND.
      DATA t473 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t473.
      DATA t474 TYPE REF TO object.
      CLEAR t474.
      CLEAR t473.
      t474 = t398.
      TRY.
          t397 ?= t474.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t397 IS NOT BOUND.
        TRY.
            t473 ?= t398.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t473 IS BOUND.
          t397 = t473->source( ).
        ENDIF.
        IF t397 IS NOT BOUND.
          CREATE OBJECT t397.
          t397->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t397->oval = t398.
        ENDIF.
      ENDIF.
    ENDIF.
    t396->load( ).
    APPEND t397 TO t396->items.
    t396->save( ).
    DATA t475 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t475.
    DATA(t476) = t286.
    DATA(t477) = t289.
    DATA(t478) = t298.
    t475 = zcl_lnt_st_combi_module=>seq( i_first = t476 i_second = t477 i_rest = t478 ).
    t285 = t475.
    result = t285.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1112_606bcf340c7d.
  ENDMETHOD.
ENDCLASS.
