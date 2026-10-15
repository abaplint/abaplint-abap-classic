* TS: src/abap/2_statements/expressions/sql_function_input.ts:14:1 SQLFunctionInput
CLASS zcl_lnt_sql_function_input DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_function_input IMPLEMENTATION.
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
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t5.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t5 = zcl_lnt_st_combi_module=>tok( i_t = t6 ).
    CLEAR t4.
    IF t5 IS BOUND.
      DATA t7 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t7.
      DATA t8 TYPE REF TO object.
      CLEAR t8.
      CLEAR t7.
      t8 = t5.
      TRY.
          t4 ?= t8.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t7 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t7 IS BOUND.
          t4 = t7->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    t3 = t4.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t10.
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t10->cval = t11.
    ENDIF.
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t13.
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t14) = t12.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t16.
    DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t16 = zcl_lnt_st_combi_module=>tok( i_t = t17 ).
    CLEAR t15.
    IF t16 IS BOUND.
      DATA t18 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t18.
      DATA t19 TYPE REF TO object.
      CLEAR t19.
      CLEAR t18.
      t19 = t16.
      TRY.
          t15 ?= t19.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t15 IS NOT BOUND.
        TRY.
            t18 ?= t16.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t18 IS BOUND.
          t15 = t18->source( ).
        ENDIF.
        IF t15 IS NOT BOUND.
          CREATE OBJECT t15.
          t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t15->oval = t16.
        ENDIF.
      ENDIF.
    ENDIF.
    t14->load( ).
    APPEND t15 TO t14->items.
    t14->save( ).
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t20.
    DATA(t21) = t3.
    DATA(t22) = t9.
    DATA(t23) = t12.
    t20 = zcl_lnt_st_combi_module=>seq( i_first = t21 i_second = t22 i_rest = t23 ).
    t2 = t20.
    t1 = t2.
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t24.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA t27 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t27.
    DATA t28 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t29.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t29 = zcl_lnt_version_module=>release_b8cd.
    DATA(t30) = |v740sp05|.
    t28 = t29->get( p0 = t30 ).
    t27 = t28.
    CLEAR t26.
    IF t27 IS BOUND.
      DATA t31 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t31.
      DATA t32 TYPE REF TO object.
      CLEAR t32.
      CLEAR t31.
      t32 = t27.
      TRY.
          t26 ?= t32.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t26 IS NOT BOUND.
        TRY.
            t31 ?= t27.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t31 IS BOUND.
          t26 = t31->source( ).
        ENDIF.
        IF t26 IS NOT BOUND.
          CREATE OBJECT t26.
          t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t26->oval = t27.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t37.
    DATA(t38) = zlnt_runtime_desc_78196487750d=>zlnt_member_d42_9f93cd02a8cf40.
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
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428.
    CLEAR t45.
    IF t46 IS BOUND.
      CREATE OBJECT t45.
      t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t45->cval = t46.
    ENDIF.
    t44 = t45.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA(t49) = t1.
    CLEAR t48.
    IF t49 IS BOUND.
      DATA t50 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t50.
      DATA t51 TYPE REF TO object.
      CLEAR t51.
      CLEAR t50.
      t51 = t49.
      TRY.
          t48 ?= t51.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t48 IS NOT BOUND.
        TRY.
            t50 ?= t49.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t50 IS BOUND.
          t48 = t50->source( ).
        ENDIF.
        IF t48 IS NOT BOUND.
          CREATE OBJECT t48.
          t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t48->oval = t49.
        ENDIF.
      ENDIF.
    ENDIF.
    t47 = t48.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t53.
    CREATE OBJECT t53.
    t52 = t53.
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t54.
    DATA(t55) = t44.
    DATA(t56) = t47.
    DATA(t57) = t52.
    t54 = zcl_lnt_st_combi_module=>alt_prio( i_first = t55 i_second = t56 i_rest = t57 ).
    t43 = t54.
    CLEAR t42.
    IF t43 IS BOUND.
      DATA t58 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t58.
      DATA t59 TYPE REF TO object.
      CLEAR t59.
      CLEAR t58.
      t59 = t43.
      TRY.
          t42 ?= t59.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t42 IS NOT BOUND.
        TRY.
            t58 ?= t43.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t58 IS BOUND.
          t42 = t58->source( ).
        ENDIF.
        IF t42 IS NOT BOUND.
          CREATE OBJECT t42.
          t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t42->oval = t43.
        ENDIF.
      ENDIF.
    ENDIF.
    t41 = t42.
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t61.
    CREATE OBJECT t61.
    t60 = t61.
    DATA t62 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t62.
    DATA(t63) = t35.
    DATA(t64) = t41.
    DATA(t65) = t60.
    t62 = zcl_lnt_st_combi_module=>seq( i_first = t63 i_second = t64 i_rest = t65 ).
    t34 = t62.
    CLEAR t33.
    IF t34 IS BOUND.
      DATA t66 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t66.
      DATA t67 TYPE REF TO object.
      CLEAR t67.
      CLEAR t66.
      t67 = t34.
      TRY.
          t33 ?= t67.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t33 IS NOT BOUND.
        TRY.
            t66 ?= t34.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t66 IS BOUND.
          t33 = t66->source( ).
        ENDIF.
        IF t33 IS NOT BOUND.
          CREATE OBJECT t33.
          t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t33->oval = t34.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t68 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t68.
    t25 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t26 i_first = t33 i_opts = t68 ).
    t24 = t25.
    DATA t69 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t69.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA(t73) = |(|.
    CLEAR t72.
    CREATE OBJECT t72.
    t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t72->sval = t73.
    t71 = t72.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA(t76) = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
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
    DATA(t79) = t77.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    DATA(t81) = |)|.
    CLEAR t80.
    CREATE OBJECT t80.
    t80->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t80->sval = t81.
    t79->load( ).
    APPEND t80 TO t79->items.
    t79->save( ).
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t82.
    DATA(t83) = t71.
    DATA(t84) = t74.
    DATA(t85) = t77.
    t82 = zcl_lnt_st_combi_module=>seq( i_first = t83 i_second = t84 i_rest = t85 ).
    t70 = t82.
    t69 = t70.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t86.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA(t90) = t69.
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
    t88 = t89.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA(t95) = zlnt_runtime_desc_78196487750d=>zlnt_member_d294_92c50184534c.
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
    DATA(t98) = t96.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    DATA(t100) = zlnt_runtime_desc_78196487750d=>zlnt_member_d287_e5df01c1631a.
    CLEAR t99.
    IF t100 IS BOUND.
      CREATE OBJECT t99.
      t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t99->cval = t100.
    ENDIF.
    t98->load( ).
    APPEND t99 TO t98->items.
    t98->save( ).
    DATA(t101) = t96.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA(t103) = zlnt_runtime_desc_78196487750d=>zlnt_member_d284_6229eec94af2.
    CLEAR t102.
    IF t103 IS BOUND.
      CREATE OBJECT t102.
      t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t102->cval = t103.
    ENDIF.
    t101->load( ).
    APPEND t102 TO t101->items.
    t101->save( ).
    DATA(t104) = t96.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA(t106) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
    CLEAR t105.
    IF t106 IS BOUND.
      CREATE OBJECT t105.
      t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t105->cval = t106.
    ENDIF.
    t104->load( ).
    APPEND t105 TO t104->items.
    t104->save( ).
    DATA(t107) = t96.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t108.
    DATA(t109) = zlnt_runtime_desc_78196487750d=>zlnt_member_d285_443a2a1b82f8.
    CLEAR t108.
    IF t109 IS BOUND.
      CREATE OBJECT t108.
      t108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t108->cval = t109.
    ENDIF.
    t107->load( ).
    APPEND t108 TO t107->items.
    t107->save( ).
    DATA(t110) = t96.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    DATA(t112) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
    CLEAR t111.
    IF t112 IS BOUND.
      CREATE OBJECT t111.
      t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t111->cval = t112.
    ENDIF.
    t110->load( ).
    APPEND t111 TO t110->items.
    t110->save( ).
    DATA(t113) = t96.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA(t115) = t24.
    CLEAR t114.
    IF t115 IS BOUND.
      DATA t116 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t116.
      DATA t117 TYPE REF TO object.
      CLEAR t117.
      CLEAR t116.
      t117 = t115.
      TRY.
          t114 ?= t117.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t114 IS NOT BOUND.
        TRY.
            t116 ?= t115.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t116 IS BOUND.
          t114 = t116->source( ).
        ENDIF.
        IF t114 IS NOT BOUND.
          CREATE OBJECT t114.
          t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t114->oval = t115.
        ENDIF.
      ENDIF.
    ENDIF.
    t113->load( ).
    APPEND t114 TO t113->items.
    t113->save( ).
    DATA t118 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t118.
    DATA(t119) = t88.
    DATA(t120) = t93.
    DATA(t121) = t96.
    t118 = zcl_lnt_st_combi_module=>alt_prio( i_first = t119 i_second = t120 i_rest = t121 ).
    t87 = t118.
    t86 = t87.
    DATA t122 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t122.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t123.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA(t126) = |+|.
    CLEAR t125.
    CREATE OBJECT t125.
    t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t125->sval = t126.
    t124 = t125.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t127.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    DATA(t129) = |-|.
    CLEAR t128.
    CREATE OBJECT t128.
    t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t128->sval = t129.
    t127 = t128.
    DATA t130 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t131.
    CREATE OBJECT t131.
    t130 = t131.
    DATA(t132) = t130.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t133.
    DATA(t134) = |*|.
    CLEAR t133.
    CREATE OBJECT t133.
    t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t133->sval = t134.
    t132->load( ).
    APPEND t133 TO t132->items.
    t132->save( ).
    DATA(t135) = t130.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t136.
    DATA(t137) = |/|.
    CLEAR t136.
    CREATE OBJECT t136.
    t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t136->sval = t137.
    t135->load( ).
    APPEND t136 TO t135->items.
    t135->save( ).
    DATA(t138) = t130.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t139.
    DATA(t140) = |&&|.
    CLEAR t139.
    CREATE OBJECT t139.
    t139->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t139->sval = t140.
    t138->load( ).
    APPEND t139 TO t138->items.
    t138->save( ).
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t141.
    DATA(t142) = t124.
    DATA(t143) = t127.
    DATA(t144) = t130.
    t141 = zcl_lnt_st_combi_module=>alt_prio( i_first = t142 i_second = t143 i_rest = t144 ).
    t123 = t141.
    t122 = t123.
    DATA t145 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t145.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t147.
    DATA(t148) = t86.
    CLEAR t147.
    IF t148 IS BOUND.
      DATA t149 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t149.
      DATA t150 TYPE REF TO object.
      CLEAR t150.
      CLEAR t149.
      t150 = t148.
      TRY.
          t147 ?= t150.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t147 IS NOT BOUND.
        TRY.
            t149 ?= t148.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t149 IS BOUND.
          t147 = t149->source( ).
        ENDIF.
        IF t147 IS NOT BOUND.
          CREATE OBJECT t147.
          t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t147->oval = t148.
        ENDIF.
      ENDIF.
    ENDIF.
    t146 = t147.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t151.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t152.
    DATA t153 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t153.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t154.
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t155.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t156.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    DATA(t158) = t122.
    CLEAR t157.
    IF t158 IS BOUND.
      DATA t159 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t159.
      DATA t160 TYPE REF TO object.
      CLEAR t160.
      CLEAR t159.
      t160 = t158.
      TRY.
          t157 ?= t160.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t157 IS NOT BOUND.
        TRY.
            t159 ?= t158.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t159 IS BOUND.
          t157 = t159->source( ).
        ENDIF.
        IF t157 IS NOT BOUND.
          CREATE OBJECT t157.
          t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t157->oval = t158.
        ENDIF.
      ENDIF.
    ENDIF.
    t156 = t157.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t161.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t162.
    DATA(t163) = t86.
    CLEAR t162.
    IF t163 IS BOUND.
      DATA t164 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t164.
      DATA t165 TYPE REF TO object.
      CLEAR t165.
      CLEAR t164.
      t165 = t163.
      TRY.
          t162 ?= t165.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t162 IS NOT BOUND.
        TRY.
            t164 ?= t163.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t164 IS BOUND.
          t162 = t164->source( ).
        ENDIF.
        IF t162 IS NOT BOUND.
          CREATE OBJECT t162.
          t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t162->oval = t163.
        ENDIF.
      ENDIF.
    ENDIF.
    t161 = t162.
    DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t166.
    DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t167.
    CREATE OBJECT t167.
    t166 = t167.
    DATA t168 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t168.
    DATA(t169) = t156.
    DATA(t170) = t161.
    DATA(t171) = t166.
    t168 = zcl_lnt_st_combi_module=>seq( i_first = t169 i_second = t170 i_rest = t171 ).
    t155 = t168.
    CLEAR t154.
    IF t155 IS BOUND.
      DATA t172 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t172.
      DATA t173 TYPE REF TO object.
      CLEAR t173.
      CLEAR t172.
      t173 = t155.
      TRY.
          t154 ?= t173.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t154 IS NOT BOUND.
        TRY.
            t172 ?= t155.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t172 IS BOUND.
          t154 = t172->source( ).
        ENDIF.
        IF t154 IS NOT BOUND.
          CREATE OBJECT t154.
          t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t154->oval = t155.
        ENDIF.
      ENDIF.
    ENDIF.
    t153 = zcl_lnt_st_combi_module=>star_prio( i_first = t154 ).
    CLEAR t152.
    IF t153 IS BOUND.
      DATA t174 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t174.
      DATA t175 TYPE REF TO object.
      CLEAR t175.
      CLEAR t174.
      t175 = t153.
      TRY.
          t152 ?= t175.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t152 IS NOT BOUND.
        TRY.
            t174 ?= t153.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t174 IS BOUND.
          t152 = t174->source( ).
        ENDIF.
        IF t152 IS NOT BOUND.
          CREATE OBJECT t152.
          t152->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t152->oval = t153.
        ENDIF.
      ENDIF.
    ENDIF.
    t151 = t152.
    DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t176.
    DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t177.
    CREATE OBJECT t177.
    t176 = t177.
    DATA t178 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t178.
    DATA(t179) = t146.
    DATA(t180) = t151.
    DATA(t181) = t176.
    t178 = zcl_lnt_st_combi_module=>seq( i_first = t179 i_second = t180 i_rest = t181 ).
    t145 = t178.
    result = t145.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d281_992ebc392463.
  ENDMETHOD.
ENDCLASS.
