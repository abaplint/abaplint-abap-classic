* TS: src/abap/2_statements/statements/modify_line.ts:7:1 ModifyLine
CLASS zcl_lnt_modify_line DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_modify_line IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = |ON|.
    CLEAR t4.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = |OFF|.
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
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t11.
    DATA(t12) = t3.
    DATA(t13) = t6.
    DATA(t14) = t9.
    t11 = zcl_lnt_st_combi_module=>alt( i_first = t12 i_second = t13 i_rest = t14 ).
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
    DATA(t19) = |=|.
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
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA(t36) = |INVERSE|.
    CLEAR t35.
    CREATE OBJECT t35.
    t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t35->sval = t36.
    t34 = t35.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA(t39) = |INPUT|.
    CLEAR t38.
    CREATE OBJECT t38.
    t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t38->sval = t39.
    t37 = t38.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t41.
    CREATE OBJECT t41.
    t40 = t41.
    DATA(t42) = t40.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA(t44) = |COLOR|.
    CLEAR t43.
    CREATE OBJECT t43.
    t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t43->sval = t44.
    t42->load( ).
    APPEND t43 TO t42->items.
    t42->save( ).
    DATA(t45) = t40.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA(t47) = |HOTSPOT|.
    CLEAR t46.
    CREATE OBJECT t46.
    t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t46->sval = t47.
    t45->load( ).
    APPEND t46 TO t45->items.
    t45->save( ).
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t48.
    DATA(t49) = t34.
    DATA(t50) = t37.
    DATA(t51) = t40.
    t48 = zcl_lnt_st_combi_module=>alt( i_first = t49 i_second = t50 i_rest = t51 ).
    t33 = t48.
    CLEAR t32.
    IF t33 IS BOUND.
      DATA t52 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t52.
      DATA t53 TYPE REF TO object.
      CLEAR t53.
      CLEAR t52.
      t53 = t33.
      TRY.
          t32 ?= t53.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t32 IS NOT BOUND.
        TRY.
            t52 ?= t33.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t52 IS BOUND.
          t32 = t52->source( ).
        ENDIF.
        IF t32 IS NOT BOUND.
          CREATE OBJECT t32.
          t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t32->oval = t33.
        ENDIF.
      ENDIF.
    ENDIF.
    t31 = t32.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA(t61) = t15.
    CLEAR t60.
    IF t61 IS BOUND.
      DATA t62 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t62.
      DATA t63 TYPE REF TO object.
      CLEAR t63.
      CLEAR t62.
      t63 = t61.
      TRY.
          t60 ?= t63.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t60 IS NOT BOUND.
        TRY.
            t62 ?= t61.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t62 IS BOUND.
          t60 = t62->source( ).
        ENDIF.
        IF t60 IS NOT BOUND.
          CREATE OBJECT t60.
          t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t60->oval = t61.
        ENDIF.
      ENDIF.
    ENDIF.
    t59 = t60.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA(t66) = t1.
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
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t69.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t70.
    CREATE OBJECT t70.
    t69 = t70.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t71.
    DATA(t72) = t59.
    DATA(t73) = t64.
    DATA(t74) = t69.
    t71 = zcl_lnt_st_combi_module=>alt( i_first = t72 i_second = t73 i_rest = t74 ).
    t58 = t71.
    CLEAR t57.
    IF t58 IS BOUND.
      DATA t75 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t75.
      DATA t76 TYPE REF TO object.
      CLEAR t76.
      CLEAR t75.
      t76 = t58.
      TRY.
          t57 ?= t76.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t57 IS NOT BOUND.
        TRY.
            t75 ?= t58.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t75 IS BOUND.
          t57 = t75->source( ).
        ENDIF.
        IF t57 IS NOT BOUND.
          CREATE OBJECT t57.
          t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t57->oval = t58.
        ENDIF.
      ENDIF.
    ENDIF.
    t56 = zcl_lnt_st_combi_module=>opt( i_first = t57 ).
    CLEAR t55.
    IF t56 IS BOUND.
      DATA t77 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t77.
      DATA t78 TYPE REF TO object.
      CLEAR t78.
      CLEAR t77.
      t78 = t56.
      TRY.
          t55 ?= t78.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t55 IS NOT BOUND.
        TRY.
            t77 ?= t56.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t77 IS BOUND.
          t55 = t77->source( ).
        ENDIF.
        IF t55 IS NOT BOUND.
          CREATE OBJECT t55.
          t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t55->oval = t56.
        ENDIF.
      ENDIF.
    ENDIF.
    t54 = t55.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t79.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t80.
    CREATE OBJECT t80.
    t79 = t80.
    DATA t81 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t81.
    DATA(t82) = t31.
    DATA(t83) = t54.
    DATA(t84) = t79.
    t81 = zcl_lnt_st_combi_module=>seq( i_first = t82 i_second = t83 i_rest = t84 ).
    t30 = t81.
    t29 = t30.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t85.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA(t89) = |FROM|.
    CLEAR t88.
    CREATE OBJECT t88.
    t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t88->sval = t89.
    t87 = t88.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA(t92) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t91.
    IF t92 IS BOUND.
      CREATE OBJECT t91.
      t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t91->cval = t92.
    ENDIF.
    t90 = t91.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t93.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t94.
    CREATE OBJECT t94.
    t93 = t94.
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t95.
    DATA(t96) = t87.
    DATA(t97) = t90.
    DATA(t98) = t93.
    t95 = zcl_lnt_st_combi_module=>seq( i_first = t96 i_second = t97 i_rest = t98 ).
    t86 = t95.
    t85 = t86.
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t99.
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA(t103) = |FIELD VALUE|.
    CLEAR t102.
    CREATE OBJECT t102.
    t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t102->sval = t103.
    t101 = t102.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
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
    DATA(t111) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t110.
    IF t111 IS BOUND.
      CREATE OBJECT t110.
      t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t110->cval = t111.
    ENDIF.
    t109 = t110.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t112.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA(t116) = t85.
    CLEAR t115.
    IF t116 IS BOUND.
      DATA t117 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t117.
      DATA t118 TYPE REF TO object.
      CLEAR t118.
      CLEAR t117.
      t118 = t116.
      TRY.
          t115 ?= t118.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t115 IS NOT BOUND.
        TRY.
            t117 ?= t116.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t117 IS BOUND.
          t115 = t117->source( ).
        ENDIF.
        IF t115 IS NOT BOUND.
          CREATE OBJECT t115.
          t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t115->oval = t116.
        ENDIF.
      ENDIF.
    ENDIF.
    t114 = zcl_lnt_st_combi_module=>opt_prio( i_first = t115 ).
    CLEAR t113.
    IF t114 IS BOUND.
      DATA t119 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t119.
      DATA t120 TYPE REF TO object.
      CLEAR t120.
      CLEAR t119.
      t120 = t114.
      TRY.
          t113 ?= t120.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t113 IS NOT BOUND.
        TRY.
            t119 ?= t114.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t119 IS BOUND.
          t113 = t119->source( ).
        ENDIF.
        IF t113 IS NOT BOUND.
          CREATE OBJECT t113.
          t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t113->oval = t114.
        ENDIF.
      ENDIF.
    ENDIF.
    t112 = t113.
    DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t121.
    DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t122.
    CREATE OBJECT t122.
    t121 = t122.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t123.
    DATA(t124) = t109.
    DATA(t125) = t112.
    DATA(t126) = t121.
    t123 = zcl_lnt_st_combi_module=>seq( i_first = t124 i_second = t125 i_rest = t126 ).
    t108 = t123.
    CLEAR t107.
    IF t108 IS BOUND.
      DATA t127 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t127.
      DATA t128 TYPE REF TO object.
      CLEAR t128.
      CLEAR t127.
      t128 = t108.
      TRY.
          t107 ?= t128.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t107 IS NOT BOUND.
        TRY.
            t127 ?= t108.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t127 IS BOUND.
          t107 = t127->source( ).
        ENDIF.
        IF t107 IS NOT BOUND.
          CREATE OBJECT t107.
          t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t107->oval = t108.
        ENDIF.
      ENDIF.
    ENDIF.
    t106 = zcl_lnt_st_combi_module=>plus( i_first = t107 ).
    CLEAR t105.
    IF t106 IS BOUND.
      DATA t129 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t129.
      DATA t130 TYPE REF TO object.
      CLEAR t130.
      CLEAR t129.
      t130 = t106.
      TRY.
          t105 ?= t130.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t105 IS NOT BOUND.
        TRY.
            t129 ?= t106.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t129 IS BOUND.
          t105 = t129->source( ).
        ENDIF.
        IF t105 IS NOT BOUND.
          CREATE OBJECT t105.
          t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t105->oval = t106.
        ENDIF.
      ENDIF.
    ENDIF.
    t104 = t105.
    DATA t131 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t131.
    DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t132.
    CREATE OBJECT t132.
    t131 = t132.
    DATA t133 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t133.
    DATA(t134) = t101.
    DATA(t135) = t104.
    DATA(t136) = t131.
    t133 = zcl_lnt_st_combi_module=>seq( i_first = t134 i_second = t135 i_rest = t136 ).
    t100 = t133.
    t99 = t100.
    DATA t137 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t137.
    DATA t138 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t138.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t139.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t140.
    DATA(t141) = |FIELD FORMAT|.
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
    DATA(t147) = t145.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    DATA t149 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t149.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t150.
    DATA(t151) = t29.
    CLEAR t150.
    IF t151 IS BOUND.
      DATA t152 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t152.
      DATA t153 TYPE REF TO object.
      CLEAR t153.
      CLEAR t152.
      t153 = t151.
      TRY.
          t150 ?= t153.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t150 IS NOT BOUND.
        TRY.
            t152 ?= t151.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t152 IS BOUND.
          t150 = t152->source( ).
        ENDIF.
        IF t150 IS NOT BOUND.
          CREATE OBJECT t150.
          t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t150->oval = t151.
        ENDIF.
      ENDIF.
    ENDIF.
    t149 = zcl_lnt_st_combi_module=>opt( i_first = t150 ).
    CLEAR t148.
    IF t149 IS BOUND.
      DATA t154 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t154.
      DATA t155 TYPE REF TO object.
      CLEAR t155.
      CLEAR t154.
      t155 = t149.
      TRY.
          t148 ?= t155.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t148 IS NOT BOUND.
        TRY.
            t154 ?= t149.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t154 IS BOUND.
          t148 = t154->source( ).
        ENDIF.
        IF t148 IS NOT BOUND.
          CREATE OBJECT t148.
          t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t148->oval = t149.
        ENDIF.
      ENDIF.
    ENDIF.
    t147->load( ).
    APPEND t148 TO t147->items.
    t147->save( ).
    DATA t156 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t156.
    DATA(t157) = t139.
    DATA(t158) = t142.
    DATA(t159) = t145.
    t156 = zcl_lnt_st_combi_module=>seq( i_first = t157 i_second = t158 i_rest = t159 ).
    t138 = t156.
    t137 = t138.
    DATA t160 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t160.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t161.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t162.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t163.
    DATA(t164) = |LINE VALUE FROM|.
    CLEAR t163.
    CREATE OBJECT t163.
    t163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t163->sval = t164.
    t162 = t163.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t165.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t166.
    DATA(t167) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t166.
    IF t167 IS BOUND.
      CREATE OBJECT t166.
      t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t166->cval = t167.
    ENDIF.
    t165 = t166.
    DATA t168 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t168.
    DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t169.
    CREATE OBJECT t169.
    t168 = t169.
    DATA t170 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t170.
    DATA(t171) = t162.
    DATA(t172) = t165.
    DATA(t173) = t168.
    t170 = zcl_lnt_st_combi_module=>seq( i_first = t171 i_second = t172 i_rest = t173 ).
    t161 = t170.
    t160 = t161.
    DATA t174 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t174.
    DATA t175 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t175.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t176.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t177.
    DATA(t178) = |INDEX|.
    CLEAR t177.
    CREATE OBJECT t177.
    t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t177->sval = t178.
    t176 = t177.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t179.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t180.
    DATA(t181) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t180.
    IF t181 IS BOUND.
      CREATE OBJECT t180.
      t180->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t180->cval = t181.
    ENDIF.
    t179 = t180.
    DATA t182 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t182.
    DATA t183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t183.
    CREATE OBJECT t183.
    t182 = t183.
    DATA t184 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t184.
    DATA(t185) = t176.
    DATA(t186) = t179.
    DATA(t187) = t182.
    t184 = zcl_lnt_st_combi_module=>seq( i_first = t185 i_second = t186 i_rest = t187 ).
    t175 = t184.
    t174 = t175.
    DATA t188 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t188.
    DATA t189 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t189.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t190.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t191.
    DATA(t192) = |OF PAGE|.
    CLEAR t191.
    CREATE OBJECT t191.
    t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t191->sval = t192.
    t190 = t191.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t193.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    DATA(t195) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
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
    DATA t198 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t198.
    DATA(t199) = t190.
    DATA(t200) = t193.
    DATA(t201) = t196.
    t198 = zcl_lnt_st_combi_module=>seq( i_first = t199 i_second = t200 i_rest = t201 ).
    t189 = t198.
    t188 = t189.
    DATA t202 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t202.
    DATA t203 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t203.
    DATA(t204) = |OF CURRENT PAGE|.
    t203 = zcl_lnt_st_combi_module=>str( i_s = t204 ).
    t202 = t203.
    DATA t205 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t205.
    DATA t206 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t206.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t207.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t208.
    DATA(t209) = |INTENSIFIED|.
    CLEAR t208.
    CREATE OBJECT t208.
    t208->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t208->sval = t209.
    t207 = t208.
    DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t210.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t211.
    DATA(t212) = t1.
    CLEAR t211.
    IF t212 IS BOUND.
      DATA t213 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t213.
      DATA t214 TYPE REF TO object.
      CLEAR t214.
      CLEAR t213.
      t214 = t212.
      TRY.
          t211 ?= t214.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t211 IS NOT BOUND.
        TRY.
            t213 ?= t212.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t213 IS BOUND.
          t211 = t213->source( ).
        ENDIF.
        IF t211 IS NOT BOUND.
          CREATE OBJECT t211.
          t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t211->oval = t212.
        ENDIF.
      ENDIF.
    ENDIF.
    t210 = t211.
    DATA t215 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t215.
    DATA t216 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t216.
    CREATE OBJECT t216.
    t215 = t216.
    DATA t217 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t217.
    DATA(t218) = t207.
    DATA(t219) = t210.
    DATA(t220) = t215.
    t217 = zcl_lnt_st_combi_module=>seq( i_first = t218 i_second = t219 i_rest = t220 ).
    t206 = t217.
    t205 = t206.
    DATA t221 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t221.
    DATA t222 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t222.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t223.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t224.
    DATA(t225) = |INTENSIFIED|.
    CLEAR t224.
    CREATE OBJECT t224.
    t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t224->sval = t225.
    t223 = t224.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t226.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t227.
    DATA t228 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t228.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t229.
    DATA(t230) = t1.
    CLEAR t229.
    IF t230 IS BOUND.
      DATA t231 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t231.
      DATA t232 TYPE REF TO object.
      CLEAR t232.
      CLEAR t231.
      t232 = t230.
      TRY.
          t229 ?= t232.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t229 IS NOT BOUND.
        TRY.
            t231 ?= t230.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t231 IS BOUND.
          t229 = t231->source( ).
        ENDIF.
        IF t229 IS NOT BOUND.
          CREATE OBJECT t229.
          t229->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t229->oval = t230.
        ENDIF.
      ENDIF.
    ENDIF.
    t228 = zcl_lnt_st_combi_module=>opt( i_first = t229 ).
    CLEAR t227.
    IF t228 IS BOUND.
      DATA t233 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t233.
      DATA t234 TYPE REF TO object.
      CLEAR t234.
      CLEAR t233.
      t234 = t228.
      TRY.
          t227 ?= t234.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t227 IS NOT BOUND.
        TRY.
            t233 ?= t228.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t233 IS BOUND.
          t227 = t233->source( ).
        ENDIF.
        IF t227 IS NOT BOUND.
          CREATE OBJECT t227.
          t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t227->oval = t228.
        ENDIF.
      ENDIF.
    ENDIF.
    t226 = t227.
    DATA t235 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t235.
    DATA t236 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t236.
    CREATE OBJECT t236.
    t235 = t236.
    DATA t237 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t237.
    DATA(t238) = t223.
    DATA(t239) = t226.
    DATA(t240) = t235.
    t237 = zcl_lnt_st_combi_module=>seq( i_first = t238 i_second = t239 i_rest = t240 ).
    t222 = t237.
    t221 = t222.
    DATA t241 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t241.
    DATA t242 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t242.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t243.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t244.
    DATA(t245) = |LINE FORMAT|.
    CLEAR t244.
    CREATE OBJECT t244.
    t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t244->sval = t245.
    t243 = t244.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t246.
    DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t247.
    DATA t248 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t248.
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t249.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t250.
    DATA(t251) = |INPUT OFF|.
    CLEAR t250.
    CREATE OBJECT t250.
    t250->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t250->sval = t251.
    t249 = t250.
    DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t252.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t253.
    DATA(t254) = |INVERSE|.
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
    DATA(t257) = t255.
    DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t258.
    DATA(t259) = |RESET|.
    CLEAR t258.
    CREATE OBJECT t258.
    t258->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t258->sval = t259.
    t257->load( ).
    APPEND t258 TO t257->items.
    t257->save( ).
    DATA(t260) = t255.
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t261.
    DATA(t262) = t221.
    CLEAR t261.
    IF t262 IS BOUND.
      DATA t263 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t263.
      DATA t264 TYPE REF TO object.
      CLEAR t264.
      CLEAR t263.
      t264 = t262.
      TRY.
          t261 ?= t264.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t261 IS NOT BOUND.
        TRY.
            t263 ?= t262.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t263 IS BOUND.
          t261 = t263->source( ).
        ENDIF.
        IF t261 IS NOT BOUND.
          CREATE OBJECT t261.
          t261->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t261->oval = t262.
        ENDIF.
      ENDIF.
    ENDIF.
    t260->load( ).
    APPEND t261 TO t260->items.
    t260->save( ).
    DATA(t265) = t255.
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t266.
    DATA(t267) = zlnt_runtime_desc_78196487750d=>zlnt_member_d119_f7714013c01c.
    CLEAR t266.
    IF t267 IS BOUND.
      CREATE OBJECT t266.
      t266->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t266->cval = t267.
    ENDIF.
    t265->load( ).
    APPEND t266 TO t265->items.
    t265->save( ).
    DATA t268 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t268.
    DATA(t269) = t249.
    DATA(t270) = t252.
    DATA(t271) = t255.
    t268 = zcl_lnt_st_combi_module=>per( i_first = t269 i_second = t270 i_rest = t271 ).
    t248 = t268.
    CLEAR t247.
    IF t248 IS BOUND.
      DATA t272 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t272.
      DATA t273 TYPE REF TO object.
      CLEAR t273.
      CLEAR t272.
      t273 = t248.
      TRY.
          t247 ?= t273.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t247 IS NOT BOUND.
        TRY.
            t272 ?= t248.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t272 IS BOUND.
          t247 = t272->source( ).
        ENDIF.
        IF t247 IS NOT BOUND.
          CREATE OBJECT t247.
          t247->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t247->oval = t248.
        ENDIF.
      ENDIF.
    ENDIF.
    t246 = t247.
    DATA t274 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t274.
    DATA t275 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t275.
    CREATE OBJECT t275.
    t274 = t275.
    DATA t276 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t276.
    DATA(t277) = t243.
    DATA(t278) = t246.
    DATA(t279) = t274.
    t276 = zcl_lnt_st_combi_module=>seq( i_first = t277 i_second = t278 i_rest = t279 ).
    t242 = t276.
    t241 = t242.
    DATA t280 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t280.
    DATA t281 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t281.
    DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t282.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t283.
    DATA(t284) = t174.
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
    t282 = t283.
    DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t287.
    DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t288.
    DATA(t289) = t99.
    CLEAR t288.
    IF t289 IS BOUND.
      DATA t290 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t290.
      DATA t291 TYPE REF TO object.
      CLEAR t291.
      CLEAR t290.
      t291 = t289.
      TRY.
          t288 ?= t291.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t288 IS NOT BOUND.
        TRY.
            t290 ?= t289.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t290 IS BOUND.
          t288 = t290->source( ).
        ENDIF.
        IF t288 IS NOT BOUND.
          CREATE OBJECT t288.
          t288->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t288->oval = t289.
        ENDIF.
      ENDIF.
    ENDIF.
    t287 = t288.
    DATA t292 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t292.
    DATA t293 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t293.
    CREATE OBJECT t293.
    t292 = t293.
    DATA(t294) = t292.
    DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t295.
    DATA(t296) = t137.
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
    t294->load( ).
    APPEND t295 TO t294->items.
    t294->save( ).
    DATA(t299) = t292.
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t300.
    DATA(t301) = t188.
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
    t299->load( ).
    APPEND t300 TO t299->items.
    t299->save( ).
    DATA(t304) = t292.
    DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t305.
    DATA(t306) = t241.
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
    DATA(t309) = t292.
    DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t310.
    DATA(t311) = t160.
    CLEAR t310.
    IF t311 IS BOUND.
      DATA t312 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t312.
      DATA t313 TYPE REF TO object.
      CLEAR t313.
      CLEAR t312.
      t313 = t311.
      TRY.
          t310 ?= t313.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t310 IS NOT BOUND.
        TRY.
            t312 ?= t311.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t312 IS BOUND.
          t310 = t312->source( ).
        ENDIF.
        IF t310 IS NOT BOUND.
          CREATE OBJECT t310.
          t310->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t310->oval = t311.
        ENDIF.
      ENDIF.
    ENDIF.
    t309->load( ).
    APPEND t310 TO t309->items.
    t309->save( ).
    DATA(t314) = t292.
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t315.
    DATA(t316) = t202.
    CLEAR t315.
    IF t316 IS BOUND.
      DATA t317 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t317.
      DATA t318 TYPE REF TO object.
      CLEAR t318.
      CLEAR t317.
      t318 = t316.
      TRY.
          t315 ?= t318.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t315 IS NOT BOUND.
        TRY.
            t317 ?= t316.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t317 IS BOUND.
          t315 = t317->source( ).
        ENDIF.
        IF t315 IS NOT BOUND.
          CREATE OBJECT t315.
          t315->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t315->oval = t316.
        ENDIF.
      ENDIF.
    ENDIF.
    t314->load( ).
    APPEND t315 TO t314->items.
    t314->save( ).
    DATA(t319) = t292.
    DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t320.
    DATA(t321) = t205.
    CLEAR t320.
    IF t321 IS BOUND.
      DATA t322 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t322.
      DATA t323 TYPE REF TO object.
      CLEAR t323.
      CLEAR t322.
      t323 = t321.
      TRY.
          t320 ?= t323.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t320 IS NOT BOUND.
        TRY.
            t322 ?= t321.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t322 IS BOUND.
          t320 = t322->source( ).
        ENDIF.
        IF t320 IS NOT BOUND.
          CREATE OBJECT t320.
          t320->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t320->oval = t321.
        ENDIF.
      ENDIF.
    ENDIF.
    t319->load( ).
    APPEND t320 TO t319->items.
    t319->save( ).
    DATA(t324) = t292.
    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t325.
    DATA(t326) = zlnt_runtime_desc_78196487750d=>zlnt_member_d119_f7714013c01c.
    CLEAR t325.
    IF t326 IS BOUND.
      CREATE OBJECT t325.
      t325->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t325->cval = t326.
    ENDIF.
    t324->load( ).
    APPEND t325 TO t324->items.
    t324->save( ).
    DATA t327 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t327.
    DATA(t328) = t282.
    DATA(t329) = t287.
    DATA(t330) = t292.
    t327 = zcl_lnt_st_combi_module=>per( i_first = t328 i_second = t329 i_rest = t330 ).
    t281 = t327.
    t280 = t281.
    DATA t331 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t331.
    DATA t332 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t332.
    DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t333.
    DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t334.
    DATA(t335) = |MODIFY|.
    CLEAR t334.
    CREATE OBJECT t334.
    t334->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t334->sval = t335.
    t333 = t334.
    DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t336.
    DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t337.
    DATA t338 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t338.
    DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t339.
    DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t340.
    DATA(t341) = |CURRENT LINE|.
    CLEAR t340.
    CREATE OBJECT t340.
    t340->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t340->sval = t341.
    t339 = t340.
    DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t342.
    DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t343.
    DATA t344 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t344.
    DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t345.
    DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t346.
    DATA(t347) = |LINE|.
    CLEAR t346.
    CREATE OBJECT t346.
    t346->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t346->sval = t347.
    t345 = t346.
    DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t348.
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t349.
    DATA(t350) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t349.
    IF t350 IS BOUND.
      CREATE OBJECT t349.
      t349->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t349->cval = t350.
    ENDIF.
    t348 = t349.
    DATA t351 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t351.
    DATA t352 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t352.
    CREATE OBJECT t352.
    t351 = t352.
    DATA t353 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t353.
    DATA(t354) = t345.
    DATA(t355) = t348.
    DATA(t356) = t351.
    t353 = zcl_lnt_st_combi_module=>seq( i_first = t354 i_second = t355 i_rest = t356 ).
    t344 = t353.
    CLEAR t343.
    IF t344 IS BOUND.
      DATA t357 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t357.
      DATA t358 TYPE REF TO object.
      CLEAR t358.
      CLEAR t357.
      t358 = t344.
      TRY.
          t343 ?= t358.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t343 IS NOT BOUND.
        TRY.
            t357 ?= t344.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t357 IS BOUND.
          t343 = t357->source( ).
        ENDIF.
        IF t343 IS NOT BOUND.
          CREATE OBJECT t343.
          t343->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t343->oval = t344.
        ENDIF.
      ENDIF.
    ENDIF.
    t342 = t343.
    DATA t359 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t359.
    DATA t360 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t360.
    CREATE OBJECT t360.
    t359 = t360.
    DATA t361 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t361.
    DATA(t362) = t339.
    DATA(t363) = t342.
    DATA(t364) = t359.
    t361 = zcl_lnt_st_combi_module=>alt_prio( i_first = t362 i_second = t363 i_rest = t364 ).
    t338 = t361.
    CLEAR t337.
    IF t338 IS BOUND.
      DATA t365 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t365.
      DATA t366 TYPE REF TO object.
      CLEAR t366.
      CLEAR t365.
      t366 = t338.
      TRY.
          t337 ?= t366.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t337 IS NOT BOUND.
        TRY.
            t365 ?= t338.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t365 IS BOUND.
          t337 = t365->source( ).
        ENDIF.
        IF t337 IS NOT BOUND.
          CREATE OBJECT t337.
          t337->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t337->oval = t338.
        ENDIF.
      ENDIF.
    ENDIF.
    t336 = t337.
    DATA t367 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t367.
    DATA t368 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t368.
    CREATE OBJECT t368.
    t367 = t368.
    DATA(t369) = t367.
    DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t370.
    DATA t371 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t371.
    DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t372.
    DATA(t373) = t280.
    CLEAR t372.
    IF t373 IS BOUND.
      DATA t374 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t374.
      DATA t375 TYPE REF TO object.
      CLEAR t375.
      CLEAR t374.
      t375 = t373.
      TRY.
          t372 ?= t375.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t372 IS NOT BOUND.
        TRY.
            t374 ?= t373.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t374 IS BOUND.
          t372 = t374->source( ).
        ENDIF.
        IF t372 IS NOT BOUND.
          CREATE OBJECT t372.
          t372->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t372->oval = t373.
        ENDIF.
      ENDIF.
    ENDIF.
    t371 = zcl_lnt_st_combi_module=>opt( i_first = t372 ).
    CLEAR t370.
    IF t371 IS BOUND.
      DATA t376 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t376.
      DATA t377 TYPE REF TO object.
      CLEAR t377.
      CLEAR t376.
      t377 = t371.
      TRY.
          t370 ?= t377.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t370 IS NOT BOUND.
        TRY.
            t376 ?= t371.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t376 IS BOUND.
          t370 = t376->source( ).
        ENDIF.
        IF t370 IS NOT BOUND.
          CREATE OBJECT t370.
          t370->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t370->oval = t371.
        ENDIF.
      ENDIF.
    ENDIF.
    t369->load( ).
    APPEND t370 TO t369->items.
    t369->save( ).
    DATA t378 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t378.
    DATA(t379) = t333.
    DATA(t380) = t336.
    DATA(t381) = t367.
    t378 = zcl_lnt_st_combi_module=>seq( i_first = t379 i_second = t380 i_rest = t381 ).
    t332 = t378.
    t331 = t332.
    DATA t382 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t382.
    DATA(t383) = |Cloud|.
    DATA t384 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t384.
    DATA(t385) = t331.
    CLEAR t384.
    IF t385 IS BOUND.
      DATA t386 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t386.
      DATA t387 TYPE REF TO object.
      CLEAR t387.
      CLEAR t386.
      t387 = t385.
      TRY.
          t384 ?= t387.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t384 IS NOT BOUND.
        TRY.
            t386 ?= t385.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t386 IS BOUND.
          t384 = t386->source( ).
        ENDIF.
        IF t384 IS NOT BOUND.
          CREATE OBJECT t384.
          t384->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t384->oval = t385.
        ENDIF.
      ENDIF.
    ENDIF.
    t382 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t383 i_first = t384 ).
    result = t382.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d558_20a8fd33a9a2.
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
