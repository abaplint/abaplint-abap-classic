* TS: src/abap/2_statements/statements/read_entities.ts:8:1 ReadEntities
CLASS zcl_lnt_st_read_entities DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_read_entities IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = |FROM|.
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
    DATA(t19) = |FIELDS|.
    CLEAR t18.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t22.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77.
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
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t27.
    CREATE OBJECT t27.
    t26 = t27.
    DATA(t28) = t26.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA t30 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA(t32) = zlnt_runtime_desc_78196487750d=>zlnt_member_d173_fd387289a527.
    CLEAR t31.
    IF t32 IS BOUND.
      CREATE OBJECT t31.
      t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t31->cval = t32.
    ENDIF.
    t30 = zcl_lnt_st_combi_module=>plus( i_first = t31 ).
    CLEAR t29.
    IF t30 IS BOUND.
      DATA t33 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t33.
      DATA t34 TYPE REF TO object.
      CLEAR t34.
      CLEAR t33.
      t34 = t30.
      TRY.
          t29 ?= t34.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t29 IS NOT BOUND.
        TRY.
            t33 ?= t30.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t33 IS BOUND.
          t29 = t33->source( ).
        ENDIF.
        IF t29 IS NOT BOUND.
          CREATE OBJECT t29.
          t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t29->oval = t30.
        ENDIF.
      ENDIF.
    ENDIF.
    t28->load( ).
    APPEND t29 TO t28->items.
    t28->save( ).
    DATA(t35) = t26.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t37.
    DATA(t38) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
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
    t35->load( ).
    APPEND t36 TO t35->items.
    t35->save( ).
    DATA(t41) = t26.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA(t43) = |WITH|.
    CLEAR t42.
    CREATE OBJECT t42.
    t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t42->sval = t43.
    t41->load( ).
    APPEND t42 TO t41->items.
    t41->save( ).
    DATA(t44) = t26.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t45.
    IF t46 IS BOUND.
      CREATE OBJECT t45.
      t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t45->cval = t46.
    ENDIF.
    t44->load( ).
    APPEND t45 TO t44->items.
    t44->save( ).
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t47.
    DATA(t48) = t17.
    DATA(t49) = t20.
    DATA(t50) = t26.
    t47 = zcl_lnt_st_combi_module=>seq( i_first = t48 i_second = t49 i_rest = t50 ).
    t16 = t47.
    t15 = t16.
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t51.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA(t55) = |ALL FIELDS WITH|.
    CLEAR t54.
    CREATE OBJECT t54.
    t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t54->sval = t55.
    t53 = t54.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA(t58) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t57.
    IF t58 IS BOUND.
      CREATE OBJECT t57.
      t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t57->cval = t58.
    ENDIF.
    t56 = t57.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t60.
    CREATE OBJECT t60.
    t59 = t60.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t61.
    DATA(t62) = t53.
    DATA(t63) = t56.
    DATA(t64) = t59.
    t61 = zcl_lnt_st_combi_module=>seq( i_first = t62 i_second = t63 i_rest = t64 ).
    t52 = t61.
    t51 = t52.
    DATA t65 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t65.
    DATA t66 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA(t69) = |RESULT|.
    CLEAR t68.
    CREATE OBJECT t68.
    t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t68->sval = t69.
    t67 = t68.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA(t72) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t71.
    IF t72 IS BOUND.
      CREATE OBJECT t71.
      t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t71->cval = t72.
    ENDIF.
    t70 = t71.
    DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t74.
    CREATE OBJECT t74.
    t73 = t74.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t75.
    DATA(t76) = t67.
    DATA(t77) = t70.
    DATA(t78) = t73.
    t75 = zcl_lnt_st_combi_module=>seq( i_first = t76 i_second = t77 i_rest = t78 ).
    t66 = t75.
    t65 = t66.
    DATA t79 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t79.
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t80.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA(t83) = |FAILED|.
    CLEAR t82.
    CREATE OBJECT t82.
    t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t82->sval = t83.
    t81 = t82.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA(t86) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t85.
    IF t86 IS BOUND.
      CREATE OBJECT t85.
      t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t85->cval = t86.
    ENDIF.
    t84 = t85.
    DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t88.
    CREATE OBJECT t88.
    t87 = t88.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t89.
    DATA(t90) = t81.
    DATA(t91) = t84.
    DATA(t92) = t87.
    t89 = zcl_lnt_st_combi_module=>seq( i_first = t90 i_second = t91 i_rest = t92 ).
    t80 = t89.
    t79 = t80.
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t93.
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    DATA(t97) = |REPORTED|.
    CLEAR t96.
    CREATE OBJECT t96.
    t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t96->sval = t97.
    t95 = t96.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    DATA(t100) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t99.
    IF t100 IS BOUND.
      CREATE OBJECT t99.
      t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t99->cval = t100.
    ENDIF.
    t98 = t99.
    DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t102.
    CREATE OBJECT t102.
    t101 = t102.
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t103.
    DATA(t104) = t95.
    DATA(t105) = t98.
    DATA(t106) = t101.
    t103 = zcl_lnt_st_combi_module=>seq( i_first = t104 i_second = t105 i_rest = t106 ).
    t94 = t103.
    t93 = t94.
    DATA t107 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t107.
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t108.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t110.
    DATA(t111) = |EXECUTE|.
    CLEAR t110.
    CREATE OBJECT t110.
    t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t110->sval = t111.
    t109 = t110.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t112.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA(t114) = zlnt_runtime_desc_78196487750d=>zlnt_member_d173_fd387289a527.
    CLEAR t113.
    IF t114 IS BOUND.
      CREATE OBJECT t113.
      t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t113->cval = t114.
    ENDIF.
    t112 = t113.
    DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t115.
    DATA t116 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t116.
    CREATE OBJECT t116.
    t115 = t116.
    DATA(t117) = t115.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA(t119) = t1.
    CLEAR t118.
    IF t119 IS BOUND.
      DATA t120 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t120.
      DATA t121 TYPE REF TO object.
      CLEAR t121.
      CLEAR t120.
      t121 = t119.
      TRY.
          t118 ?= t121.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t118 IS NOT BOUND.
        TRY.
            t120 ?= t119.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t120 IS BOUND.
          t118 = t120->source( ).
        ENDIF.
        IF t118 IS NOT BOUND.
          CREATE OBJECT t118.
          t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t118->oval = t119.
        ENDIF.
      ENDIF.
    ENDIF.
    t117->load( ).
    APPEND t118 TO t117->items.
    t117->save( ).
    DATA t122 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t122.
    DATA(t123) = t109.
    DATA(t124) = t112.
    DATA(t125) = t115.
    t122 = zcl_lnt_st_combi_module=>seq( i_first = t123 i_second = t124 i_rest = t125 ).
    t108 = t122.
    t107 = t108.
    DATA t126 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t126.
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t127.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t129.
    DATA t130 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA t132 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t132.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t133.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    DATA(t135) = |BY|.
    CLEAR t134.
    CREATE OBJECT t134.
    t134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t134->sval = t135.
    t133 = t134.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t136.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t137.
    DATA(t138) = zlnt_runtime_desc_78196487750d=>zlnt_member_d161_a1a721da0257.
    CLEAR t137.
    IF t138 IS BOUND.
      CREATE OBJECT t137.
      t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t137->cval = t138.
    ENDIF.
    t136 = t137.
    DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t139.
    DATA t140 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t140.
    CREATE OBJECT t140.
    t139 = t140.
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t141.
    DATA(t142) = t133.
    DATA(t143) = t136.
    DATA(t144) = t139.
    t141 = zcl_lnt_st_combi_module=>seq( i_first = t142 i_second = t143 i_rest = t144 ).
    t132 = t141.
    CLEAR t131.
    IF t132 IS BOUND.
      DATA t145 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t145.
      DATA t146 TYPE REF TO object.
      CLEAR t146.
      CLEAR t145.
      t146 = t132.
      TRY.
          t131 ?= t146.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t131 IS NOT BOUND.
        TRY.
            t145 ?= t132.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t145 IS BOUND.
          t131 = t145->source( ).
        ENDIF.
        IF t131 IS NOT BOUND.
          CREATE OBJECT t131.
          t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t131->oval = t132.
        ENDIF.
      ENDIF.
    ENDIF.
    t130 = zcl_lnt_st_combi_module=>opt( i_first = t131 ).
    CLEAR t129.
    IF t130 IS BOUND.
      DATA t147 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t147.
      DATA t148 TYPE REF TO object.
      CLEAR t148.
      CLEAR t147.
      t148 = t130.
      TRY.
          t129 ?= t148.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t129 IS NOT BOUND.
        TRY.
            t147 ?= t130.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t147 IS BOUND.
          t129 = t147->source( ).
        ENDIF.
        IF t129 IS NOT BOUND.
          CREATE OBJECT t129.
          t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t129->oval = t130.
        ENDIF.
      ENDIF.
    ENDIF.
    t128 = t129.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t150.
    DATA t151 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t151.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t152.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t153.
    DATA(t154) = t15.
    CLEAR t153.
    IF t154 IS BOUND.
      DATA t155 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t155.
      DATA t156 TYPE REF TO object.
      CLEAR t156.
      CLEAR t155.
      t156 = t154.
      TRY.
          t153 ?= t156.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t153 IS NOT BOUND.
        TRY.
            t155 ?= t154.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t155 IS BOUND.
          t153 = t155->source( ).
        ENDIF.
        IF t153 IS NOT BOUND.
          CREATE OBJECT t153.
          t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t153->oval = t154.
        ENDIF.
      ENDIF.
    ENDIF.
    t152 = t153.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t158.
    DATA(t159) = t1.
    CLEAR t158.
    IF t159 IS BOUND.
      DATA t160 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t160.
      DATA t161 TYPE REF TO object.
      CLEAR t161.
      CLEAR t160.
      t161 = t159.
      TRY.
          t158 ?= t161.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t158 IS NOT BOUND.
        TRY.
            t160 ?= t159.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t160 IS BOUND.
          t158 = t160->source( ).
        ENDIF.
        IF t158 IS NOT BOUND.
          CREATE OBJECT t158.
          t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t158->oval = t159.
        ENDIF.
      ENDIF.
    ENDIF.
    t157 = t158.
    DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t162.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t163.
    CREATE OBJECT t163.
    t162 = t163.
    DATA(t164) = t162.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t165.
    DATA(t166) = t51.
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
    DATA(t169) = t162.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t170.
    DATA(t171) = t107.
    CLEAR t170.
    IF t171 IS BOUND.
      DATA t172 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t172.
      DATA t173 TYPE REF TO object.
      CLEAR t173.
      CLEAR t172.
      t173 = t171.
      TRY.
          t170 ?= t173.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t170 IS NOT BOUND.
        TRY.
            t172 ?= t171.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t172 IS BOUND.
          t170 = t172->source( ).
        ENDIF.
        IF t170 IS NOT BOUND.
          CREATE OBJECT t170.
          t170->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t170->oval = t171.
        ENDIF.
      ENDIF.
    ENDIF.
    t169->load( ).
    APPEND t170 TO t169->items.
    t169->save( ).
    DATA t174 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t174.
    DATA(t175) = t152.
    DATA(t176) = t157.
    DATA(t177) = t162.
    t174 = zcl_lnt_st_combi_module=>alt( i_first = t175 i_second = t176 i_rest = t177 ).
    t151 = t174.
    CLEAR t150.
    IF t151 IS BOUND.
      DATA t178 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t178.
      DATA t179 TYPE REF TO object.
      CLEAR t179.
      CLEAR t178.
      t179 = t151.
      TRY.
          t150 ?= t179.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t150 IS NOT BOUND.
        TRY.
            t178 ?= t151.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t178 IS BOUND.
          t150 = t178->source( ).
        ENDIF.
        IF t150 IS NOT BOUND.
          CREATE OBJECT t150.
          t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t150->oval = t151.
        ENDIF.
      ENDIF.
    ENDIF.
    t149 = t150.
    DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t180.
    DATA t181 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t181.
    CREATE OBJECT t181.
    t180 = t181.
    DATA(t182) = t180.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    DATA t184 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t184.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t185.
    DATA(t186) = t65.
    CLEAR t185.
    IF t186 IS BOUND.
      DATA t187 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t187.
      DATA t188 TYPE REF TO object.
      CLEAR t188.
      CLEAR t187.
      t188 = t186.
      TRY.
          t185 ?= t188.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t185 IS NOT BOUND.
        TRY.
            t187 ?= t186.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t187 IS BOUND.
          t185 = t187->source( ).
        ENDIF.
        IF t185 IS NOT BOUND.
          CREATE OBJECT t185.
          t185->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t185->oval = t186.
        ENDIF.
      ENDIF.
    ENDIF.
    t184 = zcl_lnt_st_combi_module=>opt_prio( i_first = t185 ).
    CLEAR t183.
    IF t184 IS BOUND.
      DATA t189 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t189.
      DATA t190 TYPE REF TO object.
      CLEAR t190.
      CLEAR t189.
      t190 = t184.
      TRY.
          t183 ?= t190.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t183 IS NOT BOUND.
        TRY.
            t189 ?= t184.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t189 IS BOUND.
          t183 = t189->source( ).
        ENDIF.
        IF t183 IS NOT BOUND.
          CREATE OBJECT t183.
          t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t183->oval = t184.
        ENDIF.
      ENDIF.
    ENDIF.
    t182->load( ).
    APPEND t183 TO t182->items.
    t182->save( ).
    DATA t191 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t191.
    DATA(t192) = t128.
    DATA(t193) = t149.
    DATA(t194) = t180.
    t191 = zcl_lnt_st_combi_module=>seq( i_first = t192 i_second = t193 i_rest = t194 ).
    t127 = t191.
    t126 = t127.
    DATA t195 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t195.
    DATA t196 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t196.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t198.
    DATA(t199) = |ENTITY|.
    CLEAR t198.
    CREATE OBJECT t198.
    t198->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t198->sval = t199.
    t197 = t198.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t200.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t201.
    DATA(t202) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    CLEAR t201.
    IF t202 IS BOUND.
      CREATE OBJECT t201.
      t201->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t201->cval = t202.
    ENDIF.
    t200 = t201.
    DATA t203 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t203.
    DATA t204 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t204.
    CREATE OBJECT t204.
    t203 = t204.
    DATA(t205) = t203.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t206.
    DATA t207 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t207.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t208.
    DATA(t209) = t126.
    CLEAR t208.
    IF t209 IS BOUND.
      DATA t210 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t210.
      DATA t211 TYPE REF TO object.
      CLEAR t211.
      CLEAR t210.
      t211 = t209.
      TRY.
          t208 ?= t211.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t208 IS NOT BOUND.
        TRY.
            t210 ?= t209.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t210 IS BOUND.
          t208 = t210->source( ).
        ENDIF.
        IF t208 IS NOT BOUND.
          CREATE OBJECT t208.
          t208->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t208->oval = t209.
        ENDIF.
      ENDIF.
    ENDIF.
    t207 = zcl_lnt_st_combi_module=>plus( i_first = t208 ).
    CLEAR t206.
    IF t207 IS BOUND.
      DATA t212 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t212.
      DATA t213 TYPE REF TO object.
      CLEAR t213.
      CLEAR t212.
      t213 = t207.
      TRY.
          t206 ?= t213.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t206 IS NOT BOUND.
        TRY.
            t212 ?= t207.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t212 IS BOUND.
          t206 = t212->source( ).
        ENDIF.
        IF t206 IS NOT BOUND.
          CREATE OBJECT t206.
          t206->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t206->oval = t207.
        ENDIF.
      ENDIF.
    ENDIF.
    t205->load( ).
    APPEND t206 TO t205->items.
    t205->save( ).
    DATA t214 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t214.
    DATA(t215) = t197.
    DATA(t216) = t200.
    DATA(t217) = t203.
    t214 = zcl_lnt_st_combi_module=>seq( i_first = t215 i_second = t216 i_rest = t217 ).
    t196 = t214.
    t195 = t196.
    DATA t218 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t218.
    DATA t219 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t219.
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t220.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t221.
    DATA(t222) = |ENTITIES OF|.
    CLEAR t221.
    CREATE OBJECT t221.
    t221->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t221->sval = t222.
    t220 = t221.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t223.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t224.
    DATA(t225) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    CLEAR t224.
    IF t225 IS BOUND.
      CREATE OBJECT t224.
      t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t224->cval = t225.
    ENDIF.
    t223 = t224.
    DATA t226 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t226.
    DATA t227 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t227.
    CREATE OBJECT t227.
    t226 = t227.
    DATA(t228) = t226.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t229.
    DATA t230 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t230.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t231.
    DATA(t232) = |IN LOCAL MODE|.
    CLEAR t231.
    CREATE OBJECT t231.
    t231->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t231->sval = t232.
    t230 = zcl_lnt_st_combi_module=>opt( i_first = t231 ).
    CLEAR t229.
    IF t230 IS BOUND.
      DATA t233 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t233.
      DATA t234 TYPE REF TO object.
      CLEAR t234.
      CLEAR t233.
      t234 = t230.
      TRY.
          t229 ?= t234.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t229 IS NOT BOUND.
        TRY.
            t233 ?= t230.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t233 IS BOUND.
          t229 = t233->source( ).
        ENDIF.
        IF t229 IS NOT BOUND.
          CREATE OBJECT t229.
          t229->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t229->oval = t230.
        ENDIF.
      ENDIF.
    ENDIF.
    t228->load( ).
    APPEND t229 TO t228->items.
    t228->save( ).
    DATA(t235) = t226.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t236.
    DATA t237 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t237.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t238.
    DATA(t239) = t195.
    CLEAR t238.
    IF t239 IS BOUND.
      DATA t240 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t240.
      DATA t241 TYPE REF TO object.
      CLEAR t241.
      CLEAR t240.
      t241 = t239.
      TRY.
          t238 ?= t241.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t238 IS NOT BOUND.
        TRY.
            t240 ?= t239.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t240 IS BOUND.
          t238 = t240->source( ).
        ENDIF.
        IF t238 IS NOT BOUND.
          CREATE OBJECT t238.
          t238->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t238->oval = t239.
        ENDIF.
      ENDIF.
    ENDIF.
    t237 = zcl_lnt_st_combi_module=>plus( i_first = t238 ).
    CLEAR t236.
    IF t237 IS BOUND.
      DATA t242 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t242.
      DATA t243 TYPE REF TO object.
      CLEAR t243.
      CLEAR t242.
      t243 = t237.
      TRY.
          t236 ?= t243.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t236 IS NOT BOUND.
        TRY.
            t242 ?= t237.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t242 IS BOUND.
          t236 = t242->source( ).
        ENDIF.
        IF t236 IS NOT BOUND.
          CREATE OBJECT t236.
          t236->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t236->oval = t237.
        ENDIF.
      ENDIF.
    ENDIF.
    t235->load( ).
    APPEND t236 TO t235->items.
    t235->save( ).
    DATA(t244) = t226.
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t245.
    DATA t246 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t246.
    DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t247.
    DATA t248 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t248.
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t249.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t250.
    DATA(t251) = |LINK|.
    CLEAR t250.
    CREATE OBJECT t250.
    t250->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t250->sval = t251.
    t249 = t250.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t252.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t253.
    DATA(t254) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    CLEAR t253.
    IF t254 IS BOUND.
      CREATE OBJECT t253.
      t253->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t253->cval = t254.
    ENDIF.
    t252 = t253.
    DATA t255 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t255.
    DATA t256 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t256.
    CREATE OBJECT t256.
    t255 = t256.
    DATA t257 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t257.
    DATA(t258) = t249.
    DATA(t259) = t252.
    DATA(t260) = t255.
    t257 = zcl_lnt_st_combi_module=>seq( i_first = t258 i_second = t259 i_rest = t260 ).
    t248 = t257.
    CLEAR t247.
    IF t248 IS BOUND.
      DATA t261 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t261.
      DATA t262 TYPE REF TO object.
      CLEAR t262.
      CLEAR t261.
      t262 = t248.
      TRY.
          t247 ?= t262.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t247 IS NOT BOUND.
        TRY.
            t261 ?= t248.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t261 IS BOUND.
          t247 = t261->source( ).
        ENDIF.
        IF t247 IS NOT BOUND.
          CREATE OBJECT t247.
          t247->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t247->oval = t248.
        ENDIF.
      ENDIF.
    ENDIF.
    t246 = zcl_lnt_st_combi_module=>opt_prio( i_first = t247 ).
    CLEAR t245.
    IF t246 IS BOUND.
      DATA t263 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t263.
      DATA t264 TYPE REF TO object.
      CLEAR t264.
      CLEAR t263.
      t264 = t246.
      TRY.
          t245 ?= t264.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t245 IS NOT BOUND.
        TRY.
            t263 ?= t246.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t263 IS BOUND.
          t245 = t263->source( ).
        ENDIF.
        IF t245 IS NOT BOUND.
          CREATE OBJECT t245.
          t245->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t245->oval = t246.
        ENDIF.
      ENDIF.
    ENDIF.
    t244->load( ).
    APPEND t245 TO t244->items.
    t244->save( ).
    DATA(t265) = t226.
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t266.
    DATA t267 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t267.
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t268.
    DATA t269 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t269.
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t270.
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t271.
    DATA(t272) = t79.
    CLEAR t271.
    IF t272 IS BOUND.
      DATA t273 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t273.
      DATA t274 TYPE REF TO object.
      CLEAR t274.
      CLEAR t273.
      t274 = t272.
      TRY.
          t271 ?= t274.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t271 IS NOT BOUND.
        TRY.
            t273 ?= t272.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t273 IS BOUND.
          t271 = t273->source( ).
        ENDIF.
        IF t271 IS NOT BOUND.
          CREATE OBJECT t271.
          t271->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t271->oval = t272.
        ENDIF.
      ENDIF.
    ENDIF.
    t270 = t271.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t275.
    DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t276.
    DATA(t277) = t93.
    CLEAR t276.
    IF t277 IS BOUND.
      DATA t278 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t278.
      DATA t279 TYPE REF TO object.
      CLEAR t279.
      CLEAR t278.
      t279 = t277.
      TRY.
          t276 ?= t279.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t276 IS NOT BOUND.
        TRY.
            t278 ?= t277.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t278 IS BOUND.
          t276 = t278->source( ).
        ENDIF.
        IF t276 IS NOT BOUND.
          CREATE OBJECT t276.
          t276->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t276->oval = t277.
        ENDIF.
      ENDIF.
    ENDIF.
    t275 = t276.
    DATA t280 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t280.
    DATA t281 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t281.
    CREATE OBJECT t281.
    t280 = t281.
    DATA t282 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t282.
    DATA(t283) = t270.
    DATA(t284) = t275.
    DATA(t285) = t280.
    t282 = zcl_lnt_st_combi_module=>per( i_first = t283 i_second = t284 i_rest = t285 ).
    t269 = t282.
    CLEAR t268.
    IF t269 IS BOUND.
      DATA t286 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t286.
      DATA t287 TYPE REF TO object.
      CLEAR t287.
      CLEAR t286.
      t287 = t269.
      TRY.
          t268 ?= t287.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t268 IS NOT BOUND.
        TRY.
            t286 ?= t269.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t286 IS BOUND.
          t268 = t286->source( ).
        ENDIF.
        IF t268 IS NOT BOUND.
          CREATE OBJECT t268.
          t268->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t268->oval = t269.
        ENDIF.
      ENDIF.
    ENDIF.
    t267 = zcl_lnt_st_combi_module=>opt_prio( i_first = t268 ).
    CLEAR t266.
    IF t267 IS BOUND.
      DATA t288 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t288.
      DATA t289 TYPE REF TO object.
      CLEAR t289.
      CLEAR t288.
      t289 = t267.
      TRY.
          t266 ?= t289.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t266 IS NOT BOUND.
        TRY.
            t288 ?= t267.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t288 IS BOUND.
          t266 = t288->source( ).
        ENDIF.
        IF t266 IS NOT BOUND.
          CREATE OBJECT t266.
          t266->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t266->oval = t267.
        ENDIF.
      ENDIF.
    ENDIF.
    t265->load( ).
    APPEND t266 TO t265->items.
    t265->save( ).
    DATA t290 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t290.
    DATA(t291) = t220.
    DATA(t292) = t223.
    DATA(t293) = t226.
    t290 = zcl_lnt_st_combi_module=>seq( i_first = t291 i_second = t292 i_rest = t293 ).
    t219 = t290.
    t218 = t219.
    DATA t294 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t294.
    DATA t295 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t295.
    DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t296.
    DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t297.
    DATA(t298) = |BY|.
    CLEAR t297.
    CREATE OBJECT t297.
    t297->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t297->sval = t298.
    t296 = t297.
    DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t299.
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t300.
    DATA(t301) = zlnt_runtime_desc_78196487750d=>zlnt_member_d161_a1a721da0257.
    CLEAR t300.
    IF t301 IS BOUND.
      CREATE OBJECT t300.
      t300->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t300->cval = t301.
    ENDIF.
    t299 = t300.
    DATA t302 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t302.
    DATA t303 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t303.
    CREATE OBJECT t303.
    t302 = t303.
    DATA(t304) = t302.
    DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t305.
    DATA(t306) = t51.
    CLEAR t305.
    IF t306 IS BOUND.
      DATA t307 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t307.
      DATA t308 TYPE REF TO object.
      CLEAR t308.
      CLEAR t307.
      t308 = t306.
      TRY.
          t305 ?= t308.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t305 IS NOT BOUND.
        TRY.
            t307 ?= t306.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t307 IS BOUND.
          t305 = t307->source( ).
        ENDIF.
        IF t305 IS NOT BOUND.
          CREATE OBJECT t305.
          t305->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t305->oval = t306.
        ENDIF.
      ENDIF.
    ENDIF.
    t304->load( ).
    APPEND t305 TO t304->items.
    t304->save( ).
    DATA t309 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t309.
    DATA(t310) = t296.
    DATA(t311) = t299.
    DATA(t312) = t302.
    t309 = zcl_lnt_st_combi_module=>seq( i_first = t310 i_second = t311 i_rest = t312 ).
    t295 = t309.
    t294 = t295.
    DATA t313 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t313.
    DATA t314 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t314.
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t315.
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t316.
    DATA(t317) = |BY|.
    CLEAR t316.
    CREATE OBJECT t316.
    t316->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t316->sval = t317.
    t315 = t316.
    DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t318.
    DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t319.
    DATA(t320) = zlnt_runtime_desc_78196487750d=>zlnt_member_d161_a1a721da0257.
    CLEAR t319.
    IF t320 IS BOUND.
      CREATE OBJECT t319.
      t319->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t319->cval = t320.
    ENDIF.
    t318 = t319.
    DATA t321 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t321.
    DATA t322 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t322.
    CREATE OBJECT t322.
    t321 = t322.
    DATA(t323) = t321.
    DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t324.
    DATA(t325) = t15.
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
    DATA t328 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t328.
    DATA(t329) = t315.
    DATA(t330) = t318.
    DATA(t331) = t321.
    t328 = zcl_lnt_st_combi_module=>seq( i_first = t329 i_second = t330 i_rest = t331 ).
    t314 = t328.
    t313 = t314.
    DATA t332 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t332.
    DATA t333 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t333.
    DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t334.
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t335.
    DATA t336 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t336.
    DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t337.
    DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t338.
    DATA(t339) = t51.
    CLEAR t338.
    IF t339 IS BOUND.
      DATA t340 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t340.
      DATA t341 TYPE REF TO object.
      CLEAR t341.
      CLEAR t340.
      t341 = t339.
      TRY.
          t338 ?= t341.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t338 IS NOT BOUND.
        TRY.
            t340 ?= t339.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t340 IS BOUND.
          t338 = t340->source( ).
        ENDIF.
        IF t338 IS NOT BOUND.
          CREATE OBJECT t338.
          t338->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t338->oval = t339.
        ENDIF.
      ENDIF.
    ENDIF.
    t337 = t338.
    DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t342.
    DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t343.
    DATA(t344) = t15.
    CLEAR t343.
    IF t344 IS BOUND.
      DATA t345 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t345.
      DATA t346 TYPE REF TO object.
      CLEAR t346.
      CLEAR t345.
      t346 = t344.
      TRY.
          t343 ?= t346.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t343 IS NOT BOUND.
        TRY.
            t345 ?= t344.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t345 IS BOUND.
          t343 = t345->source( ).
        ENDIF.
        IF t343 IS NOT BOUND.
          CREATE OBJECT t343.
          t343->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t343->oval = t344.
        ENDIF.
      ENDIF.
    ENDIF.
    t342 = t343.
    DATA t347 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t347.
    DATA t348 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t348.
    CREATE OBJECT t348.
    t347 = t348.
    DATA(t349) = t347.
    DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t350.
    DATA(t351) = t1.
    CLEAR t350.
    IF t351 IS BOUND.
      DATA t352 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t352.
      DATA t353 TYPE REF TO object.
      CLEAR t353.
      CLEAR t352.
      t353 = t351.
      TRY.
          t350 ?= t353.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t350 IS NOT BOUND.
        TRY.
            t352 ?= t351.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t352 IS BOUND.
          t350 = t352->source( ).
        ENDIF.
        IF t350 IS NOT BOUND.
          CREATE OBJECT t350.
          t350->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t350->oval = t351.
        ENDIF.
      ENDIF.
    ENDIF.
    t349->load( ).
    APPEND t350 TO t349->items.
    t349->save( ).
    DATA(t354) = t347.
    DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t355.
    DATA(t356) = t313.
    CLEAR t355.
    IF t356 IS BOUND.
      DATA t357 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t357.
      DATA t358 TYPE REF TO object.
      CLEAR t358.
      CLEAR t357.
      t358 = t356.
      TRY.
          t355 ?= t358.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t355 IS NOT BOUND.
        TRY.
            t357 ?= t356.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t357 IS BOUND.
          t355 = t357->source( ).
        ENDIF.
        IF t355 IS NOT BOUND.
          CREATE OBJECT t355.
          t355->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t355->oval = t356.
        ENDIF.
      ENDIF.
    ENDIF.
    t354->load( ).
    APPEND t355 TO t354->items.
    t354->save( ).
    DATA(t359) = t347.
    DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t360.
    DATA(t361) = t294.
    CLEAR t360.
    IF t361 IS BOUND.
      DATA t362 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t362.
      DATA t363 TYPE REF TO object.
      CLEAR t363.
      CLEAR t362.
      t363 = t361.
      TRY.
          t360 ?= t363.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t360 IS NOT BOUND.
        TRY.
            t362 ?= t361.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t362 IS BOUND.
          t360 = t362->source( ).
        ENDIF.
        IF t360 IS NOT BOUND.
          CREATE OBJECT t360.
          t360->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t360->oval = t361.
        ENDIF.
      ENDIF.
    ENDIF.
    t359->load( ).
    APPEND t360 TO t359->items.
    t359->save( ).
    DATA t364 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t364.
    DATA(t365) = t337.
    DATA(t366) = t342.
    DATA(t367) = t347.
    t364 = zcl_lnt_st_combi_module=>alt( i_first = t365 i_second = t366 i_rest = t367 ).
    t336 = t364.
    CLEAR t335.
    IF t336 IS BOUND.
      DATA t368 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t368.
      DATA t369 TYPE REF TO object.
      CLEAR t369.
      CLEAR t368.
      t369 = t336.
      TRY.
          t335 ?= t369.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t335 IS NOT BOUND.
        TRY.
            t368 ?= t336.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t368 IS BOUND.
          t335 = t368->source( ).
        ENDIF.
        IF t335 IS NOT BOUND.
          CREATE OBJECT t335.
          t335->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t335->oval = t336.
        ENDIF.
      ENDIF.
    ENDIF.
    t334 = t335.
    DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t370.
    DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t371.
    DATA(t372) = t65.
    CLEAR t371.
    IF t372 IS BOUND.
      DATA t373 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t373.
      DATA t374 TYPE REF TO object.
      CLEAR t374.
      CLEAR t373.
      t374 = t372.
      TRY.
          t371 ?= t374.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t371 IS NOT BOUND.
        TRY.
            t373 ?= t372.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t373 IS BOUND.
          t371 = t373->source( ).
        ENDIF.
        IF t371 IS NOT BOUND.
          CREATE OBJECT t371.
          t371->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t371->oval = t372.
        ENDIF.
      ENDIF.
    ENDIF.
    t370 = t371.
    DATA t375 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t375.
    DATA t376 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t376.
    CREATE OBJECT t376.
    t375 = t376.
    DATA t377 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t377.
    DATA(t378) = t334.
    DATA(t379) = t370.
    DATA(t380) = t375.
    t377 = zcl_lnt_st_combi_module=>seq( i_first = t378 i_second = t379 i_rest = t380 ).
    t333 = t377.
    t332 = t333.
    DATA t381 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t381.
    DATA t382 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t382.
    DATA t383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t383.
    DATA t384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t384.
    DATA(t385) = |ENTITY|.
    CLEAR t384.
    CREATE OBJECT t384.
    t384->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t384->sval = t385.
    t383 = t384.
    DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t386.
    DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t387.
    DATA t388 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t388.
    DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t389.
    DATA(t390) = |IN LOCAL MODE|.
    CLEAR t389.
    CREATE OBJECT t389.
    t389->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t389->sval = t390.
    t388 = zcl_lnt_st_combi_module=>opt( i_first = t389 ).
    CLEAR t387.
    IF t388 IS BOUND.
      DATA t391 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t391.
      DATA t392 TYPE REF TO object.
      CLEAR t392.
      CLEAR t391.
      t392 = t388.
      TRY.
          t387 ?= t392.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t387 IS NOT BOUND.
        TRY.
            t391 ?= t388.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t391 IS BOUND.
          t387 = t391->source( ).
        ENDIF.
        IF t387 IS NOT BOUND.
          CREATE OBJECT t387.
          t387->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t387->oval = t388.
        ENDIF.
      ENDIF.
    ENDIF.
    t386 = t387.
    DATA t393 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t393.
    DATA t394 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t394.
    CREATE OBJECT t394.
    t393 = t394.
    DATA(t395) = t393.
    DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t396.
    DATA t397 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t397.
    DATA t398 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t398.
    DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t399.
    DATA(t400) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    CLEAR t399.
    IF t400 IS BOUND.
      CREATE OBJECT t399.
      t399->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t399->cval = t400.
    ENDIF.
    t398 = t399.
    DATA t401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t401.
    DATA t402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t402.
    DATA(t403) = zlnt_runtime_desc_78196487750d=>zlnt_member_d162_57231f39acd0.
    CLEAR t402.
    IF t403 IS BOUND.
      CREATE OBJECT t402.
      t402->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t402->cval = t403.
    ENDIF.
    t401 = t402.
    DATA t404 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t404.
    DATA t405 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t405.
    CREATE OBJECT t405.
    t404 = t405.
    DATA t406 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t406.
    DATA(t407) = t398.
    DATA(t408) = t401.
    DATA(t409) = t404.
    t406 = zcl_lnt_st_combi_module=>alt( i_first = t407 i_second = t408 i_rest = t409 ).
    t397 = t406.
    CLEAR t396.
    IF t397 IS BOUND.
      DATA t410 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t410.
      DATA t411 TYPE REF TO object.
      CLEAR t411.
      CLEAR t410.
      t411 = t397.
      TRY.
          t396 ?= t411.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t396 IS NOT BOUND.
        TRY.
            t410 ?= t397.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t410 IS BOUND.
          t396 = t410->source( ).
        ENDIF.
        IF t396 IS NOT BOUND.
          CREATE OBJECT t396.
          t396->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t396->oval = t397.
        ENDIF.
      ENDIF.
    ENDIF.
    t395->load( ).
    APPEND t396 TO t395->items.
    t395->save( ).
    DATA(t412) = t393.
    DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t413.
    DATA t414 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t414.
    DATA t415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t415.
    DATA(t416) = t332.
    CLEAR t415.
    IF t416 IS BOUND.
      DATA t417 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t417.
      DATA t418 TYPE REF TO object.
      CLEAR t418.
      CLEAR t417.
      t418 = t416.
      TRY.
          t415 ?= t418.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t415 IS NOT BOUND.
        TRY.
            t417 ?= t416.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t417 IS BOUND.
          t415 = t417->source( ).
        ENDIF.
        IF t415 IS NOT BOUND.
          CREATE OBJECT t415.
          t415->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t415->oval = t416.
        ENDIF.
      ENDIF.
    ENDIF.
    t414 = zcl_lnt_st_combi_module=>plus( i_first = t415 ).
    CLEAR t413.
    IF t414 IS BOUND.
      DATA t419 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t419.
      DATA t420 TYPE REF TO object.
      CLEAR t420.
      CLEAR t419.
      t420 = t414.
      TRY.
          t413 ?= t420.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t413 IS NOT BOUND.
        TRY.
            t419 ?= t414.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t419 IS BOUND.
          t413 = t419->source( ).
        ENDIF.
        IF t413 IS NOT BOUND.
          CREATE OBJECT t413.
          t413->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t413->oval = t414.
        ENDIF.
      ENDIF.
    ENDIF.
    t412->load( ).
    APPEND t413 TO t412->items.
    t412->save( ).
    DATA(t421) = t393.
    DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t422.
    DATA t423 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t423.
    DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t424.
    DATA(t425) = t79.
    CLEAR t424.
    IF t425 IS BOUND.
      DATA t426 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t426.
      DATA t427 TYPE REF TO object.
      CLEAR t427.
      CLEAR t426.
      t427 = t425.
      TRY.
          t424 ?= t427.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t424 IS NOT BOUND.
        TRY.
            t426 ?= t425.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t426 IS BOUND.
          t424 = t426->source( ).
        ENDIF.
        IF t424 IS NOT BOUND.
          CREATE OBJECT t424.
          t424->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t424->oval = t425.
        ENDIF.
      ENDIF.
    ENDIF.
    t423 = zcl_lnt_st_combi_module=>opt_prio( i_first = t424 ).
    CLEAR t422.
    IF t423 IS BOUND.
      DATA t428 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t428.
      DATA t429 TYPE REF TO object.
      CLEAR t429.
      CLEAR t428.
      t429 = t423.
      TRY.
          t422 ?= t429.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t422 IS NOT BOUND.
        TRY.
            t428 ?= t423.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t428 IS BOUND.
          t422 = t428->source( ).
        ENDIF.
        IF t422 IS NOT BOUND.
          CREATE OBJECT t422.
          t422->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t422->oval = t423.
        ENDIF.
      ENDIF.
    ENDIF.
    t421->load( ).
    APPEND t422 TO t421->items.
    t421->save( ).
    DATA(t430) = t393.
    DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t431.
    DATA t432 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t432.
    DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t433.
    DATA(t434) = t93.
    CLEAR t433.
    IF t434 IS BOUND.
      DATA t435 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t435.
      DATA t436 TYPE REF TO object.
      CLEAR t436.
      CLEAR t435.
      t436 = t434.
      TRY.
          t433 ?= t436.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t433 IS NOT BOUND.
        TRY.
            t435 ?= t434.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t435 IS BOUND.
          t433 = t435->source( ).
        ENDIF.
        IF t433 IS NOT BOUND.
          CREATE OBJECT t433.
          t433->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t433->oval = t434.
        ENDIF.
      ENDIF.
    ENDIF.
    t432 = zcl_lnt_st_combi_module=>opt_prio( i_first = t433 ).
    CLEAR t431.
    IF t432 IS BOUND.
      DATA t437 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t437.
      DATA t438 TYPE REF TO object.
      CLEAR t438.
      CLEAR t437.
      t438 = t432.
      TRY.
          t431 ?= t438.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t431 IS NOT BOUND.
        TRY.
            t437 ?= t432.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t437 IS BOUND.
          t431 = t437->source( ).
        ENDIF.
        IF t431 IS NOT BOUND.
          CREATE OBJECT t431.
          t431->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t431->oval = t432.
        ENDIF.
      ENDIF.
    ENDIF.
    t430->load( ).
    APPEND t431 TO t430->items.
    t430->save( ).
    DATA t439 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t439.
    DATA(t440) = t383.
    DATA(t441) = t386.
    DATA(t442) = t393.
    t439 = zcl_lnt_st_combi_module=>seq( i_first = t440 i_second = t441 i_rest = t442 ).
    t382 = t439.
    t381 = t382.
    DATA t443 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t443.
    DATA t444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t444.
    DATA t445 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t445.
    DATA t446 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t446.
    DATA t447 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t447.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t447 = zcl_lnt_version_module=>release_b8cd.
    DATA(t448) = |v754|.
    t446 = t447->get( p0 = t448 ).
    t445 = t446.
    CLEAR t444.
    IF t445 IS BOUND.
      DATA t449 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t449.
      DATA t450 TYPE REF TO object.
      CLEAR t450.
      CLEAR t449.
      t450 = t445.
      TRY.
          t444 ?= t450.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t444 IS NOT BOUND.
        TRY.
            t449 ?= t445.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t449 IS BOUND.
          t444 = t449->source( ).
        ENDIF.
        IF t444 IS NOT BOUND.
          CREATE OBJECT t444.
          t444->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t444->oval = t445.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t451.
    DATA t452 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t452.
    DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t453.
    DATA t454 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t454.
    DATA(t455) = |READ|.
    CLEAR t454.
    CREATE OBJECT t454.
    t454->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t454->sval = t455.
    t453 = t454.
    DATA t456 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t456.
    DATA t457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t457.
    DATA t458 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t458.
    DATA t459 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t459.
    DATA t460 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t460.
    DATA(t461) = t218.
    CLEAR t460.
    IF t461 IS BOUND.
      DATA t462 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t462.
      DATA t463 TYPE REF TO object.
      CLEAR t463.
      CLEAR t462.
      t463 = t461.
      TRY.
          t460 ?= t463.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t460 IS NOT BOUND.
        TRY.
            t462 ?= t461.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t462 IS BOUND.
          t460 = t462->source( ).
        ENDIF.
        IF t460 IS NOT BOUND.
          CREATE OBJECT t460.
          t460->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t460->oval = t461.
        ENDIF.
      ENDIF.
    ENDIF.
    t459 = t460.
    DATA t464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t464.
    DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t465.
    DATA(t466) = t381.
    CLEAR t465.
    IF t466 IS BOUND.
      DATA t467 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t467.
      DATA t468 TYPE REF TO object.
      CLEAR t468.
      CLEAR t467.
      t468 = t466.
      TRY.
          t465 ?= t468.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t465 IS NOT BOUND.
        TRY.
            t467 ?= t466.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t467 IS BOUND.
          t465 = t467->source( ).
        ENDIF.
        IF t465 IS NOT BOUND.
          CREATE OBJECT t465.
          t465->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t465->oval = t466.
        ENDIF.
      ENDIF.
    ENDIF.
    t464 = t465.
    DATA t469 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t469.
    DATA t470 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t470.
    CREATE OBJECT t470.
    t469 = t470.
    DATA t471 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t471.
    DATA(t472) = t459.
    DATA(t473) = t464.
    DATA(t474) = t469.
    t471 = zcl_lnt_st_combi_module=>alt( i_first = t472 i_second = t473 i_rest = t474 ).
    t458 = t471.
    CLEAR t457.
    IF t458 IS BOUND.
      DATA t475 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t475.
      DATA t476 TYPE REF TO object.
      CLEAR t476.
      CLEAR t475.
      t476 = t458.
      TRY.
          t457 ?= t476.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t457 IS NOT BOUND.
        TRY.
            t475 ?= t458.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t475 IS BOUND.
          t457 = t475->source( ).
        ENDIF.
        IF t457 IS NOT BOUND.
          CREATE OBJECT t457.
          t457->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t457->oval = t458.
        ENDIF.
      ENDIF.
    ENDIF.
    t456 = t457.
    DATA t477 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t477.
    DATA t478 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t478.
    CREATE OBJECT t478.
    t477 = t478.
    DATA t479 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t479.
    DATA(t480) = t453.
    DATA(t481) = t456.
    DATA(t482) = t477.
    t479 = zcl_lnt_st_combi_module=>seq( i_first = t480 i_second = t481 i_rest = t482 ).
    t452 = t479.
    CLEAR t451.
    IF t452 IS BOUND.
      DATA t483 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t483.
      DATA t484 TYPE REF TO object.
      CLEAR t484.
      CLEAR t483.
      t484 = t452.
      TRY.
          t451 ?= t484.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t451 IS NOT BOUND.
        TRY.
            t483 ?= t452.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t483 IS BOUND.
          t451 = t483->source( ).
        ENDIF.
        IF t451 IS NOT BOUND.
          CREATE OBJECT t451.
          t451->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t451->oval = t452.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t485 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t485.
    DATA(t486) = abap_true.
    IF t486 = abap_true.
      DATA t487 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t487.
      DATA t488 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t488.
      DATA t489 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t489.
      DATA(t490) = abap_true.
      IF t490 = abap_true.
        DATA(t491) = |OpenABAP|.
        DATA(t492) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t492->has = abap_true.
        t492->value = t491.
        t489 = t492.
      ELSE.
        DATA t493 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t493.
        t489 = t493.
      ENDIF.
      t488 = t489.
      t487 = NEW zcl_lnt_iver_options( i_also = t488 ).
      CREATE OBJECT t487->zlnt_view_ownkeys_b0e8086400eb.
      t487->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t494.
      IF t487->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t487->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t494 ).
      ENDIF.
      CREATE OBJECT t487->zlnt_json_ownkeys_70e5fd461788.
      t487->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t495) = |also|.
      DATA t496 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t496.
      IF t487->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t487->zlnt_json_ownkeys_70e5fd461788->put( p0 = t495 p1 = t496 ).
      ENDIF.
      t485 = t487.
    ELSE.
      DATA t497 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t497.
      t485 = t497.
    ENDIF.
    t443 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t444 i_first = t451 i_opts = t485 ).
    result = t443.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d591_802cad6c5ea5.
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
