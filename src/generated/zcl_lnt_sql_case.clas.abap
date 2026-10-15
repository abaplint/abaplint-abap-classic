* TS: src/abap/2_statements/expressions/sql_case.ts:10:1 SQLCase
CLASS zcl_lnt_sql_case DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_case IMPLEMENTATION.
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
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d42_9f93cd02a8cf40.
    t5 = zcl_lnt_st_combi_module=>tok( i_t = t6 ).
    CLEAR t4.
    IF t5 IS BOUND.
      DATA t7 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t7.
      DATA t8 TYPE REF TO object.
      CLEAR t8.
      CLEAR t7.
      t8 = t5.
      TRY.
          t4 ?= t8.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t7 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t7 IS BOUND.
          t4 = t7->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    t3 = t4.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d171_8a7e3c79c08f.
    CLEAR t10.
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t10->cval = t11.
    ENDIF.
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t13.
    CREATE OBJECT t13.
    t12 = t13.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t14.
    DATA(t15) = t3.
    DATA(t16) = t9.
    DATA(t17) = t12.
    t14 = zcl_lnt_st_combi_module=>seq( i_first = t15 i_second = t16 i_rest = t17 ).
    t2 = t14.
    t1 = t2.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d284_6229eec94af2.
    CLEAR t21.
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t21->cval = t22.
    ENDIF.
    t20 = t21.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d294_92c50184534c.
    CLEAR t24.
    IF t25 IS BOUND.
      CREATE OBJECT t24.
      t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t24->cval = t25.
    ENDIF.
    t23 = t24.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t27.
    CREATE OBJECT t27.
    t26 = t27.
    DATA(t28) = t26.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d287_e5df01c1631a.
    CLEAR t29.
    IF t30 IS BOUND.
      CREATE OBJECT t29.
      t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t29->cval = t30.
    ENDIF.
    t28->load( ).
    APPEND t29 TO t28->items.
    t28->save( ).
    DATA(t31) = t26.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA(t33) = zlnt_runtime_desc_78196487750d=>zlnt_member_d295_c8c13651616a.
    CLEAR t32.
    IF t33 IS BOUND.
      CREATE OBJECT t32.
      t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t32->cval = t33.
    ENDIF.
    t31->load( ).
    APPEND t32 TO t31->items.
    t31->save( ).
    DATA(t34) = t26.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
    CLEAR t35.
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t35->cval = t36.
    ENDIF.
    t34->load( ).
    APPEND t35 TO t34->items.
    t34->save( ).
    DATA(t37) = t26.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
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
    DATA(t41) = t20.
    DATA(t42) = t23.
    DATA(t43) = t26.
    t40 = zcl_lnt_st_combi_module=>alt_prio( i_first = t41 i_second = t42 i_rest = t43 ).
    t19 = t40.
    t18 = t19.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t44.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA(t51) = |+|.
    CLEAR t50.
    CREATE OBJECT t50.
    t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t50->sval = t51.
    t49 = t50.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA(t54) = |-|.
    CLEAR t53.
    CREATE OBJECT t53.
    t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t53->sval = t54.
    t52 = t53.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t56.
    CREATE OBJECT t56.
    t55 = t56.
    DATA(t57) = t55.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA(t59) = |*|.
    CLEAR t58.
    CREATE OBJECT t58.
    t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t58->sval = t59.
    t57->load( ).
    APPEND t58 TO t57->items.
    t57->save( ).
    DATA(t60) = t55.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA(t62) = |/|.
    CLEAR t61.
    CREATE OBJECT t61.
    t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t61->sval = t62.
    t60->load( ).
    APPEND t61 TO t60->items.
    t60->save( ).
    DATA(t63) = t55.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA(t65) = |&&|.
    CLEAR t64.
    CREATE OBJECT t64.
    t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t64->sval = t65.
    t63->load( ).
    APPEND t64 TO t63->items.
    t63->save( ).
    DATA t66 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t66.
    DATA(t67) = t49.
    DATA(t68) = t52.
    DATA(t69) = t55.
    t66 = zcl_lnt_st_combi_module=>alt_prio( i_first = t67 i_second = t68 i_rest = t69 ).
    t48 = t66.
    CLEAR t47.
    IF t48 IS BOUND.
      DATA t70 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t70.
      DATA t71 TYPE REF TO object.
      CLEAR t71.
      CLEAR t70.
      t71 = t48.
      TRY.
          t47 ?= t71.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t47 IS NOT BOUND.
        TRY.
            t70 ?= t48.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t70 IS BOUND.
          t47 = t70->source( ).
        ENDIF.
        IF t47 IS NOT BOUND.
          CREATE OBJECT t47.
          t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t47->oval = t48.
        ENDIF.
      ENDIF.
    ENDIF.
    t46 = t47.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t76.
    DATA(t77) = zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77.
    t76 = zcl_lnt_st_combi_module=>tok( i_t = t77 ).
    CLEAR t75.
    IF t76 IS BOUND.
      DATA t78 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t78.
      DATA t79 TYPE REF TO object.
      CLEAR t79.
      CLEAR t78.
      t79 = t76.
      TRY.
          t75 ?= t79.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t75 IS NOT BOUND.
        TRY.
            t78 ?= t76.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t78 IS BOUND.
          t75 = t78->source( ).
        ENDIF.
        IF t75 IS NOT BOUND.
          CREATE OBJECT t75.
          t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t75->oval = t76.
        ENDIF.
      ENDIF.
    ENDIF.
    t74 = zcl_lnt_st_combi_module=>opt_prio( i_first = t75 ).
    CLEAR t73.
    IF t74 IS BOUND.
      DATA t80 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t80.
      DATA t81 TYPE REF TO object.
      CLEAR t81.
      CLEAR t80.
      t81 = t74.
      TRY.
          t73 ?= t81.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t73 IS NOT BOUND.
        TRY.
            t80 ?= t74.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t80 IS BOUND.
          t73 = t80->source( ).
        ENDIF.
        IF t73 IS NOT BOUND.
          CREATE OBJECT t73.
          t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t73->oval = t74.
        ENDIF.
      ENDIF.
    ENDIF.
    t72 = t73.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t83.
    CREATE OBJECT t83.
    t82 = t83.
    DATA(t84) = t82.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA(t86) = t18.
    CLEAR t85.
    IF t86 IS BOUND.
      DATA t87 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t87.
      DATA t88 TYPE REF TO object.
      CLEAR t88.
      CLEAR t87.
      t88 = t86.
      TRY.
          t85 ?= t88.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t85 IS NOT BOUND.
        TRY.
            t87 ?= t86.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t87 IS BOUND.
          t85 = t87->source( ).
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
    DATA(t89) = t82.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t93.
    DATA(t94) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t93 = zcl_lnt_st_combi_module=>tok( i_t = t94 ).
    CLEAR t92.
    IF t93 IS BOUND.
      DATA t95 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t95.
      DATA t96 TYPE REF TO object.
      CLEAR t96.
      CLEAR t95.
      t96 = t93.
      TRY.
          t92 ?= t96.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t92 IS NOT BOUND.
        TRY.
            t95 ?= t93.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t95 IS BOUND.
          t92 = t95->source( ).
        ENDIF.
        IF t92 IS NOT BOUND.
          CREATE OBJECT t92.
          t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t92->oval = t93.
        ENDIF.
      ENDIF.
    ENDIF.
    t91 = zcl_lnt_st_combi_module=>opt_prio( i_first = t92 ).
    CLEAR t90.
    IF t91 IS BOUND.
      DATA t97 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t97.
      DATA t98 TYPE REF TO object.
      CLEAR t98.
      CLEAR t97.
      t98 = t91.
      TRY.
          t90 ?= t98.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t90 IS NOT BOUND.
        TRY.
            t97 ?= t91.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t97 IS BOUND.
          t90 = t97->source( ).
        ENDIF.
        IF t90 IS NOT BOUND.
          CREATE OBJECT t90.
          t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t90->oval = t91.
        ENDIF.
      ENDIF.
    ENDIF.
    t89->load( ).
    APPEND t90 TO t89->items.
    t89->save( ).
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t99.
    DATA(t100) = t46.
    DATA(t101) = t72.
    DATA(t102) = t82.
    t99 = zcl_lnt_st_combi_module=>seq( i_first = t100 i_second = t101 i_rest = t102 ).
    t45 = t99.
    t44 = t45.
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t103.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t104.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA(t107) = zlnt_runtime_desc_78196487750d=>zlnt_member_d294_92c50184534c.
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
    DATA(t110) = zlnt_runtime_desc_78196487750d=>zlnt_member_d284_6229eec94af2.
    CLEAR t109.
    IF t110 IS BOUND.
      CREATE OBJECT t109.
      t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t109->cval = t110.
    ENDIF.
    t108 = t109.
    DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t111.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t112.
    CREATE OBJECT t112.
    t111 = t112.
    DATA(t113) = t111.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA(t115) = zlnt_runtime_desc_78196487750d=>zlnt_member_d287_e5df01c1631a.
    CLEAR t114.
    IF t115 IS BOUND.
      CREATE OBJECT t114.
      t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t114->cval = t115.
    ENDIF.
    t113->load( ).
    APPEND t114 TO t113->items.
    t113->save( ).
    DATA(t116) = t111.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA(t118) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
    CLEAR t117.
    IF t118 IS BOUND.
      CREATE OBJECT t117.
      t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t117->cval = t118.
    ENDIF.
    t116->load( ).
    APPEND t117 TO t116->items.
    t116->save( ).
    DATA(t119) = t111.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    DATA(t121) = zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8.
    CLEAR t120.
    IF t121 IS BOUND.
      CREATE OBJECT t120.
      t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t120->cval = t121.
    ENDIF.
    t119->load( ).
    APPEND t120 TO t119->items.
    t119->save( ).
    DATA(t122) = t111.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t123.
    DATA(t124) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
    CLEAR t123.
    IF t124 IS BOUND.
      CREATE OBJECT t123.
      t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t123->cval = t124.
    ENDIF.
    t122->load( ).
    APPEND t123 TO t122->items.
    t122->save( ).
    DATA t125 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t125.
    DATA(t126) = t105.
    DATA(t127) = t108.
    DATA(t128) = t111.
    t125 = zcl_lnt_st_combi_module=>alt_prio( i_first = t126 i_second = t127 i_rest = t128 ).
    t104 = t125.
    t103 = t104.
    DATA t129 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t129.
    DATA t130 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA t133 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t133.
    DATA(t134) = zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77.
    t133 = zcl_lnt_st_combi_module=>tok( i_t = t134 ).
    CLEAR t132.
    IF t133 IS BOUND.
      DATA t135 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t135.
      DATA t136 TYPE REF TO object.
      CLEAR t136.
      CLEAR t135.
      t136 = t133.
      TRY.
          t132 ?= t136.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t132 IS NOT BOUND.
        TRY.
            t135 ?= t133.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t135 IS BOUND.
          t132 = t135->source( ).
        ENDIF.
        IF t132 IS NOT BOUND.
          CREATE OBJECT t132.
          t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t132->oval = t133.
        ENDIF.
      ENDIF.
    ENDIF.
    t131 = t132.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t137.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    DATA(t139) = t103.
    CLEAR t138.
    IF t139 IS BOUND.
      DATA t140 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t140.
      DATA t141 TYPE REF TO object.
      CLEAR t141.
      CLEAR t140.
      t141 = t139.
      TRY.
          t138 ?= t141.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t138 IS NOT BOUND.
        TRY.
            t140 ?= t139.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t140 IS BOUND.
          t138 = t140->source( ).
        ENDIF.
        IF t138 IS NOT BOUND.
          CREATE OBJECT t138.
          t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t138->oval = t139.
        ENDIF.
      ENDIF.
    ENDIF.
    t137 = t138.
    DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t143.
    CREATE OBJECT t143.
    t142 = t143.
    DATA(t144) = t142.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t145.
    DATA t146 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t146.
    DATA(t147) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t146 = zcl_lnt_st_combi_module=>tok( i_t = t147 ).
    CLEAR t145.
    IF t146 IS BOUND.
      DATA t148 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t148.
      DATA t149 TYPE REF TO object.
      CLEAR t149.
      CLEAR t148.
      t149 = t146.
      TRY.
          t145 ?= t149.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t145 IS NOT BOUND.
        TRY.
            t148 ?= t146.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t148 IS BOUND.
          t145 = t148->source( ).
        ENDIF.
        IF t145 IS NOT BOUND.
          CREATE OBJECT t145.
          t145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t145->oval = t146.
        ENDIF.
      ENDIF.
    ENDIF.
    t144->load( ).
    APPEND t145 TO t144->items.
    t144->save( ).
    DATA t150 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t150.
    DATA(t151) = t131.
    DATA(t152) = t137.
    DATA(t153) = t142.
    t150 = zcl_lnt_st_combi_module=>seq( i_first = t151 i_second = t152 i_rest = t153 ).
    t130 = t150.
    t129 = t130.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t154.
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t155.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t156.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    DATA(t158) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
    CLEAR t157.
    IF t158 IS BOUND.
      CREATE OBJECT t157.
      t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t157->cval = t158.
    ENDIF.
    t156 = t157.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    DATA(t161) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
    CLEAR t160.
    IF t161 IS BOUND.
      CREATE OBJECT t160.
      t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t160->cval = t161.
    ENDIF.
    t159 = t160.
    DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t162.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t163.
    CREATE OBJECT t163.
    t162 = t163.
    DATA(t164) = t162.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t165.
    DATA(t166) = t1.
    CLEAR t165.
    IF t166 IS BOUND.
      DATA t167 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t167.
      DATA t168 TYPE REF TO object.
      CLEAR t168.
      CLEAR t167.
      t168 = t166.
      TRY.
          t165 ?= t168.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t165 IS NOT BOUND.
        TRY.
            t167 ?= t166.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t167 IS BOUND.
          t165 = t167->source( ).
        ENDIF.
        IF t165 IS NOT BOUND.
          CREATE OBJECT t165.
          t165->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t165->oval = t166.
        ENDIF.
      ENDIF.
    ENDIF.
    t164->load( ).
    APPEND t165 TO t164->items.
    t164->save( ).
    DATA t169 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t169.
    DATA(t170) = t156.
    DATA(t171) = t159.
    DATA(t172) = t162.
    t169 = zcl_lnt_st_combi_module=>alt_prio( i_first = t170 i_second = t171 i_rest = t172 ).
    t155 = t169.
    t154 = t155.
    DATA t173 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t173.
    DATA t174 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t174.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t175.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t176.
    DATA(t177) = |WHEN|.
    CLEAR t176.
    CREATE OBJECT t176.
    t176->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t176->sval = t177.
    t175 = t176.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t178.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t179.
    DATA(t180) = t154.
    CLEAR t179.
    IF t180 IS BOUND.
      DATA t181 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t181.
      DATA t182 TYPE REF TO object.
      CLEAR t182.
      CLEAR t181.
      t182 = t180.
      TRY.
          t179 ?= t182.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t179 IS NOT BOUND.
        TRY.
            t181 ?= t180.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t181 IS BOUND.
          t179 = t181->source( ).
        ENDIF.
        IF t179 IS NOT BOUND.
          CREATE OBJECT t179.
          t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t179->oval = t180.
        ENDIF.
      ENDIF.
    ENDIF.
    t178 = t179.
    DATA t183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t183.
    DATA t184 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t184.
    CREATE OBJECT t184.
    t183 = t184.
    DATA(t185) = t183.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t186.
    DATA(t187) = |THEN|.
    CLEAR t186.
    CREATE OBJECT t186.
    t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t186->sval = t187.
    t185->load( ).
    APPEND t186 TO t185->items.
    t185->save( ).
    DATA(t188) = t183.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t189.
    DATA t190 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t190.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t191.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t192.
    DATA(t193) = t129.
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
    DATA t198 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t198.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t199.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t200.
    DATA t201 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t201.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t202.
    DATA(t203) = |-|.
    CLEAR t202.
    CREATE OBJECT t202.
    t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t202->sval = t203.
    t201 = zcl_lnt_st_combi_module=>opt_prio( i_first = t202 ).
    CLEAR t200.
    IF t201 IS BOUND.
      DATA t204 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t204.
      DATA t205 TYPE REF TO object.
      CLEAR t205.
      CLEAR t204.
      t205 = t201.
      TRY.
          t200 ?= t205.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t200 IS NOT BOUND.
        TRY.
            t204 ?= t201.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t204 IS BOUND.
          t200 = t204->source( ).
        ENDIF.
        IF t200 IS NOT BOUND.
          CREATE OBJECT t200.
          t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t200->oval = t201.
        ENDIF.
      ENDIF.
    ENDIF.
    t199 = t200.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t206.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t207.
    DATA(t208) = t103.
    CLEAR t207.
    IF t208 IS BOUND.
      DATA t209 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t209.
      DATA t210 TYPE REF TO object.
      CLEAR t210.
      CLEAR t209.
      t210 = t208.
      TRY.
          t207 ?= t210.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t207 IS NOT BOUND.
        TRY.
            t209 ?= t208.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t209 IS BOUND.
          t207 = t209->source( ).
        ENDIF.
        IF t207 IS NOT BOUND.
          CREATE OBJECT t207.
          t207->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t207->oval = t208.
        ENDIF.
      ENDIF.
    ENDIF.
    t206 = t207.
    DATA t211 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t211.
    DATA t212 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t212.
    CREATE OBJECT t212.
    t211 = t212.
    DATA t213 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t213.
    DATA(t214) = t199.
    DATA(t215) = t206.
    DATA(t216) = t211.
    t213 = zcl_lnt_st_combi_module=>seq( i_first = t214 i_second = t215 i_rest = t216 ).
    t198 = t213.
    CLEAR t197.
    IF t198 IS BOUND.
      DATA t217 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t217.
      DATA t218 TYPE REF TO object.
      CLEAR t218.
      CLEAR t217.
      t218 = t198.
      TRY.
          t197 ?= t218.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t197 IS NOT BOUND.
        TRY.
            t217 ?= t198.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t217 IS BOUND.
          t197 = t217->source( ).
        ENDIF.
        IF t197 IS NOT BOUND.
          CREATE OBJECT t197.
          t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t197->oval = t198.
        ENDIF.
      ENDIF.
    ENDIF.
    t196 = t197.
    DATA t219 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t219.
    DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t220.
    CREATE OBJECT t220.
    t219 = t220.
    DATA t221 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t221.
    DATA(t222) = t191.
    DATA(t223) = t196.
    DATA(t224) = t219.
    t221 = zcl_lnt_st_combi_module=>alt_prio( i_first = t222 i_second = t223 i_rest = t224 ).
    t190 = t221.
    CLEAR t189.
    IF t190 IS BOUND.
      DATA t225 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t225.
      DATA t226 TYPE REF TO object.
      CLEAR t226.
      CLEAR t225.
      t226 = t190.
      TRY.
          t189 ?= t226.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t189 IS NOT BOUND.
        TRY.
            t225 ?= t190.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t225 IS BOUND.
          t189 = t225->source( ).
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
    DATA(t227) = t183.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t228.
    DATA t229 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t229.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t230.
    DATA(t231) = t44.
    CLEAR t230.
    IF t231 IS BOUND.
      DATA t232 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t232.
      DATA t233 TYPE REF TO object.
      CLEAR t233.
      CLEAR t232.
      t233 = t231.
      TRY.
          t230 ?= t233.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t230 IS NOT BOUND.
        TRY.
            t232 ?= t231.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t232 IS BOUND.
          t230 = t232->source( ).
        ENDIF.
        IF t230 IS NOT BOUND.
          CREATE OBJECT t230.
          t230->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t230->oval = t231.
        ENDIF.
      ENDIF.
    ENDIF.
    t229 = zcl_lnt_st_combi_module=>star_prio( i_first = t230 ).
    CLEAR t228.
    IF t229 IS BOUND.
      DATA t234 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t234.
      DATA t235 TYPE REF TO object.
      CLEAR t235.
      CLEAR t234.
      t235 = t229.
      TRY.
          t228 ?= t235.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t228 IS NOT BOUND.
        TRY.
            t234 ?= t229.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t234 IS BOUND.
          t228 = t234->source( ).
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
    DATA t236 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t236.
    DATA(t237) = t175.
    DATA(t238) = t178.
    DATA(t239) = t183.
    t236 = zcl_lnt_st_combi_module=>seq( i_first = t237 i_second = t238 i_rest = t239 ).
    t174 = t236.
    t173 = t174.
    DATA t240 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t240.
    DATA t241 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t241.
    DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t242.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t243.
    DATA(t244) = |ELSE|.
    CLEAR t243.
    CREATE OBJECT t243.
    t243->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t243->sval = t244.
    t242 = t243.
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t245.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t246.
    DATA t247 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t247.
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t248.
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t249.
    DATA(t250) = t129.
    CLEAR t249.
    IF t250 IS BOUND.
      DATA t251 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t251.
      DATA t252 TYPE REF TO object.
      CLEAR t252.
      CLEAR t251.
      t252 = t250.
      TRY.
          t249 ?= t252.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t249 IS NOT BOUND.
        TRY.
            t251 ?= t250.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t251 IS BOUND.
          t249 = t251->source( ).
        ENDIF.
        IF t249 IS NOT BOUND.
          CREATE OBJECT t249.
          t249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t249->oval = t250.
        ENDIF.
      ENDIF.
    ENDIF.
    t248 = t249.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t253.
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t254.
    DATA t255 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t255.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t256.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t257.
    DATA t258 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t258.
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t259.
    DATA(t260) = |-|.
    CLEAR t259.
    CREATE OBJECT t259.
    t259->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t259->sval = t260.
    t258 = zcl_lnt_st_combi_module=>opt_prio( i_first = t259 ).
    CLEAR t257.
    IF t258 IS BOUND.
      DATA t261 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t261.
      DATA t262 TYPE REF TO object.
      CLEAR t262.
      CLEAR t261.
      t262 = t258.
      TRY.
          t257 ?= t262.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t257 IS NOT BOUND.
        TRY.
            t261 ?= t258.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t261 IS BOUND.
          t257 = t261->source( ).
        ENDIF.
        IF t257 IS NOT BOUND.
          CREATE OBJECT t257.
          t257->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t257->oval = t258.
        ENDIF.
      ENDIF.
    ENDIF.
    t256 = t257.
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t263.
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t264.
    DATA(t265) = t103.
    CLEAR t264.
    IF t265 IS BOUND.
      DATA t266 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t266.
      DATA t267 TYPE REF TO object.
      CLEAR t267.
      CLEAR t266.
      t267 = t265.
      TRY.
          t264 ?= t267.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t264 IS NOT BOUND.
        TRY.
            t266 ?= t265.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t266 IS BOUND.
          t264 = t266->source( ).
        ENDIF.
        IF t264 IS NOT BOUND.
          CREATE OBJECT t264.
          t264->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t264->oval = t265.
        ENDIF.
      ENDIF.
    ENDIF.
    t263 = t264.
    DATA t268 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t268.
    DATA t269 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t269.
    CREATE OBJECT t269.
    t268 = t269.
    DATA t270 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t270.
    DATA(t271) = t256.
    DATA(t272) = t263.
    DATA(t273) = t268.
    t270 = zcl_lnt_st_combi_module=>seq( i_first = t271 i_second = t272 i_rest = t273 ).
    t255 = t270.
    CLEAR t254.
    IF t255 IS BOUND.
      DATA t274 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t274.
      DATA t275 TYPE REF TO object.
      CLEAR t275.
      CLEAR t274.
      t275 = t255.
      TRY.
          t254 ?= t275.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t254 IS NOT BOUND.
        TRY.
            t274 ?= t255.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t274 IS BOUND.
          t254 = t274->source( ).
        ENDIF.
        IF t254 IS NOT BOUND.
          CREATE OBJECT t254.
          t254->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t254->oval = t255.
        ENDIF.
      ENDIF.
    ENDIF.
    t253 = t254.
    DATA t276 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t276.
    DATA t277 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t277.
    CREATE OBJECT t277.
    t276 = t277.
    DATA t278 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t278.
    DATA(t279) = t248.
    DATA(t280) = t253.
    DATA(t281) = t276.
    t278 = zcl_lnt_st_combi_module=>alt_prio( i_first = t279 i_second = t280 i_rest = t281 ).
    t247 = t278.
    CLEAR t246.
    IF t247 IS BOUND.
      DATA t282 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t282.
      DATA t283 TYPE REF TO object.
      CLEAR t283.
      CLEAR t282.
      t283 = t247.
      TRY.
          t246 ?= t283.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t246 IS NOT BOUND.
        TRY.
            t282 ?= t247.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t282 IS BOUND.
          t246 = t282->source( ).
        ENDIF.
        IF t246 IS NOT BOUND.
          CREATE OBJECT t246.
          t246->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t246->oval = t247.
        ENDIF.
      ENDIF.
    ENDIF.
    t245 = t246.
    DATA t284 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t284.
    DATA t285 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t285.
    CREATE OBJECT t285.
    t284 = t285.
    DATA t286 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t286.
    DATA(t287) = t242.
    DATA(t288) = t245.
    DATA(t289) = t284.
    t286 = zcl_lnt_st_combi_module=>seq( i_first = t287 i_second = t288 i_rest = t289 ).
    t241 = t286.
    t240 = t241.
    DATA t290 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t290.
    DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t291.
    DATA t292 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t292.
    DATA t293 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t293.
    DATA t294 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t294.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t294 = zcl_lnt_version_module=>release_b8cd.
    DATA(t295) = |v740sp05|.
    t293 = t294->get( p0 = t295 ).
    t292 = t293.
    CLEAR t291.
    IF t292 IS BOUND.
      DATA t296 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t296.
      DATA t297 TYPE REF TO object.
      CLEAR t297.
      CLEAR t296.
      t297 = t292.
      TRY.
          t291 ?= t297.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t291 IS NOT BOUND.
        TRY.
            t296 ?= t292.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t296 IS BOUND.
          t291 = t296->source( ).
        ENDIF.
        IF t291 IS NOT BOUND.
          CREATE OBJECT t291.
          t291->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t291->oval = t292.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t298.
    DATA t299 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t299.
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t300.
    DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t301.
    DATA(t302) = |CASE|.
    CLEAR t301.
    CREATE OBJECT t301.
    t301->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t301->sval = t302.
    t300 = t301.
    DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t303.
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t304.
    DATA t305 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t305.
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t306.
    DATA t307 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t307.
    DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t308.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t309.
    DATA(t310) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
    CLEAR t309.
    IF t310 IS BOUND.
      CREATE OBJECT t309.
      t309->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t309->cval = t310.
    ENDIF.
    t308 = t309.
    DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t311.
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t312.
    DATA(t313) = t1.
    CLEAR t312.
    IF t313 IS BOUND.
      DATA t314 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t314.
      DATA t315 TYPE REF TO object.
      CLEAR t315.
      CLEAR t314.
      t315 = t313.
      TRY.
          t312 ?= t315.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t312 IS NOT BOUND.
        TRY.
            t314 ?= t313.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t314 IS BOUND.
          t312 = t314->source( ).
        ENDIF.
        IF t312 IS NOT BOUND.
          CREATE OBJECT t312.
          t312->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t312->oval = t313.
        ENDIF.
      ENDIF.
    ENDIF.
    t311 = t312.
    DATA t316 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t316.
    DATA t317 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t317.
    CREATE OBJECT t317.
    t316 = t317.
    DATA t318 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t318.
    DATA(t319) = t308.
    DATA(t320) = t311.
    DATA(t321) = t316.
    t318 = zcl_lnt_st_combi_module=>alt_prio( i_first = t319 i_second = t320 i_rest = t321 ).
    t307 = t318.
    CLEAR t306.
    IF t307 IS BOUND.
      DATA t322 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t322.
      DATA t323 TYPE REF TO object.
      CLEAR t323.
      CLEAR t322.
      t323 = t307.
      TRY.
          t306 ?= t323.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t306 IS NOT BOUND.
        TRY.
            t322 ?= t307.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t322 IS BOUND.
          t306 = t322->source( ).
        ENDIF.
        IF t306 IS NOT BOUND.
          CREATE OBJECT t306.
          t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t306->oval = t307.
        ENDIF.
      ENDIF.
    ENDIF.
    t305 = zcl_lnt_st_combi_module=>opt( i_first = t306 ).
    CLEAR t304.
    IF t305 IS BOUND.
      DATA t324 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t324.
      DATA t325 TYPE REF TO object.
      CLEAR t325.
      CLEAR t324.
      t325 = t305.
      TRY.
          t304 ?= t325.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t304 IS NOT BOUND.
        TRY.
            t324 ?= t305.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t324 IS BOUND.
          t304 = t324->source( ).
        ENDIF.
        IF t304 IS NOT BOUND.
          CREATE OBJECT t304.
          t304->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t304->oval = t305.
        ENDIF.
      ENDIF.
    ENDIF.
    t303 = t304.
    DATA t326 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t326.
    DATA t327 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t327.
    CREATE OBJECT t327.
    t326 = t327.
    DATA(t328) = t326.
    DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t329.
    DATA t330 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t330.
    DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t331.
    DATA(t332) = t173.
    CLEAR t331.
    IF t332 IS BOUND.
      DATA t333 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t333.
      DATA t334 TYPE REF TO object.
      CLEAR t334.
      CLEAR t333.
      t334 = t332.
      TRY.
          t331 ?= t334.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t331 IS NOT BOUND.
        TRY.
            t333 ?= t332.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t333 IS BOUND.
          t331 = t333->source( ).
        ENDIF.
        IF t331 IS NOT BOUND.
          CREATE OBJECT t331.
          t331->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t331->oval = t332.
        ENDIF.
      ENDIF.
    ENDIF.
    t330 = zcl_lnt_st_combi_module=>plus_prio( i_first = t331 ).
    CLEAR t329.
    IF t330 IS BOUND.
      DATA t335 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t335.
      DATA t336 TYPE REF TO object.
      CLEAR t336.
      CLEAR t335.
      t336 = t330.
      TRY.
          t329 ?= t336.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t329 IS NOT BOUND.
        TRY.
            t335 ?= t330.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t335 IS BOUND.
          t329 = t335->source( ).
        ENDIF.
        IF t329 IS NOT BOUND.
          CREATE OBJECT t329.
          t329->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t329->oval = t330.
        ENDIF.
      ENDIF.
    ENDIF.
    t328->load( ).
    APPEND t329 TO t328->items.
    t328->save( ).
    DATA(t337) = t326.
    DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t338.
    DATA t339 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t339.
    DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t340.
    DATA(t341) = t240.
    CLEAR t340.
    IF t341 IS BOUND.
      DATA t342 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t342.
      DATA t343 TYPE REF TO object.
      CLEAR t343.
      CLEAR t342.
      t343 = t341.
      TRY.
          t340 ?= t343.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t340 IS NOT BOUND.
        TRY.
            t342 ?= t341.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t342 IS BOUND.
          t340 = t342->source( ).
        ENDIF.
        IF t340 IS NOT BOUND.
          CREATE OBJECT t340.
          t340->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t340->oval = t341.
        ENDIF.
      ENDIF.
    ENDIF.
    t339 = zcl_lnt_st_combi_module=>opt_prio( i_first = t340 ).
    CLEAR t338.
    IF t339 IS BOUND.
      DATA t344 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t344.
      DATA t345 TYPE REF TO object.
      CLEAR t345.
      CLEAR t344.
      t345 = t339.
      TRY.
          t338 ?= t345.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t338 IS NOT BOUND.
        TRY.
            t344 ?= t339.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t344 IS BOUND.
          t338 = t344->source( ).
        ENDIF.
        IF t338 IS NOT BOUND.
          CREATE OBJECT t338.
          t338->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t338->oval = t339.
        ENDIF.
      ENDIF.
    ENDIF.
    t337->load( ).
    APPEND t338 TO t337->items.
    t337->save( ).
    DATA(t346) = t326.
    DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t347.
    DATA(t348) = |END|.
    CLEAR t347.
    CREATE OBJECT t347.
    t347->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t347->sval = t348.
    t346->load( ).
    APPEND t347 TO t346->items.
    t346->save( ).
    DATA t349 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t349.
    DATA(t350) = t300.
    DATA(t351) = t303.
    DATA(t352) = t326.
    t349 = zcl_lnt_st_combi_module=>seq( i_first = t350 i_second = t351 i_rest = t352 ).
    t299 = t349.
    CLEAR t298.
    IF t299 IS BOUND.
      DATA t353 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t353.
      DATA t354 TYPE REF TO object.
      CLEAR t354.
      CLEAR t353.
      t354 = t299.
      TRY.
          t298 ?= t354.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t298 IS NOT BOUND.
        TRY.
            t353 ?= t299.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t353 IS BOUND.
          t298 = t353->source( ).
        ENDIF.
        IF t298 IS NOT BOUND.
          CREATE OBJECT t298.
          t298->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t298->oval = t299.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t355 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t355.
    DATA(t356) = abap_true.
    IF t356 = abap_true.
      DATA t357 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t357.
      DATA t358 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t358.
      DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t359.
      DATA(t360) = abap_true.
      IF t360 = abap_true.
        DATA(t361) = |OpenABAP|.
        DATA(t362) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t362->has = abap_true.
        t362->value = t361.
        t359 = t362.
      ELSE.
        DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t363.
        t359 = t363.
      ENDIF.
      t358 = t359.
      t357 = NEW zcl_lnt_iver_options( i_also = t358 ).
      CREATE OBJECT t357->zlnt_view_ownkeys_b0e8086400eb.
      t357->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t364.
      IF t357->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t357->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t364 ).
      ENDIF.
      CREATE OBJECT t357->zlnt_json_ownkeys_70e5fd461788.
      t357->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t365) = |also|.
      DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t366.
      IF t357->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t357->zlnt_json_ownkeys_70e5fd461788->put( p0 = t365 p1 = t366 ).
      ENDIF.
      t355 = t357.
    ELSE.
      DATA t367 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t367.
      t355 = t367.
    ENDIF.
    t290 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t291 i_first = t298 i_opts = t355 ).
    result = t290.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d294_92c50184534c.
  ENDMETHOD.
ENDCLASS.
