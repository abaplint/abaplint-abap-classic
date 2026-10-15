* TS: src/abap/2_statements/statements/perform.ts:9:1 Perform
CLASS zcl_lnt_st_perform DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_perform IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = |LEVEL|.
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
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA(t22) = |ON COMMIT|.
    CLEAR t21.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = t22.
    t20 = t21.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA(t27) = t1.
    CLEAR t26.
    IF t27 IS BOUND.
      DATA t28 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t28.
      DATA t29 TYPE REF TO object.
      CLEAR t29.
      CLEAR t28.
      t29 = t27.
      TRY.
          t26 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t26 IS NOT BOUND.
        TRY.
            t28 ?= t27.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t28 IS BOUND.
          t26 = t28->source( ).
        ENDIF.
        IF t26 IS NOT BOUND.
          CREATE OBJECT t26.
          t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t26->oval = t27.
        ENDIF.
      ENDIF.
    ENDIF.
    t25 = zcl_lnt_st_combi_module=>opt( i_first = t26 ).
    CLEAR t24.
    IF t25 IS BOUND.
      DATA t30 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t30.
      DATA t31 TYPE REF TO object.
      CLEAR t31.
      CLEAR t30.
      t31 = t25.
      TRY.
          t24 ?= t31.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t24 IS NOT BOUND.
        TRY.
            t30 ?= t25.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t30 IS BOUND.
          t24 = t30->source( ).
        ENDIF.
        IF t24 IS NOT BOUND.
          CREATE OBJECT t24.
          t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t24->oval = t25.
        ENDIF.
      ENDIF.
    ENDIF.
    t23 = t24.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t33.
    CREATE OBJECT t33.
    t32 = t33.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t34.
    DATA(t35) = t20.
    DATA(t36) = t23.
    DATA(t37) = t32.
    t34 = zcl_lnt_st_combi_module=>seq( i_first = t35 i_second = t36 i_rest = t37 ).
    t19 = t34.
    CLEAR t18.
    IF t19 IS BOUND.
      DATA t38 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t38.
      DATA t39 TYPE REF TO object.
      CLEAR t39.
      CLEAR t38.
      t39 = t19.
      TRY.
          t18 ?= t39.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t18 IS NOT BOUND.
        TRY.
            t38 ?= t19.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t38 IS BOUND.
          t18 = t38->source( ).
        ENDIF.
        IF t18 IS NOT BOUND.
          CREATE OBJECT t18.
          t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t18->oval = t19.
        ENDIF.
      ENDIF.
    ENDIF.
    t17 = t18.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA(t42) = |ON ROLLBACK|.
    CLEAR t41.
    CREATE OBJECT t41.
    t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t41->sval = t42.
    t40 = t41.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t44.
    CREATE OBJECT t44.
    t43 = t44.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t45.
    DATA(t46) = t17.
    DATA(t47) = t40.
    DATA(t48) = t43.
    t45 = zcl_lnt_st_combi_module=>alt( i_first = t46 i_second = t47 i_rest = t48 ).
    t16 = t45.
    t15 = t16.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t49.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t50.
    DATA(t51) = |Cloud|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    DATA(t56) = zlnt_runtime_desc_78196487750d=>zlnt_member_d185_9bfafbfe880c.
    CLEAR t55.
    IF t56 IS BOUND.
      CREATE OBJECT t55.
      t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t55->cval = t56.
    ENDIF.
    t54 = t55.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t59.
    DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4.
    t59 = zcl_lnt_st_combi_module=>tok( i_t = t60 ).
    CLEAR t58.
    IF t59 IS BOUND.
      DATA t61 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t61.
      DATA t62 TYPE REF TO object.
      CLEAR t62.
      CLEAR t61.
      t62 = t59.
      TRY.
          t58 ?= t62.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t58 IS NOT BOUND.
        TRY.
            t61 ?= t59.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t61 IS BOUND.
          t58 = t61->source( ).
        ENDIF.
        IF t58 IS NOT BOUND.
          CREATE OBJECT t58.
          t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t58->oval = t59.
        ENDIF.
      ENDIF.
    ENDIF.
    t57 = t58.
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t64.
    CREATE OBJECT t64.
    t63 = t64.
    DATA(t65) = t63.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA(t67) = zlnt_runtime_desc_78196487750d=>zlnt_member_d85_7546e7dce3c106.
    CLEAR t66.
    IF t67 IS BOUND.
      CREATE OBJECT t66.
      t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t66->cval = t67.
    ENDIF.
    t65->load( ).
    APPEND t66 TO t65->items.
    t65->save( ).
    DATA(t68) = t63.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t70.
    DATA(t71) = zlnt_runtime_desc_78196487750d=>zlnt_member_d30_2f4abb22e3612e.
    t70 = zcl_lnt_st_combi_module=>tok( i_t = t71 ).
    CLEAR t69.
    IF t70 IS BOUND.
      DATA t72 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t72.
      DATA t73 TYPE REF TO object.
      CLEAR t73.
      CLEAR t72.
      t73 = t70.
      TRY.
          t69 ?= t73.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t69 IS NOT BOUND.
        TRY.
            t72 ?= t70.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t72 IS BOUND.
          t69 = t72->source( ).
        ENDIF.
        IF t69 IS NOT BOUND.
          CREATE OBJECT t69.
          t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t69->oval = t70.
        ENDIF.
      ENDIF.
    ENDIF.
    t68->load( ).
    APPEND t69 TO t68->items.
    t68->save( ).
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t74.
    DATA(t75) = t54.
    DATA(t76) = t57.
    DATA(t77) = t63.
    t74 = zcl_lnt_st_combi_module=>seq( i_first = t75 i_second = t76 i_rest = t77 ).
    t53 = t74.
    CLEAR t52.
    IF t53 IS BOUND.
      DATA t78 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t78.
      DATA t79 TYPE REF TO object.
      CLEAR t79.
      CLEAR t78.
      t79 = t53.
      TRY.
          t52 ?= t79.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t52 IS NOT BOUND.
        TRY.
            t78 ?= t53.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t78 IS BOUND.
          t52 = t78->source( ).
        ENDIF.
        IF t52 IS NOT BOUND.
          CREATE OBJECT t52.
          t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t52->oval = t53.
        ENDIF.
      ENDIF.
    ENDIF.
    t50 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t51 i_first = t52 ).
    t49 = t50.
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t80.
    DATA t81 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t81.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    DATA(t84) = |IN PROGRAM|.
    CLEAR t83.
    CREATE OBJECT t83.
    t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t83->sval = t84.
    t82 = t83.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA(t92) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    CLEAR t91.
    IF t92 IS BOUND.
      CREATE OBJECT t91.
      t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t91->cval = t92.
    ENDIF.
    t90 = t91.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA(t95) = zlnt_runtime_desc_78196487750d=>zlnt_member_d85_7546e7dce3c106.
    CLEAR t94.
    IF t95 IS BOUND.
      CREATE OBJECT t94.
      t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t94->cval = t95.
    ENDIF.
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
    t98 = zcl_lnt_st_combi_module=>alt( i_first = t99 i_second = t100 i_rest = t101 ).
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
    t87 = zcl_lnt_st_combi_module=>opt( i_first = t88 ).
    CLEAR t86.
    IF t87 IS BOUND.
      DATA t104 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t104.
      DATA t105 TYPE REF TO object.
      CLEAR t105.
      CLEAR t104.
      t105 = t87.
      TRY.
          t86 ?= t105.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t86 IS NOT BOUND.
        TRY.
            t104 ?= t87.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t104 IS BOUND.
          t86 = t104->source( ).
        ENDIF.
        IF t86 IS NOT BOUND.
          CREATE OBJECT t86.
          t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t86->oval = t87.
        ENDIF.
      ENDIF.
    ENDIF.
    t85 = t86.
    DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t107.
    CREATE OBJECT t107.
    t106 = t107.
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t108.
    DATA(t109) = t82.
    DATA(t110) = t85.
    DATA(t111) = t106.
    t108 = zcl_lnt_st_combi_module=>seq( i_first = t109 i_second = t110 i_rest = t111 ).
    t81 = t108.
    t80 = t81.
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t112.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t113.
    DATA(t114) = |IF FOUND|.
    t113 = zcl_lnt_st_combi_module=>str( i_s = t114 ).
    t112 = t113.
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t115.
    DATA t116 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t116.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t119.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    DATA(t122) = zlnt_runtime_desc_78196487750d=>zlnt_member_d185_9bfafbfe880c.
    CLEAR t121.
    IF t122 IS BOUND.
      CREATE OBJECT t121.
      t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t121->cval = t122.
    ENDIF.
    t120 = t121.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t123.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    DATA(t125) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    CLEAR t124.
    IF t125 IS BOUND.
      CREATE OBJECT t124.
      t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t124->cval = t125.
    ENDIF.
    t123 = t124.
    DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t126.
    DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t127.
    CREATE OBJECT t127.
    t126 = t127.
    DATA t128 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t128.
    DATA(t129) = t120.
    DATA(t130) = t123.
    DATA(t131) = t126.
    t128 = zcl_lnt_st_combi_module=>alt( i_first = t129 i_second = t130 i_rest = t131 ).
    t119 = t128.
    CLEAR t118.
    IF t119 IS BOUND.
      DATA t132 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t132.
      DATA t133 TYPE REF TO object.
      CLEAR t133.
      CLEAR t132.
      t133 = t119.
      TRY.
          t118 ?= t133.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t118 IS NOT BOUND.
        TRY.
            t132 ?= t119.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t132 IS BOUND.
          t118 = t132->source( ).
        ENDIF.
        IF t118 IS NOT BOUND.
          CREATE OBJECT t118.
          t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t118->oval = t119.
        ENDIF.
      ENDIF.
    ENDIF.
    t117 = t118.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t135.
    DATA t136 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t136.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t137.
    DATA t138 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t138.
    DATA(t139) = |Cloud|.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t140.
    DATA(t141) = t80.
    CLEAR t140.
    IF t141 IS BOUND.
      DATA t142 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t142.
      DATA t143 TYPE REF TO object.
      CLEAR t143.
      CLEAR t142.
      t143 = t141.
      TRY.
          t140 ?= t143.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t140 IS NOT BOUND.
        TRY.
            t142 ?= t141.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t142 IS BOUND.
          t140 = t142->source( ).
        ENDIF.
        IF t140 IS NOT BOUND.
          CREATE OBJECT t140.
          t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t140->oval = t141.
        ENDIF.
      ENDIF.
    ENDIF.
    t138 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t139 i_first = t140 ).
    CLEAR t137.
    IF t138 IS BOUND.
      DATA t144 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t144.
      DATA t145 TYPE REF TO object.
      CLEAR t145.
      CLEAR t144.
      t145 = t138.
      TRY.
          t137 ?= t145.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t137 IS NOT BOUND.
        TRY.
            t144 ?= t138.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t144 IS BOUND.
          t137 = t144->source( ).
        ENDIF.
        IF t137 IS NOT BOUND.
          CREATE OBJECT t137.
          t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t137->oval = t138.
        ENDIF.
      ENDIF.
    ENDIF.
    t136 = zcl_lnt_st_combi_module=>opt( i_first = t137 ).
    CLEAR t135.
    IF t136 IS BOUND.
      DATA t146 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t146.
      DATA t147 TYPE REF TO object.
      CLEAR t147.
      CLEAR t146.
      t147 = t136.
      TRY.
          t135 ?= t147.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t135 IS NOT BOUND.
        TRY.
            t146 ?= t136.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t146 IS BOUND.
          t135 = t146->source( ).
        ENDIF.
        IF t135 IS NOT BOUND.
          CREATE OBJECT t135.
          t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t135->oval = t136.
        ENDIF.
      ENDIF.
    ENDIF.
    t134 = t135.
    DATA t148 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t148.
    DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t149.
    CREATE OBJECT t149.
    t148 = t149.
    DATA t150 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t150.
    DATA(t151) = t117.
    DATA(t152) = t134.
    DATA(t153) = t148.
    t150 = zcl_lnt_st_combi_module=>seq( i_first = t151 i_second = t152 i_rest = t153 ).
    t116 = t150.
    t115 = t116.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t154.
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t155.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t156.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    DATA t158 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t158.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    DATA(t160) = t112.
    CLEAR t159.
    IF t160 IS BOUND.
      DATA t161 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t161.
      DATA t162 TYPE REF TO object.
      CLEAR t162.
      CLEAR t161.
      t162 = t160.
      TRY.
          t159 ?= t162.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t159 IS NOT BOUND.
        TRY.
            t161 ?= t160.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t161 IS BOUND.
          t159 = t161->source( ).
        ENDIF.
        IF t159 IS NOT BOUND.
          CREATE OBJECT t159.
          t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t159->oval = t160.
        ENDIF.
      ENDIF.
    ENDIF.
    t158 = zcl_lnt_st_combi_module=>opt( i_first = t159 ).
    CLEAR t157.
    IF t158 IS BOUND.
      DATA t163 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t163.
      DATA t164 TYPE REF TO object.
      CLEAR t164.
      CLEAR t163.
      t164 = t158.
      TRY.
          t157 ?= t164.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t157 IS NOT BOUND.
        TRY.
            t163 ?= t158.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t163 IS BOUND.
          t157 = t163->source( ).
        ENDIF.
        IF t157 IS NOT BOUND.
          CREATE OBJECT t157.
          t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t157->oval = t158.
        ENDIF.
      ENDIF.
    ENDIF.
    t156 = t157.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t165.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t166.
    DATA t167 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t167.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t168.
    DATA(t169) = zlnt_runtime_desc_78196487750d=>zlnt_member_d244_ecc6d4776dc2.
    CLEAR t168.
    IF t169 IS BOUND.
      CREATE OBJECT t168.
      t168->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t168->cval = t169.
    ENDIF.
    t167 = zcl_lnt_st_combi_module=>opt( i_first = t168 ).
    CLEAR t166.
    IF t167 IS BOUND.
      DATA t170 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t170.
      DATA t171 TYPE REF TO object.
      CLEAR t171.
      CLEAR t170.
      t171 = t167.
      TRY.
          t166 ?= t171.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t166 IS NOT BOUND.
        TRY.
            t170 ?= t167.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t170 IS BOUND.
          t166 = t170->source( ).
        ENDIF.
        IF t166 IS NOT BOUND.
          CREATE OBJECT t166.
          t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t166->oval = t167.
        ENDIF.
      ENDIF.
    ENDIF.
    t165 = t166.
    DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t172.
    DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t173.
    CREATE OBJECT t173.
    t172 = t173.
    DATA(t174) = t172.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t175.
    DATA t176 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t176.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t177.
    DATA(t178) = zlnt_runtime_desc_78196487750d=>zlnt_member_d245_8da77b7903ad.
    CLEAR t177.
    IF t178 IS BOUND.
      CREATE OBJECT t177.
      t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t177->cval = t178.
    ENDIF.
    t176 = zcl_lnt_st_combi_module=>opt( i_first = t177 ).
    CLEAR t175.
    IF t176 IS BOUND.
      DATA t179 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t179.
      DATA t180 TYPE REF TO object.
      CLEAR t180.
      CLEAR t179.
      t180 = t176.
      TRY.
          t175 ?= t180.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t175 IS NOT BOUND.
        TRY.
            t179 ?= t176.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t179 IS BOUND.
          t175 = t179->source( ).
        ENDIF.
        IF t175 IS NOT BOUND.
          CREATE OBJECT t175.
          t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t175->oval = t176.
        ENDIF.
      ENDIF.
    ENDIF.
    t174->load( ).
    APPEND t175 TO t174->items.
    t174->save( ).
    DATA(t181) = t172.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t182.
    DATA t183 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t183.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t184.
    DATA(t185) = zlnt_runtime_desc_78196487750d=>zlnt_member_d243_4c26f150237d.
    CLEAR t184.
    IF t185 IS BOUND.
      CREATE OBJECT t184.
      t184->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t184->cval = t185.
    ENDIF.
    t183 = zcl_lnt_st_combi_module=>opt( i_first = t184 ).
    CLEAR t182.
    IF t183 IS BOUND.
      DATA t186 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t186.
      DATA t187 TYPE REF TO object.
      CLEAR t187.
      CLEAR t186.
      t187 = t183.
      TRY.
          t182 ?= t187.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t182 IS NOT BOUND.
        TRY.
            t186 ?= t183.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t186 IS BOUND.
          t182 = t186->source( ).
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
    DATA(t188) = t172.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t189.
    DATA t190 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t190.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t191.
    DATA(t192) = t112.
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
    t190 = zcl_lnt_st_combi_module=>opt( i_first = t191 ).
    CLEAR t189.
    IF t190 IS BOUND.
      DATA t195 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t195.
      DATA t196 TYPE REF TO object.
      CLEAR t196.
      CLEAR t195.
      t196 = t190.
      TRY.
          t189 ?= t196.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t189 IS NOT BOUND.
        TRY.
            t195 ?= t190.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t195 IS BOUND.
          t189 = t195->source( ).
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
    DATA(t197) = t172.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t198.
    DATA t199 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t199.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t200.
    DATA(t201) = t15.
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
    t199 = zcl_lnt_st_combi_module=>opt( i_first = t200 ).
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
    DATA t206 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t206.
    DATA(t207) = t156.
    DATA(t208) = t165.
    DATA(t209) = t172.
    t206 = zcl_lnt_st_combi_module=>seq( i_first = t207 i_second = t208 i_rest = t209 ).
    t155 = t206.
    t154 = t155.
    DATA t210 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t210.
    DATA t211 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t211.
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t212.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t213.
    DATA(t214) = |OF|.
    CLEAR t213.
    CREATE OBJECT t213.
    t213->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t213->sval = t214.
    t212 = t213.
    DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t215.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t216.
    DATA t217 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t217.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t218.
    DATA(t219) = zlnt_runtime_desc_78196487750d=>zlnt_member_d185_9bfafbfe880c.
    CLEAR t218.
    IF t219 IS BOUND.
      CREATE OBJECT t218.
      t218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t218->cval = t219.
    ENDIF.
    t217 = zcl_lnt_st_combi_module=>plus( i_first = t218 ).
    CLEAR t216.
    IF t217 IS BOUND.
      DATA t220 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t220.
      DATA t221 TYPE REF TO object.
      CLEAR t221.
      CLEAR t220.
      t221 = t217.
      TRY.
          t216 ?= t221.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t216 IS NOT BOUND.
        TRY.
            t220 ?= t217.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t220 IS BOUND.
          t216 = t220->source( ).
        ENDIF.
        IF t216 IS NOT BOUND.
          CREATE OBJECT t216.
          t216->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t216->oval = t217.
        ENDIF.
      ENDIF.
    ENDIF.
    t215 = t216.
    DATA t222 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t222.
    DATA t223 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t223.
    CREATE OBJECT t223.
    t222 = t223.
    DATA t224 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t224.
    DATA(t225) = t212.
    DATA(t226) = t215.
    DATA(t227) = t222.
    t224 = zcl_lnt_st_combi_module=>seq( i_first = t225 i_second = t226 i_rest = t227 ).
    t211 = t224.
    t210 = t211.
    DATA t228 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t228.
    DATA t229 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t229.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t230.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t231.
    DATA(t232) = |PERFORM|.
    CLEAR t231.
    CREATE OBJECT t231.
    t231->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t231->sval = t232.
    t230 = t231.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t233.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t234.
    DATA t235 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t235.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t236.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t237.
    DATA(t238) = t49.
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
    t236 = t237.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t241.
    DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t242.
    DATA(t243) = t115.
    CLEAR t242.
    IF t243 IS BOUND.
      DATA t244 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t244.
      DATA t245 TYPE REF TO object.
      CLEAR t245.
      CLEAR t244.
      t245 = t243.
      TRY.
          t242 ?= t245.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t242 IS NOT BOUND.
        TRY.
            t244 ?= t243.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t244 IS BOUND.
          t242 = t244->source( ).
        ENDIF.
        IF t242 IS NOT BOUND.
          CREATE OBJECT t242.
          t242->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t242->oval = t243.
        ENDIF.
      ENDIF.
    ENDIF.
    t241 = t242.
    DATA t246 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t246.
    DATA t247 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t247.
    CREATE OBJECT t247.
    t246 = t247.
    DATA t248 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t248.
    DATA(t249) = t236.
    DATA(t250) = t241.
    DATA(t251) = t246.
    t248 = zcl_lnt_st_combi_module=>alt( i_first = t249 i_second = t250 i_rest = t251 ).
    t235 = t248.
    CLEAR t234.
    IF t235 IS BOUND.
      DATA t252 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t252.
      DATA t253 TYPE REF TO object.
      CLEAR t253.
      CLEAR t252.
      t253 = t235.
      TRY.
          t234 ?= t253.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t234 IS NOT BOUND.
        TRY.
            t252 ?= t235.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t252 IS BOUND.
          t234 = t252->source( ).
        ENDIF.
        IF t234 IS NOT BOUND.
          CREATE OBJECT t234.
          t234->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t234->oval = t235.
        ENDIF.
      ENDIF.
    ENDIF.
    t233 = t234.
    DATA t254 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t254.
    DATA t255 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t255.
    CREATE OBJECT t255.
    t254 = t255.
    DATA(t256) = t254.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t257.
    DATA t258 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t258.
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t259.
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t260.
    DATA(t261) = t210.
    CLEAR t260.
    IF t261 IS BOUND.
      DATA t262 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t262.
      DATA t263 TYPE REF TO object.
      CLEAR t263.
      CLEAR t262.
      t263 = t261.
      TRY.
          t260 ?= t263.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t260 IS NOT BOUND.
        TRY.
            t262 ?= t261.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t262 IS BOUND.
          t260 = t262->source( ).
        ENDIF.
        IF t260 IS NOT BOUND.
          CREATE OBJECT t260.
          t260->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t260->oval = t261.
        ENDIF.
      ENDIF.
    ENDIF.
    t259 = t260.
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t264.
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t265.
    DATA(t266) = t154.
    CLEAR t265.
    IF t266 IS BOUND.
      DATA t267 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t267.
      DATA t268 TYPE REF TO object.
      CLEAR t268.
      CLEAR t267.
      t268 = t266.
      TRY.
          t265 ?= t268.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t265 IS NOT BOUND.
        TRY.
            t267 ?= t266.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t267 IS BOUND.
          t265 = t267->source( ).
        ENDIF.
        IF t265 IS NOT BOUND.
          CREATE OBJECT t265.
          t265->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t265->oval = t266.
        ENDIF.
      ENDIF.
    ENDIF.
    t264 = t265.
    DATA t269 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t269.
    DATA t270 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t270.
    CREATE OBJECT t270.
    t269 = t270.
    DATA t271 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t271.
    DATA(t272) = t259.
    DATA(t273) = t264.
    DATA(t274) = t269.
    t271 = zcl_lnt_st_combi_module=>alt_prio( i_first = t272 i_second = t273 i_rest = t274 ).
    t258 = t271.
    CLEAR t257.
    IF t258 IS BOUND.
      DATA t275 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t275.
      DATA t276 TYPE REF TO object.
      CLEAR t276.
      CLEAR t275.
      t276 = t258.
      TRY.
          t257 ?= t276.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t257 IS NOT BOUND.
        TRY.
            t275 ?= t258.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t275 IS BOUND.
          t257 = t275->source( ).
        ENDIF.
        IF t257 IS NOT BOUND.
          CREATE OBJECT t257.
          t257->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t257->oval = t258.
        ENDIF.
      ENDIF.
    ENDIF.
    t256->load( ).
    APPEND t257 TO t256->items.
    t256->save( ).
    DATA t277 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t277.
    DATA(t278) = t230.
    DATA(t279) = t233.
    DATA(t280) = t254.
    t277 = zcl_lnt_st_combi_module=>seq( i_first = t278 i_second = t279 i_rest = t280 ).
    t229 = t277.
    t228 = t229.
    DATA t281 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t281.
    DATA(t282) = |KeyUser|.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t283.
    DATA(t284) = t228.
    CLEAR t283.
    IF t284 IS BOUND.
      DATA t285 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t285.
      DATA t286 TYPE REF TO object.
      CLEAR t286.
      CLEAR t285.
      t286 = t284.
      TRY.
          t283 ?= t286.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t283 IS NOT BOUND.
        TRY.
            t285 ?= t284.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t285 IS BOUND.
          t283 = t285->source( ).
        ENDIF.
        IF t283 IS NOT BOUND.
          CREATE OBJECT t283.
          t283->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t283->oval = t284.
        ENDIF.
      ENDIF.
    ENDIF.
    t281 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t282 i_first = t283 ).
    result = t281.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d573_76d229f1cfae.
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
