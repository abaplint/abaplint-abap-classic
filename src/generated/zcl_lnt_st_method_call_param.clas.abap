* TS: src/abap/2_statements/expressions/method_call_param.ts:7:1 MethodCallParam
CLASS zcl_lnt_st_method_call_param DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_method_call_param IMPLEMENTATION.
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
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a.
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
    DATA(t11) = t9.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470.
    CLEAR t12.
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t12->cval = t13.
    ENDIF.
    t11->load( ).
    APPEND t12 TO t11->items.
    t11->save( ).
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t14.
    DATA(t15) = t3.
    DATA(t16) = t6.
    DATA(t17) = t9.
    t14 = zcl_lnt_st_combi_module=>alt( i_first = t15 i_second = t16 i_rest = t17 ).
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
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de.
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
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t28.
    DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t28 = zcl_lnt_st_combi_module=>tok( i_t = t29 ).
    CLEAR t27.
    IF t28 IS BOUND.
      DATA t30 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t30.
      DATA t31 TYPE REF TO object.
      CLEAR t31.
      CLEAR t30.
      t31 = t28.
      TRY.
          t27 ?= t31.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t27 IS NOT BOUND.
        TRY.
            t30 ?= t28.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t30 IS BOUND.
          t27 = t30->source( ).
        ENDIF.
        IF t27 IS NOT BOUND.
          CREATE OBJECT t27.
          t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t27->oval = t28.
        ENDIF.
      ENDIF.
    ENDIF.
    t26 = t27.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t33.
    CREATE OBJECT t33.
    t32 = t33.
    DATA(t34) = t32.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t36.
    DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d29_f2ed5131cb71b6.
    t36 = zcl_lnt_st_combi_module=>tok( i_t = t37 ).
    CLEAR t35.
    IF t36 IS BOUND.
      DATA t38 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t38.
      DATA t39 TYPE REF TO object.
      CLEAR t39.
      CLEAR t38.
      t39 = t36.
      TRY.
          t35 ?= t39.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t35 IS NOT BOUND.
        TRY.
            t38 ?= t36.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t38 IS BOUND.
          t35 = t38->source( ).
        ENDIF.
        IF t35 IS NOT BOUND.
          CREATE OBJECT t35.
          t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t35->oval = t36.
        ENDIF.
      ENDIF.
    ENDIF.
    t34->load( ).
    APPEND t35 TO t34->items.
    t34->save( ).
    DATA(t40) = t32.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t42.
    DATA(t43) = zlnt_runtime_desc_78196487750d=>zlnt_member_d30_2f4abb22e3612e.
    t42 = zcl_lnt_st_combi_module=>tok( i_t = t43 ).
    CLEAR t41.
    IF t42 IS BOUND.
      DATA t44 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t44.
      DATA t45 TYPE REF TO object.
      CLEAR t45.
      CLEAR t44.
      t45 = t42.
      TRY.
          t41 ?= t45.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t41 IS NOT BOUND.
        TRY.
            t44 ?= t42.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t44 IS BOUND.
          t41 = t44->source( ).
        ENDIF.
        IF t41 IS NOT BOUND.
          CREATE OBJECT t41.
          t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t41->oval = t42.
        ENDIF.
      ENDIF.
    ENDIF.
    t40->load( ).
    APPEND t41 TO t40->items.
    t40->save( ).
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t46.
    DATA(t47) = t20.
    DATA(t48) = t26.
    DATA(t49) = t32.
    t46 = zcl_lnt_st_combi_module=>alt_prio( i_first = t47 i_second = t48 i_rest = t49 ).
    t19 = t46.
    t18 = t19.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t50.
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t54.
    DATA(t55) = zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de.
    t54 = zcl_lnt_st_combi_module=>tok( i_t = t55 ).
    CLEAR t53.
    IF t54 IS BOUND.
      DATA t56 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t56.
      DATA t57 TYPE REF TO object.
      CLEAR t57.
      CLEAR t56.
      t57 = t54.
      TRY.
          t53 ?= t57.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t53 IS NOT BOUND.
        TRY.
            t56 ?= t54.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t56 IS BOUND.
          t53 = t56->source( ).
        ENDIF.
        IF t53 IS NOT BOUND.
          CREATE OBJECT t53.
          t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t53->oval = t54.
        ENDIF.
      ENDIF.
    ENDIF.
    t52 = t53.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t60.
    DATA(t61) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t60 = zcl_lnt_st_combi_module=>tok( i_t = t61 ).
    CLEAR t59.
    IF t60 IS BOUND.
      DATA t62 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t62.
      DATA t63 TYPE REF TO object.
      CLEAR t63.
      CLEAR t62.
      t63 = t60.
      TRY.
          t59 ?= t63.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t59 IS NOT BOUND.
        TRY.
            t62 ?= t60.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t62 IS BOUND.
          t59 = t62->source( ).
        ENDIF.
        IF t59 IS NOT BOUND.
          CREATE OBJECT t59.
          t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t59->oval = t60.
        ENDIF.
      ENDIF.
    ENDIF.
    t58 = t59.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t64.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t65.
    CREATE OBJECT t65.
    t64 = t65.
    DATA t66 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t66.
    DATA(t67) = t52.
    DATA(t68) = t58.
    DATA(t69) = t64.
    t66 = zcl_lnt_st_combi_module=>alt_prio( i_first = t67 i_second = t68 i_rest = t69 ).
    t51 = t66.
    t50 = t51.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t70.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t77.
    DATA(t78) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t77 = zcl_lnt_st_combi_module=>tok( i_t = t78 ).
    CLEAR t76.
    IF t77 IS BOUND.
      DATA t79 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t79.
      DATA t80 TYPE REF TO object.
      CLEAR t80.
      CLEAR t79.
      t80 = t77.
      TRY.
          t76 ?= t80.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t76 IS NOT BOUND.
        TRY.
            t79 ?= t77.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t79 IS BOUND.
          t76 = t79->source( ).
        ENDIF.
        IF t76 IS NOT BOUND.
          CREATE OBJECT t76.
          t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t76->oval = t77.
        ENDIF.
      ENDIF.
    ENDIF.
    t75 = t76.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA(t83) = t1.
    CLEAR t82.
    IF t83 IS BOUND.
      DATA t84 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t84.
      DATA t85 TYPE REF TO object.
      CLEAR t85.
      CLEAR t84.
      t85 = t83.
      TRY.
          t82 ?= t85.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t82 IS NOT BOUND.
        TRY.
            t84 ?= t83.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t84 IS BOUND.
          t82 = t84->source( ).
        ENDIF.
        IF t82 IS NOT BOUND.
          CREATE OBJECT t82.
          t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t82->oval = t83.
        ENDIF.
      ENDIF.
    ENDIF.
    t81 = t82.
    DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t87.
    CREATE OBJECT t87.
    t86 = t87.
    DATA(t88) = t86.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA(t90) = t18.
    CLEAR t89.
    IF t90 IS BOUND.
      DATA t91 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t91.
      DATA t92 TYPE REF TO object.
      CLEAR t92.
      CLEAR t91.
      t92 = t90.
      TRY.
          t89 ?= t92.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t89 IS NOT BOUND.
        TRY.
            t91 ?= t90.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t91 IS BOUND.
          t89 = t91->source( ).
        ENDIF.
        IF t89 IS NOT BOUND.
          CREATE OBJECT t89.
          t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t89->oval = t90.
        ENDIF.
      ENDIF.
    ENDIF.
    t88->load( ).
    APPEND t89 TO t88->items.
    t88->save( ).
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t93.
    DATA(t94) = t75.
    DATA(t95) = t81.
    DATA(t96) = t86.
    t93 = zcl_lnt_st_combi_module=>seq( i_first = t94 i_second = t95 i_rest = t96 ).
    t74 = t93.
    CLEAR t73.
    IF t74 IS BOUND.
      DATA t97 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t97.
      DATA t98 TYPE REF TO object.
      CLEAR t98.
      CLEAR t97.
      t98 = t74.
      TRY.
          t73 ?= t98.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t73 IS NOT BOUND.
        TRY.
            t97 ?= t74.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t97 IS BOUND.
          t73 = t97->source( ).
        ENDIF.
        IF t73 IS NOT BOUND.
          CREATE OBJECT t73.
          t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t73->oval = t74.
        ENDIF.
      ENDIF.
    ENDIF.
    t72 = t73.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t104.
    DATA(t105) = zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4.
    t104 = zcl_lnt_st_combi_module=>tok( i_t = t105 ).
    CLEAR t103.
    IF t104 IS BOUND.
      DATA t106 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t106.
      DATA t107 TYPE REF TO object.
      CLEAR t107.
      CLEAR t106.
      t107 = t104.
      TRY.
          t103 ?= t107.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t103 IS NOT BOUND.
        TRY.
            t106 ?= t104.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t106 IS BOUND.
          t103 = t106->source( ).
        ENDIF.
        IF t103 IS NOT BOUND.
          CREATE OBJECT t103.
          t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t103->oval = t104.
        ENDIF.
      ENDIF.
    ENDIF.
    t102 = t103.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t108.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA(t110) = t1.
    CLEAR t109.
    IF t110 IS BOUND.
      DATA t111 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t111.
      DATA t112 TYPE REF TO object.
      CLEAR t112.
      CLEAR t111.
      t112 = t110.
      TRY.
          t109 ?= t112.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t109 IS NOT BOUND.
        TRY.
            t111 ?= t110.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t111 IS BOUND.
          t109 = t111->source( ).
        ENDIF.
        IF t109 IS NOT BOUND.
          CREATE OBJECT t109.
          t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t109->oval = t110.
        ENDIF.
      ENDIF.
    ENDIF.
    t108 = t109.
    DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t113.
    DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t114.
    CREATE OBJECT t114.
    t113 = t114.
    DATA(t115) = t113.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA(t117) = t50.
    CLEAR t116.
    IF t117 IS BOUND.
      DATA t118 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t118.
      DATA t119 TYPE REF TO object.
      CLEAR t119.
      CLEAR t118.
      t119 = t117.
      TRY.
          t116 ?= t119.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t116 IS NOT BOUND.
        TRY.
            t118 ?= t117.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t118 IS BOUND.
          t116 = t118->source( ).
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
    DATA t120 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t120.
    DATA(t121) = t102.
    DATA(t122) = t108.
    DATA(t123) = t113.
    t120 = zcl_lnt_st_combi_module=>seq( i_first = t121 i_second = t122 i_rest = t123 ).
    t101 = t120.
    CLEAR t100.
    IF t101 IS BOUND.
      DATA t124 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t124.
      DATA t125 TYPE REF TO object.
      CLEAR t125.
      CLEAR t124.
      t125 = t101.
      TRY.
          t100 ?= t125.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t100 IS NOT BOUND.
        TRY.
            t124 ?= t101.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t124 IS BOUND.
          t100 = t124->source( ).
        ENDIF.
        IF t100 IS NOT BOUND.
          CREATE OBJECT t100.
          t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t100->oval = t101.
        ENDIF.
      ENDIF.
    ENDIF.
    t99 = t100.
    DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t126.
    DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t127.
    CREATE OBJECT t127.
    t126 = t127.
    DATA(t128) = t126.
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
    DATA(t134) = zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4.
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
    DATA(t139) = zlnt_runtime_desc_78196487750d=>zlnt_member_d140_ecb7e995244f.
    CLEAR t138.
    IF t139 IS BOUND.
      CREATE OBJECT t138.
      t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t138->cval = t139.
    ENDIF.
    t137 = t138.
    DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t140.
    DATA t141 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t141.
    CREATE OBJECT t141.
    t140 = t141.
    DATA(t142) = t140.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    DATA t144 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t144.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t145.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA t147 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t147.
    DATA(t148) = zlnt_runtime_desc_78196487750d=>zlnt_member_d29_f2ed5131cb71b6.
    t147 = zcl_lnt_st_combi_module=>tok( i_t = t148 ).
    CLEAR t146.
    IF t147 IS BOUND.
      DATA t149 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t149.
      DATA t150 TYPE REF TO object.
      CLEAR t150.
      CLEAR t149.
      t150 = t147.
      TRY.
          t146 ?= t150.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t146 IS NOT BOUND.
        TRY.
            t149 ?= t147.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t149 IS BOUND.
          t146 = t149->source( ).
        ENDIF.
        IF t146 IS NOT BOUND.
          CREATE OBJECT t146.
          t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t146->oval = t147.
        ENDIF.
      ENDIF.
    ENDIF.
    t145 = t146.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t151.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t152.
    DATA t153 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t153.
    DATA(t154) = zlnt_runtime_desc_78196487750d=>zlnt_member_d30_2f4abb22e3612e.
    t153 = zcl_lnt_st_combi_module=>tok( i_t = t154 ).
    CLEAR t152.
    IF t153 IS BOUND.
      DATA t155 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t155.
      DATA t156 TYPE REF TO object.
      CLEAR t156.
      CLEAR t155.
      t156 = t153.
      TRY.
          t152 ?= t156.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t152 IS NOT BOUND.
        TRY.
            t155 ?= t153.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t155 IS BOUND.
          t152 = t155->source( ).
        ENDIF.
        IF t152 IS NOT BOUND.
          CREATE OBJECT t152.
          t152->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t152->oval = t153.
        ENDIF.
      ENDIF.
    ENDIF.
    t151 = t152.
    DATA t157 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t157.
    DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t158.
    CREATE OBJECT t158.
    t157 = t158.
    DATA t159 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t159.
    DATA(t160) = t145.
    DATA(t161) = t151.
    DATA(t162) = t157.
    t159 = zcl_lnt_st_combi_module=>alt_prio( i_first = t160 i_second = t161 i_rest = t162 ).
    t144 = t159.
    CLEAR t143.
    IF t144 IS BOUND.
      DATA t163 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t163.
      DATA t164 TYPE REF TO object.
      CLEAR t164.
      CLEAR t163.
      t164 = t144.
      TRY.
          t143 ?= t164.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t143 IS NOT BOUND.
        TRY.
            t163 ?= t144.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t163 IS BOUND.
          t143 = t163->source( ).
        ENDIF.
        IF t143 IS NOT BOUND.
          CREATE OBJECT t143.
          t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t143->oval = t144.
        ENDIF.
      ENDIF.
    ENDIF.
    t142->load( ).
    APPEND t143 TO t142->items.
    t142->save( ).
    DATA t165 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t165.
    DATA(t166) = t131.
    DATA(t167) = t137.
    DATA(t168) = t140.
    t165 = zcl_lnt_st_combi_module=>seq( i_first = t166 i_second = t167 i_rest = t168 ).
    t130 = t165.
    CLEAR t129.
    IF t130 IS BOUND.
      DATA t169 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t169.
      DATA t170 TYPE REF TO object.
      CLEAR t170.
      CLEAR t169.
      t170 = t130.
      TRY.
          t129 ?= t170.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t129 IS NOT BOUND.
        TRY.
            t169 ?= t130.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t169 IS BOUND.
          t129 = t169->source( ).
        ENDIF.
        IF t129 IS NOT BOUND.
          CREATE OBJECT t129.
          t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t129->oval = t130.
        ENDIF.
      ENDIF.
    ENDIF.
    t128->load( ).
    APPEND t129 TO t128->items.
    t128->save( ).
    DATA t171 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t171.
    DATA(t172) = t72.
    DATA(t173) = t99.
    DATA(t174) = t126.
    t171 = zcl_lnt_st_combi_module=>alt_prio( i_first = t172 i_second = t173 i_rest = t174 ).
    t71 = t171.
    t70 = t71.
    DATA(t175) = t70.
    result = t175.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d220_2984eb665ddb.
  ENDMETHOD.
ENDCLASS.
