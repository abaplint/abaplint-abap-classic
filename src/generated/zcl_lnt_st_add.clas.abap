* TS: src/abap/2_statements/statements/add.ts:7:1 Add
CLASS zcl_lnt_st_add DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_add IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = |TO|.
    CLEAR t4.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
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
    DATA(t19) = |ACCORDING TO|.
    CLEAR t18.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t21.
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t21->cval = t22.
    ENDIF.
    t20 = t21.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t24.
    CREATE OBJECT t24.
    t23 = t24.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t25.
    DATA(t26) = t17.
    DATA(t27) = t20.
    DATA(t28) = t23.
    t25 = zcl_lnt_st_combi_module=>seq( i_first = t26 i_second = t27 i_rest = t28 ).
    t16 = t25.
    t15 = t16.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t29.
    DATA t30 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA(t33) = |GIVING|.
    CLEAR t32.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = t33.
    t31 = t32.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t35.
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t35->cval = t36.
    ENDIF.
    t34 = t35.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t38.
    CREATE OBJECT t38.
    t37 = t38.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t39.
    DATA(t40) = t31.
    DATA(t41) = t34.
    DATA(t42) = t37.
    t39 = zcl_lnt_st_combi_module=>seq( i_first = t40 i_second = t41 i_rest = t42 ).
    t30 = t39.
    t29 = t30.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t43.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA(t47) = |THEN|.
    CLEAR t46.
    CREATE OBJECT t46.
    t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t46->sval = t47.
    t45 = t46.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t49.
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t49->cval = t50.
    ENDIF.
    t48 = t49.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t52.
    CREATE OBJECT t52.
    t51 = t52.
    DATA(t53) = t51.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA(t55) = |UNTIL|.
    CLEAR t54.
    CREATE OBJECT t54.
    t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t54->sval = t55.
    t53->load( ).
    APPEND t54 TO t53->items.
    t53->save( ).
    DATA(t56) = t51.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA(t58) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t57.
    IF t58 IS BOUND.
      CREATE OBJECT t57.
      t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t57->cval = t58.
    ENDIF.
    t56->load( ).
    APPEND t57 TO t56->items.
    t56->save( ).
    DATA(t59) = t51.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA t63 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA(t66) = t29.
    CLEAR t65.
    IF t66 IS BOUND.
      DATA t67 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t67.
      DATA t68 TYPE REF TO object.
      CLEAR t68.
      CLEAR t67.
      t68 = t66.
      TRY.
          t65 ?= t68.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t65 IS NOT BOUND.
        TRY.
            t67 ?= t66.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t67 IS BOUND.
          t65 = t67->source( ).
        ENDIF.
        IF t65 IS NOT BOUND.
          CREATE OBJECT t65.
          t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t65->oval = t66.
        ENDIF.
      ENDIF.
    ENDIF.
    t64 = t65.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA(t71) = t15.
    CLEAR t70.
    IF t71 IS BOUND.
      DATA t72 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t72.
      DATA t73 TYPE REF TO object.
      CLEAR t73.
      CLEAR t72.
      t73 = t71.
      TRY.
          t70 ?= t73.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t70 IS NOT BOUND.
        TRY.
            t72 ?= t71.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t72 IS BOUND.
          t70 = t72->source( ).
        ENDIF.
        IF t70 IS NOT BOUND.
          CREATE OBJECT t70.
          t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t70->oval = t71.
        ENDIF.
      ENDIF.
    ENDIF.
    t69 = t70.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t75.
    CREATE OBJECT t75.
    t74 = t75.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t76.
    DATA(t77) = t64.
    DATA(t78) = t69.
    DATA(t79) = t74.
    t76 = zcl_lnt_st_combi_module=>per( i_first = t77 i_second = t78 i_rest = t79 ).
    t63 = t76.
    CLEAR t62.
    IF t63 IS BOUND.
      DATA t80 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t80.
      DATA t81 TYPE REF TO object.
      CLEAR t81.
      CLEAR t80.
      t81 = t63.
      TRY.
          t62 ?= t81.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t62 IS NOT BOUND.
        TRY.
            t80 ?= t63.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t80 IS BOUND.
          t62 = t80->source( ).
        ENDIF.
        IF t62 IS NOT BOUND.
          CREATE OBJECT t62.
          t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t62->oval = t63.
        ENDIF.
      ENDIF.
    ENDIF.
    t61 = zcl_lnt_st_combi_module=>opt( i_first = t62 ).
    CLEAR t60.
    IF t61 IS BOUND.
      DATA t82 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t82.
      DATA t83 TYPE REF TO object.
      CLEAR t83.
      CLEAR t82.
      t83 = t61.
      TRY.
          t60 ?= t83.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t60 IS NOT BOUND.
        TRY.
            t82 ?= t61.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t82 IS BOUND.
          t60 = t82->source( ).
        ENDIF.
        IF t60 IS NOT BOUND.
          CREATE OBJECT t60.
          t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t60->oval = t61.
        ENDIF.
      ENDIF.
    ENDIF.
    t59->load( ).
    APPEND t60 TO t59->items.
    t59->save( ).
    DATA(t84) = t51.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA(t88) = t1.
    CLEAR t87.
    IF t88 IS BOUND.
      DATA t89 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t89.
      DATA t90 TYPE REF TO object.
      CLEAR t90.
      CLEAR t89.
      t90 = t88.
      TRY.
          t87 ?= t90.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t87 IS NOT BOUND.
        TRY.
            t89 ?= t88.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t89 IS BOUND.
          t87 = t89->source( ).
        ENDIF.
        IF t87 IS NOT BOUND.
          CREATE OBJECT t87.
          t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t87->oval = t88.
        ENDIF.
      ENDIF.
    ENDIF.
    t86 = zcl_lnt_st_combi_module=>opt( i_first = t87 ).
    CLEAR t85.
    IF t86 IS BOUND.
      DATA t91 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t91.
      DATA t92 TYPE REF TO object.
      CLEAR t92.
      CLEAR t91.
      t92 = t86.
      TRY.
          t85 ?= t92.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t85 IS NOT BOUND.
        TRY.
            t91 ?= t86.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t91 IS BOUND.
          t85 = t91->source( ).
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
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t93.
    DATA(t94) = t45.
    DATA(t95) = t48.
    DATA(t96) = t51.
    t93 = zcl_lnt_st_combi_module=>seq( i_first = t94 i_second = t95 i_rest = t96 ).
    t44 = t93.
    t43 = t44.
    DATA t97 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t97.
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA(t101) = |ADD|.
    CLEAR t100.
    CREATE OBJECT t100.
    t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t100->sval = t101.
    t99 = t100.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA(t104) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t103.
    IF t104 IS BOUND.
      CREATE OBJECT t103.
      t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t103->cval = t104.
    ENDIF.
    t102 = t103.
    DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t105.
    DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t106.
    CREATE OBJECT t106.
    t105 = t106.
    DATA(t107) = t105.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t108.
    DATA t109 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t109.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t110.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    DATA(t112) = t1.
    CLEAR t111.
    IF t112 IS BOUND.
      DATA t113 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t113.
      DATA t114 TYPE REF TO object.
      CLEAR t114.
      CLEAR t113.
      t114 = t112.
      TRY.
          t111 ?= t114.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t111 IS NOT BOUND.
        TRY.
            t113 ?= t112.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t113 IS BOUND.
          t111 = t113->source( ).
        ENDIF.
        IF t111 IS NOT BOUND.
          CREATE OBJECT t111.
          t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t111->oval = t112.
        ENDIF.
      ENDIF.
    ENDIF.
    t110 = t111.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA(t117) = t43.
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
    t115 = t116.
    DATA t120 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t120.
    DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t121.
    CREATE OBJECT t121.
    t120 = t121.
    DATA t122 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t122.
    DATA(t123) = t110.
    DATA(t124) = t115.
    DATA(t125) = t120.
    t122 = zcl_lnt_st_combi_module=>alt_prio( i_first = t123 i_second = t124 i_rest = t125 ).
    t109 = t122.
    CLEAR t108.
    IF t109 IS BOUND.
      DATA t126 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t126.
      DATA t127 TYPE REF TO object.
      CLEAR t127.
      CLEAR t126.
      t127 = t109.
      TRY.
          t108 ?= t127.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t108 IS NOT BOUND.
        TRY.
            t126 ?= t109.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t126 IS BOUND.
          t108 = t126->source( ).
        ENDIF.
        IF t108 IS NOT BOUND.
          CREATE OBJECT t108.
          t108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t108->oval = t109.
        ENDIF.
      ENDIF.
    ENDIF.
    t107->load( ).
    APPEND t108 TO t107->items.
    t107->save( ).
    DATA t128 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t128.
    DATA(t129) = t99.
    DATA(t130) = t102.
    DATA(t131) = t105.
    t128 = zcl_lnt_st_combi_module=>seq( i_first = t129 i_second = t130 i_rest = t131 ).
    t98 = t128.
    t97 = t98.
    DATA t132 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t132.
    DATA(t133) = |KeyUser|.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    DATA(t135) = t97.
    CLEAR t134.
    IF t135 IS BOUND.
      DATA t136 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t136.
      DATA t137 TYPE REF TO object.
      CLEAR t137.
      CLEAR t136.
      t137 = t135.
      TRY.
          t134 ?= t137.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t134 IS NOT BOUND.
        TRY.
            t136 ?= t135.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t136 IS BOUND.
          t134 = t136->source( ).
        ENDIF.
        IF t134 IS NOT BOUND.
          CREATE OBJECT t134.
          t134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t134->oval = t135.
        ENDIF.
      ENDIF.
    ENDIF.
    t132 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t133 i_first = t134 ).
    result = t132.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d370_d485abb4e201.
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
