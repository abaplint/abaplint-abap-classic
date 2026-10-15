* TS: src/abap/2_statements/statements/merge_database.ts:9:1 MergeDatabase
CLASS zcl_lnt_merge_database DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_merge_database IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff.
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
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA(t13) = |AS|.
    CLEAR t12.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = t13.
    t11 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d289_f424b1178837.
    CLEAR t15.
    IF t16 IS BOUND.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t15->cval = t16.
    ENDIF.
    t14 = t15.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t18.
    CREATE OBJECT t18.
    t17 = t18.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t19.
    DATA(t20) = t11.
    DATA(t21) = t14.
    DATA(t22) = t17.
    t19 = zcl_lnt_st_combi_module=>seq( i_first = t20 i_second = t21 i_rest = t22 ).
    t10 = t19.
    CLEAR t9.
    IF t10 IS BOUND.
      DATA t23 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t23.
      DATA t24 TYPE REF TO object.
      CLEAR t24.
      CLEAR t23.
      t24 = t10.
      TRY.
          t9 ?= t24.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t9 IS NOT BOUND.
        TRY.
            t23 ?= t10.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t23 IS BOUND.
          t9 = t23->source( ).
        ENDIF.
        IF t9 IS NOT BOUND.
          CREATE OBJECT t9.
          t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t9->oval = t10.
        ENDIF.
      ENDIF.
    ENDIF.
    t8 = zcl_lnt_st_combi_module=>opt_prio( i_first = t9 ).
    CLEAR t7.
    IF t8 IS BOUND.
      DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t25.
      DATA t26 TYPE REF TO object.
      CLEAR t26.
      CLEAR t25.
      t26 = t8.
      TRY.
          t7 ?= t26.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7 IS NOT BOUND.
        TRY.
            t25 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t25 IS BOUND.
          t7 = t25->source( ).
        ENDIF.
        IF t7 IS NOT BOUND.
          CREATE OBJECT t7.
          t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->oval = t8.
        ENDIF.
      ENDIF.
    ENDIF.
    t6 = t7.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t28.
    CREATE OBJECT t28.
    t27 = t28.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t29.
    DATA(t30) = t3.
    DATA(t31) = t6.
    DATA(t32) = t27.
    t29 = zcl_lnt_st_combi_module=>seq( i_first = t30 i_second = t31 i_rest = t32 ).
    t2 = t29.
    t1 = t2.
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t33.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t37.
    DATA(t38) = zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77.
    t37 = zcl_lnt_st_combi_module=>tok( i_t = t38 ).
    CLEAR t36.
    IF t37 IS BOUND.
      DATA t39 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t39.
      DATA t40 TYPE REF TO object.
      CLEAR t40.
      CLEAR t39.
      t40 = t37.
      TRY.
          t36 ?= t40.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t36 IS NOT BOUND.
        TRY.
            t39 ?= t37.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t39 IS BOUND.
          t36 = t39->source( ).
        ENDIF.
        IF t36 IS NOT BOUND.
          CREATE OBJECT t36.
          t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t36->oval = t37.
        ENDIF.
      ENDIF.
    ENDIF.
    t35 = t36.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA(t43) = |SELECT|.
    CLEAR t42.
    CREATE OBJECT t42.
    t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t42->sval = t43.
    t41 = t42.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t45.
    CREATE OBJECT t45.
    t44 = t45.
    DATA(t46) = t44.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t49.
    DATA(t50) = abap_true.
    IF t50 = abap_true.
      DATA(t51) = abap_false.
      DATA(t52) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t52->has = abap_true.
      t52->value = t51.
      t49 = t52.
    ELSE.
      DATA t53 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t53.
      t49 = t53.
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t54.
    DATA(t55) = abap_true.
    IF t55 = abap_true.
      DATA(t56) = abap_false.
      DATA(t57) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t57->has = abap_true.
      t57->value = t56.
      t54 = t57.
    ELSE.
      DATA t58 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t58.
      t54 = t58.
    ENDIF.
    t48 = zcl_lnt_select_core_module=>build_select_core( i_allow_into = t49 i_allow_order_by = t54 ).
    CLEAR t47.
    IF t48 IS BOUND.
      DATA t59 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t59.
      DATA t60 TYPE REF TO object.
      CLEAR t60.
      CLEAR t59.
      t60 = t48.
      TRY.
          t47 ?= t60.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t47 IS NOT BOUND.
        TRY.
            t59 ?= t48.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t59 IS BOUND.
          t47 = t59->source( ).
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
    DATA(t61) = t44.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA t63 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t63.
    DATA(t64) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t63 = zcl_lnt_st_combi_module=>tok( i_t = t64 ).
    CLEAR t62.
    IF t63 IS BOUND.
      DATA t65 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t65.
      DATA t66 TYPE REF TO object.
      CLEAR t66.
      CLEAR t65.
      t66 = t63.
      TRY.
          t62 ?= t66.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t62 IS NOT BOUND.
        TRY.
            t65 ?= t63.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t65 IS BOUND.
          t62 = t65->source( ).
        ENDIF.
        IF t62 IS NOT BOUND.
          CREATE OBJECT t62.
          t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t62->oval = t63.
        ENDIF.
      ENDIF.
    ENDIF.
    t61->load( ).
    APPEND t62 TO t61->items.
    t61->save( ).
    DATA(t67) = t44.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA t69 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t69.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA(t74) = |AS|.
    CLEAR t73.
    CREATE OBJECT t73.
    t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t73->sval = t74.
    t72 = t73.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA(t77) = zlnt_runtime_desc_78196487750d=>zlnt_member_d289_f424b1178837.
    CLEAR t76.
    IF t77 IS BOUND.
      CREATE OBJECT t76.
      t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t76->cval = t77.
    ENDIF.
    t75 = t76.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t79.
    CREATE OBJECT t79.
    t78 = t79.
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t80.
    DATA(t81) = t72.
    DATA(t82) = t75.
    DATA(t83) = t78.
    t80 = zcl_lnt_st_combi_module=>seq( i_first = t81 i_second = t82 i_rest = t83 ).
    t71 = t80.
    CLEAR t70.
    IF t71 IS BOUND.
      DATA t84 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t84.
      DATA t85 TYPE REF TO object.
      CLEAR t85.
      CLEAR t84.
      t85 = t71.
      TRY.
          t70 ?= t85.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t70 IS NOT BOUND.
        TRY.
            t84 ?= t71.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t84 IS BOUND.
          t70 = t84->source( ).
        ENDIF.
        IF t70 IS NOT BOUND.
          CREATE OBJECT t70.
          t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t70->oval = t71.
        ENDIF.
      ENDIF.
    ENDIF.
    t69 = zcl_lnt_st_combi_module=>opt_prio( i_first = t70 ).
    CLEAR t68.
    IF t69 IS BOUND.
      DATA t86 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t86.
      DATA t87 TYPE REF TO object.
      CLEAR t87.
      CLEAR t86.
      t87 = t69.
      TRY.
          t68 ?= t87.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t68 IS NOT BOUND.
        TRY.
            t86 ?= t69.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t86 IS BOUND.
          t68 = t86->source( ).
        ENDIF.
        IF t68 IS NOT BOUND.
          CREATE OBJECT t68.
          t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t68->oval = t69.
        ENDIF.
      ENDIF.
    ENDIF.
    t67->load( ).
    APPEND t68 TO t67->items.
    t67->save( ).
    DATA t88 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t88.
    DATA(t89) = t35.
    DATA(t90) = t41.
    DATA(t91) = t44.
    t88 = zcl_lnt_st_combi_module=>seq( i_first = t89 i_second = t90 i_rest = t91 ).
    t34 = t88.
    t33 = t34.
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t92.
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t93.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t96.
    DATA(t97) = zlnt_runtime_desc_78196487750d=>zlnt_member_d42_9f93cd02a8cf40.
    t96 = zcl_lnt_st_combi_module=>tok( i_t = t97 ).
    CLEAR t95.
    IF t96 IS BOUND.
      DATA t98 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t98.
      DATA t99 TYPE REF TO object.
      CLEAR t99.
      CLEAR t98.
      t99 = t96.
      TRY.
          t95 ?= t99.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t95 IS NOT BOUND.
        TRY.
            t98 ?= t96.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t98 IS BOUND.
          t95 = t98->source( ).
        ENDIF.
        IF t95 IS NOT BOUND.
          CREATE OBJECT t95.
          t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t95->oval = t96.
        ENDIF.
      ENDIF.
    ENDIF.
    t94 = t95.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA(t102) = zlnt_runtime_desc_78196487750d=>zlnt_member_d289_f424b1178837.
    CLEAR t101.
    IF t102 IS BOUND.
      CREATE OBJECT t101.
      t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t101->cval = t102.
    ENDIF.
    t100 = t101.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t103.
    DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t104.
    CREATE OBJECT t104.
    t103 = t104.
    DATA(t105) = t103.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA(t107) = |AS|.
    CLEAR t106.
    CREATE OBJECT t106.
    t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t106->sval = t107.
    t105->load( ).
    APPEND t106 TO t105->items.
    t105->save( ).
    DATA(t108) = t103.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA(t110) = zlnt_runtime_desc_78196487750d=>zlnt_member_d289_f424b1178837.
    CLEAR t109.
    IF t110 IS BOUND.
      CREATE OBJECT t109.
      t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t109->cval = t110.
    ENDIF.
    t108->load( ).
    APPEND t109 TO t108->items.
    t108->save( ).
    DATA(t111) = t103.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t112.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t113.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t115.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA(t118) = |DECLARE CLIENT|.
    CLEAR t117.
    CREATE OBJECT t117.
    t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t117->sval = t118.
    t116 = t117.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t119.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    DATA(t121) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
    CLEAR t120.
    IF t121 IS BOUND.
      CREATE OBJECT t120.
      t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t120->cval = t121.
    ENDIF.
    t119 = t120.
    DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t122.
    DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t123.
    CREATE OBJECT t123.
    t122 = t123.
    DATA t124 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t124.
    DATA(t125) = t116.
    DATA(t126) = t119.
    DATA(t127) = t122.
    t124 = zcl_lnt_st_combi_module=>seq( i_first = t125 i_second = t126 i_rest = t127 ).
    t115 = t124.
    CLEAR t114.
    IF t115 IS BOUND.
      DATA t128 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t128.
      DATA t129 TYPE REF TO object.
      CLEAR t129.
      CLEAR t128.
      t129 = t115.
      TRY.
          t114 ?= t129.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t114 IS NOT BOUND.
        TRY.
            t128 ?= t115.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t128 IS BOUND.
          t114 = t128->source( ).
        ENDIF.
        IF t114 IS NOT BOUND.
          CREATE OBJECT t114.
          t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t114->oval = t115.
        ENDIF.
      ENDIF.
    ENDIF.
    t113 = zcl_lnt_st_combi_module=>opt_prio( i_first = t114 ).
    CLEAR t112.
    IF t113 IS BOUND.
      DATA t130 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t130.
      DATA t131 TYPE REF TO object.
      CLEAR t131.
      CLEAR t130.
      t131 = t113.
      TRY.
          t112 ?= t131.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t112 IS NOT BOUND.
        TRY.
            t130 ?= t113.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t130 IS BOUND.
          t112 = t130->source( ).
        ENDIF.
        IF t112 IS NOT BOUND.
          CREATE OBJECT t112.
          t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t112->oval = t113.
        ENDIF.
      ENDIF.
    ENDIF.
    t111->load( ).
    APPEND t112 TO t111->items.
    t111->save( ).
    DATA t132 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t132.
    DATA(t133) = t94.
    DATA(t134) = t100.
    DATA(t135) = t103.
    t132 = zcl_lnt_st_combi_module=>seq( i_first = t133 i_second = t134 i_rest = t135 ).
    t93 = t132.
    t92 = t93.
    DATA t136 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t136.
    DATA t137 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t137.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t139.
    DATA(t140) = zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff.
    CLEAR t139.
    IF t140 IS BOUND.
      CREATE OBJECT t139.
      t139->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t139->cval = t140.
    ENDIF.
    t138 = t139.
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t141.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t142.
    DATA t143 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t143.
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t144.
    DATA t145 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t145.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t147.
    DATA(t148) = |AS|.
    CLEAR t147.
    CREATE OBJECT t147.
    t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t147->sval = t148.
    t146 = t147.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t150.
    DATA(t151) = zlnt_runtime_desc_78196487750d=>zlnt_member_d289_f424b1178837.
    CLEAR t150.
    IF t151 IS BOUND.
      CREATE OBJECT t150.
      t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t150->cval = t151.
    ENDIF.
    t149 = t150.
    DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t152.
    DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t153.
    CREATE OBJECT t153.
    t152 = t153.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t154.
    DATA(t155) = t146.
    DATA(t156) = t149.
    DATA(t157) = t152.
    t154 = zcl_lnt_st_combi_module=>seq( i_first = t155 i_second = t156 i_rest = t157 ).
    t145 = t154.
    CLEAR t144.
    IF t145 IS BOUND.
      DATA t158 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t158.
      DATA t159 TYPE REF TO object.
      CLEAR t159.
      CLEAR t158.
      t159 = t145.
      TRY.
          t144 ?= t159.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t144 IS NOT BOUND.
        TRY.
            t158 ?= t145.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t158 IS BOUND.
          t144 = t158->source( ).
        ENDIF.
        IF t144 IS NOT BOUND.
          CREATE OBJECT t144.
          t144->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t144->oval = t145.
        ENDIF.
      ENDIF.
    ENDIF.
    t143 = zcl_lnt_st_combi_module=>opt_prio( i_first = t144 ).
    CLEAR t142.
    IF t143 IS BOUND.
      DATA t160 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t160.
      DATA t161 TYPE REF TO object.
      CLEAR t161.
      CLEAR t160.
      t161 = t143.
      TRY.
          t142 ?= t161.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t142 IS NOT BOUND.
        TRY.
            t160 ?= t143.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t160 IS BOUND.
          t142 = t160->source( ).
        ENDIF.
        IF t142 IS NOT BOUND.
          CREATE OBJECT t142.
          t142->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t142->oval = t143.
        ENDIF.
      ENDIF.
    ENDIF.
    t141 = t142.
    DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t162.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t163.
    CREATE OBJECT t163.
    t162 = t163.
    DATA t164 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t164.
    DATA(t165) = t138.
    DATA(t166) = t141.
    DATA(t167) = t162.
    t164 = zcl_lnt_st_combi_module=>seq( i_first = t165 i_second = t166 i_rest = t167 ).
    t137 = t164.
    t136 = t137.
    DATA t168 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t168.
    DATA t169 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t169.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t170.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t171.
    DATA(t172) = |USING|.
    CLEAR t171.
    CREATE OBJECT t171.
    t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t171->sval = t172.
    t170 = t171.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t174.
    DATA t175 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t175.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t176.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t177.
    DATA(t178) = t33.
    CLEAR t177.
    IF t178 IS BOUND.
      DATA t179 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t179.
      DATA t180 TYPE REF TO object.
      CLEAR t180.
      CLEAR t179.
      t180 = t178.
      TRY.
          t177 ?= t180.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t177 IS NOT BOUND.
        TRY.
            t179 ?= t178.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t179 IS BOUND.
          t177 = t179->source( ).
        ENDIF.
        IF t177 IS NOT BOUND.
          CREATE OBJECT t177.
          t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t177->oval = t178.
        ENDIF.
      ENDIF.
    ENDIF.
    t176 = t177.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t181.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t182.
    DATA(t183) = t92.
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
    t181 = t182.
    DATA t186 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t186.
    DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t187.
    CREATE OBJECT t187.
    t186 = t187.
    DATA(t188) = t186.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t189.
    DATA(t190) = t136.
    CLEAR t189.
    IF t190 IS BOUND.
      DATA t191 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t191.
      DATA t192 TYPE REF TO object.
      CLEAR t192.
      CLEAR t191.
      t192 = t190.
      TRY.
          t189 ?= t192.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t189 IS NOT BOUND.
        TRY.
            t191 ?= t190.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t191 IS BOUND.
          t189 = t191->source( ).
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
    DATA t193 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t193.
    DATA(t194) = t176.
    DATA(t195) = t181.
    DATA(t196) = t186.
    t193 = zcl_lnt_st_combi_module=>alt_prio( i_first = t194 i_second = t195 i_rest = t196 ).
    t175 = t193.
    CLEAR t174.
    IF t175 IS BOUND.
      DATA t197 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t197.
      DATA t198 TYPE REF TO object.
      CLEAR t198.
      CLEAR t197.
      t198 = t175.
      TRY.
          t174 ?= t198.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t174 IS NOT BOUND.
        TRY.
            t197 ?= t175.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t197 IS BOUND.
          t174 = t197->source( ).
        ENDIF.
        IF t174 IS NOT BOUND.
          CREATE OBJECT t174.
          t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t174->oval = t175.
        ENDIF.
      ENDIF.
    ENDIF.
    t173 = t174.
    DATA t199 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t199.
    DATA t200 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t200.
    CREATE OBJECT t200.
    t199 = t200.
    DATA t201 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t201.
    DATA(t202) = t170.
    DATA(t203) = t173.
    DATA(t204) = t199.
    t201 = zcl_lnt_st_combi_module=>seq( i_first = t202 i_second = t203 i_rest = t204 ).
    t169 = t201.
    t168 = t169.
    DATA t205 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t205.
    DATA t206 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t206.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t207.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t208.
    DATA(t209) = |ON|.
    CLEAR t208.
    CREATE OBJECT t208.
    t208->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t208->sval = t209.
    t207 = t208.
    DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t210.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t211.
    DATA(t212) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
    CLEAR t211.
    IF t212 IS BOUND.
      CREATE OBJECT t211.
      t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t211->cval = t212.
    ENDIF.
    t210 = t211.
    DATA t213 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t213.
    DATA t214 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t214.
    CREATE OBJECT t214.
    t213 = t214.
    DATA t215 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t215.
    DATA(t216) = t207.
    DATA(t217) = t210.
    DATA(t218) = t213.
    t215 = zcl_lnt_st_combi_module=>seq( i_first = t216 i_second = t217 i_rest = t218 ).
    t206 = t215.
    t205 = t206.
    DATA t219 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t219.
    DATA t220 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t220.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t221.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t222.
    DATA(t223) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
    CLEAR t222.
    IF t223 IS BOUND.
      CREATE OBJECT t222.
      t222->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t222->cval = t223.
    ENDIF.
    t221 = t222.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t224.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t225.
    DATA(t226) = |=|.
    CLEAR t225.
    CREATE OBJECT t225.
    t225->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t225->sval = t226.
    t224 = t225.
    DATA t227 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t227.
    DATA t228 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t228.
    CREATE OBJECT t228.
    t227 = t228.
    DATA(t229) = t227.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t230.
    DATA(t231) = zlnt_runtime_desc_78196487750d=>zlnt_member_d315_136d5faf95cc.
    CLEAR t230.
    IF t231 IS BOUND.
      CREATE OBJECT t230.
      t230->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t230->cval = t231.
    ENDIF.
    t229->load( ).
    APPEND t230 TO t229->items.
    t229->save( ).
    DATA t232 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t232.
    DATA(t233) = t221.
    DATA(t234) = t224.
    DATA(t235) = t227.
    t232 = zcl_lnt_st_combi_module=>seq( i_first = t233 i_second = t234 i_rest = t235 ).
    t220 = t232.
    t219 = t220.
    DATA t236 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t236.
    DATA t237 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t237.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t238.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t239.
    DATA(t240) = t219.
    CLEAR t239.
    IF t240 IS BOUND.
      DATA t241 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t241.
      DATA t242 TYPE REF TO object.
      CLEAR t242.
      CLEAR t241.
      t242 = t240.
      TRY.
          t239 ?= t242.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t239 IS NOT BOUND.
        TRY.
            t241 ?= t240.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t241 IS BOUND.
          t239 = t241->source( ).
        ENDIF.
        IF t239 IS NOT BOUND.
          CREATE OBJECT t239.
          t239->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t239->oval = t240.
        ENDIF.
      ENDIF.
    ENDIF.
    t238 = t239.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t243.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t244.
    DATA t245 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t245.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t246.
    DATA t247 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t247.
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t248.
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t249.
    DATA(t250) = |,|.
    CLEAR t249.
    CREATE OBJECT t249.
    t249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t249->sval = t250.
    t248 = t249.
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t251.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t252.
    DATA(t253) = t219.
    CLEAR t252.
    IF t253 IS BOUND.
      DATA t254 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t254.
      DATA t255 TYPE REF TO object.
      CLEAR t255.
      CLEAR t254.
      t255 = t253.
      TRY.
          t252 ?= t255.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t252 IS NOT BOUND.
        TRY.
            t254 ?= t253.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t254 IS BOUND.
          t252 = t254->source( ).
        ENDIF.
        IF t252 IS NOT BOUND.
          CREATE OBJECT t252.
          t252->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t252->oval = t253.
        ENDIF.
      ENDIF.
    ENDIF.
    t251 = t252.
    DATA t256 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t256.
    DATA t257 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t257.
    CREATE OBJECT t257.
    t256 = t257.
    DATA t258 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t258.
    DATA(t259) = t248.
    DATA(t260) = t251.
    DATA(t261) = t256.
    t258 = zcl_lnt_st_combi_module=>seq( i_first = t259 i_second = t260 i_rest = t261 ).
    t247 = t258.
    CLEAR t246.
    IF t247 IS BOUND.
      DATA t262 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t262.
      DATA t263 TYPE REF TO object.
      CLEAR t263.
      CLEAR t262.
      t263 = t247.
      TRY.
          t246 ?= t263.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t246 IS NOT BOUND.
        TRY.
            t262 ?= t247.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t262 IS BOUND.
          t246 = t262->source( ).
        ENDIF.
        IF t246 IS NOT BOUND.
          CREATE OBJECT t246.
          t246->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t246->oval = t247.
        ENDIF.
      ENDIF.
    ENDIF.
    t245 = zcl_lnt_st_combi_module=>star_prio( i_first = t246 ).
    CLEAR t244.
    IF t245 IS BOUND.
      DATA t264 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t264.
      DATA t265 TYPE REF TO object.
      CLEAR t265.
      CLEAR t264.
      t265 = t245.
      TRY.
          t244 ?= t265.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t244 IS NOT BOUND.
        TRY.
            t264 ?= t245.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t264 IS BOUND.
          t244 = t264->source( ).
        ENDIF.
        IF t244 IS NOT BOUND.
          CREATE OBJECT t244.
          t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t244->oval = t245.
        ENDIF.
      ENDIF.
    ENDIF.
    t243 = t244.
    DATA t266 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t266.
    DATA t267 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t267.
    CREATE OBJECT t267.
    t266 = t267.
    DATA t268 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t268.
    DATA(t269) = t238.
    DATA(t270) = t243.
    DATA(t271) = t266.
    t268 = zcl_lnt_st_combi_module=>seq( i_first = t269 i_second = t270 i_rest = t271 ).
    t237 = t268.
    t236 = t237.
    DATA t272 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t272.
    DATA t273 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t273.
    DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t274.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t275.
    DATA(t276) = |DELETE|.
    CLEAR t275.
    CREATE OBJECT t275.
    t275->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t275->sval = t276.
    t274 = t275.
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t277.
    DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t278.
    DATA t279 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t279.
    DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t280.
    DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t281.
    DATA(t282) = |UPDATE|.
    CLEAR t281.
    CREATE OBJECT t281.
    t281->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t281->sval = t282.
    t280 = t281.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t283.
    DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t284.
    DATA t285 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t285.
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t286.
    DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t287.
    DATA(t288) = |ALL|.
    CLEAR t287.
    CREATE OBJECT t287.
    t287->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t287->sval = t288.
    t286 = t287.
    DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t289.
    DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t290.
    DATA t291 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t291.
    DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t292.
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t293.
    DATA(t294) = |SET|.
    CLEAR t293.
    CREATE OBJECT t293.
    t293->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t293->sval = t294.
    t292 = t293.
    DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t295.
    DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t296.
    DATA(t297) = t236.
    CLEAR t296.
    IF t297 IS BOUND.
      DATA t298 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t298.
      DATA t299 TYPE REF TO object.
      CLEAR t299.
      CLEAR t298.
      t299 = t297.
      TRY.
          t296 ?= t299.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t296 IS NOT BOUND.
        TRY.
            t298 ?= t297.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t298 IS BOUND.
          t296 = t298->source( ).
        ENDIF.
        IF t296 IS NOT BOUND.
          CREATE OBJECT t296.
          t296->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t296->oval = t297.
        ENDIF.
      ENDIF.
    ENDIF.
    t295 = t296.
    DATA t300 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t300.
    DATA t301 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t301.
    CREATE OBJECT t301.
    t300 = t301.
    DATA t302 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t302.
    DATA(t303) = t292.
    DATA(t304) = t295.
    DATA(t305) = t300.
    t302 = zcl_lnt_st_combi_module=>seq( i_first = t303 i_second = t304 i_rest = t305 ).
    t291 = t302.
    CLEAR t290.
    IF t291 IS BOUND.
      DATA t306 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t306.
      DATA t307 TYPE REF TO object.
      CLEAR t307.
      CLEAR t306.
      t307 = t291.
      TRY.
          t290 ?= t307.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t290 IS NOT BOUND.
        TRY.
            t306 ?= t291.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t306 IS BOUND.
          t290 = t306->source( ).
        ENDIF.
        IF t290 IS NOT BOUND.
          CREATE OBJECT t290.
          t290->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t290->oval = t291.
        ENDIF.
      ENDIF.
    ENDIF.
    t289 = t290.
    DATA t308 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t308.
    DATA t309 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t309.
    CREATE OBJECT t309.
    t308 = t309.
    DATA t310 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t310.
    DATA(t311) = t286.
    DATA(t312) = t289.
    DATA(t313) = t308.
    t310 = zcl_lnt_st_combi_module=>alt_prio( i_first = t311 i_second = t312 i_rest = t313 ).
    t285 = t310.
    CLEAR t284.
    IF t285 IS BOUND.
      DATA t314 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t314.
      DATA t315 TYPE REF TO object.
      CLEAR t315.
      CLEAR t314.
      t315 = t285.
      TRY.
          t284 ?= t315.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t284 IS NOT BOUND.
        TRY.
            t314 ?= t285.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t314 IS BOUND.
          t284 = t314->source( ).
        ENDIF.
        IF t284 IS NOT BOUND.
          CREATE OBJECT t284.
          t284->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t284->oval = t285.
        ENDIF.
      ENDIF.
    ENDIF.
    t283 = t284.
    DATA t316 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t316.
    DATA t317 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t317.
    CREATE OBJECT t317.
    t316 = t317.
    DATA t318 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t318.
    DATA(t319) = t280.
    DATA(t320) = t283.
    DATA(t321) = t316.
    t318 = zcl_lnt_st_combi_module=>seq( i_first = t319 i_second = t320 i_rest = t321 ).
    t279 = t318.
    CLEAR t278.
    IF t279 IS BOUND.
      DATA t322 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t322.
      DATA t323 TYPE REF TO object.
      CLEAR t323.
      CLEAR t322.
      t323 = t279.
      TRY.
          t278 ?= t323.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t278 IS NOT BOUND.
        TRY.
            t322 ?= t279.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t322 IS BOUND.
          t278 = t322->source( ).
        ENDIF.
        IF t278 IS NOT BOUND.
          CREATE OBJECT t278.
          t278->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t278->oval = t279.
        ENDIF.
      ENDIF.
    ENDIF.
    t277 = t278.
    DATA t324 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t324.
    DATA t325 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t325.
    CREATE OBJECT t325.
    t324 = t325.
    DATA t326 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t326.
    DATA(t327) = t274.
    DATA(t328) = t277.
    DATA(t329) = t324.
    t326 = zcl_lnt_st_combi_module=>alt_prio( i_first = t327 i_second = t328 i_rest = t329 ).
    t273 = t326.
    t272 = t273.
    DATA t330 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t330.
    DATA t331 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t331.
    DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t332.
    DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t333.
    DATA(t334) = |WHEN MATCHED|.
    CLEAR t333.
    CREATE OBJECT t333.
    t333->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t333->sval = t334.
    t332 = t333.
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t335.
    DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t336.
    DATA t337 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t337.
    DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t338.
    DATA t339 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t339.
    DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t340.
    DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t341.
    DATA(t342) = |AND|.
    CLEAR t341.
    CREATE OBJECT t341.
    t341->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t341->sval = t342.
    t340 = t341.
    DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t343.
    DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t344.
    DATA(t345) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
    CLEAR t344.
    IF t345 IS BOUND.
      CREATE OBJECT t344.
      t344->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t344->cval = t345.
    ENDIF.
    t343 = t344.
    DATA t346 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t346.
    DATA t347 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t347.
    CREATE OBJECT t347.
    t346 = t347.
    DATA t348 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t348.
    DATA(t349) = t340.
    DATA(t350) = t343.
    DATA(t351) = t346.
    t348 = zcl_lnt_st_combi_module=>seq( i_first = t349 i_second = t350 i_rest = t351 ).
    t339 = t348.
    CLEAR t338.
    IF t339 IS BOUND.
      DATA t352 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t352.
      DATA t353 TYPE REF TO object.
      CLEAR t353.
      CLEAR t352.
      t353 = t339.
      TRY.
          t338 ?= t353.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t338 IS NOT BOUND.
        TRY.
            t352 ?= t339.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t352 IS BOUND.
          t338 = t352->source( ).
        ENDIF.
        IF t338 IS NOT BOUND.
          CREATE OBJECT t338.
          t338->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t338->oval = t339.
        ENDIF.
      ENDIF.
    ENDIF.
    t337 = zcl_lnt_st_combi_module=>opt_prio( i_first = t338 ).
    CLEAR t336.
    IF t337 IS BOUND.
      DATA t354 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t354.
      DATA t355 TYPE REF TO object.
      CLEAR t355.
      CLEAR t354.
      t355 = t337.
      TRY.
          t336 ?= t355.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t336 IS NOT BOUND.
        TRY.
            t354 ?= t337.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t354 IS BOUND.
          t336 = t354->source( ).
        ENDIF.
        IF t336 IS NOT BOUND.
          CREATE OBJECT t336.
          t336->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t336->oval = t337.
        ENDIF.
      ENDIF.
    ENDIF.
    t335 = t336.
    DATA t356 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t356.
    DATA t357 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t357.
    CREATE OBJECT t357.
    t356 = t357.
    DATA(t358) = t356.
    DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t359.
    DATA(t360) = |THEN|.
    CLEAR t359.
    CREATE OBJECT t359.
    t359->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t359->sval = t360.
    t358->load( ).
    APPEND t359 TO t358->items.
    t358->save( ).
    DATA(t361) = t356.
    DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t362.
    DATA(t363) = t272.
    CLEAR t362.
    IF t363 IS BOUND.
      DATA t364 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t364.
      DATA t365 TYPE REF TO object.
      CLEAR t365.
      CLEAR t364.
      t365 = t363.
      TRY.
          t362 ?= t365.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t362 IS NOT BOUND.
        TRY.
            t364 ?= t363.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t364 IS BOUND.
          t362 = t364->source( ).
        ENDIF.
        IF t362 IS NOT BOUND.
          CREATE OBJECT t362.
          t362->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t362->oval = t363.
        ENDIF.
      ENDIF.
    ENDIF.
    t361->load( ).
    APPEND t362 TO t361->items.
    t361->save( ).
    DATA t366 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t366.
    DATA(t367) = t332.
    DATA(t368) = t335.
    DATA(t369) = t356.
    t366 = zcl_lnt_st_combi_module=>seq( i_first = t367 i_second = t368 i_rest = t369 ).
    t331 = t366.
    t330 = t331.
    DATA t370 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t370.
    DATA t371 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t371.
    DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t372.
    DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t373.
    DATA t374 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t374.
    DATA(t375) = zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77.
    t374 = zcl_lnt_st_combi_module=>tok( i_t = t375 ).
    CLEAR t373.
    IF t374 IS BOUND.
      DATA t376 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t376.
      DATA t377 TYPE REF TO object.
      CLEAR t377.
      CLEAR t376.
      t377 = t374.
      TRY.
          t373 ?= t377.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t373 IS NOT BOUND.
        TRY.
            t376 ?= t374.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t376 IS BOUND.
          t373 = t376->source( ).
        ENDIF.
        IF t373 IS NOT BOUND.
          CREATE OBJECT t373.
          t373->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t373->oval = t374.
        ENDIF.
      ENDIF.
    ENDIF.
    t372 = t373.
    DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t378.
    DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t379.
    DATA(t380) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
    CLEAR t379.
    IF t380 IS BOUND.
      CREATE OBJECT t379.
      t379->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t379->cval = t380.
    ENDIF.
    t378 = t379.
    DATA t381 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t381.
    DATA t382 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t382.
    CREATE OBJECT t382.
    t381 = t382.
    DATA(t383) = t381.
    DATA t384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t384.
    DATA t385 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t385.
    DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t386.
    DATA t387 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t387.
    DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t388.
    DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t389.
    DATA(t390) = |,|.
    CLEAR t389.
    CREATE OBJECT t389.
    t389->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t389->sval = t390.
    t388 = t389.
    DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t391.
    DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t392.
    DATA(t393) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
    CLEAR t392.
    IF t393 IS BOUND.
      CREATE OBJECT t392.
      t392->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t392->cval = t393.
    ENDIF.
    t391 = t392.
    DATA t394 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t394.
    DATA t395 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t395.
    CREATE OBJECT t395.
    t394 = t395.
    DATA t396 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t396.
    DATA(t397) = t388.
    DATA(t398) = t391.
    DATA(t399) = t394.
    t396 = zcl_lnt_st_combi_module=>seq( i_first = t397 i_second = t398 i_rest = t399 ).
    t387 = t396.
    CLEAR t386.
    IF t387 IS BOUND.
      DATA t400 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t400.
      DATA t401 TYPE REF TO object.
      CLEAR t401.
      CLEAR t400.
      t401 = t387.
      TRY.
          t386 ?= t401.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t386 IS NOT BOUND.
        TRY.
            t400 ?= t387.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t400 IS BOUND.
          t386 = t400->source( ).
        ENDIF.
        IF t386 IS NOT BOUND.
          CREATE OBJECT t386.
          t386->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t386->oval = t387.
        ENDIF.
      ENDIF.
    ENDIF.
    t385 = zcl_lnt_st_combi_module=>star_prio( i_first = t386 ).
    CLEAR t384.
    IF t385 IS BOUND.
      DATA t402 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t402.
      DATA t403 TYPE REF TO object.
      CLEAR t403.
      CLEAR t402.
      t403 = t385.
      TRY.
          t384 ?= t403.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t384 IS NOT BOUND.
        TRY.
            t402 ?= t385.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t402 IS BOUND.
          t384 = t402->source( ).
        ENDIF.
        IF t384 IS NOT BOUND.
          CREATE OBJECT t384.
          t384->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t384->oval = t385.
        ENDIF.
      ENDIF.
    ENDIF.
    t383->load( ).
    APPEND t384 TO t383->items.
    t383->save( ).
    DATA(t404) = t381.
    DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t405.
    DATA t406 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t406.
    DATA(t407) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t406 = zcl_lnt_st_combi_module=>tok( i_t = t407 ).
    CLEAR t405.
    IF t406 IS BOUND.
      DATA t408 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t408.
      DATA t409 TYPE REF TO object.
      CLEAR t409.
      CLEAR t408.
      t409 = t406.
      TRY.
          t405 ?= t409.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t405 IS NOT BOUND.
        TRY.
            t408 ?= t406.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t408 IS BOUND.
          t405 = t408->source( ).
        ENDIF.
        IF t405 IS NOT BOUND.
          CREATE OBJECT t405.
          t405->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t405->oval = t406.
        ENDIF.
      ENDIF.
    ENDIF.
    t404->load( ).
    APPEND t405 TO t404->items.
    t404->save( ).
    DATA t410 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t410.
    DATA(t411) = t372.
    DATA(t412) = t378.
    DATA(t413) = t381.
    t410 = zcl_lnt_st_combi_module=>seq( i_first = t411 i_second = t412 i_rest = t413 ).
    t371 = t410.
    t370 = t371.
    DATA t414 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t414.
    DATA t415 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t415.
    DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t416.
    DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t417.
    DATA t418 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t418.
    DATA(t419) = zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77.
    t418 = zcl_lnt_st_combi_module=>tok( i_t = t419 ).
    CLEAR t417.
    IF t418 IS BOUND.
      DATA t420 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t420.
      DATA t421 TYPE REF TO object.
      CLEAR t421.
      CLEAR t420.
      t421 = t418.
      TRY.
          t417 ?= t421.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t417 IS NOT BOUND.
        TRY.
            t420 ?= t418.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t420 IS BOUND.
          t417 = t420->source( ).
        ENDIF.
        IF t417 IS NOT BOUND.
          CREATE OBJECT t417.
          t417->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t417->oval = t418.
        ENDIF.
      ENDIF.
    ENDIF.
    t416 = t417.
    DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t422.
    DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t423.
    DATA(t424) = zlnt_runtime_desc_78196487750d=>zlnt_member_d315_136d5faf95cc.
    CLEAR t423.
    IF t424 IS BOUND.
      CREATE OBJECT t423.
      t423->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t423->cval = t424.
    ENDIF.
    t422 = t423.
    DATA t425 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t425.
    DATA t426 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t426.
    CREATE OBJECT t426.
    t425 = t426.
    DATA(t427) = t425.
    DATA t428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t428.
    DATA t429 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t429.
    DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t430.
    DATA t431 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t431.
    DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t432.
    DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t433.
    DATA(t434) = |,|.
    CLEAR t433.
    CREATE OBJECT t433.
    t433->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t433->sval = t434.
    t432 = t433.
    DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t435.
    DATA t436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t436.
    DATA(t437) = zlnt_runtime_desc_78196487750d=>zlnt_member_d315_136d5faf95cc.
    CLEAR t436.
    IF t437 IS BOUND.
      CREATE OBJECT t436.
      t436->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t436->cval = t437.
    ENDIF.
    t435 = t436.
    DATA t438 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t438.
    DATA t439 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t439.
    CREATE OBJECT t439.
    t438 = t439.
    DATA t440 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t440.
    DATA(t441) = t432.
    DATA(t442) = t435.
    DATA(t443) = t438.
    t440 = zcl_lnt_st_combi_module=>seq( i_first = t441 i_second = t442 i_rest = t443 ).
    t431 = t440.
    CLEAR t430.
    IF t431 IS BOUND.
      DATA t444 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t444.
      DATA t445 TYPE REF TO object.
      CLEAR t445.
      CLEAR t444.
      t445 = t431.
      TRY.
          t430 ?= t445.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t430 IS NOT BOUND.
        TRY.
            t444 ?= t431.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t444 IS BOUND.
          t430 = t444->source( ).
        ENDIF.
        IF t430 IS NOT BOUND.
          CREATE OBJECT t430.
          t430->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t430->oval = t431.
        ENDIF.
      ENDIF.
    ENDIF.
    t429 = zcl_lnt_st_combi_module=>star_prio( i_first = t430 ).
    CLEAR t428.
    IF t429 IS BOUND.
      DATA t446 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t446.
      DATA t447 TYPE REF TO object.
      CLEAR t447.
      CLEAR t446.
      t447 = t429.
      TRY.
          t428 ?= t447.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t428 IS NOT BOUND.
        TRY.
            t446 ?= t429.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t446 IS BOUND.
          t428 = t446->source( ).
        ENDIF.
        IF t428 IS NOT BOUND.
          CREATE OBJECT t428.
          t428->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t428->oval = t429.
        ENDIF.
      ENDIF.
    ENDIF.
    t427->load( ).
    APPEND t428 TO t427->items.
    t427->save( ).
    DATA(t448) = t425.
    DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t449.
    DATA t450 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t450.
    DATA(t451) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t450 = zcl_lnt_st_combi_module=>tok( i_t = t451 ).
    CLEAR t449.
    IF t450 IS BOUND.
      DATA t452 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t452.
      DATA t453 TYPE REF TO object.
      CLEAR t453.
      CLEAR t452.
      t453 = t450.
      TRY.
          t449 ?= t453.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t449 IS NOT BOUND.
        TRY.
            t452 ?= t450.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t452 IS BOUND.
          t449 = t452->source( ).
        ENDIF.
        IF t449 IS NOT BOUND.
          CREATE OBJECT t449.
          t449->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t449->oval = t450.
        ENDIF.
      ENDIF.
    ENDIF.
    t448->load( ).
    APPEND t449 TO t448->items.
    t448->save( ).
    DATA t454 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t454.
    DATA(t455) = t416.
    DATA(t456) = t422.
    DATA(t457) = t425.
    t454 = zcl_lnt_st_combi_module=>seq( i_first = t455 i_second = t456 i_rest = t457 ).
    t415 = t454.
    t414 = t415.
    DATA t458 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t458.
    DATA t459 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t459.
    DATA t460 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t460.
    DATA t461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t461.
    DATA(t462) = |INSERT|.
    CLEAR t461.
    CREATE OBJECT t461.
    t461->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t461->sval = t462.
    t460 = t461.
    DATA t463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t463.
    DATA t464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t464.
    DATA t465 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t465.
    DATA t466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t466.
    DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t467.
    DATA(t468) = |ALL|.
    CLEAR t467.
    CREATE OBJECT t467.
    t467->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t467->sval = t468.
    t466 = t467.
    DATA t469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t469.
    DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t470.
    DATA t471 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t471.
    DATA t472 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t472.
    DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t473.
    DATA(t474) = t370.
    CLEAR t473.
    IF t474 IS BOUND.
      DATA t475 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t475.
      DATA t476 TYPE REF TO object.
      CLEAR t476.
      CLEAR t475.
      t476 = t474.
      TRY.
          t473 ?= t476.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t473 IS NOT BOUND.
        TRY.
            t475 ?= t474.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t475 IS BOUND.
          t473 = t475->source( ).
        ENDIF.
        IF t473 IS NOT BOUND.
          CREATE OBJECT t473.
          t473->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t473->oval = t474.
        ENDIF.
      ENDIF.
    ENDIF.
    t472 = t473.
    DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t477.
    DATA t478 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t478.
    DATA(t479) = |VALUES|.
    CLEAR t478.
    CREATE OBJECT t478.
    t478->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t478->sval = t479.
    t477 = t478.
    DATA t480 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t480.
    DATA t481 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t481.
    CREATE OBJECT t481.
    t480 = t481.
    DATA(t482) = t480.
    DATA t483 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t483.
    DATA(t484) = t414.
    CLEAR t483.
    IF t484 IS BOUND.
      DATA t485 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t485.
      DATA t486 TYPE REF TO object.
      CLEAR t486.
      CLEAR t485.
      t486 = t484.
      TRY.
          t483 ?= t486.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t483 IS NOT BOUND.
        TRY.
            t485 ?= t484.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t485 IS BOUND.
          t483 = t485->source( ).
        ENDIF.
        IF t483 IS NOT BOUND.
          CREATE OBJECT t483.
          t483->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t483->oval = t484.
        ENDIF.
      ENDIF.
    ENDIF.
    t482->load( ).
    APPEND t483 TO t482->items.
    t482->save( ).
    DATA t487 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t487.
    DATA(t488) = t472.
    DATA(t489) = t477.
    DATA(t490) = t480.
    t487 = zcl_lnt_st_combi_module=>seq( i_first = t488 i_second = t489 i_rest = t490 ).
    t471 = t487.
    CLEAR t470.
    IF t471 IS BOUND.
      DATA t491 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t491.
      DATA t492 TYPE REF TO object.
      CLEAR t492.
      CLEAR t491.
      t492 = t471.
      TRY.
          t470 ?= t492.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t470 IS NOT BOUND.
        TRY.
            t491 ?= t471.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t491 IS BOUND.
          t470 = t491->source( ).
        ENDIF.
        IF t470 IS NOT BOUND.
          CREATE OBJECT t470.
          t470->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t470->oval = t471.
        ENDIF.
      ENDIF.
    ENDIF.
    t469 = t470.
    DATA t493 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t493.
    DATA t494 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t494.
    CREATE OBJECT t494.
    t493 = t494.
    DATA t495 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t495.
    DATA(t496) = t466.
    DATA(t497) = t469.
    DATA(t498) = t493.
    t495 = zcl_lnt_st_combi_module=>alt_prio( i_first = t496 i_second = t497 i_rest = t498 ).
    t465 = t495.
    CLEAR t464.
    IF t465 IS BOUND.
      DATA t499 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t499.
      DATA t500 TYPE REF TO object.
      CLEAR t500.
      CLEAR t499.
      t500 = t465.
      TRY.
          t464 ?= t500.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t464 IS NOT BOUND.
        TRY.
            t499 ?= t465.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t499 IS BOUND.
          t464 = t499->source( ).
        ENDIF.
        IF t464 IS NOT BOUND.
          CREATE OBJECT t464.
          t464->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t464->oval = t465.
        ENDIF.
      ENDIF.
    ENDIF.
    t463 = t464.
    DATA t501 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t501.
    DATA t502 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t502.
    CREATE OBJECT t502.
    t501 = t502.
    DATA t503 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t503.
    DATA(t504) = t460.
    DATA(t505) = t463.
    DATA(t506) = t501.
    t503 = zcl_lnt_st_combi_module=>seq( i_first = t504 i_second = t505 i_rest = t506 ).
    t459 = t503.
    t458 = t459.
    DATA t507 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t507.
    DATA t508 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t508.
    DATA t509 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t509.
    DATA t510 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t510.
    DATA(t511) = |WHEN NOT MATCHED|.
    CLEAR t510.
    CREATE OBJECT t510.
    t510->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t510->sval = t511.
    t509 = t510.
    DATA t512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t512.
    DATA t513 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t513.
    DATA t514 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t514.
    DATA t515 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t515.
    DATA t516 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t516.
    DATA t517 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t517.
    DATA t518 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t518.
    DATA(t519) = |AND|.
    CLEAR t518.
    CREATE OBJECT t518.
    t518->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t518->sval = t519.
    t517 = t518.
    DATA t520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t520.
    DATA t521 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t521.
    DATA(t522) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
    CLEAR t521.
    IF t522 IS BOUND.
      CREATE OBJECT t521.
      t521->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t521->cval = t522.
    ENDIF.
    t520 = t521.
    DATA t523 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t523.
    DATA t524 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t524.
    CREATE OBJECT t524.
    t523 = t524.
    DATA t525 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t525.
    DATA(t526) = t517.
    DATA(t527) = t520.
    DATA(t528) = t523.
    t525 = zcl_lnt_st_combi_module=>seq( i_first = t526 i_second = t527 i_rest = t528 ).
    t516 = t525.
    CLEAR t515.
    IF t516 IS BOUND.
      DATA t529 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t529.
      DATA t530 TYPE REF TO object.
      CLEAR t530.
      CLEAR t529.
      t530 = t516.
      TRY.
          t515 ?= t530.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t515 IS NOT BOUND.
        TRY.
            t529 ?= t516.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t529 IS BOUND.
          t515 = t529->source( ).
        ENDIF.
        IF t515 IS NOT BOUND.
          CREATE OBJECT t515.
          t515->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t515->oval = t516.
        ENDIF.
      ENDIF.
    ENDIF.
    t514 = zcl_lnt_st_combi_module=>opt_prio( i_first = t515 ).
    CLEAR t513.
    IF t514 IS BOUND.
      DATA t531 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t531.
      DATA t532 TYPE REF TO object.
      CLEAR t532.
      CLEAR t531.
      t532 = t514.
      TRY.
          t513 ?= t532.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t513 IS NOT BOUND.
        TRY.
            t531 ?= t514.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t531 IS BOUND.
          t513 = t531->source( ).
        ENDIF.
        IF t513 IS NOT BOUND.
          CREATE OBJECT t513.
          t513->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t513->oval = t514.
        ENDIF.
      ENDIF.
    ENDIF.
    t512 = t513.
    DATA t533 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t533.
    DATA t534 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t534.
    CREATE OBJECT t534.
    t533 = t534.
    DATA(t535) = t533.
    DATA t536 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t536.
    DATA(t537) = |THEN|.
    CLEAR t536.
    CREATE OBJECT t536.
    t536->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t536->sval = t537.
    t535->load( ).
    APPEND t536 TO t535->items.
    t535->save( ).
    DATA(t538) = t533.
    DATA t539 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t539.
    DATA(t540) = t458.
    CLEAR t539.
    IF t540 IS BOUND.
      DATA t541 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t541.
      DATA t542 TYPE REF TO object.
      CLEAR t542.
      CLEAR t541.
      t542 = t540.
      TRY.
          t539 ?= t542.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t539 IS NOT BOUND.
        TRY.
            t541 ?= t540.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t541 IS BOUND.
          t539 = t541->source( ).
        ENDIF.
        IF t539 IS NOT BOUND.
          CREATE OBJECT t539.
          t539->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t539->oval = t540.
        ENDIF.
      ENDIF.
    ENDIF.
    t538->load( ).
    APPEND t539 TO t538->items.
    t538->save( ).
    DATA t543 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t543.
    DATA(t544) = t509.
    DATA(t545) = t512.
    DATA(t546) = t533.
    t543 = zcl_lnt_st_combi_module=>seq( i_first = t544 i_second = t545 i_rest = t546 ).
    t508 = t543.
    t507 = t508.
    DATA t547 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t547.
    DATA t548 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t548.
    DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t549.
    DATA t550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t550.
    DATA t551 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t551.
    DATA t552 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t552.
    DATA t553 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t553.
    DATA(t554) = t330.
    CLEAR t553.
    IF t554 IS BOUND.
      DATA t555 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t555.
      DATA t556 TYPE REF TO object.
      CLEAR t556.
      CLEAR t555.
      t556 = t554.
      TRY.
          t553 ?= t556.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t553 IS NOT BOUND.
        TRY.
            t555 ?= t554.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t555 IS BOUND.
          t553 = t555->source( ).
        ENDIF.
        IF t553 IS NOT BOUND.
          CREATE OBJECT t553.
          t553->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t553->oval = t554.
        ENDIF.
      ENDIF.
    ENDIF.
    t552 = t553.
    DATA t557 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t557.
    DATA t558 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t558.
    DATA t559 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t559.
    DATA t560 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t560.
    DATA(t561) = t507.
    CLEAR t560.
    IF t561 IS BOUND.
      DATA t562 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t562.
      DATA t563 TYPE REF TO object.
      CLEAR t563.
      CLEAR t562.
      t563 = t561.
      TRY.
          t560 ?= t563.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t560 IS NOT BOUND.
        TRY.
            t562 ?= t561.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t562 IS BOUND.
          t560 = t562->source( ).
        ENDIF.
        IF t560 IS NOT BOUND.
          CREATE OBJECT t560.
          t560->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t560->oval = t561.
        ENDIF.
      ENDIF.
    ENDIF.
    t559 = zcl_lnt_st_combi_module=>opt_prio( i_first = t560 ).
    CLEAR t558.
    IF t559 IS BOUND.
      DATA t564 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t564.
      DATA t565 TYPE REF TO object.
      CLEAR t565.
      CLEAR t564.
      t565 = t559.
      TRY.
          t558 ?= t565.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t558 IS NOT BOUND.
        TRY.
            t564 ?= t559.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t564 IS BOUND.
          t558 = t564->source( ).
        ENDIF.
        IF t558 IS NOT BOUND.
          CREATE OBJECT t558.
          t558->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t558->oval = t559.
        ENDIF.
      ENDIF.
    ENDIF.
    t557 = t558.
    DATA t566 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t566.
    DATA t567 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t567.
    CREATE OBJECT t567.
    t566 = t567.
    DATA t568 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t568.
    DATA(t569) = t552.
    DATA(t570) = t557.
    DATA(t571) = t566.
    t568 = zcl_lnt_st_combi_module=>seq( i_first = t569 i_second = t570 i_rest = t571 ).
    t551 = t568.
    CLEAR t550.
    IF t551 IS BOUND.
      DATA t572 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t572.
      DATA t573 TYPE REF TO object.
      CLEAR t573.
      CLEAR t572.
      t573 = t551.
      TRY.
          t550 ?= t573.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t550 IS NOT BOUND.
        TRY.
            t572 ?= t551.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t572 IS BOUND.
          t550 = t572->source( ).
        ENDIF.
        IF t550 IS NOT BOUND.
          CREATE OBJECT t550.
          t550->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t550->oval = t551.
        ENDIF.
      ENDIF.
    ENDIF.
    t549 = t550.
    DATA t574 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t574.
    DATA t575 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t575.
    DATA(t576) = t507.
    CLEAR t575.
    IF t576 IS BOUND.
      DATA t577 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t577.
      DATA t578 TYPE REF TO object.
      CLEAR t578.
      CLEAR t577.
      t578 = t576.
      TRY.
          t575 ?= t578.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t575 IS NOT BOUND.
        TRY.
            t577 ?= t576.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t577 IS BOUND.
          t575 = t577->source( ).
        ENDIF.
        IF t575 IS NOT BOUND.
          CREATE OBJECT t575.
          t575->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t575->oval = t576.
        ENDIF.
      ENDIF.
    ENDIF.
    t574 = t575.
    DATA t579 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t579.
    DATA t580 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t580.
    CREATE OBJECT t580.
    t579 = t580.
    DATA t581 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t581.
    DATA(t582) = t549.
    DATA(t583) = t574.
    DATA(t584) = t579.
    t581 = zcl_lnt_st_combi_module=>alt_prio( i_first = t582 i_second = t583 i_rest = t584 ).
    t548 = t581.
    t547 = t548.
    DATA t585 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t585.
    DATA t586 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t586.
    DATA t587 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t587.
    DATA t588 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t588.
    DATA(t589) = |OPTIONS|.
    CLEAR t588.
    CREATE OBJECT t588.
    t588->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t588->sval = t589.
    t587 = t588.
    DATA t590 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t590.
    DATA t591 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t591.
    DATA t592 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t592.
    DATA t593 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t593.
    DATA t594 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t594.
    DATA(t595) = zlnt_runtime_desc_78196487750d=>zlnt_member_d264_f2af8adb6bb2.
    CLEAR t594.
    IF t595 IS BOUND.
      CREATE OBJECT t594.
      t594->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t594->cval = t595.
    ENDIF.
    t593 = t594.
    DATA t596 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t596.
    DATA t597 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t597.
    DATA(t598) = zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20.
    CLEAR t597.
    IF t598 IS BOUND.
      CREATE OBJECT t597.
      t597->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t597->cval = t598.
    ENDIF.
    t596 = t597.
    DATA t599 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t599.
    DATA t600 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t600.
    CREATE OBJECT t600.
    t599 = t600.
    DATA(t601) = t599.
    DATA t602 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t602.
    DATA t603 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t603.
    DATA t604 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t604.
    DATA t605 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t605.
    DATA(t606) = zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20.
    CLEAR t605.
    IF t606 IS BOUND.
      CREATE OBJECT t605.
      t605->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t605->cval = t606.
    ENDIF.
    t604 = t605.
    DATA t607 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t607.
    DATA t608 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t608.
    DATA(t609) = zlnt_runtime_desc_78196487750d=>zlnt_member_d264_f2af8adb6bb2.
    CLEAR t608.
    IF t609 IS BOUND.
      CREATE OBJECT t608.
      t608->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t608->cval = t609.
    ENDIF.
    t607 = t608.
    DATA t610 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t610.
    DATA t611 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t611.
    CREATE OBJECT t611.
    t610 = t611.
    DATA t612 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t612.
    DATA(t613) = t604.
    DATA(t614) = t607.
    DATA(t615) = t610.
    t612 = zcl_lnt_st_combi_module=>seq( i_first = t613 i_second = t614 i_rest = t615 ).
    t603 = t612.
    CLEAR t602.
    IF t603 IS BOUND.
      DATA t616 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t616.
      DATA t617 TYPE REF TO object.
      CLEAR t617.
      CLEAR t616.
      t617 = t603.
      TRY.
          t602 ?= t617.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t602 IS NOT BOUND.
        TRY.
            t616 ?= t603.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t616 IS BOUND.
          t602 = t616->source( ).
        ENDIF.
        IF t602 IS NOT BOUND.
          CREATE OBJECT t602.
          t602->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t602->oval = t603.
        ENDIF.
      ENDIF.
    ENDIF.
    t601->load( ).
    APPEND t602 TO t601->items.
    t601->save( ).
    DATA(t618) = t599.
    DATA t619 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t619.
    DATA t620 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t620.
    DATA t621 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t621.
    DATA t622 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t622.
    DATA(t623) = zlnt_runtime_desc_78196487750d=>zlnt_member_d264_f2af8adb6bb2.
    CLEAR t622.
    IF t623 IS BOUND.
      CREATE OBJECT t622.
      t622->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t622->cval = t623.
    ENDIF.
    t621 = t622.
    DATA t624 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t624.
    DATA t625 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t625.
    DATA(t626) = zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20.
    CLEAR t625.
    IF t626 IS BOUND.
      CREATE OBJECT t625.
      t625->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t625->cval = t626.
    ENDIF.
    t624 = t625.
    DATA t627 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t627.
    DATA t628 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t628.
    CREATE OBJECT t628.
    t627 = t628.
    DATA t629 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t629.
    DATA(t630) = t621.
    DATA(t631) = t624.
    DATA(t632) = t627.
    t629 = zcl_lnt_st_combi_module=>seq( i_first = t630 i_second = t631 i_rest = t632 ).
    t620 = t629.
    CLEAR t619.
    IF t620 IS BOUND.
      DATA t633 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t633.
      DATA t634 TYPE REF TO object.
      CLEAR t634.
      CLEAR t633.
      t634 = t620.
      TRY.
          t619 ?= t634.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t619 IS NOT BOUND.
        TRY.
            t633 ?= t620.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t633 IS BOUND.
          t619 = t633->source( ).
        ENDIF.
        IF t619 IS NOT BOUND.
          CREATE OBJECT t619.
          t619->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t619->oval = t620.
        ENDIF.
      ENDIF.
    ENDIF.
    t618->load( ).
    APPEND t619 TO t618->items.
    t618->save( ).
    DATA t635 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t635.
    DATA(t636) = t593.
    DATA(t637) = t596.
    DATA(t638) = t599.
    t635 = zcl_lnt_st_combi_module=>alt_prio( i_first = t636 i_second = t637 i_rest = t638 ).
    t592 = t635.
    CLEAR t591.
    IF t592 IS BOUND.
      DATA t639 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t639.
      DATA t640 TYPE REF TO object.
      CLEAR t640.
      CLEAR t639.
      t640 = t592.
      TRY.
          t591 ?= t640.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t591 IS NOT BOUND.
        TRY.
            t639 ?= t592.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t639 IS BOUND.
          t591 = t639->source( ).
        ENDIF.
        IF t591 IS NOT BOUND.
          CREATE OBJECT t591.
          t591->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t591->oval = t592.
        ENDIF.
      ENDIF.
    ENDIF.
    t590 = t591.
    DATA t641 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t641.
    DATA t642 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t642.
    CREATE OBJECT t642.
    t641 = t642.
    DATA t643 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t643.
    DATA(t644) = t587.
    DATA(t645) = t590.
    DATA(t646) = t641.
    t643 = zcl_lnt_st_combi_module=>seq( i_first = t644 i_second = t645 i_rest = t646 ).
    t586 = t643.
    t585 = t586.
    DATA t647 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t647.
    DATA t648 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t648.
    DATA t649 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t649.
    DATA(t650) = t585.
    CLEAR t649.
    IF t650 IS BOUND.
      DATA t651 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t651.
      DATA t652 TYPE REF TO object.
      CLEAR t652.
      CLEAR t651.
      t652 = t650.
      TRY.
          t649 ?= t652.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t649 IS NOT BOUND.
        TRY.
            t651 ?= t650.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t651 IS BOUND.
          t649 = t651->source( ).
        ENDIF.
        IF t649 IS NOT BOUND.
          CREATE OBJECT t649.
          t649->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t649->oval = t650.
        ENDIF.
      ENDIF.
    ENDIF.
    t648 = zcl_lnt_st_combi_module=>opt_prio( i_first = t649 ).
    t647 = t648.
    DATA t653 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t653.
    DATA t654 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t654.
    DATA t655 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t655.
    DATA t656 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t656.
    DATA(t657) = |INTO|.
    CLEAR t656.
    CREATE OBJECT t656.
    t656->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t656->sval = t657.
    t655 = t656.
    DATA t658 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t658.
    DATA t659 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t659.
    DATA(t660) = t1.
    CLEAR t659.
    IF t660 IS BOUND.
      DATA t661 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t661.
      DATA t662 TYPE REF TO object.
      CLEAR t662.
      CLEAR t661.
      t662 = t660.
      TRY.
          t659 ?= t662.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t659 IS NOT BOUND.
        TRY.
            t661 ?= t660.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t661 IS BOUND.
          t659 = t661->source( ).
        ENDIF.
        IF t659 IS NOT BOUND.
          CREATE OBJECT t659.
          t659->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t659->oval = t660.
        ENDIF.
      ENDIF.
    ENDIF.
    t658 = t659.
    DATA t663 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t663.
    DATA t664 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t664.
    CREATE OBJECT t664.
    t663 = t664.
    DATA(t665) = t663.
    DATA t666 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t666.
    DATA t667 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t667.
    DATA t668 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t668.
    DATA(t669) = t168.
    CLEAR t668.
    IF t669 IS BOUND.
      DATA t670 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t670.
      DATA t671 TYPE REF TO object.
      CLEAR t671.
      CLEAR t670.
      t671 = t669.
      TRY.
          t668 ?= t671.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t668 IS NOT BOUND.
        TRY.
            t670 ?= t669.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t670 IS BOUND.
          t668 = t670->source( ).
        ENDIF.
        IF t668 IS NOT BOUND.
          CREATE OBJECT t668.
          t668->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t668->oval = t669.
        ENDIF.
      ENDIF.
    ENDIF.
    t667 = zcl_lnt_st_combi_module=>opt_prio( i_first = t668 ).
    CLEAR t666.
    IF t667 IS BOUND.
      DATA t672 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t672.
      DATA t673 TYPE REF TO object.
      CLEAR t673.
      CLEAR t672.
      t673 = t667.
      TRY.
          t666 ?= t673.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t666 IS NOT BOUND.
        TRY.
            t672 ?= t667.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t672 IS BOUND.
          t666 = t672->source( ).
        ENDIF.
        IF t666 IS NOT BOUND.
          CREATE OBJECT t666.
          t666->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t666->oval = t667.
        ENDIF.
      ENDIF.
    ENDIF.
    t665->load( ).
    APPEND t666 TO t665->items.
    t665->save( ).
    DATA(t674) = t663.
    DATA t675 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t675.
    DATA t676 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t676.
    DATA t677 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t677.
    DATA(t678) = t205.
    CLEAR t677.
    IF t678 IS BOUND.
      DATA t679 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t679.
      DATA t680 TYPE REF TO object.
      CLEAR t680.
      CLEAR t679.
      t680 = t678.
      TRY.
          t677 ?= t680.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t677 IS NOT BOUND.
        TRY.
            t679 ?= t678.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t679 IS BOUND.
          t677 = t679->source( ).
        ENDIF.
        IF t677 IS NOT BOUND.
          CREATE OBJECT t677.
          t677->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t677->oval = t678.
        ENDIF.
      ENDIF.
    ENDIF.
    t676 = zcl_lnt_st_combi_module=>opt_prio( i_first = t677 ).
    CLEAR t675.
    IF t676 IS BOUND.
      DATA t681 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t681.
      DATA t682 TYPE REF TO object.
      CLEAR t682.
      CLEAR t681.
      t682 = t676.
      TRY.
          t675 ?= t682.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t675 IS NOT BOUND.
        TRY.
            t681 ?= t676.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t681 IS BOUND.
          t675 = t681->source( ).
        ENDIF.
        IF t675 IS NOT BOUND.
          CREATE OBJECT t675.
          t675->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t675->oval = t676.
        ENDIF.
      ENDIF.
    ENDIF.
    t674->load( ).
    APPEND t675 TO t674->items.
    t674->save( ).
    DATA(t683) = t663.
    DATA t684 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t684.
    DATA t685 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t685.
    DATA t686 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t686.
    DATA(t687) = t547.
    CLEAR t686.
    IF t687 IS BOUND.
      DATA t688 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t688.
      DATA t689 TYPE REF TO object.
      CLEAR t689.
      CLEAR t688.
      t689 = t687.
      TRY.
          t686 ?= t689.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t686 IS NOT BOUND.
        TRY.
            t688 ?= t687.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t688 IS BOUND.
          t686 = t688->source( ).
        ENDIF.
        IF t686 IS NOT BOUND.
          CREATE OBJECT t686.
          t686->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t686->oval = t687.
        ENDIF.
      ENDIF.
    ENDIF.
    t685 = zcl_lnt_st_combi_module=>opt_prio( i_first = t686 ).
    CLEAR t684.
    IF t685 IS BOUND.
      DATA t690 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t690.
      DATA t691 TYPE REF TO object.
      CLEAR t691.
      CLEAR t690.
      t691 = t685.
      TRY.
          t684 ?= t691.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t684 IS NOT BOUND.
        TRY.
            t690 ?= t685.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t690 IS BOUND.
          t684 = t690->source( ).
        ENDIF.
        IF t684 IS NOT BOUND.
          CREATE OBJECT t684.
          t684->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t684->oval = t685.
        ENDIF.
      ENDIF.
    ENDIF.
    t683->load( ).
    APPEND t684 TO t683->items.
    t683->save( ).
    DATA(t692) = t663.
    DATA t693 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t693.
    DATA(t694) = t647.
    CLEAR t693.
    IF t694 IS BOUND.
      DATA t695 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t695.
      DATA t696 TYPE REF TO object.
      CLEAR t696.
      CLEAR t695.
      t696 = t694.
      TRY.
          t693 ?= t696.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t693 IS NOT BOUND.
        TRY.
            t695 ?= t694.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t695 IS BOUND.
          t693 = t695->source( ).
        ENDIF.
        IF t693 IS NOT BOUND.
          CREATE OBJECT t693.
          t693->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t693->oval = t694.
        ENDIF.
      ENDIF.
    ENDIF.
    t692->load( ).
    APPEND t693 TO t692->items.
    t692->save( ).
    DATA t697 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t697.
    DATA(t698) = t655.
    DATA(t699) = t658.
    DATA(t700) = t663.
    t697 = zcl_lnt_st_combi_module=>seq( i_first = t698 i_second = t699 i_rest = t700 ).
    t654 = t697.
    t653 = t654.
    DATA t701 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t701.
    DATA t702 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t702.
    DATA t703 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t703.
    DATA t704 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t704.
    DATA t705 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t705.
    DATA t706 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t706.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t706 = zcl_lnt_version_module=>release_b8cd.
    DATA(t707) = |v917|.
    t705 = t706->get( p0 = t707 ).
    t704 = t705.
    CLEAR t703.
    IF t704 IS BOUND.
      DATA t708 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t708.
      DATA t709 TYPE REF TO object.
      CLEAR t709.
      CLEAR t708.
      t709 = t704.
      TRY.
          t703 ?= t709.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t703 IS NOT BOUND.
        TRY.
            t708 ?= t704.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t708 IS BOUND.
          t703 = t708->source( ).
        ENDIF.
        IF t703 IS NOT BOUND.
          CREATE OBJECT t703.
          t703->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t703->oval = t704.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t710 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t710.
    DATA t711 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t711.
    DATA t712 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t712.
    DATA t713 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t713.
    DATA(t714) = |MERGE|.
    CLEAR t713.
    CREATE OBJECT t713.
    t713->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t713->sval = t714.
    t712 = t713.
    DATA t715 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t715.
    DATA t716 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t716.
    DATA t717 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t717.
    DATA t718 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t718.
    DATA t719 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t719.
    DATA(t720) = t653.
    CLEAR t719.
    IF t720 IS BOUND.
      DATA t721 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t721.
      DATA t722 TYPE REF TO object.
      CLEAR t722.
      CLEAR t721.
      t722 = t720.
      TRY.
          t719 ?= t722.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t719 IS NOT BOUND.
        TRY.
            t721 ?= t720.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t721 IS BOUND.
          t719 = t721->source( ).
        ENDIF.
        IF t719 IS NOT BOUND.
          CREATE OBJECT t719.
          t719->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t719->oval = t720.
        ENDIF.
      ENDIF.
    ENDIF.
    t718 = t719.
    DATA t723 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t723.
    DATA t724 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t724.
    DATA(t725) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    CLEAR t724.
    IF t725 IS BOUND.
      CREATE OBJECT t724.
      t724->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t724->cval = t725.
    ENDIF.
    t723 = t724.
    DATA t726 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t726.
    DATA t727 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t727.
    CREATE OBJECT t727.
    t726 = t727.
    DATA t728 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t728.
    DATA(t729) = t718.
    DATA(t730) = t723.
    DATA(t731) = t726.
    t728 = zcl_lnt_st_combi_module=>alt( i_first = t729 i_second = t730 i_rest = t731 ).
    t717 = t728.
    CLEAR t716.
    IF t717 IS BOUND.
      DATA t732 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t732.
      DATA t733 TYPE REF TO object.
      CLEAR t733.
      CLEAR t732.
      t733 = t717.
      TRY.
          t716 ?= t733.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t716 IS NOT BOUND.
        TRY.
            t732 ?= t717.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t732 IS BOUND.
          t716 = t732->source( ).
        ENDIF.
        IF t716 IS NOT BOUND.
          CREATE OBJECT t716.
          t716->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t716->oval = t717.
        ENDIF.
      ENDIF.
    ENDIF.
    t715 = t716.
    DATA t734 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t734.
    DATA t735 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t735.
    CREATE OBJECT t735.
    t734 = t735.
    DATA t736 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t736.
    DATA(t737) = t712.
    DATA(t738) = t715.
    DATA(t739) = t734.
    t736 = zcl_lnt_st_combi_module=>seq( i_first = t737 i_second = t738 i_rest = t739 ).
    t711 = t736.
    CLEAR t710.
    IF t711 IS BOUND.
      DATA t740 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t740.
      DATA t741 TYPE REF TO object.
      CLEAR t741.
      CLEAR t740.
      t741 = t711.
      TRY.
          t710 ?= t741.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t710 IS NOT BOUND.
        TRY.
            t740 ?= t711.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t740 IS BOUND.
          t710 = t740->source( ).
        ENDIF.
        IF t710 IS NOT BOUND.
          CREATE OBJECT t710.
          t710->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t710->oval = t711.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t742 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t742.
    t702 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t703 i_first = t710 i_opts = t742 ).
    t701 = t702.
    DATA t743 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t743.
    DATA(t744) = |KeyUser|.
    DATA t745 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t745.
    DATA(t746) = t701.
    CLEAR t745.
    IF t746 IS BOUND.
      DATA t747 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t747.
      DATA t748 TYPE REF TO object.
      CLEAR t748.
      CLEAR t747.
      t748 = t746.
      TRY.
          t745 ?= t748.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t745 IS NOT BOUND.
        TRY.
            t747 ?= t746.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t747 IS BOUND.
          t745 = t747->source( ).
        ENDIF.
        IF t745 IS NOT BOUND.
          CREATE OBJECT t745.
          t745->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t745->oval = t746.
        ENDIF.
      ENDIF.
    ENDIF.
    t743 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t744 i_first = t745 ).
    result = t743.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d551_3a0a4b6f5142.
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
