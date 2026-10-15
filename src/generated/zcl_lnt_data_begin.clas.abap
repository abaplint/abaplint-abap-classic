* TS: src/abap/2_statements/statements/data_begin.ts:6:1 DataBegin
CLASS zcl_lnt_data_begin DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_data_begin IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = |OCCURS|.
    CLEAR t4.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
    CLEAR t10.
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t10->cval = t11.
    ENDIF.
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    CLEAR t13.
    IF t14 IS BOUND.
      CREATE OBJECT t13.
      t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t13->cval = t14.
    ENDIF.
    t12 = t13.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t16.
    CREATE OBJECT t16.
    t15 = t16.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t17.
    DATA(t18) = t9.
    DATA(t19) = t12.
    DATA(t20) = t15.
    t17 = zcl_lnt_st_combi_module=>alt_prio( i_first = t18 i_second = t19 i_rest = t20 ).
    t8 = t17.
    CLEAR t7.
    IF t8 IS BOUND.
      DATA t21 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t21.
      DATA t22 TYPE REF TO object.
      CLEAR t22.
      CLEAR t21.
      t22 = t8.
      TRY.
          t7 ?= t22.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7 IS NOT BOUND.
        TRY.
            t21 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t21 IS BOUND.
          t7 = t21->source( ).
        ENDIF.
        IF t7 IS NOT BOUND.
          CREATE OBJECT t7.
          t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->oval = t8.
        ENDIF.
      ENDIF.
    ENDIF.
    t6 = t7.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t24.
    CREATE OBJECT t24.
    t23 = t24.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t25.
    DATA(t26) = t3.
    DATA(t27) = t6.
    DATA(t28) = t23.
    t25 = zcl_lnt_st_combi_module=>seq( i_first = t26 i_second = t27 i_rest = t28 ).
    t2 = t25.
    t1 = t2.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t29.
    DATA t30 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA(t33) = |COMMON PART|.
    CLEAR t32.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = t33.
    t31 = t32.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    DATA(t38) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
    CLEAR t37.
    IF t38 IS BOUND.
      CREATE OBJECT t37.
      t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t37->cval = t38.
    ENDIF.
    t36 = zcl_lnt_st_combi_module=>opt_prio( i_first = t37 ).
    CLEAR t35.
    IF t36 IS BOUND.
      DATA t39 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t39.
      DATA t40 TYPE REF TO object.
      CLEAR t40.
      CLEAR t39.
      t40 = t36.
      TRY.
          t35 ?= t40.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t35 IS NOT BOUND.
        TRY.
            t39 ?= t36.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t39 IS BOUND.
          t35 = t39->source( ).
        ENDIF.
        IF t35 IS NOT BOUND.
          CREATE OBJECT t35.
          t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t35->oval = t36.
        ENDIF.
      ENDIF.
    ENDIF.
    t34 = t35.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t42.
    CREATE OBJECT t42.
    t41 = t42.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t43.
    DATA(t44) = t31.
    DATA(t45) = t34.
    DATA(t46) = t41.
    t43 = zcl_lnt_st_combi_module=>seq( i_first = t44 i_second = t45 i_rest = t46 ).
    t30 = t43.
    t29 = t30.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t47.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA(t51) = |BEGIN OF|.
    CLEAR t50.
    CREATE OBJECT t50.
    t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t50->sval = t51.
    t49 = t50.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    DATA(t57) = t29.
    CLEAR t56.
    IF t57 IS BOUND.
      DATA t58 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t58.
      DATA t59 TYPE REF TO object.
      CLEAR t59.
      CLEAR t58.
      t59 = t57.
      TRY.
          t56 ?= t59.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t56 IS NOT BOUND.
        TRY.
            t58 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t58 IS BOUND.
          t56 = t58->source( ).
        ENDIF.
        IF t56 IS NOT BOUND.
          CREATE OBJECT t56.
          t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t56->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    t55 = t56.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA t62 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA(t65) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
    CLEAR t64.
    IF t65 IS BOUND.
      CREATE OBJECT t64.
      t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t64->cval = t65.
    ENDIF.
    t63 = t64.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA t68 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t68.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA(t70) = |READ-ONLY|.
    CLEAR t69.
    CREATE OBJECT t69.
    t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t69->sval = t70.
    t68 = zcl_lnt_st_combi_module=>opt_prio( i_first = t69 ).
    CLEAR t67.
    IF t68 IS BOUND.
      DATA t71 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t71.
      DATA t72 TYPE REF TO object.
      CLEAR t72.
      CLEAR t71.
      t72 = t68.
      TRY.
          t67 ?= t72.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t67 IS NOT BOUND.
        TRY.
            t71 ?= t68.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t71 IS BOUND.
          t67 = t71->source( ).
        ENDIF.
        IF t67 IS NOT BOUND.
          CREATE OBJECT t67.
          t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t67->oval = t68.
        ENDIF.
      ENDIF.
    ENDIF.
    t66 = t67.
    DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t74.
    CREATE OBJECT t74.
    t73 = t74.
    DATA(t75) = t73.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA(t79) = t1.
    CLEAR t78.
    IF t79 IS BOUND.
      DATA t80 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t80.
      DATA t81 TYPE REF TO object.
      CLEAR t81.
      CLEAR t80.
      t81 = t79.
      TRY.
          t78 ?= t81.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t78 IS NOT BOUND.
        TRY.
            t80 ?= t79.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t80 IS BOUND.
          t78 = t80->source( ).
        ENDIF.
        IF t78 IS NOT BOUND.
          CREATE OBJECT t78.
          t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t78->oval = t79.
        ENDIF.
      ENDIF.
    ENDIF.
    t77 = zcl_lnt_st_combi_module=>opt_prio( i_first = t78 ).
    CLEAR t76.
    IF t77 IS BOUND.
      DATA t82 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t82.
      DATA t83 TYPE REF TO object.
      CLEAR t83.
      CLEAR t82.
      t83 = t77.
      TRY.
          t76 ?= t83.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t76 IS NOT BOUND.
        TRY.
            t82 ?= t77.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t82 IS BOUND.
          t76 = t82->source( ).
        ENDIF.
        IF t76 IS NOT BOUND.
          CREATE OBJECT t76.
          t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t76->oval = t77.
        ENDIF.
      ENDIF.
    ENDIF.
    t75->load( ).
    APPEND t76 TO t75->items.
    t75->save( ).
    DATA t84 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t84.
    DATA(t85) = t63.
    DATA(t86) = t66.
    DATA(t87) = t73.
    t84 = zcl_lnt_st_combi_module=>seq( i_first = t85 i_second = t86 i_rest = t87 ).
    t62 = t84.
    CLEAR t61.
    IF t62 IS BOUND.
      DATA t88 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t88.
      DATA t89 TYPE REF TO object.
      CLEAR t89.
      CLEAR t88.
      t89 = t62.
      TRY.
          t61 ?= t89.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t61 IS NOT BOUND.
        TRY.
            t88 ?= t62.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t88 IS BOUND.
          t61 = t88->source( ).
        ENDIF.
        IF t61 IS NOT BOUND.
          CREATE OBJECT t61.
          t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t61->oval = t62.
        ENDIF.
      ENDIF.
    ENDIF.
    t60 = t61.
    DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t91.
    CREATE OBJECT t91.
    t90 = t91.
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t92.
    DATA(t93) = t55.
    DATA(t94) = t60.
    DATA(t95) = t90.
    t92 = zcl_lnt_st_combi_module=>alt_prio( i_first = t93 i_second = t94 i_rest = t95 ).
    t54 = t92.
    CLEAR t53.
    IF t54 IS BOUND.
      DATA t96 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t96.
      DATA t97 TYPE REF TO object.
      CLEAR t97.
      CLEAR t96.
      t97 = t54.
      TRY.
          t53 ?= t97.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t53 IS NOT BOUND.
        TRY.
            t96 ?= t54.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t96 IS BOUND.
          t53 = t96->source( ).
        ENDIF.
        IF t53 IS NOT BOUND.
          CREATE OBJECT t53.
          t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t53->oval = t54.
        ENDIF.
      ENDIF.
    ENDIF.
    t52 = t53.
    DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t99.
    CREATE OBJECT t99.
    t98 = t99.
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t100.
    DATA(t101) = t49.
    DATA(t102) = t52.
    DATA(t103) = t98.
    t100 = zcl_lnt_st_combi_module=>seq( i_first = t101 i_second = t102 i_rest = t103 ).
    t48 = t100.
    t47 = t48.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t104.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA(t107) = |DATA|.
    CLEAR t106.
    CREATE OBJECT t106.
    t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t106->sval = t107.
    t105 = t106.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t108.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA(t110) = t47.
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
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t115.
    DATA(t116) = t105.
    DATA(t117) = t108.
    DATA(t118) = t113.
    t115 = zcl_lnt_st_combi_module=>seq( i_first = t116 i_second = t117 i_rest = t118 ).
    t104 = t115.
    result = t104.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d438_3024048eff4c.
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
