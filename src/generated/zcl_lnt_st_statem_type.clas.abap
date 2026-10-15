* TS: src/abap/2_statements/statements/type.ts:8:1 Type
CLASS zcl_lnt_st_statem_type DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_statem_type IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396.
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
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d149_69f1f4358f03.
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
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d148_212592b80f97.
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
    t14 = zcl_lnt_st_combi_module=>per( i_first = t15 i_second = t16 i_rest = t17 ).
    t2 = t14.
    t1 = t2.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t21.
    DATA t22 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t23.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t23 = zcl_lnt_version_module=>release_b8cd.
    DATA(t24) = |v760|.
    t22 = t23->get( p0 = t24 ).
    t21 = t22.
    CLEAR t20.
    IF t21 IS BOUND.
      DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t25.
      DATA t26 TYPE REF TO object.
      CLEAR t26.
      CLEAR t25.
      t26 = t21.
      TRY.
          t20 ?= t26.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t20 IS NOT BOUND.
        TRY.
            t25 ?= t21.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t25 IS BOUND.
          t20 = t25->source( ).
        ENDIF.
        IF t20 IS NOT BOUND.
          CREATE OBJECT t20.
          t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t20->oval = t21.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA(t31) = |TYPE|.
    CLEAR t30.
    CREATE OBJECT t30.
    t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t30->sval = t31.
    t29 = t30.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    CLEAR t33.
    IF t34 IS BOUND.
      CREATE OBJECT t33.
      t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t33->cval = t34.
    ENDIF.
    t32 = t33.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t36.
    CREATE OBJECT t36.
    t35 = t36.
    DATA(t37) = t35.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA(t39) = |CLIENT|.
    CLEAR t38.
    CREATE OBJECT t38.
    t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t38->sval = t39.
    t37->load( ).
    APPEND t38 TO t37->items.
    t37->save( ).
    DATA(t40) = t35.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA(t42) = |SPECIFIED|.
    CLEAR t41.
    CREATE OBJECT t41.
    t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t41->sval = t42.
    t40->load( ).
    APPEND t41 TO t40->items.
    t40->save( ).
    DATA(t43) = t35.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA(t45) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    CLEAR t44.
    IF t45 IS BOUND.
      CREATE OBJECT t44.
      t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t44->cval = t45.
    ENDIF.
    t43->load( ).
    APPEND t44 TO t43->items.
    t43->save( ).
    DATA(t46) = t35.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA(t55) = CAST zif_lnt_statement_runnable( zcl_lnt_lob_handle_type_module=>lob_kind( ) ).
    CLEAR t54.
    IF t55 IS BOUND.
      DATA t56 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t56.
      DATA t57 TYPE REF TO object.
      CLEAR t57.
      CLEAR t56.
      t57 = t55.
      TRY.
          t54 ?= t57.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t54 IS NOT BOUND.
        TRY.
            t56 ?= t55.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t56 IS BOUND.
          t54 = t56->source( ).
        ENDIF.
        IF t54 IS NOT BOUND.
          CREATE OBJECT t54.
          t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t54->oval = t55.
        ENDIF.
      ENDIF.
    ENDIF.
    t53 = t54.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA(t60) = CAST zif_lnt_statement_runnable( zcl_lnt_lob_handle_type_module=>lob_columns( ) ).
    CLEAR t59.
    IF t60 IS BOUND.
      DATA t61 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t61.
      DATA t62 TYPE REF TO object.
      CLEAR t62.
      CLEAR t61.
      t62 = t60.
      TRY.
          t59 ?= t62.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t59 IS NOT BOUND.
        TRY.
            t61 ?= t60.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t61 IS BOUND.
          t59 = t61->source( ).
        ENDIF.
        IF t59 IS NOT BOUND.
          CREATE OBJECT t59.
          t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t59->oval = t60.
        ENDIF.
      ENDIF.
    ENDIF.
    t58 = t59.
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t64.
    CREATE OBJECT t64.
    t63 = t64.
    DATA t65 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t65.
    DATA(t66) = t53.
    DATA(t67) = t58.
    DATA(t68) = t63.
    t65 = zcl_lnt_st_combi_module=>seq( i_first = t66 i_second = t67 i_rest = t68 ).
    t52 = t65.
    CLEAR t51.
    IF t52 IS BOUND.
      DATA t69 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t69.
      DATA t70 TYPE REF TO object.
      CLEAR t70.
      CLEAR t69.
      t70 = t52.
      TRY.
          t51 ?= t70.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t51 IS NOT BOUND.
        TRY.
            t69 ?= t52.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t69 IS BOUND.
          t51 = t69->source( ).
        ENDIF.
        IF t51 IS NOT BOUND.
          CREATE OBJECT t51.
          t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t51->oval = t52.
        ENDIF.
      ENDIF.
    ENDIF.
    t50 = zcl_lnt_st_combi_module=>plus( i_first = t51 ).
    CLEAR t49.
    IF t50 IS BOUND.
      DATA t71 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t71.
      DATA t72 TYPE REF TO object.
      CLEAR t72.
      CLEAR t71.
      t72 = t50.
      TRY.
          t49 ?= t72.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t49 IS NOT BOUND.
        TRY.
            t71 ?= t50.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t71 IS BOUND.
          t49 = t71->source( ).
        ENDIF.
        IF t49 IS NOT BOUND.
          CREATE OBJECT t49.
          t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t49->oval = t50.
        ENDIF.
      ENDIF.
    ENDIF.
    t48 = zcl_lnt_st_combi_module=>opt( i_first = t49 ).
    CLEAR t47.
    IF t48 IS BOUND.
      DATA t73 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t73.
      DATA t74 TYPE REF TO object.
      CLEAR t74.
      CLEAR t73.
      t74 = t48.
      TRY.
          t47 ?= t74.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t47 IS NOT BOUND.
        TRY.
            t73 ?= t48.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t73 IS BOUND.
          t47 = t73->source( ).
        ENDIF.
        IF t47 IS NOT BOUND.
          CREATE OBJECT t47.
          t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t47->oval = t48.
        ENDIF.
      ENDIF.
    ENDIF.
    t46->load( ).
    APPEND t47 TO t46->items.
    t46->save( ).
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t75.
    DATA(t76) = t29.
    DATA(t77) = t32.
    DATA(t78) = t35.
    t75 = zcl_lnt_st_combi_module=>seq( i_first = t76 i_second = t77 i_rest = t78 ).
    t28 = t75.
    CLEAR t27.
    IF t28 IS BOUND.
      DATA t79 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t79.
      DATA t80 TYPE REF TO object.
      CLEAR t80.
      CLEAR t79.
      t80 = t28.
      TRY.
          t27 ?= t80.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t27 IS NOT BOUND.
        TRY.
            t79 ?= t28.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t79 IS BOUND.
          t27 = t79->source( ).
        ENDIF.
        IF t27 IS NOT BOUND.
          CREATE OBJECT t27.
          t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t27->oval = t28.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t81 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t81.
    t19 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t20 i_first = t27 i_opts = t81 ).
    t18 = t19.
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t82.
    DATA t83 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t83.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA t85 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t85.
    DATA t86 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t87.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t87 = zcl_lnt_version_module=>release_b8cd.
    DATA(t88) = |v916|.
    t86 = t87->get( p0 = t88 ).
    t85 = t86.
    CLEAR t84.
    IF t85 IS BOUND.
      DATA t89 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t89.
      DATA t90 TYPE REF TO object.
      CLEAR t90.
      CLEAR t89.
      t90 = t85.
      TRY.
          t84 ?= t90.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t84 IS NOT BOUND.
        TRY.
            t89 ?= t85.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t89 IS BOUND.
          t84 = t89->source( ).
        ENDIF.
        IF t84 IS NOT BOUND.
          CREATE OBJECT t84.
          t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t84->oval = t85.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA(t95) = |TYPE|.
    CLEAR t94.
    CREATE OBJECT t94.
    t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t94->sval = t95.
    t93 = t94.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA(t98) = |ANY|.
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
    DATA(t103) = |STRUCTURE|.
    CLEAR t102.
    CREATE OBJECT t102.
    t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t102->sval = t103.
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
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t108.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t110.
    DATA(t111) = |CONTAINING|.
    CLEAR t110.
    CREATE OBJECT t110.
    t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t110->sval = t111.
    t109 = t110.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t112.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA t116 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t116.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA(t119) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
    CLEAR t118.
    IF t119 IS BOUND.
      CREATE OBJECT t118.
      t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t118->cval = t119.
    ENDIF.
    t117 = t118.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    DATA(t122) = |TYPE|.
    CLEAR t121.
    CREATE OBJECT t121.
    t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t121->sval = t122.
    t120 = t121.
    DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t123.
    DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t124.
    CREATE OBJECT t124.
    t123 = t124.
    DATA(t125) = t123.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    DATA(t127) = zlnt_runtime_desc_78196487750d=>zlnt_member_d352_960e530693ff.
    CLEAR t126.
    IF t127 IS BOUND.
      CREATE OBJECT t126.
      t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t126->cval = t127.
    ENDIF.
    t125->load( ).
    APPEND t126 TO t125->items.
    t125->save( ).
    DATA t128 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t128.
    DATA(t129) = t117.
    DATA(t130) = t120.
    DATA(t131) = t123.
    t128 = zcl_lnt_st_combi_module=>seq( i_first = t129 i_second = t130 i_rest = t131 ).
    t116 = t128.
    CLEAR t115.
    IF t116 IS BOUND.
      DATA t132 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t132.
      DATA t133 TYPE REF TO object.
      CLEAR t133.
      CLEAR t132.
      t133 = t116.
      TRY.
          t115 ?= t133.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t115 IS NOT BOUND.
        TRY.
            t132 ?= t116.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t132 IS BOUND.
          t115 = t132->source( ).
        ENDIF.
        IF t115 IS NOT BOUND.
          CREATE OBJECT t115.
          t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t115->oval = t116.
        ENDIF.
      ENDIF.
    ENDIF.
    t114 = zcl_lnt_st_combi_module=>plus( i_first = t115 ).
    CLEAR t113.
    IF t114 IS BOUND.
      DATA t134 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t134.
      DATA t135 TYPE REF TO object.
      CLEAR t135.
      CLEAR t134.
      t135 = t114.
      TRY.
          t113 ?= t135.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t113 IS NOT BOUND.
        TRY.
            t134 ?= t114.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t134 IS BOUND.
          t113 = t134->source( ).
        ENDIF.
        IF t113 IS NOT BOUND.
          CREATE OBJECT t113.
          t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t113->oval = t114.
        ENDIF.
      ENDIF.
    ENDIF.
    t112 = t113.
    DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t136.
    DATA t137 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t137.
    CREATE OBJECT t137.
    t136 = t137.
    DATA t138 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t138.
    DATA(t139) = t109.
    DATA(t140) = t112.
    DATA(t141) = t136.
    t138 = zcl_lnt_st_combi_module=>seq( i_first = t139 i_second = t140 i_rest = t141 ).
    t108 = t138.
    CLEAR t107.
    IF t108 IS BOUND.
      DATA t142 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t142.
      DATA t143 TYPE REF TO object.
      CLEAR t143.
      CLEAR t142.
      t143 = t108.
      TRY.
          t107 ?= t143.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t107 IS NOT BOUND.
        TRY.
            t142 ?= t108.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t142 IS BOUND.
          t107 = t142->source( ).
        ENDIF.
        IF t107 IS NOT BOUND.
          CREATE OBJECT t107.
          t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t107->oval = t108.
        ENDIF.
      ENDIF.
    ENDIF.
    t106 = zcl_lnt_st_combi_module=>opt( i_first = t107 ).
    CLEAR t105.
    IF t106 IS BOUND.
      DATA t144 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t144.
      DATA t145 TYPE REF TO object.
      CLEAR t145.
      CLEAR t144.
      t145 = t106.
      TRY.
          t105 ?= t145.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t105 IS NOT BOUND.
        TRY.
            t144 ?= t106.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t144 IS BOUND.
          t105 = t144->source( ).
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
    DATA t146 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t146.
    DATA(t147) = t93.
    DATA(t148) = t96.
    DATA(t149) = t99.
    t146 = zcl_lnt_st_combi_module=>seq( i_first = t147 i_second = t148 i_rest = t149 ).
    t92 = t146.
    CLEAR t91.
    IF t92 IS BOUND.
      DATA t150 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t150.
      DATA t151 TYPE REF TO object.
      CLEAR t151.
      CLEAR t150.
      t151 = t92.
      TRY.
          t91 ?= t151.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t91 IS NOT BOUND.
        TRY.
            t150 ?= t92.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t150 IS BOUND.
          t91 = t150->source( ).
        ENDIF.
        IF t91 IS NOT BOUND.
          CREATE OBJECT t91.
          t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t91->oval = t92.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t152 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t152.
    t83 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t84 i_first = t91 i_opts = t152 ).
    t82 = t83.
    DATA t153 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t153.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t154.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t155.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t156.
    DATA(t157) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    CLEAR t156.
    IF t157 IS BOUND.
      CREATE OBJECT t156.
      t156->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t156->cval = t157.
    ENDIF.
    t155 = t156.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t158.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    DATA t160 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t160.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t161.
    DATA(t162) = zlnt_runtime_desc_78196487750d=>zlnt_member_d142_ab91f6798a5a.
    CLEAR t161.
    IF t162 IS BOUND.
      CREATE OBJECT t161.
      t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t161->cval = t162.
    ENDIF.
    t160 = zcl_lnt_st_combi_module=>opt( i_first = t161 ).
    CLEAR t159.
    IF t160 IS BOUND.
      DATA t163 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t163.
      DATA t164 TYPE REF TO object.
      CLEAR t164.
      CLEAR t163.
      t164 = t160.
      TRY.
          t159 ?= t164.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t159 IS NOT BOUND.
        TRY.
            t163 ?= t160.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t163 IS BOUND.
          t159 = t163->source( ).
        ENDIF.
        IF t159 IS NOT BOUND.
          CREATE OBJECT t159.
          t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t159->oval = t160.
        ENDIF.
      ENDIF.
    ENDIF.
    t158 = t159.
    DATA t165 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t165.
    DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t166.
    CREATE OBJECT t166.
    t165 = t166.
    DATA(t167) = t165.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t168.
    DATA t169 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t169.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t170.
    DATA t171 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t171.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t172.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    DATA t174 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t174.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t175.
    DATA t176 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t176.
    DATA t177 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t177.
    DATA t178 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t178.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t178 = zcl_lnt_version_module=>release_b8cd.
    DATA(t179) = |v731|.
    t177 = t178->get( p0 = t179 ).
    t176 = t177.
    CLEAR t175.
    IF t176 IS BOUND.
      DATA t180 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t180.
      DATA t181 TYPE REF TO object.
      CLEAR t181.
      CLEAR t180.
      t181 = t176.
      TRY.
          t175 ?= t181.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t175 IS NOT BOUND.
        TRY.
            t180 ?= t176.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t180 IS BOUND.
          t175 = t180->source( ).
        ENDIF.
        IF t175 IS NOT BOUND.
          CREATE OBJECT t175.
          t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t175->oval = t176.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t182.
    DATA(t183) = CAST zif_lnt_statement_runnable( zcl_lnt_lob_handle_type_module=>lob_handle_type( ) ).
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
    DATA t186 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t186.
    t174 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t175 i_first = t182 i_opts = t186 ).
    CLEAR t173.
    IF t174 IS BOUND.
      DATA t187 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t187.
      DATA t188 TYPE REF TO object.
      CLEAR t188.
      CLEAR t187.
      t188 = t174.
      TRY.
          t173 ?= t188.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t173 IS NOT BOUND.
        TRY.
            t187 ?= t174.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t187 IS BOUND.
          t173 = t187->source( ).
        ENDIF.
        IF t173 IS NOT BOUND.
          CREATE OBJECT t173.
          t173->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t173->oval = t174.
        ENDIF.
      ENDIF.
    ENDIF.
    t172 = t173.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t189.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t190.
    DATA(t191) = t18.
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
    t189 = t190.
    DATA t194 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t194.
    DATA t195 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t195.
    CREATE OBJECT t195.
    t194 = t195.
    DATA(t196) = t194.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA(t198) = t82.
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
    DATA(t201) = t194.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t202.
    DATA t203 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t203.
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t204.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t205.
    DATA(t206) = t1.
    CLEAR t205.
    IF t206 IS BOUND.
      DATA t207 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t207.
      DATA t208 TYPE REF TO object.
      CLEAR t208.
      CLEAR t207.
      t208 = t206.
      TRY.
          t205 ?= t208.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t205 IS NOT BOUND.
        TRY.
            t207 ?= t206.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t207 IS BOUND.
          t205 = t207->source( ).
        ENDIF.
        IF t205 IS NOT BOUND.
          CREATE OBJECT t205.
          t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t205->oval = t206.
        ENDIF.
      ENDIF.
    ENDIF.
    t204 = t205.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t209.
    DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t210.
    DATA(t211) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
    CLEAR t210.
    IF t211 IS BOUND.
      CREATE OBJECT t210.
      t210->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t210->cval = t211.
    ENDIF.
    t209 = t210.
    DATA t212 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t212.
    DATA t213 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t213.
    CREATE OBJECT t213.
    t212 = t213.
    DATA(t214) = t212.
    DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t215.
    DATA(t216) = zlnt_runtime_desc_78196487750d=>zlnt_member_d153_a3333d63766c.
    CLEAR t215.
    IF t216 IS BOUND.
      CREATE OBJECT t215.
      t215->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t215->cval = t216.
    ENDIF.
    t214->load( ).
    APPEND t215 TO t214->items.
    t214->save( ).
    DATA t217 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t217.
    DATA(t218) = t204.
    DATA(t219) = t209.
    DATA(t220) = t212.
    t217 = zcl_lnt_st_combi_module=>alt( i_first = t218 i_second = t219 i_rest = t220 ).
    t203 = t217.
    CLEAR t202.
    IF t203 IS BOUND.
      DATA t221 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t221.
      DATA t222 TYPE REF TO object.
      CLEAR t222.
      CLEAR t221.
      t222 = t203.
      TRY.
          t202 ?= t222.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t202 IS NOT BOUND.
        TRY.
            t221 ?= t203.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t221 IS BOUND.
          t202 = t221->source( ).
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
    DATA t223 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t223.
    DATA(t224) = t172.
    DATA(t225) = t189.
    DATA(t226) = t194.
    t223 = zcl_lnt_st_combi_module=>alt_prio( i_first = t224 i_second = t225 i_rest = t226 ).
    t171 = t223.
    CLEAR t170.
    IF t171 IS BOUND.
      DATA t227 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t227.
      DATA t228 TYPE REF TO object.
      CLEAR t228.
      CLEAR t227.
      t228 = t171.
      TRY.
          t170 ?= t228.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t170 IS NOT BOUND.
        TRY.
            t227 ?= t171.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t227 IS BOUND.
          t170 = t227->source( ).
        ENDIF.
        IF t170 IS NOT BOUND.
          CREATE OBJECT t170.
          t170->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t170->oval = t171.
        ENDIF.
      ENDIF.
    ENDIF.
    t169 = zcl_lnt_st_combi_module=>opt( i_first = t170 ).
    CLEAR t168.
    IF t169 IS BOUND.
      DATA t229 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t229.
      DATA t230 TYPE REF TO object.
      CLEAR t230.
      CLEAR t229.
      t230 = t169.
      TRY.
          t168 ?= t230.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t168 IS NOT BOUND.
        TRY.
            t229 ?= t169.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t229 IS BOUND.
          t168 = t229->source( ).
        ENDIF.
        IF t168 IS NOT BOUND.
          CREATE OBJECT t168.
          t168->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t168->oval = t169.
        ENDIF.
      ENDIF.
    ENDIF.
    t167->load( ).
    APPEND t168 TO t167->items.
    t167->save( ).
    DATA t231 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t231.
    DATA(t232) = t155.
    DATA(t233) = t158.
    DATA(t234) = t165.
    t231 = zcl_lnt_st_combi_module=>seq( i_first = t232 i_second = t233 i_rest = t234 ).
    t154 = t231.
    t153 = t154.
    DATA t235 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t235.
    DATA t236 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t236.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t237.
    DATA t238 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t238.
    DATA t239 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t239.
    DATA t240 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t240.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t240 = zcl_lnt_version_module=>release_b8cd.
    DATA(t241) = |v702|.
    t239 = t240->get( p0 = t241 ).
    t238 = t239.
    CLEAR t237.
    IF t238 IS BOUND.
      DATA t242 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t242.
      DATA t243 TYPE REF TO object.
      CLEAR t243.
      CLEAR t242.
      t243 = t238.
      TRY.
          t237 ?= t243.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t237 IS NOT BOUND.
        TRY.
            t242 ?= t238.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t242 IS BOUND.
          t237 = t242->source( ).
        ENDIF.
        IF t237 IS NOT BOUND.
          CREATE OBJECT t237.
          t237->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t237->oval = t238.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t244.
    DATA(t245) = |BOXED|.
    CLEAR t244.
    CREATE OBJECT t244.
    t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t244->sval = t245.
    DATA t246 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t246.
    t236 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t237 i_first = t244 i_opts = t246 ).
    t235 = t236.
    DATA t247 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t247.
    DATA t248 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t248.
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t249.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t250.
    DATA(t251) = |TYPES|.
    CLEAR t250.
    CREATE OBJECT t250.
    t250->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t250->sval = t251.
    t249 = t250.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t252.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t253.
    DATA(t254) = t153.
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
    DATA(t259) = t257.
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t260.
    DATA t261 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t261.
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t262.
    DATA(t263) = t235.
    CLEAR t262.
    IF t263 IS BOUND.
      DATA t264 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t264.
      DATA t265 TYPE REF TO object.
      CLEAR t265.
      CLEAR t264.
      t265 = t263.
      TRY.
          t262 ?= t265.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t262 IS NOT BOUND.
        TRY.
            t264 ?= t263.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t264 IS BOUND.
          t262 = t264->source( ).
        ENDIF.
        IF t262 IS NOT BOUND.
          CREATE OBJECT t262.
          t262->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t262->oval = t263.
        ENDIF.
      ENDIF.
    ENDIF.
    t261 = zcl_lnt_st_combi_module=>opt( i_first = t262 ).
    CLEAR t260.
    IF t261 IS BOUND.
      DATA t266 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t266.
      DATA t267 TYPE REF TO object.
      CLEAR t267.
      CLEAR t266.
      t267 = t261.
      TRY.
          t260 ?= t267.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t260 IS NOT BOUND.
        TRY.
            t266 ?= t261.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t266 IS BOUND.
          t260 = t266->source( ).
        ENDIF.
        IF t260 IS NOT BOUND.
          CREATE OBJECT t260.
          t260->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t260->oval = t261.
        ENDIF.
      ENDIF.
    ENDIF.
    t259->load( ).
    APPEND t260 TO t259->items.
    t259->save( ).
    DATA t268 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t268.
    DATA(t269) = t249.
    DATA(t270) = t252.
    DATA(t271) = t257.
    t268 = zcl_lnt_st_combi_module=>seq( i_first = t269 i_second = t270 i_rest = t271 ).
    t248 = t268.
    t247 = t248.
    DATA(t272) = t247.
    result = t272.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d662_d497981e80c2.
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
