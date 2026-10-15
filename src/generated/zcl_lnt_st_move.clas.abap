* TS: src/abap/2_statements/statements/move.ts:8:1 Move
CLASS zcl_lnt_st_move DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    INTERFACES zif_lnt_union_3a2bcbb5.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_move IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA(t3) = |Cloud|.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = |MOVE|.
    CLEAR t4.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t2 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t3 i_first = t4 ).
    t1 = t2.
    DATA t6 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t6.
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA(t10) = t1.
    CLEAR t9.
    IF t10 IS BOUND.
      DATA t11 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t11.
      DATA t12 TYPE REF TO object.
      CLEAR t12.
      CLEAR t11.
      t12 = t10.
      TRY.
          t9 ?= t12.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t9 IS NOT BOUND.
        TRY.
            t11 ?= t10.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t11 IS BOUND.
          t9 = t11->source( ).
        ENDIF.
        IF t9 IS NOT BOUND.
          CREATE OBJECT t9.
          t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t9->oval = t10.
        ENDIF.
      ENDIF.
    ENDIF.
    t8 = t9.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA(t21) = |EXACT|.
    CLEAR t20.
    CREATE OBJECT t20.
    t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t20->sval = t21.
    t19 = t20.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t23.
    IF t24 IS BOUND.
      CREATE OBJECT t23.
      t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t23->cval = t24.
    ENDIF.
    t22 = t23.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t26.
    CREATE OBJECT t26.
    t25 = t26.
    DATA(t27) = t25.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    DATA(t29) = |TO|.
    CLEAR t28.
    CREATE OBJECT t28.
    t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t28->sval = t29.
    t27->load( ).
    APPEND t28 TO t27->items.
    t27->save( ).
    DATA(t30) = t25.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA(t32) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t31.
    IF t32 IS BOUND.
      CREATE OBJECT t31.
      t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t31->cval = t32.
    ENDIF.
    t30->load( ).
    APPEND t31 TO t30->items.
    t30->save( ).
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t33.
    DATA(t34) = t19.
    DATA(t35) = t22.
    DATA(t36) = t25.
    t33 = zcl_lnt_st_combi_module=>seq( i_first = t34 i_second = t35 i_rest = t36 ).
    t18 = t33.
    CLEAR t17.
    IF t18 IS BOUND.
      DATA t37 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t37.
      DATA t38 TYPE REF TO object.
      CLEAR t38.
      CLEAR t37.
      t38 = t18.
      TRY.
          t17 ?= t38.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t17 IS NOT BOUND.
        TRY.
            t37 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t37 IS BOUND.
          t17 = t37->source( ).
        ENDIF.
        IF t17 IS NOT BOUND.
          CREATE OBJECT t17.
          t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t17->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    t16 = t17.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA(t44) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t43.
    IF t44 IS BOUND.
      CREATE OBJECT t43.
      t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t43->cval = t44.
    ENDIF.
    t42 = t43.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA(t50) = |?TO|.
    CLEAR t49.
    CREATE OBJECT t49.
    t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t49->sval = t50.
    t48 = t49.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA(t53) = |TO|.
    CLEAR t52.
    CREATE OBJECT t52.
    t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t52->sval = t53.
    t51 = t52.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t55.
    CREATE OBJECT t55.
    t54 = t55.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t56.
    DATA(t57) = t48.
    DATA(t58) = t51.
    DATA(t59) = t54.
    t56 = zcl_lnt_st_combi_module=>alt_prio( i_first = t57 i_second = t58 i_rest = t59 ).
    t47 = t56.
    CLEAR t46.
    IF t47 IS BOUND.
      DATA t60 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t60.
      DATA t61 TYPE REF TO object.
      CLEAR t61.
      CLEAR t60.
      t61 = t47.
      TRY.
          t46 ?= t61.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t46 IS NOT BOUND.
        TRY.
            t60 ?= t47.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t60 IS BOUND.
          t46 = t60->source( ).
        ENDIF.
        IF t46 IS NOT BOUND.
          CREATE OBJECT t46.
          t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t46->oval = t47.
        ENDIF.
      ENDIF.
    ENDIF.
    t45 = t46.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t63.
    CREATE OBJECT t63.
    t62 = t63.
    DATA(t64) = t62.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA(t66) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t65.
    IF t66 IS BOUND.
      CREATE OBJECT t65.
      t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t65->cval = t66.
    ENDIF.
    t64->load( ).
    APPEND t65 TO t64->items.
    t64->save( ).
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t67.
    DATA(t68) = t42.
    DATA(t69) = t45.
    DATA(t70) = t62.
    t67 = zcl_lnt_st_combi_module=>seq( i_first = t68 i_second = t69 i_rest = t70 ).
    t41 = t67.
    CLEAR t40.
    IF t41 IS BOUND.
      DATA t71 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t71.
      DATA t72 TYPE REF TO object.
      CLEAR t72.
      CLEAR t71.
      t72 = t41.
      TRY.
          t40 ?= t72.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t40 IS NOT BOUND.
        TRY.
            t71 ?= t41.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t71 IS BOUND.
          t40 = t71->source( ).
        ENDIF.
        IF t40 IS NOT BOUND.
          CREATE OBJECT t40.
          t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t40->oval = t41.
        ENDIF.
      ENDIF.
    ENDIF.
    t39 = t40.
    DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t74.
    CREATE OBJECT t74.
    t73 = t74.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t75.
    DATA(t76) = t16.
    DATA(t77) = t39.
    DATA(t78) = t73.
    t75 = zcl_lnt_st_combi_module=>alt_prio( i_first = t76 i_second = t77 i_rest = t78 ).
    t15 = t75.
    CLEAR t14.
    IF t15 IS BOUND.
      DATA t79 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t79.
      DATA t80 TYPE REF TO object.
      CLEAR t80.
      CLEAR t79.
      t80 = t15.
      TRY.
          t14 ?= t80.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t14 IS NOT BOUND.
        TRY.
            t79 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t79 IS BOUND.
          t14 = t79->source( ).
        ENDIF.
        IF t14 IS NOT BOUND.
          CREATE OBJECT t14.
          t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t14->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    t13 = t14.
    DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t81.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t82.
    CREATE OBJECT t82.
    t81 = t82.
    DATA(t83) = t81.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t85.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA(t90) = |PERCENTAGE|.
    CLEAR t89.
    CREATE OBJECT t89.
    t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t89->sval = t90.
    t88 = t89.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA(t93) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t92.
    IF t93 IS BOUND.
      CREATE OBJECT t92.
      t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t92->cval = t93.
    ENDIF.
    t91 = t92.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t95.
    CREATE OBJECT t95.
    t94 = t95.
    DATA(t96) = t94.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA(t103) = |LEFT|.
    CLEAR t102.
    CREATE OBJECT t102.
    t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t102->sval = t103.
    t101 = t102.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA(t106) = |RIGHT|.
    CLEAR t105.
    CREATE OBJECT t105.
    t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t105->sval = t106.
    t104 = t105.
    DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t107.
    DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t108.
    CREATE OBJECT t108.
    t107 = t108.
    DATA t109 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t109.
    DATA(t110) = t101.
    DATA(t111) = t104.
    DATA(t112) = t107.
    t109 = zcl_lnt_st_combi_module=>alt( i_first = t110 i_second = t111 i_rest = t112 ).
    t100 = t109.
    CLEAR t99.
    IF t100 IS BOUND.
      DATA t113 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t113.
      DATA t114 TYPE REF TO object.
      CLEAR t114.
      CLEAR t113.
      t114 = t100.
      TRY.
          t99 ?= t114.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t99 IS NOT BOUND.
        TRY.
            t113 ?= t100.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t113 IS BOUND.
          t99 = t113->source( ).
        ENDIF.
        IF t99 IS NOT BOUND.
          CREATE OBJECT t99.
          t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t99->oval = t100.
        ENDIF.
      ENDIF.
    ENDIF.
    t98 = zcl_lnt_st_combi_module=>opt( i_first = t99 ).
    CLEAR t97.
    IF t98 IS BOUND.
      DATA t115 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t115.
      DATA t116 TYPE REF TO object.
      CLEAR t116.
      CLEAR t115.
      t116 = t98.
      TRY.
          t97 ?= t116.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t97 IS NOT BOUND.
        TRY.
            t115 ?= t98.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t115 IS BOUND.
          t97 = t115->source( ).
        ENDIF.
        IF t97 IS NOT BOUND.
          CREATE OBJECT t97.
          t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t97->oval = t98.
        ENDIF.
      ENDIF.
    ENDIF.
    t96->load( ).
    APPEND t97 TO t96->items.
    t96->save( ).
    DATA t117 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t117.
    DATA(t118) = t88.
    DATA(t119) = t91.
    DATA(t120) = t94.
    t117 = zcl_lnt_st_combi_module=>seq( i_first = t118 i_second = t119 i_rest = t120 ).
    t87 = t117.
    CLEAR t86.
    IF t87 IS BOUND.
      DATA t121 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t121.
      DATA t122 TYPE REF TO object.
      CLEAR t122.
      CLEAR t121.
      t122 = t87.
      TRY.
          t86 ?= t122.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t86 IS NOT BOUND.
        TRY.
            t121 ?= t87.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t121 IS BOUND.
          t86 = t121->source( ).
        ENDIF.
        IF t86 IS NOT BOUND.
          CREATE OBJECT t86.
          t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t86->oval = t87.
        ENDIF.
      ENDIF.
    ENDIF.
    t85 = zcl_lnt_st_combi_module=>opt( i_first = t86 ).
    CLEAR t84.
    IF t85 IS BOUND.
      DATA t123 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t123.
      DATA t124 TYPE REF TO object.
      CLEAR t124.
      CLEAR t123.
      t124 = t85.
      TRY.
          t84 ?= t124.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t84 IS NOT BOUND.
        TRY.
            t123 ?= t85.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t123 IS BOUND.
          t84 = t123->source( ).
        ENDIF.
        IF t84 IS NOT BOUND.
          CREATE OBJECT t84.
          t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t84->oval = t85.
        ENDIF.
      ENDIF.
    ENDIF.
    t83->load( ).
    APPEND t84 TO t83->items.
    t83->save( ).
    DATA t125 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t125.
    DATA(t126) = t8.
    DATA(t127) = t13.
    DATA(t128) = t81.
    t125 = zcl_lnt_st_combi_module=>seq( i_first = t126 i_second = t127 i_rest = t128 ).
    t7 = t125.
    t6 = t7.
    DATA t129 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t129.
    DATA t130 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA t132 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t132.
    DATA t133 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t133.
    DATA t134 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t134.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t134 = zcl_lnt_version_module=>release_b8cd.
    DATA(t135) = |v754|.
    t133 = t134->get( p0 = t135 ).
    t132 = t133.
    CLEAR t131.
    IF t132 IS BOUND.
      DATA t136 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t136.
      DATA t137 TYPE REF TO object.
      CLEAR t137.
      CLEAR t136.
      t137 = t132.
      TRY.
          t131 ?= t137.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t131 IS NOT BOUND.
        TRY.
            t136 ?= t132.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t136 IS BOUND.
          t131 = t136->source( ).
        ENDIF.
        IF t131 IS NOT BOUND.
          CREATE OBJECT t131.
          t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t131->oval = t132.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t144.
    DATA t145 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t145.
    DATA(t146) = zlnt_runtime_desc_78196487750d=>zlnt_member_d56_5d4839b794b2ac.
    t145 = zcl_lnt_st_combi_module=>tok( i_t = t146 ).
    CLEAR t144.
    IF t145 IS BOUND.
      DATA t147 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t147.
      DATA t148 TYPE REF TO object.
      CLEAR t148.
      CLEAR t147.
      t148 = t145.
      TRY.
          t144 ?= t148.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t144 IS NOT BOUND.
        TRY.
            t147 ?= t145.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t147 IS BOUND.
          t144 = t147->source( ).
        ENDIF.
        IF t144 IS NOT BOUND.
          CREATE OBJECT t144.
          t144->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t144->oval = t145.
        ENDIF.
      ENDIF.
    ENDIF.
    t143 = t144.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t150.
    DATA(t151) = |=|.
    CLEAR t150.
    CREATE OBJECT t150.
    t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t150->sval = t151.
    t149 = t150.
    DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t152.
    DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t153.
    CREATE OBJECT t153.
    t152 = t153.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t154.
    DATA(t155) = t143.
    DATA(t156) = t149.
    DATA(t157) = t152.
    t154 = zcl_lnt_st_combi_module=>seq( i_first = t155 i_second = t156 i_rest = t157 ).
    t142 = t154.
    CLEAR t141.
    IF t142 IS BOUND.
      DATA t158 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t158.
      DATA t159 TYPE REF TO object.
      CLEAR t159.
      CLEAR t158.
      t159 = t142.
      TRY.
          t141 ?= t159.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t141 IS NOT BOUND.
        TRY.
            t158 ?= t142.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t158 IS BOUND.
          t141 = t158->source( ).
        ENDIF.
        IF t141 IS NOT BOUND.
          CREATE OBJECT t141.
          t141->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t141->oval = t142.
        ENDIF.
      ENDIF.
    ENDIF.
    t140 = t141.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t161.
    DATA t162 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t162.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t163.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t164.
    DATA t165 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t165.
    DATA(t166) = zlnt_runtime_desc_78196487750d=>zlnt_member_d48_c59205d155180b.
    t165 = zcl_lnt_st_combi_module=>tok( i_t = t166 ).
    CLEAR t164.
    IF t165 IS BOUND.
      DATA t167 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t167.
      DATA t168 TYPE REF TO object.
      CLEAR t168.
      CLEAR t167.
      t168 = t165.
      TRY.
          t164 ?= t168.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t164 IS NOT BOUND.
        TRY.
            t167 ?= t165.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t167 IS BOUND.
          t164 = t167->source( ).
        ENDIF.
        IF t164 IS NOT BOUND.
          CREATE OBJECT t164.
          t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t164->oval = t165.
        ENDIF.
      ENDIF.
    ENDIF.
    t163 = t164.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t169.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t170.
    DATA(t171) = |=|.
    CLEAR t170.
    CREATE OBJECT t170.
    t170->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t170->sval = t171.
    t169 = t170.
    DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t172.
    DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t173.
    CREATE OBJECT t173.
    t172 = t173.
    DATA t174 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t174.
    DATA(t175) = t163.
    DATA(t176) = t169.
    DATA(t177) = t172.
    t174 = zcl_lnt_st_combi_module=>seq( i_first = t175 i_second = t176 i_rest = t177 ).
    t162 = t174.
    CLEAR t161.
    IF t162 IS BOUND.
      DATA t178 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t178.
      DATA t179 TYPE REF TO object.
      CLEAR t179.
      CLEAR t178.
      t179 = t162.
      TRY.
          t161 ?= t179.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t161 IS NOT BOUND.
        TRY.
            t178 ?= t162.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t178 IS BOUND.
          t161 = t178->source( ).
        ENDIF.
        IF t161 IS NOT BOUND.
          CREATE OBJECT t161.
          t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t161->oval = t162.
        ENDIF.
      ENDIF.
    ENDIF.
    t160 = t161.
    DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t180.
    DATA t181 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t181.
    CREATE OBJECT t181.
    t180 = t181.
    DATA(t182) = t180.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    DATA(t184) = |/=|.
    CLEAR t183.
    CREATE OBJECT t183.
    t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t183->sval = t184.
    t182->load( ).
    APPEND t183 TO t182->items.
    t182->save( ).
    DATA(t185) = t180.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t186.
    DATA(t187) = |*=|.
    CLEAR t186.
    CREATE OBJECT t186.
    t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t186->sval = t187.
    t185->load( ).
    APPEND t186 TO t185->items.
    t185->save( ).
    DATA(t188) = t180.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t189.
    DATA(t190) = |&&=|.
    CLEAR t189.
    CREATE OBJECT t189.
    t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t189->sval = t190.
    t188->load( ).
    APPEND t189 TO t188->items.
    t188->save( ).
    DATA t191 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t191.
    DATA(t192) = t140.
    DATA(t193) = t160.
    DATA(t194) = t180.
    t191 = zcl_lnt_st_combi_module=>alt( i_first = t192 i_second = t193 i_rest = t194 ).
    t139 = t191.
    CLEAR t138.
    IF t139 IS BOUND.
      DATA t195 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t195.
      DATA t196 TYPE REF TO object.
      CLEAR t196.
      CLEAR t195.
      t196 = t139.
      TRY.
          t138 ?= t196.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t138 IS NOT BOUND.
        TRY.
            t195 ?= t139.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t195 IS BOUND.
          t138 = t195->source( ).
        ENDIF.
        IF t138 IS NOT BOUND.
          CREATE OBJECT t138.
          t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t138->oval = t139.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t197 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t197.
    DATA(t198) = abap_true.
    IF t198 = abap_true.
      DATA t199 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t199.
      DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t200.
      DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t201.
      DATA(t202) = abap_true.
      IF t202 = abap_true.
        DATA(t203) = |OpenABAP|.
        DATA(t204) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t204->has = abap_true.
        t204->value = t203.
        t201 = t204.
      ELSE.
        DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t205.
        t201 = t205.
      ENDIF.
      t200 = t201.
      t199 = NEW zcl_lnt_iver_options( i_also = t200 ).
      CREATE OBJECT t199->zlnt_view_ownkeys_b0e8086400eb.
      t199->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t206.
      IF t199->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t199->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t206 ).
      ENDIF.
      CREATE OBJECT t199->zlnt_json_ownkeys_70e5fd461788.
      t199->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t207) = |also|.
      DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t208.
      IF t199->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t199->zlnt_json_ownkeys_70e5fd461788->put( p0 = t207 p1 = t208 ).
      ENDIF.
      t197 = t199.
    ELSE.
      DATA t209 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t209.
      t197 = t209.
    ENDIF.
    t130 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t131 i_first = t138 i_opts = t197 ).
    t129 = t130.
    DATA t210 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t210.
    DATA t211 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t211.
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t212.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t213.
    DATA(t214) = |=|.
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
    DATA t219 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t219.
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t220.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t221.
    DATA(t222) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t221.
    IF t222 IS BOUND.
      CREATE OBJECT t221.
      t221->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t221->cval = t222.
    ENDIF.
    t220 = t221.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t223.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t224.
    DATA(t225) = |=|.
    CLEAR t224.
    CREATE OBJECT t224.
    t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t224->sval = t225.
    t223 = t224.
    DATA t226 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t226.
    DATA t227 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t227.
    CREATE OBJECT t227.
    t226 = t227.
    DATA t228 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t228.
    DATA(t229) = t220.
    DATA(t230) = t223.
    DATA(t231) = t226.
    t228 = zcl_lnt_st_combi_module=>seq( i_first = t229 i_second = t230 i_rest = t231 ).
    t219 = t228.
    CLEAR t218.
    IF t219 IS BOUND.
      DATA t232 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t232.
      DATA t233 TYPE REF TO object.
      CLEAR t233.
      CLEAR t232.
      t233 = t219.
      TRY.
          t218 ?= t233.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t218 IS NOT BOUND.
        TRY.
            t232 ?= t219.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t232 IS BOUND.
          t218 = t232->source( ).
        ENDIF.
        IF t218 IS NOT BOUND.
          CREATE OBJECT t218.
          t218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t218->oval = t219.
        ENDIF.
      ENDIF.
    ENDIF.
    t217 = zcl_lnt_st_combi_module=>star( i_first = t218 ).
    CLEAR t216.
    IF t217 IS BOUND.
      DATA t234 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t234.
      DATA t235 TYPE REF TO object.
      CLEAR t235.
      CLEAR t234.
      t235 = t217.
      TRY.
          t216 ?= t235.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t216 IS NOT BOUND.
        TRY.
            t234 ?= t217.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t234 IS BOUND.
          t216 = t234->source( ).
        ENDIF.
        IF t216 IS NOT BOUND.
          CREATE OBJECT t216.
          t216->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t216->oval = t217.
        ENDIF.
      ENDIF.
    ENDIF.
    t215 = t216.
    DATA t236 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t236.
    DATA t237 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t237.
    CREATE OBJECT t237.
    t236 = t237.
    DATA t238 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t238.
    DATA(t239) = t212.
    DATA(t240) = t215.
    DATA(t241) = t236.
    t238 = zcl_lnt_st_combi_module=>seq( i_first = t239 i_second = t240 i_rest = t241 ).
    t211 = t238.
    t210 = t211.
    DATA t242 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t242.
    DATA t243 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t243.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t244.
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t245.
    DATA t246 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t246.
    DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t247.
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t248.
    DATA(t249) = t210.
    CLEAR t248.
    IF t249 IS BOUND.
      DATA t250 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t250.
      DATA t251 TYPE REF TO object.
      CLEAR t251.
      CLEAR t250.
      t251 = t249.
      TRY.
          t248 ?= t251.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t248 IS NOT BOUND.
        TRY.
            t250 ?= t249.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t250 IS BOUND.
          t248 = t250->source( ).
        ENDIF.
        IF t248 IS NOT BOUND.
          CREATE OBJECT t248.
          t248->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t248->oval = t249.
        ENDIF.
      ENDIF.
    ENDIF.
    t247 = t248.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t252.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t253.
    DATA(t254) = |?=|.
    CLEAR t253.
    CREATE OBJECT t253.
    t253->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t253->sval = t254.
    t252 = t253.
    DATA t255 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t255.
    DATA t256 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t256.
    CREATE OBJECT t256.
    t255 = t256.
    DATA t257 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t257.
    DATA(t258) = t247.
    DATA(t259) = t252.
    DATA(t260) = t255.
    t257 = zcl_lnt_st_combi_module=>alt_prio( i_first = t258 i_second = t259 i_rest = t260 ).
    t246 = t257.
    CLEAR t245.
    IF t246 IS BOUND.
      DATA t261 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t261.
      DATA t262 TYPE REF TO object.
      CLEAR t262.
      CLEAR t261.
      t262 = t246.
      TRY.
          t245 ?= t262.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t245 IS NOT BOUND.
        TRY.
            t261 ?= t246.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t261 IS BOUND.
          t245 = t261->source( ).
        ENDIF.
        IF t245 IS NOT BOUND.
          CREATE OBJECT t245.
          t245->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t245->oval = t246.
        ENDIF.
      ENDIF.
    ENDIF.
    t244 = t245.
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t263.
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t264.
    DATA(t265) = t129.
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
    DATA(t271) = t244.
    DATA(t272) = t263.
    DATA(t273) = t268.
    t270 = zcl_lnt_st_combi_module=>alt_prio( i_first = t271 i_second = t272 i_rest = t273 ).
    t243 = t270.
    t242 = t243.
    DATA t274 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t274.
    DATA t275 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t275.
    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t276.
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t277.
    DATA(t278) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t277.
    IF t278 IS BOUND.
      CREATE OBJECT t277.
      t277->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t277->cval = t278.
    ENDIF.
    t276 = t277.
    DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t279.
    DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t280.
    DATA(t281) = t242.
    CLEAR t280.
    IF t281 IS BOUND.
      DATA t282 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t282.
      DATA t283 TYPE REF TO object.
      CLEAR t283.
      CLEAR t282.
      t283 = t281.
      TRY.
          t280 ?= t283.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t280 IS NOT BOUND.
        TRY.
            t282 ?= t281.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t282 IS BOUND.
          t280 = t282->source( ).
        ENDIF.
        IF t280 IS NOT BOUND.
          CREATE OBJECT t280.
          t280->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t280->oval = t281.
        ENDIF.
      ENDIF.
    ENDIF.
    t279 = t280.
    DATA t284 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t284.
    DATA t285 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t285.
    CREATE OBJECT t285.
    t284 = t285.
    DATA(t286) = t284.
    DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t287.
    DATA(t288) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t287.
    IF t288 IS BOUND.
      CREATE OBJECT t287.
      t287->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t287->cval = t288.
    ENDIF.
    t286->load( ).
    APPEND t287 TO t286->items.
    t286->save( ).
    DATA t289 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t289.
    DATA(t290) = t276.
    DATA(t291) = t279.
    DATA(t292) = t284.
    t289 = zcl_lnt_st_combi_module=>seq( i_first = t290 i_second = t291 i_rest = t292 ).
    t275 = t289.
    t274 = t275.
    DATA t293 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t293.
    DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t294.
    DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t295.
    DATA(t296) = t6.
    CLEAR t295.
    IF t296 IS BOUND.
      DATA t297 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t297.
      DATA t298 TYPE REF TO object.
      CLEAR t298.
      CLEAR t297.
      t298 = t296.
      TRY.
          t295 ?= t298.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t295 IS NOT BOUND.
        TRY.
            t297 ?= t296.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t297 IS BOUND.
          t295 = t297->source( ).
        ENDIF.
        IF t295 IS NOT BOUND.
          CREATE OBJECT t295.
          t295->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t295->oval = t296.
        ENDIF.
      ENDIF.
    ENDIF.
    t294 = t295.
    DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t299.
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t300.
    DATA(t301) = t274.
    CLEAR t300.
    IF t301 IS BOUND.
      DATA t302 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t302.
      DATA t303 TYPE REF TO object.
      CLEAR t303.
      CLEAR t302.
      t303 = t301.
      TRY.
          t300 ?= t303.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t300 IS NOT BOUND.
        TRY.
            t302 ?= t301.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t302 IS BOUND.
          t300 = t302->source( ).
        ENDIF.
        IF t300 IS NOT BOUND.
          CREATE OBJECT t300.
          t300->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t300->oval = t301.
        ENDIF.
      ENDIF.
    ENDIF.
    t299 = t300.
    DATA t304 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t304.
    DATA t305 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t305.
    CREATE OBJECT t305.
    t304 = t305.
    DATA t306 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t306.
    DATA(t307) = t294.
    DATA(t308) = t299.
    DATA(t309) = t304.
    t306 = zcl_lnt_st_combi_module=>alt( i_first = t307 i_second = t308 i_rest = t309 ).
    t293 = t306.
    result = t293.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d561_0fa14d6404b6.
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

  METHOD zif_lnt_union_3a2bcbb5~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_3a2bcbb5~get_matcher.
    result = me->get_matcher( ).
  ENDMETHOD.
ENDCLASS.
