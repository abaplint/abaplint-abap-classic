* TS: src/abap/2_statements/expressions/new_object.ts:9:1 NewObject
CLASS zcl_lnt_st_new_object DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_new_object IMPLEMENTATION.
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
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t7.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77.
    t7 = zcl_lnt_st_combi_module=>tok( i_t = t8 ).
    CLEAR t6.
    IF t7 IS BOUND.
      DATA t9 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t9.
      DATA t10 TYPE REF TO object.
      CLEAR t10.
      CLEAR t9.
      t10 = t7.
      TRY.
          t6 ?= t10.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t6 IS NOT BOUND.
        TRY.
            t9 ?= t7.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t9 IS BOUND.
          t6 = t9->source( ).
        ENDIF.
        IF t6 IS NOT BOUND.
          CREATE OBJECT t6.
          t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t6->oval = t7.
        ENDIF.
      ENDIF.
    ENDIF.
    t5 = t6.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t12.
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t12->cval = t13.
    ENDIF.
    t11 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t15.
    CREATE OBJECT t15.
    t14 = t15.
    DATA(t16) = t14.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t18 = zcl_lnt_st_combi_module=>tok( i_t = t19 ).
    CLEAR t17.
    IF t18 IS BOUND.
      DATA t20 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t20.
      DATA t21 TYPE REF TO object.
      CLEAR t21.
      CLEAR t20.
      t21 = t18.
      TRY.
          t17 ?= t21.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t17 IS NOT BOUND.
        TRY.
            t20 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t20 IS BOUND.
          t17 = t20->source( ).
        ENDIF.
        IF t17 IS NOT BOUND.
          CREATE OBJECT t17.
          t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t17->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    t16->load( ).
    APPEND t17 TO t16->items.
    t16->save( ).
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t22.
    DATA(t23) = t5.
    DATA(t24) = t11.
    DATA(t25) = t14.
    t22 = zcl_lnt_st_combi_module=>seq( i_first = t23 i_second = t24 i_rest = t25 ).
    t4 = t22.
    CLEAR t3.
    IF t4 IS BOUND.
      DATA t26 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t26.
      DATA t27 TYPE REF TO object.
      CLEAR t27.
      CLEAR t26.
      t27 = t4.
      TRY.
          t3 ?= t27.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t3 IS NOT BOUND.
        TRY.
            t26 ?= t4.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t26 IS BOUND.
          t3 = t26->source( ).
        ENDIF.
        IF t3 IS NOT BOUND.
          CREATE OBJECT t3.
          t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t3->oval = t4.
        ENDIF.
      ENDIF.
    ENDIF.
    t2 = zcl_lnt_st_combi_module=>plus( i_first = t3 ).
    t1 = t2.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t28.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t34.
    DATA(t35) = zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77.
    t34 = zcl_lnt_st_combi_module=>tok( i_t = t35 ).
    CLEAR t33.
    IF t34 IS BOUND.
      DATA t36 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t36.
      DATA t37 TYPE REF TO object.
      CLEAR t37.
      CLEAR t36.
      t37 = t34.
      TRY.
          t33 ?= t37.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t33 IS NOT BOUND.
        TRY.
            t36 ?= t34.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t36 IS BOUND.
          t33 = t36->source( ).
        ENDIF.
        IF t33 IS NOT BOUND.
          CREATE OBJECT t33.
          t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t33->oval = t34.
        ENDIF.
      ENDIF.
    ENDIF.
    t32 = t33.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA(t42) = zlnt_runtime_desc_78196487750d=>zlnt_member_d168_9f6549d76396.
    CLEAR t41.
    IF t42 IS BOUND.
      CREATE OBJECT t41.
      t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t41->cval = t42.
    ENDIF.
    t40 = zcl_lnt_st_combi_module=>plus( i_first = t41 ).
    CLEAR t39.
    IF t40 IS BOUND.
      DATA t43 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t43.
      DATA t44 TYPE REF TO object.
      CLEAR t44.
      CLEAR t43.
      t44 = t40.
      TRY.
          t39 ?= t44.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t39 IS NOT BOUND.
        TRY.
            t43 ?= t40.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t43 IS BOUND.
          t39 = t43->source( ).
        ENDIF.
        IF t39 IS NOT BOUND.
          CREATE OBJECT t39.
          t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t39->oval = t40.
        ENDIF.
      ENDIF.
    ENDIF.
    t38 = t39.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t46.
    CREATE OBJECT t46.
    t45 = t46.
    DATA(t47) = t45.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t49.
    DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t49 = zcl_lnt_st_combi_module=>tok( i_t = t50 ).
    CLEAR t48.
    IF t49 IS BOUND.
      DATA t51 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t51.
      DATA t52 TYPE REF TO object.
      CLEAR t52.
      CLEAR t51.
      t52 = t49.
      TRY.
          t48 ?= t52.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t48 IS NOT BOUND.
        TRY.
            t51 ?= t49.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t51 IS BOUND.
          t48 = t51->source( ).
        ENDIF.
        IF t48 IS NOT BOUND.
          CREATE OBJECT t48.
          t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t48->oval = t49.
        ENDIF.
      ENDIF.
    ENDIF.
    t47->load( ).
    APPEND t48 TO t47->items.
    t47->save( ).
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t53.
    DATA(t54) = t32.
    DATA(t55) = t38.
    DATA(t56) = t45.
    t53 = zcl_lnt_st_combi_module=>seq( i_first = t54 i_second = t55 i_rest = t56 ).
    t31 = t53.
    CLEAR t30.
    IF t31 IS BOUND.
      DATA t57 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t57.
      DATA t58 TYPE REF TO object.
      CLEAR t58.
      CLEAR t57.
      t58 = t31.
      TRY.
          t30 ?= t58.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t30 IS NOT BOUND.
        TRY.
            t57 ?= t31.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t57 IS BOUND.
          t30 = t57->source( ).
        ENDIF.
        IF t30 IS NOT BOUND.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t30->oval = t31.
        ENDIF.
      ENDIF.
    ENDIF.
    t29 = zcl_lnt_st_combi_module=>plus( i_first = t30 ).
    t28 = t29.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t59.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA(t63) = |NEW|.
    CLEAR t62.
    CREATE OBJECT t62.
    t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t62->sval = t63.
    t61 = t62.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA(t66) = zlnt_runtime_desc_78196487750d=>zlnt_member_d111_4d9698a8e1bf.
    CLEAR t65.
    IF t66 IS BOUND.
      CREATE OBJECT t65.
      t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t65->cval = t66.
    ENDIF.
    t64 = t65.
    DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t68.
    CREATE OBJECT t68.
    t67 = t68.
    DATA(t69) = t67.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t71.
    DATA(t72) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t71 = zcl_lnt_st_combi_module=>tok( i_t = t72 ).
    CLEAR t70.
    IF t71 IS BOUND.
      DATA t73 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t73.
      DATA t74 TYPE REF TO object.
      CLEAR t74.
      CLEAR t73.
      t74 = t71.
      TRY.
          t70 ?= t74.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t70 IS NOT BOUND.
        TRY.
            t73 ?= t71.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t73 IS BOUND.
          t70 = t73->source( ).
        ENDIF.
        IF t70 IS NOT BOUND.
          CREATE OBJECT t70.
          t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t70->oval = t71.
        ENDIF.
      ENDIF.
    ENDIF.
    t69->load( ).
    APPEND t70 TO t69->items.
    t69->save( ).
    DATA(t75) = t67.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA t79 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t79.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA(t82) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t81.
    IF t82 IS BOUND.
      CREATE OBJECT t81.
      t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t81->cval = t82.
    ENDIF.
    t80 = t81.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA(t85) = zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a.
    CLEAR t84.
    IF t85 IS BOUND.
      CREATE OBJECT t84.
      t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t84->cval = t85.
    ENDIF.
    t83 = t84.
    DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t87.
    CREATE OBJECT t87.
    t86 = t87.
    DATA(t88) = t86.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA(t90) = t1.
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
    t88->load( ).
    APPEND t89 TO t88->items.
    t88->save( ).
    DATA(t93) = t86.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA(t95) = t28.
    CLEAR t94.
    IF t95 IS BOUND.
      DATA t96 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t96.
      DATA t97 TYPE REF TO object.
      CLEAR t97.
      CLEAR t96.
      t97 = t95.
      TRY.
          t94 ?= t97.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t94 IS NOT BOUND.
        TRY.
            t96 ?= t95.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t96 IS BOUND.
          t94 = t96->source( ).
        ENDIF.
        IF t94 IS NOT BOUND.
          CREATE OBJECT t94.
          t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t94->oval = t95.
        ENDIF.
      ENDIF.
    ENDIF.
    t93->load( ).
    APPEND t94 TO t93->items.
    t93->save( ).
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t98.
    DATA(t99) = t80.
    DATA(t100) = t83.
    DATA(t101) = t86.
    t98 = zcl_lnt_st_combi_module=>alt( i_first = t99 i_second = t100 i_rest = t101 ).
    t79 = t98.
    CLEAR t78.
    IF t79 IS BOUND.
      DATA t102 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t102.
      DATA t103 TYPE REF TO object.
      CLEAR t103.
      CLEAR t102.
      t103 = t79.
      TRY.
          t78 ?= t103.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t78 IS NOT BOUND.
        TRY.
            t102 ?= t79.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t102 IS BOUND.
          t78 = t102->source( ).
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
      DATA t104 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t104.
      DATA t105 TYPE REF TO object.
      CLEAR t105.
      CLEAR t104.
      t105 = t77.
      TRY.
          t76 ?= t105.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t76 IS NOT BOUND.
        TRY.
            t104 ?= t77.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t104 IS BOUND.
          t76 = t104->source( ).
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
    DATA(t106) = t67.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA(t108) = |)|.
    CLEAR t107.
    CREATE OBJECT t107.
    t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t107->sval = t108.
    t106->load( ).
    APPEND t107 TO t106->items.
    t106->save( ).
    DATA t109 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t109.
    DATA(t110) = t61.
    DATA(t111) = t64.
    DATA(t112) = t67.
    t109 = zcl_lnt_st_combi_module=>seq( i_first = t110 i_second = t111 i_rest = t112 ).
    t60 = t109.
    t59 = t60.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t113.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA t115 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t115.
    DATA t116 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t116.
    DATA t117 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t117.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t117 = zcl_lnt_version_module=>release_b8cd.
    DATA(t118) = |v740sp02|.
    t116 = t117->get( p0 = t118 ).
    t115 = t116.
    CLEAR t114.
    IF t115 IS BOUND.
      DATA t119 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t119.
      DATA t120 TYPE REF TO object.
      CLEAR t120.
      CLEAR t119.
      t120 = t115.
      TRY.
          t114 ?= t120.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t114 IS NOT BOUND.
        TRY.
            t119 ?= t115.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t119 IS BOUND.
          t114 = t119->source( ).
        ENDIF.
        IF t114 IS NOT BOUND.
          CREATE OBJECT t114.
          t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t114->oval = t115.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    DATA(t122) = t59.
    CLEAR t121.
    IF t122 IS BOUND.
      DATA t123 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t123.
      DATA t124 TYPE REF TO object.
      CLEAR t124.
      CLEAR t123.
      t124 = t122.
      TRY.
          t121 ?= t124.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t121 IS NOT BOUND.
        TRY.
            t123 ?= t122.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t123 IS BOUND.
          t121 = t123->source( ).
        ENDIF.
        IF t121 IS NOT BOUND.
          CREATE OBJECT t121.
          t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t121->oval = t122.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t125 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t125.
    DATA(t126) = abap_true.
    IF t126 = abap_true.
      DATA t127 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t127.
      DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t128.
      DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t129.
      DATA(t130) = abap_true.
      IF t130 = abap_true.
        DATA(t131) = |OpenABAP|.
        DATA(t132) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t132->has = abap_true.
        t132->value = t131.
        t129 = t132.
      ELSE.
        DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t133.
        t129 = t133.
      ENDIF.
      t128 = t129.
      t127 = NEW zcl_lnt_iver_options( i_also = t128 ).
      CREATE OBJECT t127->zlnt_view_ownkeys_b0e8086400eb.
      t127->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t134.
      IF t127->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t134 ).
      ENDIF.
      CREATE OBJECT t127->zlnt_json_ownkeys_70e5fd461788.
      t127->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t135) = |also|.
      DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t136.
      IF t127->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t127->zlnt_json_ownkeys_70e5fd461788->put( p0 = t135 p1 = t136 ).
      ENDIF.
      t125 = t127.
    ELSE.
      DATA t137 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t137.
      t125 = t137.
    ENDIF.
    t113 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t114 i_first = t121 i_opts = t125 ).
    result = t113.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d224_4e54f441ad62.
  ENDMETHOD.
ENDCLASS.
