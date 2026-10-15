* TS: src/abap/2_statements/expressions/sql_over.ts:12:1 SQLOver
CLASS zcl_lnt_sql_over DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_over IMPLEMENTATION.
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
    DATA(t5) = |PARTITION|.
    CLEAR t4.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = |BY|.
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
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
    CLEAR t17.
    IF t18 IS BOUND.
      CREATE OBJECT t17.
      t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t17->cval = t18.
    ENDIF.
    t16 = t17.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA(t23) = |,|.
    CLEAR t22.
    CREATE OBJECT t22.
    t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t22->sval = t23.
    t21 = zcl_lnt_st_combi_module=>opt( i_first = t22 ).
    CLEAR t20.
    IF t21 IS BOUND.
      DATA t24 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t24.
      DATA t25 TYPE REF TO object.
      CLEAR t25.
      CLEAR t24.
      t25 = t21.
      TRY.
          t20 ?= t25.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t20 IS NOT BOUND.
        TRY.
            t24 ?= t21.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t24 IS BOUND.
          t20 = t24->source( ).
        ENDIF.
        IF t20 IS NOT BOUND.
          CREATE OBJECT t20.
          t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t20->oval = t21.
        ENDIF.
      ENDIF.
    ENDIF.
    t19 = t20.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t27.
    CREATE OBJECT t27.
    t26 = t27.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t28.
    DATA(t29) = t16.
    DATA(t30) = t19.
    DATA(t31) = t26.
    t28 = zcl_lnt_st_combi_module=>seq( i_first = t29 i_second = t30 i_rest = t31 ).
    t15 = t28.
    CLEAR t14.
    IF t15 IS BOUND.
      DATA t32 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t32.
      DATA t33 TYPE REF TO object.
      CLEAR t33.
      CLEAR t32.
      t33 = t15.
      TRY.
          t14 ?= t33.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t14 IS NOT BOUND.
        TRY.
            t32 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t32 IS BOUND.
          t14 = t32->source( ).
        ENDIF.
        IF t14 IS NOT BOUND.
          CREATE OBJECT t14.
          t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t14->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    t13 = zcl_lnt_st_combi_module=>plus( i_first = t14 ).
    CLEAR t12.
    IF t13 IS BOUND.
      DATA t34 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t34.
      DATA t35 TYPE REF TO object.
      CLEAR t35.
      CLEAR t34.
      t35 = t13.
      TRY.
          t12 ?= t35.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t12 IS NOT BOUND.
        TRY.
            t34 ?= t13.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t34 IS BOUND.
          t12 = t34->source( ).
        ENDIF.
        IF t12 IS NOT BOUND.
          CREATE OBJECT t12.
          t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t12->oval = t13.
        ENDIF.
      ENDIF.
    ENDIF.
    t11->load( ).
    APPEND t12 TO t11->items.
    t11->save( ).
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t36.
    DATA(t37) = t3.
    DATA(t38) = t6.
    DATA(t39) = t9.
    t36 = zcl_lnt_st_combi_module=>seq( i_first = t37 i_second = t38 i_rest = t39 ).
    t2 = t36.
    t1 = t2.
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t40.
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA(t44) = |UNBOUNDED|.
    CLEAR t43.
    CREATE OBJECT t43.
    t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t43->sval = t44.
    t42 = t43.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA(t47) = |PRECEDING|.
    CLEAR t46.
    CREATE OBJECT t46.
    t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t46->sval = t47.
    t45 = t46.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t49.
    CREATE OBJECT t49.
    t48 = t49.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t50.
    DATA(t51) = t42.
    DATA(t52) = t45.
    DATA(t53) = t48.
    t50 = zcl_lnt_st_combi_module=>seq( i_first = t51 i_second = t52 i_rest = t53 ).
    t41 = t50.
    t40 = t41.
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t54.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA(t58) = |UNBOUNDED|.
    CLEAR t57.
    CREATE OBJECT t57.
    t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t57->sval = t58.
    t56 = t57.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA(t61) = |FOLLOWING|.
    CLEAR t60.
    CREATE OBJECT t60.
    t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t60->sval = t61.
    t59 = t60.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t63.
    CREATE OBJECT t63.
    t62 = t63.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t64.
    DATA(t65) = t56.
    DATA(t66) = t59.
    DATA(t67) = t62.
    t64 = zcl_lnt_st_combi_module=>seq( i_first = t65 i_second = t66 i_rest = t67 ).
    t55 = t64.
    t54 = t55.
    DATA t68 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t68.
    DATA t69 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t69.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA(t72) = |CURRENT|.
    CLEAR t71.
    CREATE OBJECT t71.
    t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t71->sval = t72.
    t70 = t71.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA(t75) = |ROW|.
    CLEAR t74.
    CREATE OBJECT t74.
    t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t74->sval = t75.
    t73 = t74.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t77.
    CREATE OBJECT t77.
    t76 = t77.
    DATA t78 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t78.
    DATA(t79) = t70.
    DATA(t80) = t73.
    DATA(t81) = t76.
    t78 = zcl_lnt_st_combi_module=>seq( i_first = t79 i_second = t80 i_rest = t81 ).
    t69 = t78.
    t68 = t69.
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t82.
    DATA t83 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t83.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA(t86) = zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8.
    CLEAR t85.
    IF t86 IS BOUND.
      CREATE OBJECT t85.
      t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t85->cval = t86.
    ENDIF.
    t84 = t85.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA(t92) = |PRECEDING|.
    CLEAR t91.
    CREATE OBJECT t91.
    t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t91->sval = t92.
    t90 = t91.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA(t95) = |FOLLOWING|.
    CLEAR t94.
    CREATE OBJECT t94.
    t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t94->sval = t95.
    t93 = t94.
    DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t96.
    DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t97.
    CREATE OBJECT t97.
    t96 = t97.
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t98.
    DATA(t99) = t90.
    DATA(t100) = t93.
    DATA(t101) = t96.
    t98 = zcl_lnt_st_combi_module=>alt_prio( i_first = t99 i_second = t100 i_rest = t101 ).
    t89 = t98.
    CLEAR t88.
    IF t89 IS BOUND.
      DATA t102 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t102.
      DATA t103 TYPE REF TO object.
      CLEAR t103.
      CLEAR t102.
      t103 = t89.
      TRY.
          t88 ?= t103.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t88 IS NOT BOUND.
        TRY.
            t102 ?= t89.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t102 IS BOUND.
          t88 = t102->source( ).
        ENDIF.
        IF t88 IS NOT BOUND.
          CREATE OBJECT t88.
          t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t88->oval = t89.
        ENDIF.
      ENDIF.
    ENDIF.
    t87 = t88.
    DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t104.
    DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t105.
    CREATE OBJECT t105.
    t104 = t105.
    DATA t106 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t106.
    DATA(t107) = t84.
    DATA(t108) = t87.
    DATA(t109) = t104.
    t106 = zcl_lnt_st_combi_module=>seq( i_first = t107 i_second = t108 i_rest = t109 ).
    t83 = t106.
    t82 = t83.
    DATA t110 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t110.
    DATA t111 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t111.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t112.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA(t114) = t40.
    CLEAR t113.
    IF t114 IS BOUND.
      DATA t115 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t115.
      DATA t116 TYPE REF TO object.
      CLEAR t116.
      CLEAR t115.
      t116 = t114.
      TRY.
          t113 ?= t116.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t113 IS NOT BOUND.
        TRY.
            t115 ?= t114.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t115 IS BOUND.
          t113 = t115->source( ).
        ENDIF.
        IF t113 IS NOT BOUND.
          CREATE OBJECT t113.
          t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t113->oval = t114.
        ENDIF.
      ENDIF.
    ENDIF.
    t112 = t113.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA(t119) = t54.
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
    t117 = t118.
    DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t122.
    DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t123.
    CREATE OBJECT t123.
    t122 = t123.
    DATA(t124) = t122.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA(t126) = t68.
    CLEAR t125.
    IF t126 IS BOUND.
      DATA t127 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t127.
      DATA t128 TYPE REF TO object.
      CLEAR t128.
      CLEAR t127.
      t128 = t126.
      TRY.
          t125 ?= t128.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t125 IS NOT BOUND.
        TRY.
            t127 ?= t126.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t127 IS BOUND.
          t125 = t127->source( ).
        ENDIF.
        IF t125 IS NOT BOUND.
          CREATE OBJECT t125.
          t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t125->oval = t126.
        ENDIF.
      ENDIF.
    ENDIF.
    t124->load( ).
    APPEND t125 TO t124->items.
    t124->save( ).
    DATA(t129) = t122.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    DATA(t131) = t82.
    CLEAR t130.
    IF t131 IS BOUND.
      DATA t132 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t132.
      DATA t133 TYPE REF TO object.
      CLEAR t133.
      CLEAR t132.
      t133 = t131.
      TRY.
          t130 ?= t133.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t130 IS NOT BOUND.
        TRY.
            t132 ?= t131.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t132 IS BOUND.
          t130 = t132->source( ).
        ENDIF.
        IF t130 IS NOT BOUND.
          CREATE OBJECT t130.
          t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t130->oval = t131.
        ENDIF.
      ENDIF.
    ENDIF.
    t129->load( ).
    APPEND t130 TO t129->items.
    t129->save( ).
    DATA t134 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t134.
    DATA(t135) = t112.
    DATA(t136) = t117.
    DATA(t137) = t122.
    t134 = zcl_lnt_st_combi_module=>alt_prio( i_first = t135 i_second = t136 i_rest = t137 ).
    t111 = t134.
    t110 = t111.
    DATA t138 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t138.
    DATA t139 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t139.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t140.
    DATA t141 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t141.
    DATA t142 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t143.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t143 = zcl_lnt_version_module=>release_b8cd.
    DATA(t144) = |v757|.
    t142 = t143->get( p0 = t144 ).
    t141 = t142.
    CLEAR t140.
    IF t141 IS BOUND.
      DATA t145 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t145.
      DATA t146 TYPE REF TO object.
      CLEAR t146.
      CLEAR t145.
      t146 = t141.
      TRY.
          t140 ?= t146.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t140 IS NOT BOUND.
        TRY.
            t145 ?= t141.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t145 IS BOUND.
          t140 = t145->source( ).
        ENDIF.
        IF t140 IS NOT BOUND.
          CREATE OBJECT t140.
          t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t140->oval = t141.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t147.
    DATA t148 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t148.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t150.
    DATA(t151) = |ROWS|.
    CLEAR t150.
    CREATE OBJECT t150.
    t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t150->sval = t151.
    t149 = t150.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t152.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t153.
    DATA(t154) = |BETWEEN|.
    CLEAR t153.
    CREATE OBJECT t153.
    t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t153->sval = t154.
    t152 = t153.
    DATA t155 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t155.
    DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t156.
    CREATE OBJECT t156.
    t155 = t156.
    DATA(t157) = t155.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t158.
    DATA(t159) = t110.
    CLEAR t158.
    IF t159 IS BOUND.
      DATA t160 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t160.
      DATA t161 TYPE REF TO object.
      CLEAR t161.
      CLEAR t160.
      t161 = t159.
      TRY.
          t158 ?= t161.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t158 IS NOT BOUND.
        TRY.
            t160 ?= t159.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t160 IS BOUND.
          t158 = t160->source( ).
        ENDIF.
        IF t158 IS NOT BOUND.
          CREATE OBJECT t158.
          t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t158->oval = t159.
        ENDIF.
      ENDIF.
    ENDIF.
    t157->load( ).
    APPEND t158 TO t157->items.
    t157->save( ).
    DATA(t162) = t155.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t163.
    DATA(t164) = |AND|.
    CLEAR t163.
    CREATE OBJECT t163.
    t163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t163->sval = t164.
    t162->load( ).
    APPEND t163 TO t162->items.
    t162->save( ).
    DATA(t165) = t155.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t166.
    DATA(t167) = t110.
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
    DATA t170 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t170.
    DATA(t171) = t149.
    DATA(t172) = t152.
    DATA(t173) = t155.
    t170 = zcl_lnt_st_combi_module=>seq( i_first = t171 i_second = t172 i_rest = t173 ).
    t148 = t170.
    CLEAR t147.
    IF t148 IS BOUND.
      DATA t174 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t174.
      DATA t175 TYPE REF TO object.
      CLEAR t175.
      CLEAR t174.
      t175 = t148.
      TRY.
          t147 ?= t175.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t147 IS NOT BOUND.
        TRY.
            t174 ?= t148.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t174 IS BOUND.
          t147 = t174->source( ).
        ENDIF.
        IF t147 IS NOT BOUND.
          CREATE OBJECT t147.
          t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t147->oval = t148.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t176 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t176.
    t139 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t140 i_first = t147 i_opts = t176 ).
    t138 = t139.
    DATA t177 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t177.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t178.
    DATA t179 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t179.
    DATA t180 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t180.
    DATA t181 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t181.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t181 = zcl_lnt_version_module=>release_b8cd.
    DATA(t182) = |v757|.
    t180 = t181->get( p0 = t182 ).
    t179 = t180.
    CLEAR t178.
    IF t179 IS BOUND.
      DATA t183 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t183.
      DATA t184 TYPE REF TO object.
      CLEAR t184.
      CLEAR t183.
      t184 = t179.
      TRY.
          t178 ?= t184.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t178 IS NOT BOUND.
        TRY.
            t183 ?= t179.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t183 IS BOUND.
          t178 = t183->source( ).
        ENDIF.
        IF t178 IS NOT BOUND.
          CREATE OBJECT t178.
          t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t178->oval = t179.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t185.
    DATA t186 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t186.
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t187.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t188.
    DATA(t189) = |OVER|.
    CLEAR t188.
    CREATE OBJECT t188.
    t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t188->sval = t189.
    t187 = t188.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t190.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t191.
    DATA t192 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t192.
    IF zcl_lnt_sql_over_module=>zlnt_builtin_init_7e5747627b9e = abap_false.
      zcl_lnt_sql_over_module=>zlnt_builtin_init_8db5e9302d91( ).
    ENDIF.
    t192 = zcl_lnt_sql_over_module=>lparen.
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
    t190 = t191.
    DATA t195 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t195.
    DATA t196 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t196.
    CREATE OBJECT t196.
    t195 = t196.
    DATA(t197) = t195.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t198.
    DATA t199 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t199.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t200.
    DATA(t201) = t1.
    CLEAR t200.
    IF t201 IS BOUND.
      DATA t202 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t202.
      DATA t203 TYPE REF TO object.
      CLEAR t203.
      CLEAR t202.
      t203 = t201.
      TRY.
          t200 ?= t203.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t200 IS NOT BOUND.
        TRY.
            t202 ?= t201.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t202 IS BOUND.
          t200 = t202->source( ).
        ENDIF.
        IF t200 IS NOT BOUND.
          CREATE OBJECT t200.
          t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t200->oval = t201.
        ENDIF.
      ENDIF.
    ENDIF.
    t199 = zcl_lnt_st_combi_module=>opt_prio( i_first = t200 ).
    CLEAR t198.
    IF t199 IS BOUND.
      DATA t204 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t204.
      DATA t205 TYPE REF TO object.
      CLEAR t205.
      CLEAR t204.
      t205 = t199.
      TRY.
          t198 ?= t205.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t198 IS NOT BOUND.
        TRY.
            t204 ?= t199.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t204 IS BOUND.
          t198 = t204->source( ).
        ENDIF.
        IF t198 IS NOT BOUND.
          CREATE OBJECT t198.
          t198->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t198->oval = t199.
        ENDIF.
      ENDIF.
    ENDIF.
    t197->load( ).
    APPEND t198 TO t197->items.
    t197->save( ).
    DATA(t206) = t195.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t207.
    DATA t208 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t208.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t209.
    DATA(t210) = zlnt_runtime_desc_78196487750d=>zlnt_member_d261_e2dcf59482ac.
    CLEAR t209.
    IF t210 IS BOUND.
      CREATE OBJECT t209.
      t209->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t209->cval = t210.
    ENDIF.
    t208 = zcl_lnt_st_combi_module=>opt_prio( i_first = t209 ).
    CLEAR t207.
    IF t208 IS BOUND.
      DATA t211 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t211.
      DATA t212 TYPE REF TO object.
      CLEAR t212.
      CLEAR t211.
      t212 = t208.
      TRY.
          t207 ?= t212.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t207 IS NOT BOUND.
        TRY.
            t211 ?= t208.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t211 IS BOUND.
          t207 = t211->source( ).
        ENDIF.
        IF t207 IS NOT BOUND.
          CREATE OBJECT t207.
          t207->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t207->oval = t208.
        ENDIF.
      ENDIF.
    ENDIF.
    t206->load( ).
    APPEND t207 TO t206->items.
    t206->save( ).
    DATA(t213) = t195.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t214.
    DATA t215 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t215.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t216.
    DATA(t217) = t138.
    CLEAR t216.
    IF t217 IS BOUND.
      DATA t218 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t218.
      DATA t219 TYPE REF TO object.
      CLEAR t219.
      CLEAR t218.
      t219 = t217.
      TRY.
          t216 ?= t219.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t216 IS NOT BOUND.
        TRY.
            t218 ?= t217.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t218 IS BOUND.
          t216 = t218->source( ).
        ENDIF.
        IF t216 IS NOT BOUND.
          CREATE OBJECT t216.
          t216->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t216->oval = t217.
        ENDIF.
      ENDIF.
    ENDIF.
    t215 = zcl_lnt_st_combi_module=>opt_prio( i_first = t216 ).
    CLEAR t214.
    IF t215 IS BOUND.
      DATA t220 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t220.
      DATA t221 TYPE REF TO object.
      CLEAR t221.
      CLEAR t220.
      t221 = t215.
      TRY.
          t214 ?= t221.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t214 IS NOT BOUND.
        TRY.
            t220 ?= t215.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t220 IS BOUND.
          t214 = t220->source( ).
        ENDIF.
        IF t214 IS NOT BOUND.
          CREATE OBJECT t214.
          t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t214->oval = t215.
        ENDIF.
      ENDIF.
    ENDIF.
    t213->load( ).
    APPEND t214 TO t213->items.
    t213->save( ).
    DATA(t222) = t195.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t223.
    DATA t224 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t224.
    IF zcl_lnt_sql_over_module=>zlnt_builtin_init_7e5747627b9e = abap_false.
      zcl_lnt_sql_over_module=>zlnt_builtin_init_8db5e9302d91( ).
    ENDIF.
    t224 = zcl_lnt_sql_over_module=>rparen.
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
    t222->load( ).
    APPEND t223 TO t222->items.
    t222->save( ).
    DATA t227 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t227.
    DATA(t228) = t187.
    DATA(t229) = t190.
    DATA(t230) = t195.
    t227 = zcl_lnt_st_combi_module=>seq( i_first = t228 i_second = t229 i_rest = t230 ).
    t186 = t227.
    CLEAR t185.
    IF t186 IS BOUND.
      DATA t231 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t231.
      DATA t232 TYPE REF TO object.
      CLEAR t232.
      CLEAR t231.
      t232 = t186.
      TRY.
          t185 ?= t232.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t185 IS NOT BOUND.
        TRY.
            t231 ?= t186.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t231 IS BOUND.
          t185 = t231->source( ).
        ENDIF.
        IF t185 IS NOT BOUND.
          CREATE OBJECT t185.
          t185->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t185->oval = t186.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t233 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t233.
    t177 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t178 i_first = t185 i_opts = t233 ).
    result = t177.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d283_6d1de0562006.
  ENDMETHOD.
ENDCLASS.
