* TS: src/abap/2_statements/expressions/simple_target.ts:8:1 SimpleTarget
CLASS zcl_lnt_simple_target DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_simple_target IMPLEMENTATION.
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
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d25_a168ca012db7bd.
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
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d99_35801e5718dec9.
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
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t22.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d22_cfdc313f209817.
    t22 = zcl_lnt_st_combi_module=>tok( i_t = t23 ).
    CLEAR t21.
    IF t22 IS BOUND.
      DATA t24 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t24.
      DATA t25 TYPE REF TO object.
      CLEAR t25.
      CLEAR t24.
      t25 = t22.
      TRY.
          t21 ?= t25.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t21 IS NOT BOUND.
        TRY.
            t24 ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t24 IS BOUND.
          t21 = t24->source( ).
        ENDIF.
        IF t21 IS NOT BOUND.
          CREATE OBJECT t21.
          t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t21->oval = t22.
        ENDIF.
      ENDIF.
    ENDIF.
    t20 = t21.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d100_553f73368b64.
    CLEAR t27.
    IF t28 IS BOUND.
      CREATE OBJECT t27.
      t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t27->cval = t28.
    ENDIF.
    t26 = t27.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t30.
    CREATE OBJECT t30.
    t29 = t30.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t31.
    DATA(t32) = t20.
    DATA(t33) = t26.
    DATA(t34) = t29.
    t31 = zcl_lnt_st_combi_module=>seq( i_first = t32 i_second = t33 i_rest = t34 ).
    t19 = t31.
    t18 = t19.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
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
    DATA(t41) = zlnt_runtime_desc_78196487750d=>zlnt_member_d113_956a697889b2.
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
    DATA(t44) = t1.
    CLEAR t43.
    IF t44 IS BOUND.
      DATA t45 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t45.
      DATA t46 TYPE REF TO object.
      CLEAR t46.
      CLEAR t45.
      t46 = t44.
      TRY.
          t43 ?= t46.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t43 IS NOT BOUND.
        TRY.
            t45 ?= t44.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t45 IS BOUND.
          t43 = t45->source( ).
        ENDIF.
        IF t43 IS NOT BOUND.
          CREATE OBJECT t43.
          t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t43->oval = t44.
        ENDIF.
      ENDIF.
    ENDIF.
    t42 = t43.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t48.
    CREATE OBJECT t48.
    t47 = t48.
    DATA(t49) = t47.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA(t51) = t18.
    CLEAR t50.
    IF t51 IS BOUND.
      DATA t52 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t52.
      DATA t53 TYPE REF TO object.
      CLEAR t53.
      CLEAR t52.
      t53 = t51.
      TRY.
          t50 ?= t53.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t50 IS NOT BOUND.
        TRY.
            t52 ?= t51.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t52 IS BOUND.
          t50 = t52->source( ).
        ENDIF.
        IF t50 IS NOT BOUND.
          CREATE OBJECT t50.
          t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t50->oval = t51.
        ENDIF.
      ENDIF.
    ENDIF.
    t49->load( ).
    APPEND t50 TO t49->items.
    t49->save( ).
    DATA(t54) = t47.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    DATA(t56) = zlnt_runtime_desc_78196487750d=>zlnt_member_d101_98dd83adae1d.
    CLEAR t55.
    IF t56 IS BOUND.
      CREATE OBJECT t55.
      t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t55->cval = t56.
    ENDIF.
    t54->load( ).
    APPEND t55 TO t54->items.
    t54->save( ).
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t57.
    DATA(t58) = t39.
    DATA(t59) = t42.
    DATA(t60) = t47.
    t57 = zcl_lnt_st_combi_module=>alt_prio( i_first = t58 i_second = t59 i_rest = t60 ).
    t38 = t57.
    CLEAR t37.
    IF t38 IS BOUND.
      DATA t61 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t61.
      DATA t62 TYPE REF TO object.
      CLEAR t62.
      CLEAR t61.
      t62 = t38.
      TRY.
          t37 ?= t62.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t37 IS NOT BOUND.
        TRY.
            t61 ?= t38.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t61 IS BOUND.
          t37 = t61->source( ).
        ENDIF.
        IF t37 IS NOT BOUND.
          CREATE OBJECT t37.
          t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t37->oval = t38.
        ENDIF.
      ENDIF.
    ENDIF.
    t36 = zcl_lnt_st_combi_module=>star_prio( i_first = t37 ).
    t35 = t36.
    DATA t63 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t63.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t64.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA(t70) = zlnt_runtime_desc_78196487750d=>zlnt_member_d114_8c1c765e2687.
    CLEAR t69.
    IF t70 IS BOUND.
      CREATE OBJECT t69.
      t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t69->cval = t70.
    ENDIF.
    t68 = t69.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA(t73) = zlnt_runtime_desc_78196487750d=>zlnt_member_d224_4e54f441ad62.
    CLEAR t72.
    IF t73 IS BOUND.
      CREATE OBJECT t72.
      t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t72->cval = t73.
    ENDIF.
    t71 = t72.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t75.
    CREATE OBJECT t75.
    t74 = t75.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t76.
    DATA(t77) = t68.
    DATA(t78) = t71.
    DATA(t79) = t74.
    t76 = zcl_lnt_st_combi_module=>alt_prio( i_first = t77 i_second = t78 i_rest = t79 ).
    t67 = t76.
    CLEAR t66.
    IF t67 IS BOUND.
      DATA t80 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t80.
      DATA t81 TYPE REF TO object.
      CLEAR t81.
      CLEAR t80.
      t81 = t67.
      TRY.
          t66 ?= t81.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t66 IS NOT BOUND.
        TRY.
            t80 ?= t67.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t80 IS BOUND.
          t66 = t80->source( ).
        ENDIF.
        IF t66 IS NOT BOUND.
          CREATE OBJECT t66.
          t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t66->oval = t67.
        ENDIF.
      ENDIF.
    ENDIF.
    t65 = t66.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    DATA(t84) = zlnt_runtime_desc_78196487750d=>zlnt_member_d92_9ef7e4968cfbeb.
    CLEAR t83.
    IF t84 IS BOUND.
      CREATE OBJECT t83.
      t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t83->cval = t84.
    ENDIF.
    t82 = t83.
    DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t85.
    DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t86.
    CREATE OBJECT t86.
    t85 = t86.
    DATA(t87) = t85.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA(t89) = zlnt_runtime_desc_78196487750d=>zlnt_member_d167_3c4543cf3a18.
    CLEAR t88.
    IF t89 IS BOUND.
      CREATE OBJECT t88.
      t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t88->cval = t89.
    ENDIF.
    t87->load( ).
    APPEND t88 TO t87->items.
    t87->save( ).
    DATA t90 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t90.
    DATA(t91) = t65.
    DATA(t92) = t82.
    DATA(t93) = t85.
    t90 = zcl_lnt_st_combi_module=>seq( i_first = t91 i_second = t92 i_rest = t93 ).
    t64 = t90.
    t63 = t64.
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t94.
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t95.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA(t98) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
    CLEAR t97.
    IF t98 IS BOUND.
      CREATE OBJECT t97.
      t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t97->cval = t98.
    ENDIF.
    t96 = t97.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t101.
    DATA(t102) = zlnt_runtime_desc_78196487750d=>zlnt_member_d35_f5313aa9b79ded.
    t101 = zcl_lnt_st_combi_module=>tok( i_t = t102 ).
    CLEAR t100.
    IF t101 IS BOUND.
      DATA t103 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t103.
      DATA t104 TYPE REF TO object.
      CLEAR t104.
      CLEAR t103.
      t104 = t101.
      TRY.
          t100 ?= t104.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t100 IS NOT BOUND.
        TRY.
            t103 ?= t101.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t103 IS BOUND.
          t100 = t103->source( ).
        ENDIF.
        IF t100 IS NOT BOUND.
          CREATE OBJECT t100.
          t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t100->oval = t101.
        ENDIF.
      ENDIF.
    ENDIF.
    t99 = t100.
    DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t105.
    DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t106.
    CREATE OBJECT t106.
    t105 = t106.
    DATA(t107) = t105.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t108.
    DATA(t109) = zlnt_runtime_desc_78196487750d=>zlnt_member_d99_35801e5718dec9.
    CLEAR t108.
    IF t109 IS BOUND.
      CREATE OBJECT t108.
      t108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t108->cval = t109.
    ENDIF.
    t107->load( ).
    APPEND t108 TO t107->items.
    t107->save( ).
    DATA t110 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t110.
    DATA(t111) = t96.
    DATA(t112) = t99.
    DATA(t113) = t105.
    t110 = zcl_lnt_st_combi_module=>seq( i_first = t111 i_second = t112 i_rest = t113 ).
    t95 = t110.
    t94 = t95.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t114.
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t115.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA(t118) = t63.
    CLEAR t117.
    IF t118 IS BOUND.
      DATA t119 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t119.
      DATA t120 TYPE REF TO object.
      CLEAR t120.
      CLEAR t119.
      t120 = t118.
      TRY.
          t117 ?= t120.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t117 IS NOT BOUND.
        TRY.
            t119 ?= t118.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t119 IS BOUND.
          t117 = t119->source( ).
        ENDIF.
        IF t117 IS NOT BOUND.
          CREATE OBJECT t117.
          t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t117->oval = t118.
        ENDIF.
      ENDIF.
    ENDIF.
    t116 = t117.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    DATA(t123) = t94.
    CLEAR t122.
    IF t123 IS BOUND.
      DATA t124 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t124.
      DATA t125 TYPE REF TO object.
      CLEAR t125.
      CLEAR t124.
      t125 = t123.
      TRY.
          t122 ?= t125.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t122 IS NOT BOUND.
        TRY.
            t124 ?= t123.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t124 IS BOUND.
          t122 = t124->source( ).
        ENDIF.
        IF t122 IS NOT BOUND.
          CREATE OBJECT t122.
          t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t122->oval = t123.
        ENDIF.
      ENDIF.
    ENDIF.
    t121 = t122.
    DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t126.
    DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t127.
    CREATE OBJECT t127.
    t126 = t127.
    DATA(t128) = t126.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t129.
    DATA(t130) = zlnt_runtime_desc_78196487750d=>zlnt_member_d180_085bc4e4d844.
    CLEAR t129.
    IF t130 IS BOUND.
      CREATE OBJECT t129.
      t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t129->cval = t130.
    ENDIF.
    t128->load( ).
    APPEND t129 TO t128->items.
    t128->save( ).
    DATA(t131) = t126.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA(t133) = zlnt_runtime_desc_78196487750d=>zlnt_member_d181_df35d03977d7.
    CLEAR t132.
    IF t133 IS BOUND.
      CREATE OBJECT t132.
      t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t132->cval = t133.
    ENDIF.
    t131->load( ).
    APPEND t132 TO t131->items.
    t131->save( ).
    DATA t134 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t134.
    DATA(t135) = t116.
    DATA(t136) = t121.
    DATA(t137) = t126.
    t134 = zcl_lnt_st_combi_module=>alt_prio( i_first = t135 i_second = t136 i_rest = t137 ).
    t115 = t134.
    t114 = t115.
    DATA t138 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t138.
    DATA t139 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t139.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t140.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t141.
    DATA t142 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    DATA(t144) = zlnt_runtime_desc_78196487750d=>zlnt_member_d103_04a0f92dd4f1.
    CLEAR t143.
    IF t144 IS BOUND.
      CREATE OBJECT t143.
      t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t143->cval = t144.
    ENDIF.
    t142 = zcl_lnt_st_combi_module=>opt_prio( i_first = t143 ).
    CLEAR t141.
    IF t142 IS BOUND.
      DATA t145 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t145.
      DATA t146 TYPE REF TO object.
      CLEAR t146.
      CLEAR t145.
      t146 = t142.
      TRY.
          t141 ?= t146.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t141 IS NOT BOUND.
        TRY.
            t145 ?= t142.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t145 IS BOUND.
          t141 = t145->source( ).
        ENDIF.
        IF t141 IS NOT BOUND.
          CREATE OBJECT t141.
          t141->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t141->oval = t142.
        ENDIF.
      ENDIF.
    ENDIF.
    t140 = t141.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t147.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    DATA t149 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t149.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t150.
    DATA(t151) = zlnt_runtime_desc_78196487750d=>zlnt_member_d104_b395e4e66ee3.
    CLEAR t150.
    IF t151 IS BOUND.
      CREATE OBJECT t150.
      t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t150->cval = t151.
    ENDIF.
    t149 = zcl_lnt_st_combi_module=>opt_prio( i_first = t150 ).
    CLEAR t148.
    IF t149 IS BOUND.
      DATA t152 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t152.
      DATA t153 TYPE REF TO object.
      CLEAR t153.
      CLEAR t152.
      t153 = t149.
      TRY.
          t148 ?= t153.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t148 IS NOT BOUND.
        TRY.
            t152 ?= t149.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t152 IS BOUND.
          t148 = t152->source( ).
        ENDIF.
        IF t148 IS NOT BOUND.
          CREATE OBJECT t148.
          t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t148->oval = t149.
        ENDIF.
      ENDIF.
    ENDIF.
    t147 = t148.
    DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t154.
    DATA t155 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t155.
    CREATE OBJECT t155.
    t154 = t155.
    DATA t156 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t156.
    DATA(t157) = t140.
    DATA(t158) = t147.
    DATA(t159) = t154.
    t156 = zcl_lnt_st_combi_module=>seq( i_first = t157 i_second = t158 i_rest = t159 ).
    t139 = t156.
    t138 = t139.
    DATA t160 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t160.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t161.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t162.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t163.
    DATA(t164) = zlnt_runtime_desc_78196487750d=>zlnt_member_d102_cb65ad2c1bba.
    CLEAR t163.
    IF t164 IS BOUND.
      CREATE OBJECT t163.
      t163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t163->cval = t164.
    ENDIF.
    t162 = t163.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t165.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t166.
    DATA(t167) = t138.
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
    DATA t170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t170.
    DATA t171 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t171.
    CREATE OBJECT t171.
    t170 = t171.
    DATA t172 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t172.
    DATA(t173) = t162.
    DATA(t174) = t165.
    DATA(t175) = t170.
    t172 = zcl_lnt_st_combi_module=>alt_prio( i_first = t173 i_second = t174 i_rest = t175 ).
    t161 = t172.
    t160 = t161.
    DATA t176 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t176.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t177.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t178.
    DATA(t179) = t114.
    CLEAR t178.
    IF t179 IS BOUND.
      DATA t180 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t180.
      DATA t181 TYPE REF TO object.
      CLEAR t181.
      CLEAR t180.
      t181 = t179.
      TRY.
          t178 ?= t181.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t178 IS NOT BOUND.
        TRY.
            t180 ?= t179.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t180 IS BOUND.
          t178 = t180->source( ).
        ENDIF.
        IF t178 IS NOT BOUND.
          CREATE OBJECT t178.
          t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t178->oval = t179.
        ENDIF.
      ENDIF.
    ENDIF.
    t177 = t178.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t182.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    DATA(t184) = t35.
    CLEAR t183.
    IF t184 IS BOUND.
      DATA t185 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t185.
      DATA t186 TYPE REF TO object.
      CLEAR t186.
      CLEAR t185.
      t186 = t184.
      TRY.
          t183 ?= t186.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t183 IS NOT BOUND.
        TRY.
            t185 ?= t184.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t185 IS BOUND.
          t183 = t185->source( ).
        ENDIF.
        IF t183 IS NOT BOUND.
          CREATE OBJECT t183.
          t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t183->oval = t184.
        ENDIF.
      ENDIF.
    ENDIF.
    t182 = t183.
    DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t187.
    DATA t188 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t188.
    CREATE OBJECT t188.
    t187 = t188.
    DATA(t189) = t187.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t190.
    DATA(t191) = t160.
    CLEAR t190.
    IF t191 IS BOUND.
      DATA t192 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t192.
      DATA t193 TYPE REF TO object.
      CLEAR t193.
      CLEAR t192.
      t193 = t191.
      TRY.
          t190 ?= t193.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t190 IS NOT BOUND.
        TRY.
            t192 ?= t191.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t192 IS BOUND.
          t190 = t192->source( ).
        ENDIF.
        IF t190 IS NOT BOUND.
          CREATE OBJECT t190.
          t190->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t190->oval = t191.
        ENDIF.
      ENDIF.
    ENDIF.
    t189->load( ).
    APPEND t190 TO t189->items.
    t189->save( ).
    DATA t194 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t194.
    DATA(t195) = t177.
    DATA(t196) = t182.
    DATA(t197) = t187.
    t194 = zcl_lnt_st_combi_module=>seq( i_first = t195 i_second = t196 i_rest = t197 ).
    t176 = t194.
    result = t176.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d255_88331b4186a0.
  ENDMETHOD.
ENDCLASS.
