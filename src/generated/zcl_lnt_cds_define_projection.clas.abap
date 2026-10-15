* TS: src/cds/expressions/cds_define_projection.ts:6:1 CDSDefineProjection
CLASS zcl_lnt_cds_define_projection DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_define_projection IMPLEMENTATION.
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
    DATA(t5) = |EXACT ONE TO EXACT ONE|.
    CLEAR t4.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = |EXACT ONE TO MANY|.
    CLEAR t7.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = t8.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t10.
    CREATE OBJECT t10.
    t9 = t10.
    DATA(t11) = t9.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA(t13) = |EXACT ONE TO ONE|.
    CLEAR t12.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = t13.
    t11->load( ).
    APPEND t12 TO t11->items.
    t11->save( ).
    DATA(t14) = t9.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA(t16) = |MANY TO EXACT ONE|.
    CLEAR t15.
    CREATE OBJECT t15.
    t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t15->sval = t16.
    t14->load( ).
    APPEND t15 TO t14->items.
    t14->save( ).
    DATA(t17) = t9.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA(t19) = |MANY TO MANY|.
    CLEAR t18.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    t17->load( ).
    APPEND t18 TO t17->items.
    t17->save( ).
    DATA(t20) = t9.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA(t22) = |MANY TO ONE|.
    CLEAR t21.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = t22.
    t20->load( ).
    APPEND t21 TO t20->items.
    t20->save( ).
    DATA(t23) = t9.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA(t25) = |ONE TO EXACT ONE|.
    CLEAR t24.
    CREATE OBJECT t24.
    t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t24->sval = t25.
    t23->load( ).
    APPEND t24 TO t23->items.
    t23->save( ).
    DATA(t26) = t9.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA(t28) = |ONE TO MANY|.
    CLEAR t27.
    CREATE OBJECT t27.
    t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t27->sval = t28.
    t26->load( ).
    APPEND t27 TO t26->items.
    t26->save( ).
    DATA(t29) = t9.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA(t31) = |ONE TO ONE|.
    CLEAR t30.
    CREATE OBJECT t30.
    t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t30->sval = t31.
    t29->load( ).
    APPEND t30 TO t29->items.
    t29->save( ).
    DATA(t32) = t9.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA(t34) = |TO EXACT ONE|.
    CLEAR t33.
    CREATE OBJECT t33.
    t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t33->sval = t34.
    t32->load( ).
    APPEND t33 TO t32->items.
    t32->save( ).
    DATA(t35) = t9.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA(t37) = |TO ONE|.
    CLEAR t36.
    CREATE OBJECT t36.
    t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t36->sval = t37.
    t35->load( ).
    APPEND t36 TO t35->items.
    t35->save( ).
    DATA(t38) = t9.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA(t40) = |TO MANY|.
    CLEAR t39.
    CREATE OBJECT t39.
    t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t39->sval = t40.
    t38->load( ).
    APPEND t39 TO t38->items.
    t38->save( ).
    DATA(t41) = t9.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA(t43) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1090_761dcdeb1ada.
    CLEAR t42.
    IF t43 IS BOUND.
      CREATE OBJECT t42.
      t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t42->cval = t43.
    ENDIF.
    t41->load( ).
    APPEND t42 TO t41->items.
    t41->save( ).
    DATA(t44) = t9.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA(t46) = |*|.
    CLEAR t45.
    CREATE OBJECT t45.
    t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t45->sval = t46.
    t44->load( ).
    APPEND t45 TO t44->items.
    t44->save( ).
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t47.
    DATA(t48) = t3.
    DATA(t49) = t6.
    DATA(t50) = t9.
    t47 = zcl_lnt_st_combi_module=>alt_prio( i_first = t48 i_second = t49 i_rest = t50 ).
    t2 = t47.
    t1 = t2.
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t51.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA(t55) = |[|.
    CLEAR t54.
    CREATE OBJECT t54.
    t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t54->sval = t55.
    t53 = t54.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA(t63) = t1.
    CLEAR t62.
    IF t63 IS BOUND.
      DATA t64 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t64.
      DATA t65 TYPE REF TO object.
      CLEAR t65.
      CLEAR t64.
      t65 = t63.
      TRY.
          t62 ?= t65.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t62 IS NOT BOUND.
        TRY.
            t64 ?= t63.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t64 IS BOUND.
          t62 = t64->source( ).
        ENDIF.
        IF t62 IS NOT BOUND.
          CREATE OBJECT t62.
          t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t62->oval = t63.
        ENDIF.
      ENDIF.
    ENDIF.
    t61 = t62.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA(t68) = |:|.
    CLEAR t67.
    CREATE OBJECT t67.
    t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t67->sval = t68.
    t66 = t67.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t69.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t70.
    CREATE OBJECT t70.
    t69 = t70.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t71.
    DATA(t72) = t61.
    DATA(t73) = t66.
    DATA(t74) = t69.
    t71 = zcl_lnt_st_combi_module=>seq( i_first = t72 i_second = t73 i_rest = t74 ).
    t60 = t71.
    CLEAR t59.
    IF t60 IS BOUND.
      DATA t75 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t75.
      DATA t76 TYPE REF TO object.
      CLEAR t76.
      CLEAR t75.
      t76 = t60.
      TRY.
          t59 ?= t76.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t59 IS NOT BOUND.
        TRY.
            t75 ?= t60.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t75 IS BOUND.
          t59 = t75->source( ).
        ENDIF.
        IF t59 IS NOT BOUND.
          CREATE OBJECT t59.
          t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t59->oval = t60.
        ENDIF.
      ENDIF.
    ENDIF.
    t58 = zcl_lnt_st_combi_module=>opt_prio( i_first = t59 ).
    CLEAR t57.
    IF t58 IS BOUND.
      DATA t77 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t77.
      DATA t78 TYPE REF TO object.
      CLEAR t78.
      CLEAR t77.
      t78 = t58.
      TRY.
          t57 ?= t78.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t57 IS NOT BOUND.
        TRY.
            t77 ?= t58.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t77 IS BOUND.
          t57 = t77->source( ).
        ENDIF.
        IF t57 IS NOT BOUND.
          CREATE OBJECT t57.
          t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t57->oval = t58.
        ENDIF.
      ENDIF.
    ENDIF.
    t56 = t57.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t79.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t80.
    CREATE OBJECT t80.
    t79 = t80.
    DATA(t81) = t79.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA(t83) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1093_a2ba45eabd2a.
    CLEAR t82.
    IF t83 IS BOUND.
      CREATE OBJECT t82.
      t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t82->cval = t83.
    ENDIF.
    t81->load( ).
    APPEND t82 TO t81->items.
    t81->save( ).
    DATA(t84) = t79.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA(t86) = |]|.
    CLEAR t85.
    CREATE OBJECT t85.
    t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t85->sval = t86.
    t84->load( ).
    APPEND t85 TO t84->items.
    t84->save( ).
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t87.
    DATA(t88) = t53.
    DATA(t89) = t56.
    DATA(t90) = t79.
    t87 = zcl_lnt_st_combi_module=>seq( i_first = t88 i_second = t89 i_rest = t90 ).
    t52 = t87.
    t51 = t52.
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t91.
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA(t95) = |REDEFINE|.
    CLEAR t94.
    CREATE OBJECT t94.
    t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t94->sval = t95.
    t93 = t94.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA(t98) = |ASSOCIATION|.
    CLEAR t97.
    CREATE OBJECT t97.
    t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t97->sval = t98.
    t96 = t97.
    DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t100.
    CREATE OBJECT t100.
    t99 = t100.
    DATA(t101) = t99.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA(t103) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    CLEAR t102.
    IF t103 IS BOUND.
      CREATE OBJECT t102.
      t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t102->cval = t103.
    ENDIF.
    t101->load( ).
    APPEND t102 TO t101->items.
    t101->save( ).
    DATA(t104) = t99.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA t106 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA(t108) = t51.
    CLEAR t107.
    IF t108 IS BOUND.
      DATA t109 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t109.
      DATA t110 TYPE REF TO object.
      CLEAR t110.
      CLEAR t109.
      t110 = t108.
      TRY.
          t107 ?= t110.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t107 IS NOT BOUND.
        TRY.
            t109 ?= t108.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t109 IS BOUND.
          t107 = t109->source( ).
        ENDIF.
        IF t107 IS NOT BOUND.
          CREATE OBJECT t107.
          t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t107->oval = t108.
        ENDIF.
      ENDIF.
    ENDIF.
    t106 = zcl_lnt_st_combi_module=>opt_prio( i_first = t107 ).
    CLEAR t105.
    IF t106 IS BOUND.
      DATA t111 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t111.
      DATA t112 TYPE REF TO object.
      CLEAR t112.
      CLEAR t111.
      t112 = t106.
      TRY.
          t105 ?= t112.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t105 IS NOT BOUND.
        TRY.
            t111 ?= t106.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t111 IS BOUND.
          t105 = t111->source( ).
        ENDIF.
        IF t105 IS NOT BOUND.
          CREATE OBJECT t105.
          t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t105->oval = t106.
        ENDIF.
      ENDIF.
    ENDIF.
    t104->load( ).
    APPEND t105 TO t104->items.
    t104->save( ).
    DATA(t113) = t99.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t115.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA(t117) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1091_2816df13f1ce.
    CLEAR t116.
    IF t117 IS BOUND.
      CREATE OBJECT t116.
      t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t116->cval = t117.
    ENDIF.
    t115 = zcl_lnt_st_combi_module=>opt( i_first = t116 ).
    CLEAR t114.
    IF t115 IS BOUND.
      DATA t118 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t118.
      DATA t119 TYPE REF TO object.
      CLEAR t119.
      CLEAR t118.
      t119 = t115.
      TRY.
          t114 ?= t119.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t114 IS NOT BOUND.
        TRY.
            t118 ?= t115.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t118 IS BOUND.
          t114 = t118->source( ).
        ENDIF.
        IF t114 IS NOT BOUND.
          CREATE OBJECT t114.
          t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t114->oval = t115.
        ENDIF.
      ENDIF.
    ENDIF.
    t113->load( ).
    APPEND t114 TO t113->items.
    t113->save( ).
    DATA(t120) = t99.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    DATA(t122) = |REDIRECTED|.
    CLEAR t121.
    CREATE OBJECT t121.
    t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t121->sval = t122.
    t120->load( ).
    APPEND t121 TO t120->items.
    t120->save( ).
    DATA(t123) = t99.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    DATA(t125) = |TO|.
    CLEAR t124.
    CREATE OBJECT t124.
    t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t124->sval = t125.
    t123->load( ).
    APPEND t124 TO t123->items.
    t123->save( ).
    DATA(t126) = t99.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t127.
    DATA t128 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t128.
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
    DATA(t136) = |COMPOSITION|.
    CLEAR t135.
    CREATE OBJECT t135.
    t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t135->sval = t136.
    t134 = t135.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t137.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    DATA(t139) = |CHILD|.
    CLEAR t138.
    CREATE OBJECT t138.
    t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t138->sval = t139.
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
    DATA(t150) = |PARENT|.
    CLEAR t149.
    CREATE OBJECT t149.
    t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t149->sval = t150.
    t148 = t149.
    DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t151.
    DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t152.
    CREATE OBJECT t152.
    t151 = t152.
    DATA t153 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t153.
    DATA(t154) = t131.
    DATA(t155) = t148.
    DATA(t156) = t151.
    t153 = zcl_lnt_st_combi_module=>alt_prio( i_first = t154 i_second = t155 i_rest = t156 ).
    t130 = t153.
    CLEAR t129.
    IF t130 IS BOUND.
      DATA t157 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t157.
      DATA t158 TYPE REF TO object.
      CLEAR t158.
      CLEAR t157.
      t158 = t130.
      TRY.
          t129 ?= t158.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t129 IS NOT BOUND.
        TRY.
            t157 ?= t130.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t157 IS BOUND.
          t129 = t157->source( ).
        ENDIF.
        IF t129 IS NOT BOUND.
          CREATE OBJECT t129.
          t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t129->oval = t130.
        ENDIF.
      ENDIF.
    ENDIF.
    t128 = zcl_lnt_st_combi_module=>opt_prio( i_first = t129 ).
    CLEAR t127.
    IF t128 IS BOUND.
      DATA t159 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t159.
      DATA t160 TYPE REF TO object.
      CLEAR t160.
      CLEAR t159.
      t160 = t128.
      TRY.
          t127 ?= t160.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t127 IS NOT BOUND.
        TRY.
            t159 ?= t128.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t159 IS BOUND.
          t127 = t159->source( ).
        ENDIF.
        IF t127 IS NOT BOUND.
          CREATE OBJECT t127.
          t127->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t127->oval = t128.
        ENDIF.
      ENDIF.
    ENDIF.
    t126->load( ).
    APPEND t127 TO t126->items.
    t126->save( ).
    DATA(t161) = t99.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t162.
    DATA(t163) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    CLEAR t162.
    IF t163 IS BOUND.
      CREATE OBJECT t162.
      t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t162->cval = t163.
    ENDIF.
    t161->load( ).
    APPEND t162 TO t161->items.
    t161->save( ).
    DATA t164 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t164.
    DATA(t165) = t93.
    DATA(t166) = t96.
    DATA(t167) = t99.
    t164 = zcl_lnt_st_combi_module=>seq( i_first = t165 i_second = t166 i_rest = t167 ).
    t92 = t164.
    t91 = t92.
    DATA t168 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t168.
    DATA t169 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t169.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t170.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t171.
    DATA(t172) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1075_bb8c443f99f5.
    CLEAR t171.
    IF t172 IS BOUND.
      CREATE OBJECT t171.
      t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t171->cval = t172.
    ENDIF.
    t170 = t171.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t174.
    DATA(t175) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
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
    DATA t178 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t178.
    DATA(t179) = t170.
    DATA(t180) = t173.
    DATA(t181) = t176.
    t178 = zcl_lnt_st_combi_module=>seq( i_first = t179 i_second = t180 i_rest = t181 ).
    t169 = t178.
    t168 = t169.
    DATA t182 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t182.
    DATA t183 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t183.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t184.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t185.
    DATA(t186) = t168.
    CLEAR t185.
    IF t186 IS BOUND.
      DATA t187 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t187.
      DATA t188 TYPE REF TO object.
      CLEAR t188.
      CLEAR t187.
      t188 = t186.
      TRY.
          t185 ?= t188.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t185 IS NOT BOUND.
        TRY.
            t187 ?= t186.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t187 IS BOUND.
          t185 = t187->source( ).
        ENDIF.
        IF t185 IS NOT BOUND.
          CREATE OBJECT t185.
          t185->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t185->oval = t186.
        ENDIF.
      ENDIF.
    ENDIF.
    t184 = t185.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t189.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t190.
    DATA(t191) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
    CLEAR t190.
    IF t191 IS BOUND.
      CREATE OBJECT t190.
      t190->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t190->cval = t191.
    ENDIF.
    t189 = t190.
    DATA t192 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t192.
    DATA t193 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t193.
    CREATE OBJECT t193.
    t192 = t193.
    DATA(t194) = t192.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t195.
    DATA(t196) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    CLEAR t195.
    IF t196 IS BOUND.
      CREATE OBJECT t195.
      t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t195->cval = t196.
    ENDIF.
    t194->load( ).
    APPEND t195 TO t194->items.
    t194->save( ).
    DATA t197 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t197.
    DATA(t198) = t184.
    DATA(t199) = t189.
    DATA(t200) = t192.
    t197 = zcl_lnt_st_combi_module=>alt_prio( i_first = t198 i_second = t199 i_rest = t200 ).
    t183 = t197.
    t182 = t183.
    DATA t201 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t201.
    DATA t202 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t202.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t203.
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t204.
    DATA(t205) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
    CLEAR t204.
    IF t205 IS BOUND.
      CREATE OBJECT t204.
      t204->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t204->cval = t205.
    ENDIF.
    t203 = t204.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t206.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t207.
    DATA(t208) = |=|.
    CLEAR t207.
    CREATE OBJECT t207.
    t207->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t207->sval = t208.
    t206 = t207.
    DATA t209 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t209.
    DATA t210 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t210.
    CREATE OBJECT t210.
    t209 = t210.
    DATA(t211) = t209.
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t212.
    DATA(t213) = |>|.
    CLEAR t212.
    CREATE OBJECT t212.
    t212->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t212->sval = t213.
    t211->load( ).
    APPEND t212 TO t211->items.
    t211->save( ).
    DATA(t214) = t209.
    DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t215.
    DATA(t216) = t182.
    CLEAR t215.
    IF t216 IS BOUND.
      DATA t217 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t217.
      DATA t218 TYPE REF TO object.
      CLEAR t218.
      CLEAR t217.
      t218 = t216.
      TRY.
          t215 ?= t218.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t215 IS NOT BOUND.
        TRY.
            t217 ?= t216.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t217 IS BOUND.
          t215 = t217->source( ).
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
    DATA t219 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t219.
    DATA(t220) = t203.
    DATA(t221) = t206.
    DATA(t222) = t209.
    t219 = zcl_lnt_st_combi_module=>seq( i_first = t220 i_second = t221 i_rest = t222 ).
    t202 = t219.
    t201 = t202.
    DATA t223 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t223.
    DATA t224 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t224.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t225.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t226.
    DATA(t227) = |BIND|.
    CLEAR t226.
    CREATE OBJECT t226.
    t226->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t226->sval = t227.
    t225 = t226.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t228.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t229.
    DATA(t230) = |ASPECT|.
    CLEAR t229.
    CREATE OBJECT t229.
    t229->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t229->sval = t230.
    t228 = t229.
    DATA t231 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t231.
    DATA t232 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t232.
    CREATE OBJECT t232.
    t231 = t232.
    DATA(t233) = t231.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t234.
    DATA(t235) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    CLEAR t234.
    IF t235 IS BOUND.
      CREATE OBJECT t234.
      t234->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t234->cval = t235.
    ENDIF.
    t233->load( ).
    APPEND t234 TO t233->items.
    t233->save( ).
    DATA(t236) = t231.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t237.
    DATA(t238) = |(|.
    CLEAR t237.
    CREATE OBJECT t237.
    t237->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t237->sval = t238.
    t236->load( ).
    APPEND t237 TO t236->items.
    t236->save( ).
    DATA(t239) = t231.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t240.
    DATA(t241) = t201.
    CLEAR t240.
    IF t241 IS BOUND.
      DATA t242 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t242.
      DATA t243 TYPE REF TO object.
      CLEAR t243.
      CLEAR t242.
      t243 = t241.
      TRY.
          t240 ?= t243.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t240 IS NOT BOUND.
        TRY.
            t242 ?= t241.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t242 IS BOUND.
          t240 = t242->source( ).
        ENDIF.
        IF t240 IS NOT BOUND.
          CREATE OBJECT t240.
          t240->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t240->oval = t241.
        ENDIF.
      ENDIF.
    ENDIF.
    t239->load( ).
    APPEND t240 TO t239->items.
    t239->save( ).
    DATA(t244) = t231.
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t245.
    DATA t246 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t246.
    DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t247.
    DATA t248 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t248.
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t249.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t250.
    DATA(t251) = |,|.
    CLEAR t250.
    CREATE OBJECT t250.
    t250->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t250->sval = t251.
    t249 = t250.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t252.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t253.
    DATA(t254) = t201.
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
    DATA(t260) = t249.
    DATA(t261) = t252.
    DATA(t262) = t257.
    t259 = zcl_lnt_st_combi_module=>seq( i_first = t260 i_second = t261 i_rest = t262 ).
    t248 = t259.
    CLEAR t247.
    IF t248 IS BOUND.
      DATA t263 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t263.
      DATA t264 TYPE REF TO object.
      CLEAR t264.
      CLEAR t263.
      t264 = t248.
      TRY.
          t247 ?= t264.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t247 IS NOT BOUND.
        TRY.
            t263 ?= t248.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t263 IS BOUND.
          t247 = t263->source( ).
        ENDIF.
        IF t247 IS NOT BOUND.
          CREATE OBJECT t247.
          t247->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t247->oval = t248.
        ENDIF.
      ENDIF.
    ENDIF.
    t246 = zcl_lnt_st_combi_module=>star_prio( i_first = t247 ).
    CLEAR t245.
    IF t246 IS BOUND.
      DATA t265 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t265.
      DATA t266 TYPE REF TO object.
      CLEAR t266.
      CLEAR t265.
      t266 = t246.
      TRY.
          t245 ?= t266.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t245 IS NOT BOUND.
        TRY.
            t265 ?= t246.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t265 IS BOUND.
          t245 = t265->source( ).
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
    DATA(t267) = t231.
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t268.
    DATA(t269) = |)|.
    CLEAR t268.
    CREATE OBJECT t268.
    t268->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t268->sval = t269.
    t267->load( ).
    APPEND t268 TO t267->items.
    t267->save( ).
    DATA(t270) = t231.
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t271.
    DATA t272 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t272.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t273.
    DATA t274 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t274.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t275.
    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t276.
    DATA(t277) = |AS|.
    CLEAR t276.
    CREATE OBJECT t276.
    t276->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t276->sval = t277.
    t275 = t276.
    DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t278.
    DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t279.
    DATA(t280) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    CLEAR t279.
    IF t280 IS BOUND.
      CREATE OBJECT t279.
      t279->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t279->cval = t280.
    ENDIF.
    t278 = t279.
    DATA t281 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t281.
    DATA t282 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t282.
    CREATE OBJECT t282.
    t281 = t282.
    DATA t283 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t283.
    DATA(t284) = t275.
    DATA(t285) = t278.
    DATA(t286) = t281.
    t283 = zcl_lnt_st_combi_module=>seq( i_first = t284 i_second = t285 i_rest = t286 ).
    t274 = t283.
    CLEAR t273.
    IF t274 IS BOUND.
      DATA t287 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t287.
      DATA t288 TYPE REF TO object.
      CLEAR t288.
      CLEAR t287.
      t288 = t274.
      TRY.
          t273 ?= t288.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t273 IS NOT BOUND.
        TRY.
            t287 ?= t274.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t287 IS BOUND.
          t273 = t287->source( ).
        ENDIF.
        IF t273 IS NOT BOUND.
          CREATE OBJECT t273.
          t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t273->oval = t274.
        ENDIF.
      ENDIF.
    ENDIF.
    t272 = zcl_lnt_st_combi_module=>opt_prio( i_first = t273 ).
    CLEAR t271.
    IF t272 IS BOUND.
      DATA t289 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t289.
      DATA t290 TYPE REF TO object.
      CLEAR t290.
      CLEAR t289.
      t290 = t272.
      TRY.
          t271 ?= t290.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t271 IS NOT BOUND.
        TRY.
            t289 ?= t272.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t289 IS BOUND.
          t271 = t289->source( ).
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
    DATA t291 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t291.
    DATA(t292) = t225.
    DATA(t293) = t228.
    DATA(t294) = t231.
    t291 = zcl_lnt_st_combi_module=>seq( i_first = t292 i_second = t293 i_rest = t294 ).
    t224 = t291.
    t223 = t224.
    DATA t295 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t295.
    DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t296.
    DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t297.
    DATA t298 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t298.
    DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t299.
    DATA(t300) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    CLEAR t299.
    IF t300 IS BOUND.
      CREATE OBJECT t299.
      t299->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t299->cval = t300.
    ENDIF.
    t298 = zcl_lnt_st_combi_module=>star( i_first = t299 ).
    CLEAR t297.
    IF t298 IS BOUND.
      DATA t301 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t301.
      DATA t302 TYPE REF TO object.
      CLEAR t302.
      CLEAR t301.
      t302 = t298.
      TRY.
          t297 ?= t302.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t297 IS NOT BOUND.
        TRY.
            t301 ?= t298.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t301 IS BOUND.
          t297 = t301->source( ).
        ENDIF.
        IF t297 IS NOT BOUND.
          CREATE OBJECT t297.
          t297->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t297->oval = t298.
        ENDIF.
      ENDIF.
    ENDIF.
    t296 = t297.
    DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t303.
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t304.
    DATA t305 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t305.
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t306.
    DATA(t307) = |DEFINE|.
    CLEAR t306.
    CREATE OBJECT t306.
    t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t306->sval = t307.
    t305 = zcl_lnt_st_combi_module=>opt( i_first = t306 ).
    CLEAR t304.
    IF t305 IS BOUND.
      DATA t308 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t308.
      DATA t309 TYPE REF TO object.
      CLEAR t309.
      CLEAR t308.
      t309 = t305.
      TRY.
          t304 ?= t309.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t304 IS NOT BOUND.
        TRY.
            t308 ?= t305.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t308 IS BOUND.
          t304 = t308->source( ).
        ENDIF.
        IF t304 IS NOT BOUND.
          CREATE OBJECT t304.
          t304->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t304->oval = t305.
        ENDIF.
      ENDIF.
    ENDIF.
    t303 = t304.
    DATA t310 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t310.
    DATA t311 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t311.
    CREATE OBJECT t311.
    t310 = t311.
    DATA(t312) = t310.
    DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t313.
    DATA t314 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t314.
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t315.
    DATA(t316) = |TRANSIENT|.
    CLEAR t315.
    CREATE OBJECT t315.
    t315->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t315->sval = t316.
    t314 = zcl_lnt_st_combi_module=>opt( i_first = t315 ).
    CLEAR t313.
    IF t314 IS BOUND.
      DATA t317 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t317.
      DATA t318 TYPE REF TO object.
      CLEAR t318.
      CLEAR t317.
      t318 = t314.
      TRY.
          t313 ?= t318.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t313 IS NOT BOUND.
        TRY.
            t317 ?= t314.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t317 IS BOUND.
          t313 = t317->source( ).
        ENDIF.
        IF t313 IS NOT BOUND.
          CREATE OBJECT t313.
          t313->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t313->oval = t314.
        ENDIF.
      ENDIF.
    ENDIF.
    t312->load( ).
    APPEND t313 TO t312->items.
    t312->save( ).
    DATA(t319) = t310.
    DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t320.
    DATA t321 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t321.
    DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t322.
    DATA(t323) = |ROOT|.
    CLEAR t322.
    CREATE OBJECT t322.
    t322->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t322->sval = t323.
    t321 = zcl_lnt_st_combi_module=>opt( i_first = t322 ).
    CLEAR t320.
    IF t321 IS BOUND.
      DATA t324 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t324.
      DATA t325 TYPE REF TO object.
      CLEAR t325.
      CLEAR t324.
      t325 = t321.
      TRY.
          t320 ?= t325.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t320 IS NOT BOUND.
        TRY.
            t324 ?= t321.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t324 IS BOUND.
          t320 = t324->source( ).
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
    DATA(t326) = t310.
    DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t327.
    DATA(t328) = |VIEW|.
    CLEAR t327.
    CREATE OBJECT t327.
    t327->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t327->sval = t328.
    t326->load( ).
    APPEND t327 TO t326->items.
    t326->save( ).
    DATA(t329) = t310.
    DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t330.
    DATA t331 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t331.
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t332.
    DATA t333 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t333.
    DATA t334 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t334.
    DATA t335 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t335.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t335 = zcl_lnt_version_module=>release_b8cd.
    DATA(t336) = |v755|.
    t334 = t335->get( p0 = t336 ).
    t333 = t334.
    CLEAR t332.
    IF t333 IS BOUND.
      DATA t337 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t337.
      DATA t338 TYPE REF TO object.
      CLEAR t338.
      CLEAR t337.
      t338 = t333.
      TRY.
          t332 ?= t338.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t332 IS NOT BOUND.
        TRY.
            t337 ?= t333.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t337 IS BOUND.
          t332 = t337->source( ).
        ENDIF.
        IF t332 IS NOT BOUND.
          CREATE OBJECT t332.
          t332->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t332->oval = t333.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t339.
    DATA t340 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t340.
    DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t341.
    DATA(t342) = |ENTITY|.
    CLEAR t341.
    CREATE OBJECT t341.
    t341->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t341->sval = t342.
    t340 = zcl_lnt_st_combi_module=>opt( i_first = t341 ).
    CLEAR t339.
    IF t340 IS BOUND.
      DATA t343 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t343.
      DATA t344 TYPE REF TO object.
      CLEAR t344.
      CLEAR t343.
      t344 = t340.
      TRY.
          t339 ?= t344.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t339 IS NOT BOUND.
        TRY.
            t343 ?= t340.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t343 IS BOUND.
          t339 = t343->source( ).
        ENDIF.
        IF t339 IS NOT BOUND.
          CREATE OBJECT t339.
          t339->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t339->oval = t340.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t345 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t345.
    t331 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t332 i_first = t339 i_opts = t345 ).
    CLEAR t330.
    IF t331 IS BOUND.
      DATA t346 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t346.
      DATA t347 TYPE REF TO object.
      CLEAR t347.
      CLEAR t346.
      t347 = t331.
      TRY.
          t330 ?= t347.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t330 IS NOT BOUND.
        TRY.
            t346 ?= t331.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t346 IS BOUND.
          t330 = t346->source( ).
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
    DATA(t348) = t310.
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t349.
    DATA(t350) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    CLEAR t349.
    IF t350 IS BOUND.
      CREATE OBJECT t349.
      t349->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t349->cval = t350.
    ENDIF.
    t348->load( ).
    APPEND t349 TO t348->items.
    t348->save( ).
    DATA(t351) = t310.
    DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t352.
    DATA t353 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t353.
    DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t354.
    DATA(t355) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1103_2caae547c926.
    CLEAR t354.
    IF t355 IS BOUND.
      CREATE OBJECT t354.
      t354->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t354->cval = t355.
    ENDIF.
    t353 = zcl_lnt_st_combi_module=>opt( i_first = t354 ).
    CLEAR t352.
    IF t353 IS BOUND.
      DATA t356 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t356.
      DATA t357 TYPE REF TO object.
      CLEAR t357.
      CLEAR t356.
      t357 = t353.
      TRY.
          t352 ?= t357.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t352 IS NOT BOUND.
        TRY.
            t356 ?= t353.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t356 IS BOUND.
          t352 = t356->source( ).
        ENDIF.
        IF t352 IS NOT BOUND.
          CREATE OBJECT t352.
          t352->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t352->oval = t353.
        ENDIF.
      ENDIF.
    ENDIF.
    t351->load( ).
    APPEND t352 TO t351->items.
    t351->save( ).
    DATA(t358) = t310.
    DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t359.
    DATA t360 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t360.
    DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t361.
    DATA(t362) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1097_1528186a58df.
    CLEAR t361.
    IF t362 IS BOUND.
      CREATE OBJECT t361.
      t361->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t361->cval = t362.
    ENDIF.
    t360 = zcl_lnt_st_combi_module=>opt( i_first = t361 ).
    CLEAR t359.
    IF t360 IS BOUND.
      DATA t363 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t363.
      DATA t364 TYPE REF TO object.
      CLEAR t364.
      CLEAR t363.
      t364 = t360.
      TRY.
          t359 ?= t364.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t359 IS NOT BOUND.
        TRY.
            t363 ?= t360.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t363 IS BOUND.
          t359 = t363->source( ).
        ENDIF.
        IF t359 IS NOT BOUND.
          CREATE OBJECT t359.
          t359->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t359->oval = t360.
        ENDIF.
      ENDIF.
    ENDIF.
    t358->load( ).
    APPEND t359 TO t358->items.
    t358->save( ).
    DATA(t365) = t310.
    DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t366.
    DATA(t367) = |AS PROJECTION ON|.
    CLEAR t366.
    CREATE OBJECT t366.
    t366->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t366->sval = t367.
    t365->load( ).
    APPEND t366 TO t365->items.
    t365->save( ).
    DATA(t368) = t310.
    DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t369.
    DATA(t370) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    CLEAR t369.
    IF t370 IS BOUND.
      CREATE OBJECT t369.
      t369->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t369->cval = t370.
    ENDIF.
    t368->load( ).
    APPEND t369 TO t368->items.
    t368->save( ).
    DATA(t371) = t310.
    DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t372.
    DATA t373 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t373.
    DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t374.
    DATA(t375) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1101_9cef074aa21b.
    CLEAR t374.
    IF t375 IS BOUND.
      CREATE OBJECT t374.
      t374->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t374->cval = t375.
    ENDIF.
    t373 = zcl_lnt_st_combi_module=>opt( i_first = t374 ).
    CLEAR t372.
    IF t373 IS BOUND.
      DATA t376 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t376.
      DATA t377 TYPE REF TO object.
      CLEAR t377.
      CLEAR t376.
      t377 = t373.
      TRY.
          t372 ?= t377.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t372 IS NOT BOUND.
        TRY.
            t376 ?= t373.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t376 IS BOUND.
          t372 = t376->source( ).
        ENDIF.
        IF t372 IS NOT BOUND.
          CREATE OBJECT t372.
          t372->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t372->oval = t373.
        ENDIF.
      ENDIF.
    ENDIF.
    t371->load( ).
    APPEND t372 TO t371->items.
    t371->save( ).
    DATA(t378) = t310.
    DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t379.
    DATA t380 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t380.
    DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t381.
    DATA(t382) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1091_2816df13f1ce.
    CLEAR t381.
    IF t382 IS BOUND.
      CREATE OBJECT t381.
      t381->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t381->cval = t382.
    ENDIF.
    t380 = zcl_lnt_st_combi_module=>opt( i_first = t381 ).
    CLEAR t379.
    IF t380 IS BOUND.
      DATA t383 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t383.
      DATA t384 TYPE REF TO object.
      CLEAR t384.
      CLEAR t383.
      t384 = t380.
      TRY.
          t379 ?= t384.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t379 IS NOT BOUND.
        TRY.
            t383 ?= t380.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t383 IS BOUND.
          t379 = t383->source( ).
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
    DATA(t385) = t310.
    DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t386.
    DATA t387 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t387.
    DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t388.
    DATA t389 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t389.
    DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t390.
    DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t391.
    DATA(t392) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1095_9dff9bf77964.
    CLEAR t391.
    IF t392 IS BOUND.
      CREATE OBJECT t391.
      t391->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t391->cval = t392.
    ENDIF.
    t390 = t391.
    DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t393.
    DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t394.
    DATA(t395) = t91.
    CLEAR t394.
    IF t395 IS BOUND.
      DATA t396 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t396.
      DATA t397 TYPE REF TO object.
      CLEAR t397.
      CLEAR t396.
      t397 = t395.
      TRY.
          t394 ?= t397.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t394 IS NOT BOUND.
        TRY.
            t396 ?= t395.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t396 IS BOUND.
          t394 = t396->source( ).
        ENDIF.
        IF t394 IS NOT BOUND.
          CREATE OBJECT t394.
          t394->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t394->oval = t395.
        ENDIF.
      ENDIF.
    ENDIF.
    t393 = t394.
    DATA t398 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t398.
    DATA t399 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t399.
    CREATE OBJECT t399.
    t398 = t399.
    DATA t400 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t400.
    DATA(t401) = t390.
    DATA(t402) = t393.
    DATA(t403) = t398.
    t400 = zcl_lnt_st_combi_module=>alt_prio( i_first = t401 i_second = t402 i_rest = t403 ).
    t389 = t400.
    CLEAR t388.
    IF t389 IS BOUND.
      DATA t404 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t404.
      DATA t405 TYPE REF TO object.
      CLEAR t405.
      CLEAR t404.
      t405 = t389.
      TRY.
          t388 ?= t405.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t388 IS NOT BOUND.
        TRY.
            t404 ?= t389.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t404 IS BOUND.
          t388 = t404->source( ).
        ENDIF.
        IF t388 IS NOT BOUND.
          CREATE OBJECT t388.
          t388->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t388->oval = t389.
        ENDIF.
      ENDIF.
    ENDIF.
    t387 = zcl_lnt_st_combi_module=>star( i_first = t388 ).
    CLEAR t386.
    IF t387 IS BOUND.
      DATA t406 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t406.
      DATA t407 TYPE REF TO object.
      CLEAR t407.
      CLEAR t406.
      t407 = t387.
      TRY.
          t386 ?= t407.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t386 IS NOT BOUND.
        TRY.
            t406 ?= t387.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t406 IS BOUND.
          t386 = t406->source( ).
        ENDIF.
        IF t386 IS NOT BOUND.
          CREATE OBJECT t386.
          t386->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t386->oval = t387.
        ENDIF.
      ENDIF.
    ENDIF.
    t385->load( ).
    APPEND t386 TO t385->items.
    t385->save( ).
    DATA(t408) = t310.
    DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t409.
    DATA t410 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t410.
    DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t411.
    DATA(t412) = t223.
    CLEAR t411.
    IF t412 IS BOUND.
      DATA t413 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t413.
      DATA t414 TYPE REF TO object.
      CLEAR t414.
      CLEAR t413.
      t414 = t412.
      TRY.
          t411 ?= t414.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t411 IS NOT BOUND.
        TRY.
            t413 ?= t412.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t413 IS BOUND.
          t411 = t413->source( ).
        ENDIF.
        IF t411 IS NOT BOUND.
          CREATE OBJECT t411.
          t411->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t411->oval = t412.
        ENDIF.
      ENDIF.
    ENDIF.
    t410 = zcl_lnt_st_combi_module=>star_prio( i_first = t411 ).
    CLEAR t409.
    IF t410 IS BOUND.
      DATA t415 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t415.
      DATA t416 TYPE REF TO object.
      CLEAR t416.
      CLEAR t415.
      t416 = t410.
      TRY.
          t409 ?= t416.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t409 IS NOT BOUND.
        TRY.
            t415 ?= t410.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t415 IS BOUND.
          t409 = t415->source( ).
        ENDIF.
        IF t409 IS NOT BOUND.
          CREATE OBJECT t409.
          t409->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t409->oval = t410.
        ENDIF.
      ENDIF.
    ENDIF.
    t408->load( ).
    APPEND t409 TO t408->items.
    t408->save( ).
    DATA(t417) = t310.
    DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t418.
    DATA t419 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t419.
    DATA(t420) = |\{|.
    t419 = zcl_lnt_st_combi_module=>str( i_s = t420 ).
    CLEAR t418.
    IF t419 IS BOUND.
      DATA t421 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t421.
      DATA t422 TYPE REF TO object.
      CLEAR t422.
      CLEAR t421.
      t422 = t419.
      TRY.
          t418 ?= t422.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t418 IS NOT BOUND.
        TRY.
            t421 ?= t419.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t421 IS BOUND.
          t418 = t421->source( ).
        ENDIF.
        IF t418 IS NOT BOUND.
          CREATE OBJECT t418.
          t418->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t418->oval = t419.
        ENDIF.
      ENDIF.
    ENDIF.
    t417->load( ).
    APPEND t418 TO t417->items.
    t417->save( ).
    DATA(t423) = t310.
    DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t424.
    DATA t425 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t425.
    DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t426.
    DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t427.
    DATA(t428) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1085_7cdb0f50a2e1.
    CLEAR t427.
    IF t428 IS BOUND.
      CREATE OBJECT t427.
      t427->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t427->cval = t428.
    ENDIF.
    t426 = t427.
    DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t429.
    DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t430.
    DATA t431 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t431.
    DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t432.
    DATA t433 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t433.
    DATA t434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t434.
    DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t435.
    DATA(t436) = |,|.
    CLEAR t435.
    CREATE OBJECT t435.
    t435->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t435->sval = t436.
    t434 = t435.
    DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t437.
    DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t438.
    DATA(t439) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1085_7cdb0f50a2e1.
    CLEAR t438.
    IF t439 IS BOUND.
      CREATE OBJECT t438.
      t438->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t438->cval = t439.
    ENDIF.
    t437 = t438.
    DATA t440 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t440.
    DATA t441 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t441.
    CREATE OBJECT t441.
    t440 = t441.
    DATA t442 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t442.
    DATA(t443) = t434.
    DATA(t444) = t437.
    DATA(t445) = t440.
    t442 = zcl_lnt_st_combi_module=>seq( i_first = t443 i_second = t444 i_rest = t445 ).
    t433 = t442.
    CLEAR t432.
    IF t433 IS BOUND.
      DATA t446 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t446.
      DATA t447 TYPE REF TO object.
      CLEAR t447.
      CLEAR t446.
      t447 = t433.
      TRY.
          t432 ?= t447.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t432 IS NOT BOUND.
        TRY.
            t446 ?= t433.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t446 IS BOUND.
          t432 = t446->source( ).
        ENDIF.
        IF t432 IS NOT BOUND.
          CREATE OBJECT t432.
          t432->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t432->oval = t433.
        ENDIF.
      ENDIF.
    ENDIF.
    t431 = zcl_lnt_st_combi_module=>star( i_first = t432 ).
    CLEAR t430.
    IF t431 IS BOUND.
      DATA t448 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t448.
      DATA t449 TYPE REF TO object.
      CLEAR t449.
      CLEAR t448.
      t449 = t431.
      TRY.
          t430 ?= t449.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t430 IS NOT BOUND.
        TRY.
            t448 ?= t431.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t448 IS BOUND.
          t430 = t448->source( ).
        ENDIF.
        IF t430 IS NOT BOUND.
          CREATE OBJECT t430.
          t430->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t430->oval = t431.
        ENDIF.
      ENDIF.
    ENDIF.
    t429 = t430.
    DATA t450 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t450.
    DATA t451 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t451.
    CREATE OBJECT t451.
    t450 = t451.
    DATA(t452) = t450.
    DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t453.
    DATA t454 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t454.
    DATA t455 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t455.
    DATA(t456) = |,|.
    CLEAR t455.
    CREATE OBJECT t455.
    t455->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t455->sval = t456.
    t454 = zcl_lnt_st_combi_module=>opt( i_first = t455 ).
    CLEAR t453.
    IF t454 IS BOUND.
      DATA t457 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t457.
      DATA t458 TYPE REF TO object.
      CLEAR t458.
      CLEAR t457.
      t458 = t454.
      TRY.
          t453 ?= t458.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t453 IS NOT BOUND.
        TRY.
            t457 ?= t454.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t457 IS BOUND.
          t453 = t457->source( ).
        ENDIF.
        IF t453 IS NOT BOUND.
          CREATE OBJECT t453.
          t453->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t453->oval = t454.
        ENDIF.
      ENDIF.
    ENDIF.
    t452->load( ).
    APPEND t453 TO t452->items.
    t452->save( ).
    DATA t459 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t459.
    DATA(t460) = t426.
    DATA(t461) = t429.
    DATA(t462) = t450.
    t459 = zcl_lnt_st_combi_module=>seq( i_first = t460 i_second = t461 i_rest = t462 ).
    t425 = t459.
    CLEAR t424.
    IF t425 IS BOUND.
      DATA t463 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t463.
      DATA t464 TYPE REF TO object.
      CLEAR t464.
      CLEAR t463.
      t464 = t425.
      TRY.
          t424 ?= t464.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t424 IS NOT BOUND.
        TRY.
            t463 ?= t425.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t463 IS BOUND.
          t424 = t463->source( ).
        ENDIF.
        IF t424 IS NOT BOUND.
          CREATE OBJECT t424.
          t424->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t424->oval = t425.
        ENDIF.
      ENDIF.
    ENDIF.
    t423->load( ).
    APPEND t424 TO t423->items.
    t423->save( ).
    DATA(t465) = t310.
    DATA t466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t466.
    DATA t467 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t467.
    DATA(t468) = |\}|.
    t467 = zcl_lnt_st_combi_module=>str( i_s = t468 ).
    CLEAR t466.
    IF t467 IS BOUND.
      DATA t469 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t469.
      DATA t470 TYPE REF TO object.
      CLEAR t470.
      CLEAR t469.
      t470 = t467.
      TRY.
          t466 ?= t470.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t466 IS NOT BOUND.
        TRY.
            t469 ?= t467.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t469 IS BOUND.
          t466 = t469->source( ).
        ENDIF.
        IF t466 IS NOT BOUND.
          CREATE OBJECT t466.
          t466->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t466->oval = t467.
        ENDIF.
      ENDIF.
    ENDIF.
    t465->load( ).
    APPEND t466 TO t465->items.
    t465->save( ).
    DATA(t471) = t310.
    DATA t472 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t472.
    DATA t473 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t473.
    DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t474.
    DATA(t475) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1104_02fd7d49de66.
    CLEAR t474.
    IF t475 IS BOUND.
      CREATE OBJECT t474.
      t474->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t474->cval = t475.
    ENDIF.
    t473 = zcl_lnt_st_combi_module=>opt( i_first = t474 ).
    CLEAR t472.
    IF t473 IS BOUND.
      DATA t476 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t476.
      DATA t477 TYPE REF TO object.
      CLEAR t477.
      CLEAR t476.
      t477 = t473.
      TRY.
          t472 ?= t477.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t472 IS NOT BOUND.
        TRY.
            t476 ?= t473.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t476 IS BOUND.
          t472 = t476->source( ).
        ENDIF.
        IF t472 IS NOT BOUND.
          CREATE OBJECT t472.
          t472->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t472->oval = t473.
        ENDIF.
      ENDIF.
    ENDIF.
    t471->load( ).
    APPEND t472 TO t471->items.
    t471->save( ).
    DATA(t478) = t310.
    DATA t479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t479.
    DATA t480 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t480.
    DATA t481 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t481.
    DATA(t482) = |;|.
    CLEAR t481.
    CREATE OBJECT t481.
    t481->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t481->sval = t482.
    t480 = zcl_lnt_st_combi_module=>opt( i_first = t481 ).
    CLEAR t479.
    IF t480 IS BOUND.
      DATA t483 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t483.
      DATA t484 TYPE REF TO object.
      CLEAR t484.
      CLEAR t483.
      t484 = t480.
      TRY.
          t479 ?= t484.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t479 IS NOT BOUND.
        TRY.
            t483 ?= t480.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t483 IS BOUND.
          t479 = t483->source( ).
        ENDIF.
        IF t479 IS NOT BOUND.
          CREATE OBJECT t479.
          t479->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t479->oval = t480.
        ENDIF.
      ENDIF.
    ENDIF.
    t478->load( ).
    APPEND t479 TO t478->items.
    t478->save( ).
    DATA t485 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t485.
    DATA(t486) = t296.
    DATA(t487) = t303.
    DATA(t488) = t310.
    t485 = zcl_lnt_st_combi_module=>seq( i_first = t486 i_second = t487 i_rest = t488 ).
    t295 = t485.
    result = t295.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1105_a133f02ea9f8.
  ENDMETHOD.
ENDCLASS.
