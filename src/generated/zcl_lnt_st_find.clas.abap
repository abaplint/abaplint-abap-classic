* TS: src/abap/2_statements/statements/find.ts:6:1 Find
CLASS zcl_lnt_st_find DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_find IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = |IGNORING CASE|.
    CLEAR t4.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = |RESPECTING CASE|.
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
    DATA(t13) = |IN BYTE MODE|.
    CLEAR t12.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = t13.
    t11->load( ).
    APPEND t12 TO t11->items.
    t11->save( ).
    DATA(t14) = t9.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA(t16) = |IN CHARACTER MODE|.
    CLEAR t15.
    CREATE OBJECT t15.
    t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t15->sval = t16.
    t14->load( ).
    APPEND t15 TO t14->items.
    t14->save( ).
    DATA(t17) = t9.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA(t22) = |OF|.
    CLEAR t21.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = t22.
    t20 = t21.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
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
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t28.
    DATA(t29) = t20.
    DATA(t30) = t23.
    DATA(t31) = t26.
    t28 = zcl_lnt_st_combi_module=>seq( i_first = t29 i_second = t30 i_rest = t31 ).
    t19 = t28.
    CLEAR t18.
    IF t19 IS BOUND.
      DATA t32 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t32.
      DATA t33 TYPE REF TO object.
      CLEAR t33.
      CLEAR t32.
      t33 = t19.
      TRY.
          t18 ?= t33.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t18 IS NOT BOUND.
        TRY.
            t32 ?= t19.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t32 IS BOUND.
          t18 = t32->source( ).
        ENDIF.
        IF t18 IS NOT BOUND.
          CREATE OBJECT t18.
          t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t18->oval = t19.
        ENDIF.
      ENDIF.
    ENDIF.
    t17->load( ).
    APPEND t18 TO t17->items.
    t17->save( ).
    DATA(t34) = t9.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA(t39) = |FROM|.
    CLEAR t38.
    CREATE OBJECT t38.
    t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t38->sval = t39.
    t37 = t38.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA(t42) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t41.
    IF t42 IS BOUND.
      CREATE OBJECT t41.
      t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t41->cval = t42.
    ENDIF.
    t40 = t41.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t44.
    CREATE OBJECT t44.
    t43 = t44.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t45.
    DATA(t46) = t37.
    DATA(t47) = t40.
    DATA(t48) = t43.
    t45 = zcl_lnt_st_combi_module=>seq( i_first = t46 i_second = t47 i_rest = t48 ).
    t36 = t45.
    CLEAR t35.
    IF t36 IS BOUND.
      DATA t49 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t49.
      DATA t50 TYPE REF TO object.
      CLEAR t50.
      CLEAR t49.
      t50 = t36.
      TRY.
          t35 ?= t50.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t35 IS NOT BOUND.
        TRY.
            t49 ?= t36.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t49 IS BOUND.
          t35 = t49->source( ).
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
    DATA(t51) = t9.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    DATA(t56) = |TO|.
    CLEAR t55.
    CREATE OBJECT t55.
    t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t55->sval = t56.
    t54 = t55.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA(t59) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t58.
    IF t59 IS BOUND.
      CREATE OBJECT t58.
      t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t58->cval = t59.
    ENDIF.
    t57 = t58.
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t61.
    CREATE OBJECT t61.
    t60 = t61.
    DATA t62 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t62.
    DATA(t63) = t54.
    DATA(t64) = t57.
    DATA(t65) = t60.
    t62 = zcl_lnt_st_combi_module=>seq( i_first = t63 i_second = t64 i_rest = t65 ).
    t53 = t62.
    CLEAR t52.
    IF t53 IS BOUND.
      DATA t66 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t66.
      DATA t67 TYPE REF TO object.
      CLEAR t67.
      CLEAR t66.
      t67 = t53.
      TRY.
          t52 ?= t67.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t52 IS NOT BOUND.
        TRY.
            t66 ?= t53.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t66 IS BOUND.
          t52 = t66->source( ).
        ENDIF.
        IF t52 IS NOT BOUND.
          CREATE OBJECT t52.
          t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t52->oval = t53.
        ENDIF.
      ENDIF.
    ENDIF.
    t51->load( ).
    APPEND t52 TO t51->items.
    t51->save( ).
    DATA(t68) = t9.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA(t73) = |MATCH OFFSET|.
    CLEAR t72.
    CREATE OBJECT t72.
    t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t72->sval = t73.
    t71 = t72.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA(t76) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t75.
    IF t76 IS BOUND.
      CREATE OBJECT t75.
      t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t75->cval = t76.
    ENDIF.
    t74 = t75.
    DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t78.
    CREATE OBJECT t78.
    t77 = t78.
    DATA t79 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t79.
    DATA(t80) = t71.
    DATA(t81) = t74.
    DATA(t82) = t77.
    t79 = zcl_lnt_st_combi_module=>seq( i_first = t80 i_second = t81 i_rest = t82 ).
    t70 = t79.
    CLEAR t69.
    IF t70 IS BOUND.
      DATA t83 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t83.
      DATA t84 TYPE REF TO object.
      CLEAR t84.
      CLEAR t83.
      t84 = t70.
      TRY.
          t69 ?= t84.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t69 IS NOT BOUND.
        TRY.
            t83 ?= t70.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t83 IS BOUND.
          t69 = t83->source( ).
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
    DATA(t85) = t9.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA(t90) = |MATCH LINE|.
    CLEAR t89.
    CREATE OBJECT t89.
    t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t89->sval = t90.
    t88 = t89.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA(t93) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
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
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t96.
    DATA(t97) = t88.
    DATA(t98) = t91.
    DATA(t99) = t94.
    t96 = zcl_lnt_st_combi_module=>seq( i_first = t97 i_second = t98 i_rest = t99 ).
    t87 = t96.
    CLEAR t86.
    IF t87 IS BOUND.
      DATA t100 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t100.
      DATA t101 TYPE REF TO object.
      CLEAR t101.
      CLEAR t100.
      t101 = t87.
      TRY.
          t86 ?= t101.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t86 IS NOT BOUND.
        TRY.
            t100 ?= t87.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t100 IS BOUND.
          t86 = t100->source( ).
        ENDIF.
        IF t86 IS NOT BOUND.
          CREATE OBJECT t86.
          t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t86->oval = t87.
        ENDIF.
      ENDIF.
    ENDIF.
    t85->load( ).
    APPEND t86 TO t85->items.
    t85->save( ).
    DATA(t102) = t9.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t104.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA(t107) = |MATCH COUNT|.
    CLEAR t106.
    CREATE OBJECT t106.
    t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t106->sval = t107.
    t105 = t106.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t108.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA(t110) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
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
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t113.
    DATA(t114) = t105.
    DATA(t115) = t108.
    DATA(t116) = t111.
    t113 = zcl_lnt_st_combi_module=>seq( i_first = t114 i_second = t115 i_rest = t116 ).
    t104 = t113.
    CLEAR t103.
    IF t104 IS BOUND.
      DATA t117 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t117.
      DATA t118 TYPE REF TO object.
      CLEAR t118.
      CLEAR t117.
      t118 = t104.
      TRY.
          t103 ?= t118.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t103 IS NOT BOUND.
        TRY.
            t117 ?= t104.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t117 IS BOUND.
          t103 = t117->source( ).
        ENDIF.
        IF t103 IS NOT BOUND.
          CREATE OBJECT t103.
          t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t103->oval = t104.
        ENDIF.
      ENDIF.
    ENDIF.
    t102->load( ).
    APPEND t103 TO t102->items.
    t102->save( ).
    DATA(t119) = t9.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    DATA t121 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t121.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t123.
    DATA(t124) = |MATCH LENGTH|.
    CLEAR t123.
    CREATE OBJECT t123.
    t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t123->sval = t124.
    t122 = t123.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    DATA(t127) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t126.
    IF t127 IS BOUND.
      CREATE OBJECT t126.
      t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t126->cval = t127.
    ENDIF.
    t125 = t126.
    DATA t128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t128.
    DATA t129 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t129.
    CREATE OBJECT t129.
    t128 = t129.
    DATA t130 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t130.
    DATA(t131) = t122.
    DATA(t132) = t125.
    DATA(t133) = t128.
    t130 = zcl_lnt_st_combi_module=>seq( i_first = t131 i_second = t132 i_rest = t133 ).
    t121 = t130.
    CLEAR t120.
    IF t121 IS BOUND.
      DATA t134 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t134.
      DATA t135 TYPE REF TO object.
      CLEAR t135.
      CLEAR t134.
      t135 = t121.
      TRY.
          t120 ?= t135.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t120 IS NOT BOUND.
        TRY.
            t134 ?= t121.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t134 IS BOUND.
          t120 = t134->source( ).
        ENDIF.
        IF t120 IS NOT BOUND.
          CREATE OBJECT t120.
          t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t120->oval = t121.
        ENDIF.
      ENDIF.
    ENDIF.
    t119->load( ).
    APPEND t120 TO t119->items.
    t119->save( ).
    DATA(t136) = t9.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t137.
    DATA t138 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t138.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t139.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t140.
    DATA(t141) = |LENGTH|.
    CLEAR t140.
    CREATE OBJECT t140.
    t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t140->sval = t141.
    t139 = t140.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    DATA(t144) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t143.
    IF t144 IS BOUND.
      CREATE OBJECT t143.
      t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t143->cval = t144.
    ENDIF.
    t142 = t143.
    DATA t145 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t145.
    DATA t146 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t146.
    CREATE OBJECT t146.
    t145 = t146.
    DATA t147 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t147.
    DATA(t148) = t139.
    DATA(t149) = t142.
    DATA(t150) = t145.
    t147 = zcl_lnt_st_combi_module=>seq( i_first = t148 i_second = t149 i_rest = t150 ).
    t138 = t147.
    CLEAR t137.
    IF t138 IS BOUND.
      DATA t151 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t151.
      DATA t152 TYPE REF TO object.
      CLEAR t152.
      CLEAR t151.
      t152 = t138.
      TRY.
          t137 ?= t152.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t137 IS NOT BOUND.
        TRY.
            t151 ?= t138.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t151 IS BOUND.
          t137 = t151->source( ).
        ENDIF.
        IF t137 IS NOT BOUND.
          CREATE OBJECT t137.
          t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t137->oval = t138.
        ENDIF.
      ENDIF.
    ENDIF.
    t136->load( ).
    APPEND t137 TO t136->items.
    t136->save( ).
    DATA(t153) = t9.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t154.
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t155.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t156.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    DATA(t158) = |RESULTS|.
    CLEAR t157.
    CREATE OBJECT t157.
    t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t157->sval = t158.
    t156 = t157.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    DATA(t161) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
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
    DATA t164 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t164.
    DATA(t165) = t156.
    DATA(t166) = t159.
    DATA(t167) = t162.
    t164 = zcl_lnt_st_combi_module=>seq( i_first = t165 i_second = t166 i_rest = t167 ).
    t155 = t164.
    CLEAR t154.
    IF t155 IS BOUND.
      DATA t168 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t168.
      DATA t169 TYPE REF TO object.
      CLEAR t169.
      CLEAR t168.
      t169 = t155.
      TRY.
          t154 ?= t169.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t154 IS NOT BOUND.
        TRY.
            t168 ?= t155.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t168 IS BOUND.
          t154 = t168->source( ).
        ENDIF.
        IF t154 IS NOT BOUND.
          CREATE OBJECT t154.
          t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t154->oval = t155.
        ENDIF.
      ENDIF.
    ENDIF.
    t153->load( ).
    APPEND t154 TO t153->items.
    t153->save( ).
    DATA(t170) = t9.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t171.
    DATA t172 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t172.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t174.
    DATA(t175) = |SUBMATCHES|.
    CLEAR t174.
    CREATE OBJECT t174.
    t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t174->sval = t175.
    t173 = t174.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t176.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t177.
    DATA(t178) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t177.
    IF t178 IS BOUND.
      CREATE OBJECT t177.
      t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t177->cval = t178.
    ENDIF.
    t176 = t177.
    DATA t179 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t179.
    DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t180.
    CREATE OBJECT t180.
    t179 = t180.
    DATA t181 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t181.
    DATA(t182) = t173.
    DATA(t183) = t176.
    DATA(t184) = t179.
    t181 = zcl_lnt_st_combi_module=>seq( i_first = t182 i_second = t183 i_rest = t184 ).
    t172 = t181.
    CLEAR t171.
    IF t172 IS BOUND.
      DATA t185 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t185.
      DATA t186 TYPE REF TO object.
      CLEAR t186.
      CLEAR t185.
      t186 = t172.
      TRY.
          t171 ?= t186.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t171 IS NOT BOUND.
        TRY.
            t185 ?= t172.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t185 IS BOUND.
          t171 = t185->source( ).
        ENDIF.
        IF t171 IS NOT BOUND.
          CREATE OBJECT t171.
          t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t171->oval = t172.
        ENDIF.
      ENDIF.
    ENDIF.
    t170->load( ).
    APPEND t171 TO t170->items.
    t170->save( ).
    DATA(t187) = t9.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t188.
    DATA t189 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t189.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t190.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t191.
    DATA(t192) = |SUBMATCHES|.
    CLEAR t191.
    CREATE OBJECT t191.
    t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t191->sval = t192.
    t190 = t191.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t193.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    DATA(t195) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t194.
    IF t195 IS BOUND.
      CREATE OBJECT t194.
      t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t194->cval = t195.
    ENDIF.
    t193 = t194.
    DATA t196 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t196.
    DATA t197 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t197.
    CREATE OBJECT t197.
    t196 = t197.
    DATA(t198) = t196.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t199.
    DATA(t200) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t199.
    IF t200 IS BOUND.
      CREATE OBJECT t199.
      t199->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t199->cval = t200.
    ENDIF.
    t198->load( ).
    APPEND t199 TO t198->items.
    t198->save( ).
    DATA t201 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t201.
    DATA(t202) = t190.
    DATA(t203) = t193.
    DATA(t204) = t196.
    t201 = zcl_lnt_st_combi_module=>seq( i_first = t202 i_second = t203 i_rest = t204 ).
    t189 = t201.
    CLEAR t188.
    IF t189 IS BOUND.
      DATA t205 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t205.
      DATA t206 TYPE REF TO object.
      CLEAR t206.
      CLEAR t205.
      t206 = t189.
      TRY.
          t188 ?= t206.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t188 IS NOT BOUND.
        TRY.
            t205 ?= t189.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t205 IS BOUND.
          t188 = t205->source( ).
        ENDIF.
        IF t188 IS NOT BOUND.
          CREATE OBJECT t188.
          t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t188->oval = t189.
        ENDIF.
      ENDIF.
    ENDIF.
    t187->load( ).
    APPEND t188 TO t187->items.
    t187->save( ).
    DATA(t207) = t9.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t208.
    DATA t209 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t209.
    DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t210.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t211.
    DATA(t212) = |SUBMATCHES|.
    CLEAR t211.
    CREATE OBJECT t211.
    t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t211->sval = t212.
    t210 = t211.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t213.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t214.
    DATA t215 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t215.
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t216.
    DATA(t217) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t216.
    IF t217 IS BOUND.
      CREATE OBJECT t216.
      t216->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t216->cval = t217.
    ENDIF.
    t215 = zcl_lnt_st_combi_module=>plus( i_first = t216 ).
    CLEAR t214.
    IF t215 IS BOUND.
      DATA t218 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t218.
      DATA t219 TYPE REF TO object.
      CLEAR t219.
      CLEAR t218.
      t219 = t215.
      TRY.
          t214 ?= t219.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t214 IS NOT BOUND.
        TRY.
            t218 ?= t215.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t218 IS BOUND.
          t214 = t218->source( ).
        ENDIF.
        IF t214 IS NOT BOUND.
          CREATE OBJECT t214.
          t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t214->oval = t215.
        ENDIF.
      ENDIF.
    ENDIF.
    t213 = t214.
    DATA t220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t220.
    DATA t221 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t221.
    CREATE OBJECT t221.
    t220 = t221.
    DATA t222 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t222.
    DATA(t223) = t210.
    DATA(t224) = t213.
    DATA(t225) = t220.
    t222 = zcl_lnt_st_combi_module=>seq( i_first = t223 i_second = t224 i_rest = t225 ).
    t209 = t222.
    CLEAR t208.
    IF t209 IS BOUND.
      DATA t226 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t226.
      DATA t227 TYPE REF TO object.
      CLEAR t227.
      CLEAR t226.
      t227 = t209.
      TRY.
          t208 ?= t227.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t208 IS NOT BOUND.
        TRY.
            t226 ?= t209.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t226 IS BOUND.
          t208 = t226->source( ).
        ENDIF.
        IF t208 IS NOT BOUND.
          CREATE OBJECT t208.
          t208->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t208->oval = t209.
        ENDIF.
      ENDIF.
    ENDIF.
    t207->load( ).
    APPEND t208 TO t207->items.
    t207->save( ).
    DATA t228 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t228.
    DATA(t229) = t3.
    DATA(t230) = t6.
    DATA(t231) = t9.
    t228 = zcl_lnt_st_combi_module=>per( i_first = t229 i_second = t230 i_rest = t231 ).
    t2 = t228.
    t1 = t2.
    DATA t232 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t232.
    DATA t233 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t233.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t234.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t235.
    DATA(t236) = |SECTION LENGTH|.
    CLEAR t235.
    CREATE OBJECT t235.
    t235->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t235->sval = t236.
    t234 = t235.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t237.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t238.
    DATA(t239) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t238.
    IF t239 IS BOUND.
      CREATE OBJECT t238.
      t238->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t238->cval = t239.
    ENDIF.
    t237 = t238.
    DATA t240 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t240.
    DATA t241 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t241.
    CREATE OBJECT t241.
    t240 = t241.
    DATA(t242) = t240.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t243.
    DATA(t244) = |OF|.
    CLEAR t243.
    CREATE OBJECT t243.
    t243->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t243->sval = t244.
    t242->load( ).
    APPEND t243 TO t242->items.
    t242->save( ).
    DATA t245 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t245.
    DATA(t246) = t234.
    DATA(t247) = t237.
    DATA(t248) = t240.
    t245 = zcl_lnt_st_combi_module=>seq( i_first = t246 i_second = t247 i_rest = t248 ).
    t233 = t245.
    t232 = t233.
    DATA t249 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t249.
    DATA t250 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t250.
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t251.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t252.
    DATA t253 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t253.
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t254.
    DATA t255 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t255.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t256.
    DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t257.
    DATA(t258) = |TABLE|.
    CLEAR t257.
    CREATE OBJECT t257.
    t257->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t257->sval = t258.
    t256 = t257.
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t259.
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t260.
    DATA(t261) = |SECTION OFFSET|.
    CLEAR t260.
    CREATE OBJECT t260.
    t260->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t260->sval = t261.
    t259 = t260.
    DATA t262 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t262.
    DATA t263 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t263.
    CREATE OBJECT t263.
    t262 = t263.
    DATA(t264) = t262.
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t265.
    DATA(t266) = t232.
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
    t264->load( ).
    APPEND t265 TO t264->items.
    t264->save( ).
    DATA t269 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t269.
    DATA(t270) = t256.
    DATA(t271) = t259.
    DATA(t272) = t262.
    t269 = zcl_lnt_st_combi_module=>alt_prio( i_first = t270 i_second = t271 i_rest = t272 ).
    t255 = t269.
    CLEAR t254.
    IF t255 IS BOUND.
      DATA t273 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t273.
      DATA t274 TYPE REF TO object.
      CLEAR t274.
      CLEAR t273.
      t274 = t255.
      TRY.
          t254 ?= t274.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t254 IS NOT BOUND.
        TRY.
            t273 ?= t255.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t273 IS BOUND.
          t254 = t273->source( ).
        ENDIF.
        IF t254 IS NOT BOUND.
          CREATE OBJECT t254.
          t254->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t254->oval = t255.
        ENDIF.
      ENDIF.
    ENDIF.
    t253 = zcl_lnt_st_combi_module=>opt_prio( i_first = t254 ).
    CLEAR t252.
    IF t253 IS BOUND.
      DATA t275 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t275.
      DATA t276 TYPE REF TO object.
      CLEAR t276.
      CLEAR t275.
      t276 = t253.
      TRY.
          t252 ?= t276.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t252 IS NOT BOUND.
        TRY.
            t275 ?= t253.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t275 IS BOUND.
          t252 = t275->source( ).
        ENDIF.
        IF t252 IS NOT BOUND.
          CREATE OBJECT t252.
          t252->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t252->oval = t253.
        ENDIF.
      ENDIF.
    ENDIF.
    t251 = t252.
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t277.
    DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t278.
    DATA(t279) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t278.
    IF t279 IS BOUND.
      CREATE OBJECT t278.
      t278->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t278->cval = t279.
    ENDIF.
    t277 = t278.
    DATA t280 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t280.
    DATA t281 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t281.
    CREATE OBJECT t281.
    t280 = t281.
    DATA t282 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t282.
    DATA(t283) = t251.
    DATA(t284) = t277.
    DATA(t285) = t280.
    t282 = zcl_lnt_st_combi_module=>seq( i_first = t283 i_second = t284 i_rest = t285 ).
    t250 = t282.
    t249 = t250.
    DATA t286 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t286.
    DATA t287 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t287.
    DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t288.
    DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t289.
    DATA(t290) = |FIND|.
    CLEAR t289.
    CREATE OBJECT t289.
    t289->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t289->sval = t290.
    t288 = t289.
    DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t291.
    DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t292.
    DATA t293 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t293.
    DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t294.
    DATA t295 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t295.
    DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t296.
    DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t297.
    DATA(t298) = |FIRST OCCURRENCE OF|.
    CLEAR t297.
    CREATE OBJECT t297.
    t297->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t297->sval = t298.
    t296 = t297.
    DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t299.
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t300.
    DATA(t301) = |ALL OCCURRENCES OF|.
    CLEAR t300.
    CREATE OBJECT t300.
    t300->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t300->sval = t301.
    t299 = t300.
    DATA t302 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t302.
    DATA t303 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t303.
    CREATE OBJECT t303.
    t302 = t303.
    DATA t304 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t304.
    DATA(t305) = t296.
    DATA(t306) = t299.
    DATA(t307) = t302.
    t304 = zcl_lnt_st_combi_module=>alt_prio( i_first = t305 i_second = t306 i_rest = t307 ).
    t295 = t304.
    CLEAR t294.
    IF t295 IS BOUND.
      DATA t308 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t308.
      DATA t309 TYPE REF TO object.
      CLEAR t309.
      CLEAR t308.
      t309 = t295.
      TRY.
          t294 ?= t309.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t294 IS NOT BOUND.
        TRY.
            t308 ?= t295.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t308 IS BOUND.
          t294 = t308->source( ).
        ENDIF.
        IF t294 IS NOT BOUND.
          CREATE OBJECT t294.
          t294->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t294->oval = t295.
        ENDIF.
      ENDIF.
    ENDIF.
    t293 = zcl_lnt_st_combi_module=>opt( i_first = t294 ).
    CLEAR t292.
    IF t293 IS BOUND.
      DATA t310 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t310.
      DATA t311 TYPE REF TO object.
      CLEAR t311.
      CLEAR t310.
      t311 = t293.
      TRY.
          t292 ?= t311.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t292 IS NOT BOUND.
        TRY.
            t310 ?= t293.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t310 IS BOUND.
          t292 = t310->source( ).
        ENDIF.
        IF t292 IS NOT BOUND.
          CREATE OBJECT t292.
          t292->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t292->oval = t293.
        ENDIF.
      ENDIF.
    ENDIF.
    t291 = t292.
    DATA t312 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t312.
    DATA t313 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t313.
    CREATE OBJECT t313.
    t312 = t313.
    DATA(t314) = t312.
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t315.
    DATA(t316) = zlnt_runtime_desc_78196487750d=>zlnt_member_d176_70730c0e7184.
    CLEAR t315.
    IF t316 IS BOUND.
      CREATE OBJECT t315.
      t315->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t315->cval = t316.
    ENDIF.
    t314->load( ).
    APPEND t315 TO t314->items.
    t314->save( ).
    DATA(t317) = t312.
    DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t318.
    DATA(t319) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t318.
    IF t319 IS BOUND.
      CREATE OBJECT t318.
      t318->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t318->cval = t319.
    ENDIF.
    t317->load( ).
    APPEND t318 TO t317->items.
    t317->save( ).
    DATA(t320) = t312.
    DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t321.
    DATA(t322) = |IN|.
    CLEAR t321.
    CREATE OBJECT t321.
    t321->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t321->sval = t322.
    t320->load( ).
    APPEND t321 TO t320->items.
    t320->save( ).
    DATA(t323) = t312.
    DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t324.
    DATA(t325) = t249.
    CLEAR t324.
    IF t325 IS BOUND.
      DATA t326 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t326.
      DATA t327 TYPE REF TO object.
      CLEAR t327.
      CLEAR t326.
      t327 = t325.
      TRY.
          t324 ?= t327.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t324 IS NOT BOUND.
        TRY.
            t326 ?= t325.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t326 IS BOUND.
          t324 = t326->source( ).
        ENDIF.
        IF t324 IS NOT BOUND.
          CREATE OBJECT t324.
          t324->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t324->oval = t325.
        ENDIF.
      ENDIF.
    ENDIF.
    t323->load( ).
    APPEND t324 TO t323->items.
    t323->save( ).
    DATA(t328) = t312.
    DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t329.
    DATA t330 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t330.
    DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t331.
    DATA(t332) = t1.
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
    t330 = zcl_lnt_st_combi_module=>opt( i_first = t331 ).
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
    DATA t337 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t337.
    DATA(t338) = t288.
    DATA(t339) = t291.
    DATA(t340) = t312.
    t337 = zcl_lnt_st_combi_module=>seq( i_first = t338 i_second = t339 i_rest = t340 ).
    t287 = t337.
    t286 = t287.
    DATA(t341) = t286.
    result = t341.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d499_147142f52ef0.
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
