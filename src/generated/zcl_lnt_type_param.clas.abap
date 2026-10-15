* TS: src/abap/2_statements/expressions/type_param.ts:7:1 TypeParam
CLASS zcl_lnt_type_param DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_type_param IMPLEMENTATION.
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
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = |STANDARD|.
    CLEAR t7.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = t8.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA(t11) = |HASHED|.
    CLEAR t10.
    CREATE OBJECT t10.
    t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t10->sval = t11.
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t13.
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t14) = t12.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA(t16) = |INDEX|.
    CLEAR t15.
    CREATE OBJECT t15.
    t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t15->sval = t16.
    t14->load( ).
    APPEND t15 TO t14->items.
    t14->save( ).
    DATA(t17) = t12.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA(t19) = |SORTED|.
    CLEAR t18.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    t17->load( ).
    APPEND t18 TO t17->items.
    t17->save( ).
    DATA(t20) = t12.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA(t22) = |ANY|.
    CLEAR t21.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = t22.
    t20->load( ).
    APPEND t21 TO t20->items.
    t20->save( ).
    DATA t23 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t23.
    DATA(t24) = t6.
    DATA(t25) = t9.
    DATA(t26) = t12.
    t23 = zcl_lnt_st_combi_module=>alt_prio( i_first = t24 i_second = t25 i_rest = t26 ).
    t5 = t23.
    CLEAR t4.
    IF t5 IS BOUND.
      DATA t27 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t27.
      DATA t28 TYPE REF TO object.
      CLEAR t28.
      CLEAR t27.
      t28 = t5.
      TRY.
          t4 ?= t28.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t27 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t27 IS BOUND.
          t4 = t27->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    t3 = t4.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA(t31) = |TABLE|.
    CLEAR t30.
    CREATE OBJECT t30.
    t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t30->sval = t31.
    t29 = t30.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t33.
    CREATE OBJECT t33.
    t32 = t33.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t34.
    DATA(t35) = t3.
    DATA(t36) = t29.
    DATA(t37) = t32.
    t34 = zcl_lnt_st_combi_module=>seq( i_first = t35 i_second = t36 i_rest = t37 ).
    t2 = t34.
    t1 = t2.
    DATA t38 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t38.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA(t47) = t1.
    CLEAR t46.
    IF t47 IS BOUND.
      DATA t48 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t48.
      DATA t49 TYPE REF TO object.
      CLEAR t49.
      CLEAR t48.
      t49 = t47.
      TRY.
          t46 ?= t49.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t46 IS NOT BOUND.
        TRY.
            t48 ?= t47.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t48 IS BOUND.
          t46 = t48->source( ).
        ENDIF.
        IF t46 IS NOT BOUND.
          CREATE OBJECT t46.
          t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t46->oval = t47.
        ENDIF.
      ENDIF.
    ENDIF.
    t45 = t46.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA(t52) = |OF|.
    CLEAR t51.
    CREATE OBJECT t51.
    t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t51->sval = t52.
    t50 = t51.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t54.
    CREATE OBJECT t54.
    t53 = t54.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t55.
    DATA(t56) = t45.
    DATA(t57) = t50.
    DATA(t58) = t53.
    t55 = zcl_lnt_st_combi_module=>seq( i_first = t56 i_second = t57 i_rest = t58 ).
    t44 = t55.
    CLEAR t43.
    IF t44 IS BOUND.
      DATA t59 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t59.
      DATA t60 TYPE REF TO object.
      CLEAR t60.
      CLEAR t59.
      t60 = t44.
      TRY.
          t43 ?= t60.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t43 IS NOT BOUND.
        TRY.
            t59 ?= t44.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t59 IS BOUND.
          t43 = t59->source( ).
        ENDIF.
        IF t43 IS NOT BOUND.
          CREATE OBJECT t43.
          t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t43->oval = t44.
        ENDIF.
      ENDIF.
    ENDIF.
    t42 = zcl_lnt_st_combi_module=>opt_prio( i_first = t43 ).
    CLEAR t41.
    IF t42 IS BOUND.
      DATA t61 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t61.
      DATA t62 TYPE REF TO object.
      CLEAR t62.
      CLEAR t61.
      t62 = t42.
      TRY.
          t41 ?= t62.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t41 IS NOT BOUND.
        TRY.
            t61 ?= t42.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t61 IS BOUND.
          t41 = t61->source( ).
        ENDIF.
        IF t41 IS NOT BOUND.
          CREATE OBJECT t41.
          t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t41->oval = t42.
        ENDIF.
      ENDIF.
    ENDIF.
    t40 = t41.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA t65 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t65.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA(t67) = |REF TO|.
    CLEAR t66.
    CREATE OBJECT t66.
    t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t66->sval = t67.
    t65 = zcl_lnt_st_combi_module=>opt_prio( i_first = t66 ).
    CLEAR t64.
    IF t65 IS BOUND.
      DATA t68 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t68.
      DATA t69 TYPE REF TO object.
      CLEAR t69.
      CLEAR t68.
      t69 = t65.
      TRY.
          t64 ?= t69.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t64 IS NOT BOUND.
        TRY.
            t68 ?= t65.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t68 IS BOUND.
          t64 = t68->source( ).
        ENDIF.
        IF t64 IS NOT BOUND.
          CREATE OBJECT t64.
          t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t64->oval = t65.
        ENDIF.
      ENDIF.
    ENDIF.
    t63 = t64.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t71.
    CREATE OBJECT t71.
    t70 = t71.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t72.
    DATA(t73) = t40.
    DATA(t74) = t63.
    DATA(t75) = t70.
    t72 = zcl_lnt_st_combi_module=>seq( i_first = t73 i_second = t74 i_rest = t75 ).
    t39 = t72.
    t38 = t39.
    DATA(t76) = VALUE string( ).
    DATA(t77) = |LINE OF|.
    t76 = t77.
    DATA t78 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t78.
    DATA t79 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t79.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA(t85) = t38.
    CLEAR t84.
    IF t85 IS BOUND.
      DATA t86 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t86.
      DATA t87 TYPE REF TO object.
      CLEAR t87.
      CLEAR t86.
      t87 = t85.
      TRY.
          t84 ?= t87.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t84 IS NOT BOUND.
        TRY.
            t86 ?= t85.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t86 IS BOUND.
          t84 = t86->source( ).
        ENDIF.
        IF t84 IS NOT BOUND.
          CREATE OBJECT t84.
          t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t84->oval = t85.
        ENDIF.
      ENDIF.
    ENDIF.
    t83 = t84.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA(t90) = t76.
    CLEAR t89.
    CREATE OBJECT t89.
    t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t89->sval = t90.
    t88 = t89.
    DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t92.
    CREATE OBJECT t92.
    t91 = t92.
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t93.
    DATA(t94) = t83.
    DATA(t95) = t88.
    DATA(t96) = t91.
    t93 = zcl_lnt_st_combi_module=>alt( i_first = t94 i_second = t95 i_rest = t96 ).
    t82 = t93.
    CLEAR t81.
    IF t82 IS BOUND.
      DATA t97 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t97.
      DATA t98 TYPE REF TO object.
      CLEAR t98.
      CLEAR t97.
      t98 = t82.
      TRY.
          t81 ?= t98.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t81 IS NOT BOUND.
        TRY.
            t97 ?= t82.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t97 IS BOUND.
          t81 = t97->source( ).
        ENDIF.
        IF t81 IS NOT BOUND.
          CREATE OBJECT t81.
          t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t81->oval = t82.
        ENDIF.
      ENDIF.
    ENDIF.
    t80 = t81.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA(t101) = zlnt_runtime_desc_78196487750d=>zlnt_member_d111_4d9698a8e1bf.
    CLEAR t100.
    IF t101 IS BOUND.
      CREATE OBJECT t100.
      t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t100->cval = t101.
    ENDIF.
    t99 = t100.
    DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t103.
    CREATE OBJECT t103.
    t102 = t103.
    DATA(t104) = t102.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA t106 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA(t108) = zlnt_runtime_desc_78196487750d=>zlnt_member_d159_eda069348ac0.
    CLEAR t107.
    IF t108 IS BOUND.
      CREATE OBJECT t107.
      t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t107->cval = t108.
    ENDIF.
    t106 = zcl_lnt_st_combi_module=>opt( i_first = t107 ).
    CLEAR t105.
    IF t106 IS BOUND.
      DATA t109 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t109.
      DATA t110 TYPE REF TO object.
      CLEAR t110.
      CLEAR t109.
      t110 = t106.
      TRY.
          t105 ?= t110.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t105 IS NOT BOUND.
        TRY.
            t109 ?= t106.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t109 IS BOUND.
          t105 = t109->source( ).
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
    DATA t111 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t111.
    DATA(t112) = t80.
    DATA(t113) = t99.
    DATA(t114) = t102.
    t111 = zcl_lnt_st_combi_module=>seq( i_first = t112 i_second = t113 i_rest = t114 ).
    t79 = t111.
    t78 = t79.
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t115.
    DATA t116 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t116.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA(t119) = |LIKE|.
    CLEAR t118.
    CREATE OBJECT t118.
    t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t118->sval = t119.
    t117 = t118.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    DATA t122 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t122.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t123.
    DATA(t124) = |LINE OF|.
    CLEAR t123.
    CREATE OBJECT t123.
    t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t123->sval = t124.
    t122 = zcl_lnt_st_combi_module=>opt( i_first = t123 ).
    CLEAR t121.
    IF t122 IS BOUND.
      DATA t125 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t125.
      DATA t126 TYPE REF TO object.
      CLEAR t126.
      CLEAR t125.
      t126 = t122.
      TRY.
          t121 ?= t126.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t121 IS NOT BOUND.
        TRY.
            t125 ?= t122.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t125 IS BOUND.
          t121 = t125->source( ).
        ENDIF.
        IF t121 IS NOT BOUND.
          CREATE OBJECT t121.
          t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t121->oval = t122.
        ENDIF.
      ENDIF.
    ENDIF.
    t120 = t121.
    DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t127.
    DATA t128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t128.
    CREATE OBJECT t128.
    t127 = t128.
    DATA(t129) = t127.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    DATA(t131) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    CLEAR t130.
    IF t131 IS BOUND.
      CREATE OBJECT t130.
      t130->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t130->cval = t131.
    ENDIF.
    t129->load( ).
    APPEND t130 TO t129->items.
    t129->save( ).
    DATA(t132) = t127.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t133.
    DATA t134 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t134.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t135.
    DATA(t136) = zlnt_runtime_desc_78196487750d=>zlnt_member_d159_eda069348ac0.
    CLEAR t135.
    IF t136 IS BOUND.
      CREATE OBJECT t135.
      t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t135->cval = t136.
    ENDIF.
    t134 = zcl_lnt_st_combi_module=>opt_prio( i_first = t135 ).
    CLEAR t133.
    IF t134 IS BOUND.
      DATA t137 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t137.
      DATA t138 TYPE REF TO object.
      CLEAR t138.
      CLEAR t137.
      t138 = t134.
      TRY.
          t133 ?= t138.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t133 IS NOT BOUND.
        TRY.
            t137 ?= t134.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t137 IS BOUND.
          t133 = t137->source( ).
        ENDIF.
        IF t133 IS NOT BOUND.
          CREATE OBJECT t133.
          t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t133->oval = t134.
        ENDIF.
      ENDIF.
    ENDIF.
    t132->load( ).
    APPEND t133 TO t132->items.
    t132->save( ).
    DATA t139 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t139.
    DATA(t140) = t117.
    DATA(t141) = t120.
    DATA(t142) = t127.
    t139 = zcl_lnt_st_combi_module=>seq( i_first = t140 i_second = t141 i_rest = t142 ).
    t116 = t139.
    t115 = t116.
    DATA t143 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t143.
    DATA t144 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t144.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t145.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA(t147) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    CLEAR t146.
    IF t147 IS BOUND.
      CREATE OBJECT t146.
      t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t146->cval = t147.
    ENDIF.
    t145 = t146.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    DATA(t150) = zlnt_runtime_desc_78196487750d=>zlnt_member_d162_57231f39acd0.
    CLEAR t149.
    IF t150 IS BOUND.
      CREATE OBJECT t149.
      t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t149->cval = t150.
    ENDIF.
    t148 = t149.
    DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t151.
    DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t152.
    CREATE OBJECT t152.
    t151 = t152.
    DATA t153 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t153.
    DATA(t154) = t145.
    DATA(t155) = t148.
    DATA(t156) = t151.
    t153 = zcl_lnt_st_combi_module=>alt( i_first = t154 i_second = t155 i_rest = t156 ).
    t144 = t153.
    t143 = t144.
    DATA t157 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t157.
    DATA t158 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t158.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    DATA t160 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t160.
    DATA t161 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t161.
    DATA t162 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t162.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t162 = zcl_lnt_version_module=>release_b8cd.
    DATA(t163) = |v770|.
    t161 = t162->get( p0 = t163 ).
    t160 = t161.
    CLEAR t159.
    IF t160 IS BOUND.
      DATA t164 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t164.
      DATA t165 TYPE REF TO object.
      CLEAR t165.
      CLEAR t164.
      t165 = t160.
      TRY.
          t159 ?= t165.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t159 IS NOT BOUND.
        TRY.
            t164 ?= t160.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t164 IS BOUND.
          t159 = t164->source( ).
        ENDIF.
        IF t159 IS NOT BOUND.
          CREATE OBJECT t159.
          t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t159->oval = t160.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
    DATA(t173) = |TABLE FOR|.
    CLEAR t172.
    CREATE OBJECT t172.
    t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t172->sval = t173.
    t171 = t172.
    DATA t174 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t174.
    DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t175.
    CREATE OBJECT t175.
    t174 = t175.
    DATA(t176) = t174.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t177.
    DATA t178 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t178.
    DATA t179 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t179.
    DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t180.
    CREATE OBJECT t180.
    t179 = t180.
    DATA(t181) = t179.
    DATA t182 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t182.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    DATA t184 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t184.
    DATA t185 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t185.
    DATA t186 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t186.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t186 = zcl_lnt_version_module=>release_b8cd.
    DATA(t187) = |v773|.
    t185 = t186->get( p0 = t187 ).
    t184 = t185.
    CLEAR t183.
    IF t184 IS BOUND.
      DATA t188 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t188.
      DATA t189 TYPE REF TO object.
      CLEAR t189.
      CLEAR t188.
      t189 = t184.
      TRY.
          t183 ?= t189.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t183 IS NOT BOUND.
        TRY.
            t188 ?= t184.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t188 IS BOUND.
          t183 = t188->source( ).
        ENDIF.
        IF t183 IS NOT BOUND.
          CREATE OBJECT t183.
          t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t183->oval = t184.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t190.
    DATA t191 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t191.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t192.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t193.
    DATA(t194) = |ACTION IMPORT|.
    CLEAR t193.
    CREATE OBJECT t193.
    t193->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t193->sval = t194.
    t192 = t193.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t195.
    DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t196.
    DATA(t197) = t143.
    CLEAR t196.
    IF t197 IS BOUND.
      DATA t198 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t198.
      DATA t199 TYPE REF TO object.
      CLEAR t199.
      CLEAR t198.
      t199 = t197.
      TRY.
          t196 ?= t199.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t196 IS NOT BOUND.
        TRY.
            t198 ?= t197.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t198 IS BOUND.
          t196 = t198->source( ).
        ENDIF.
        IF t196 IS NOT BOUND.
          CREATE OBJECT t196.
          t196->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t196->oval = t197.
        ENDIF.
      ENDIF.
    ENDIF.
    t195 = t196.
    DATA t200 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t200.
    DATA t201 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t201.
    CREATE OBJECT t201.
    t200 = t201.
    DATA t202 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t202.
    DATA(t203) = t192.
    DATA(t204) = t195.
    DATA(t205) = t200.
    t202 = zcl_lnt_st_combi_module=>seq( i_first = t203 i_second = t204 i_rest = t205 ).
    t191 = t202.
    CLEAR t190.
    IF t191 IS BOUND.
      DATA t206 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t206.
      DATA t207 TYPE REF TO object.
      CLEAR t207.
      CLEAR t206.
      t207 = t191.
      TRY.
          t190 ?= t207.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t190 IS NOT BOUND.
        TRY.
            t206 ?= t191.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t206 IS BOUND.
          t190 = t206->source( ).
        ENDIF.
        IF t190 IS NOT BOUND.
          CREATE OBJECT t190.
          t190->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t190->oval = t191.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t208 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t208.
    DATA(t209) = abap_true.
    IF t209 = abap_true.
      DATA t210 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t210.
      DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t211.
      DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t212.
      DATA(t213) = abap_true.
      IF t213 = abap_true.
        DATA(t214) = |OpenABAP|.
        DATA(t215) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t215->has = abap_true.
        t215->value = t214.
        t212 = t215.
      ELSE.
        DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t216.
        t212 = t216.
      ENDIF.
      t211 = t212.
      t210 = NEW zcl_lnt_iver_options( i_also = t211 ).
      CREATE OBJECT t210->zlnt_view_ownkeys_b0e8086400eb.
      t210->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t217.
      IF t210->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t210->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t217 ).
      ENDIF.
      CREATE OBJECT t210->zlnt_json_ownkeys_70e5fd461788.
      t210->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t218) = |also|.
      DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t219.
      IF t210->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t210->zlnt_json_ownkeys_70e5fd461788->put( p0 = t218 p1 = t219 ).
      ENDIF.
      t208 = t210.
    ELSE.
      DATA t220 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t220.
      t208 = t220.
    ENDIF.
    t182 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t183 i_first = t190 i_opts = t208 ).
    t181->load( ).
    APPEND t182 TO t181->items.
    t181->save( ).
    DATA(t221) = t179.
    DATA t222 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t222.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t223.
    DATA t224 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t224.
    DATA t225 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t225.
    DATA t226 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t226.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t226 = zcl_lnt_version_module=>release_b8cd.
    DATA(t227) = |v774|.
    t225 = t226->get( p0 = t227 ).
    t224 = t225.
    CLEAR t223.
    IF t224 IS BOUND.
      DATA t228 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t228.
      DATA t229 TYPE REF TO object.
      CLEAR t229.
      CLEAR t228.
      t229 = t224.
      TRY.
          t223 ?= t229.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t223 IS NOT BOUND.
        TRY.
            t228 ?= t224.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t228 IS BOUND.
          t223 = t228->source( ).
        ENDIF.
        IF t223 IS NOT BOUND.
          CREATE OBJECT t223.
          t223->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t223->oval = t224.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t230.
    DATA t231 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t231.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t232.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t233.
    DATA(t234) = |READ LINK|.
    CLEAR t233.
    CREATE OBJECT t233.
    t233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t233->sval = t234.
    t232 = t233.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t235.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t236.
    DATA(t237) = t143.
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
    DATA t242 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t242.
    DATA(t243) = t232.
    DATA(t244) = t235.
    DATA(t245) = t240.
    t242 = zcl_lnt_st_combi_module=>seq( i_first = t243 i_second = t244 i_rest = t245 ).
    t231 = t242.
    CLEAR t230.
    IF t231 IS BOUND.
      DATA t246 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t246.
      DATA t247 TYPE REF TO object.
      CLEAR t247.
      CLEAR t246.
      t247 = t231.
      TRY.
          t230 ?= t247.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t230 IS NOT BOUND.
        TRY.
            t246 ?= t231.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t246 IS BOUND.
          t230 = t246->source( ).
        ENDIF.
        IF t230 IS NOT BOUND.
          CREATE OBJECT t230.
          t230->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t230->oval = t231.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t248 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t248.
    DATA(t249) = abap_true.
    IF t249 = abap_true.
      DATA t250 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t250.
      DATA t251 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t251.
      DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t252.
      DATA(t253) = abap_true.
      IF t253 = abap_true.
        DATA(t254) = |OpenABAP|.
        DATA(t255) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t255->has = abap_true.
        t255->value = t254.
        t252 = t255.
      ELSE.
        DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t256.
        t252 = t256.
      ENDIF.
      t251 = t252.
      t250 = NEW zcl_lnt_iver_options( i_also = t251 ).
      CREATE OBJECT t250->zlnt_view_ownkeys_b0e8086400eb.
      t250->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t257.
      IF t250->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t257 ).
      ENDIF.
      CREATE OBJECT t250->zlnt_json_ownkeys_70e5fd461788.
      t250->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t258) = |also|.
      DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t259.
      IF t250->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = t258 p1 = t259 ).
      ENDIF.
      t248 = t250.
    ELSE.
      DATA t260 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t260.
      t248 = t260.
    ENDIF.
    t222 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t223 i_first = t230 i_opts = t248 ).
    t221->load( ).
    APPEND t222 TO t221->items.
    t221->save( ).
    DATA(t261) = t179.
    DATA t262 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t262.
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t263.
    DATA t264 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t264.
    DATA t265 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t265.
    DATA t266 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t266.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t266 = zcl_lnt_version_module=>release_b8cd.
    DATA(t267) = |v787|.
    t265 = t266->get( p0 = t267 ).
    t264 = t265.
    CLEAR t263.
    IF t264 IS BOUND.
      DATA t268 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t268.
      DATA t269 TYPE REF TO object.
      CLEAR t269.
      CLEAR t268.
      t269 = t264.
      TRY.
          t263 ?= t269.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t263 IS NOT BOUND.
        TRY.
            t268 ?= t264.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t268 IS BOUND.
          t263 = t268->source( ).
        ENDIF.
        IF t263 IS NOT BOUND.
          CREATE OBJECT t263.
          t263->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t263->oval = t264.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t270.
    DATA t271 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t271.
    DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t272.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t273.
    DATA(t274) = |EVENT|.
    CLEAR t273.
    CREATE OBJECT t273.
    t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t273->sval = t274.
    t272 = t273.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t275.
    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t276.
    DATA(t277) = t143.
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
    DATA t282 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t282.
    DATA(t283) = t272.
    DATA(t284) = t275.
    DATA(t285) = t280.
    t282 = zcl_lnt_st_combi_module=>seq( i_first = t283 i_second = t284 i_rest = t285 ).
    t271 = t282.
    CLEAR t270.
    IF t271 IS BOUND.
      DATA t286 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t286.
      DATA t287 TYPE REF TO object.
      CLEAR t287.
      CLEAR t286.
      t287 = t271.
      TRY.
          t270 ?= t287.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t270 IS NOT BOUND.
        TRY.
            t286 ?= t271.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t286 IS BOUND.
          t270 = t286->source( ).
        ENDIF.
        IF t270 IS NOT BOUND.
          CREATE OBJECT t270.
          t270->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t270->oval = t271.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t288 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t288.
    DATA(t289) = abap_true.
    IF t289 = abap_true.
      DATA t290 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t290.
      DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t291.
      DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t292.
      DATA(t293) = abap_true.
      IF t293 = abap_true.
        DATA(t294) = |OpenABAP|.
        DATA(t295) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t295->has = abap_true.
        t295->value = t294.
        t292 = t295.
      ELSE.
        DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t296.
        t292 = t296.
      ENDIF.
      t291 = t292.
      t290 = NEW zcl_lnt_iver_options( i_also = t291 ).
      CREATE OBJECT t290->zlnt_view_ownkeys_b0e8086400eb.
      t290->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t297.
      IF t290->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t290->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t297 ).
      ENDIF.
      CREATE OBJECT t290->zlnt_json_ownkeys_70e5fd461788.
      t290->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t298) = |also|.
      DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t299.
      IF t290->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t290->zlnt_json_ownkeys_70e5fd461788->put( p0 = t298 p1 = t299 ).
      ENDIF.
      t288 = t290.
    ELSE.
      DATA t300 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t300.
      t288 = t300.
    ENDIF.
    t262 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t263 i_first = t270 i_opts = t288 ).
    t261->load( ).
    APPEND t262 TO t261->items.
    t261->save( ).
    DATA t301 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t301.
    DATA(t302) = t179.
    t301 = zcl_lnt_derived_types_module=>derived_types_alt( i_extra = t302 ).
    t178 = t301.
    CLEAR t177.
    IF t178 IS BOUND.
      DATA t303 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t303.
      DATA t304 TYPE REF TO object.
      CLEAR t304.
      CLEAR t303.
      t304 = t178.
      TRY.
          t177 ?= t304.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t177 IS NOT BOUND.
        TRY.
            t303 ?= t178.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t303 IS BOUND.
          t177 = t303->source( ).
        ENDIF.
        IF t177 IS NOT BOUND.
          CREATE OBJECT t177.
          t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t177->oval = t178.
        ENDIF.
      ENDIF.
    ENDIF.
    t176->load( ).
    APPEND t177 TO t176->items.
    t176->save( ).
    DATA(t305) = t174.
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t306.
    DATA t307 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t307.
    DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t308.
    DATA(t309) = |VALUE IS INITIAL|.
    CLEAR t308.
    CREATE OBJECT t308.
    t308->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t308->sval = t309.
    t307 = zcl_lnt_st_combi_module=>opt_prio( i_first = t308 ).
    CLEAR t306.
    IF t307 IS BOUND.
      DATA t310 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t310.
      DATA t311 TYPE REF TO object.
      CLEAR t311.
      CLEAR t310.
      t311 = t307.
      TRY.
          t306 ?= t311.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t306 IS NOT BOUND.
        TRY.
            t310 ?= t307.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t310 IS BOUND.
          t306 = t310->source( ).
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
    DATA t312 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t312.
    DATA(t313) = t168.
    DATA(t314) = t171.
    DATA(t315) = t174.
    t312 = zcl_lnt_st_combi_module=>seq( i_first = t313 i_second = t314 i_rest = t315 ).
    t167 = t312.
    CLEAR t166.
    IF t167 IS BOUND.
      DATA t316 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t316.
      DATA t317 TYPE REF TO object.
      CLEAR t317.
      CLEAR t316.
      t317 = t167.
      TRY.
          t166 ?= t317.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t166 IS NOT BOUND.
        TRY.
            t316 ?= t167.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t316 IS BOUND.
          t166 = t316->source( ).
        ENDIF.
        IF t166 IS NOT BOUND.
          CREATE OBJECT t166.
          t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t166->oval = t167.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t318 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t318.
    DATA(t319) = abap_true.
    IF t319 = abap_true.
      DATA t320 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t320.
      DATA t321 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t321.
      DATA t322 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t322.
      DATA(t323) = abap_true.
      IF t323 = abap_true.
        DATA(t324) = |OpenABAP|.
        DATA(t325) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t325->has = abap_true.
        t325->value = t324.
        t322 = t325.
      ELSE.
        DATA t326 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t326.
        t322 = t326.
      ENDIF.
      t321 = t322.
      t320 = NEW zcl_lnt_iver_options( i_also = t321 ).
      CREATE OBJECT t320->zlnt_view_ownkeys_b0e8086400eb.
      t320->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t327.
      IF t320->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t320->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t327 ).
      ENDIF.
      CREATE OBJECT t320->zlnt_json_ownkeys_70e5fd461788.
      t320->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t328) = |also|.
      DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t329.
      IF t320->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t320->zlnt_json_ownkeys_70e5fd461788->put( p0 = t328 p1 = t329 ).
      ENDIF.
      t318 = t320.
    ELSE.
      DATA t330 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t330.
      t318 = t330.
    ENDIF.
    t158 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t159 i_first = t166 i_opts = t318 ).
    t157 = t158.
    DATA t331 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t331.
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t332.
    DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t333.
    DATA(t334) = t157.
    CLEAR t333.
    IF t334 IS BOUND.
      DATA t335 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t335.
      DATA t336 TYPE REF TO object.
      CLEAR t336.
      CLEAR t335.
      t336 = t334.
      TRY.
          t333 ?= t336.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t333 IS NOT BOUND.
        TRY.
            t335 ?= t334.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t335 IS BOUND.
          t333 = t335->source( ).
        ENDIF.
        IF t333 IS NOT BOUND.
          CREATE OBJECT t333.
          t333->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t333->oval = t334.
        ENDIF.
      ENDIF.
    ENDIF.
    t332 = t333.
    DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t337.
    DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t338.
    DATA(t339) = zlnt_runtime_desc_78196487750d=>zlnt_member_d153_a3333d63766c.
    CLEAR t338.
    IF t339 IS BOUND.
      CREATE OBJECT t338.
      t338->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t338->cval = t339.
    ENDIF.
    t337 = t338.
    DATA t340 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t340.
    DATA t341 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t341.
    CREATE OBJECT t341.
    t340 = t341.
    DATA(t342) = t340.
    DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t343.
    DATA t344 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t344.
    DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t345.
    DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t346.
    DATA(t347) = |TYPE|.
    CLEAR t346.
    CREATE OBJECT t346.
    t346->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t346->sval = t347.
    t345 = t346.
    DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t348.
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t349.
    DATA t350 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t350.
    DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t351.
    DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t352.
    DATA(t353) = t1.
    CLEAR t352.
    IF t353 IS BOUND.
      DATA t354 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t354.
      DATA t355 TYPE REF TO object.
      CLEAR t355.
      CLEAR t354.
      t355 = t353.
      TRY.
          t352 ?= t355.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t352 IS NOT BOUND.
        TRY.
            t354 ?= t353.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t354 IS BOUND.
          t352 = t354->source( ).
        ENDIF.
        IF t352 IS NOT BOUND.
          CREATE OBJECT t352.
          t352->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t352->oval = t353.
        ENDIF.
      ENDIF.
    ENDIF.
    t351 = t352.
    DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t356.
    DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t357.
    DATA(t358) = t78.
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
    DATA t361 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t361.
    DATA t362 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t362.
    CREATE OBJECT t362.
    t361 = t362.
    DATA t363 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t363.
    DATA(t364) = t351.
    DATA(t365) = t356.
    DATA(t366) = t361.
    t363 = zcl_lnt_st_combi_module=>alt( i_first = t364 i_second = t365 i_rest = t366 ).
    t350 = t363.
    CLEAR t349.
    IF t350 IS BOUND.
      DATA t367 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t367.
      DATA t368 TYPE REF TO object.
      CLEAR t368.
      CLEAR t367.
      t368 = t350.
      TRY.
          t349 ?= t368.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t349 IS NOT BOUND.
        TRY.
            t367 ?= t350.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t367 IS BOUND.
          t349 = t367->source( ).
        ENDIF.
        IF t349 IS NOT BOUND.
          CREATE OBJECT t349.
          t349->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t349->oval = t350.
        ENDIF.
      ENDIF.
    ENDIF.
    t348 = t349.
    DATA t369 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t369.
    DATA t370 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t370.
    CREATE OBJECT t370.
    t369 = t370.
    DATA t371 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t371.
    DATA(t372) = t345.
    DATA(t373) = t348.
    DATA(t374) = t369.
    t371 = zcl_lnt_st_combi_module=>seq( i_first = t372 i_second = t373 i_rest = t374 ).
    t344 = t371.
    CLEAR t343.
    IF t344 IS BOUND.
      DATA t375 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t375.
      DATA t376 TYPE REF TO object.
      CLEAR t376.
      CLEAR t375.
      t376 = t344.
      TRY.
          t343 ?= t376.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t343 IS NOT BOUND.
        TRY.
            t375 ?= t344.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t375 IS BOUND.
          t343 = t375->source( ).
        ENDIF.
        IF t343 IS NOT BOUND.
          CREATE OBJECT t343.
          t343->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t343->oval = t344.
        ENDIF.
      ENDIF.
    ENDIF.
    t342->load( ).
    APPEND t343 TO t342->items.
    t342->save( ).
    DATA(t377) = t340.
    DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t378.
    DATA(t379) = t115.
    CLEAR t378.
    IF t379 IS BOUND.
      DATA t380 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t380.
      DATA t381 TYPE REF TO object.
      CLEAR t381.
      CLEAR t380.
      t381 = t379.
      TRY.
          t378 ?= t381.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t378 IS NOT BOUND.
        TRY.
            t380 ?= t379.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t380 IS BOUND.
          t378 = t380->source( ).
        ENDIF.
        IF t378 IS NOT BOUND.
          CREATE OBJECT t378.
          t378->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t378->oval = t379.
        ENDIF.
      ENDIF.
    ENDIF.
    t377->load( ).
    APPEND t378 TO t377->items.
    t377->save( ).
    DATA t382 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t382.
    DATA(t383) = t332.
    DATA(t384) = t337.
    DATA(t385) = t340.
    t382 = zcl_lnt_st_combi_module=>alt_prio( i_first = t383 i_second = t384 i_rest = t385 ).
    t331 = t382.
    result = t331.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d234_68ba21bb5634.
  ENDMETHOD.
ENDCLASS.
