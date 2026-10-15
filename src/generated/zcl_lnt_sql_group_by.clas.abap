* TS: src/abap/2_statements/expressions/sql_group_by.ts:9:1 SQLGroupBy
CLASS zcl_lnt_sql_group_by DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_group_by IMPLEMENTATION.
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
    DATA(t6) = |ORDER|.
    DATA(t7) = |BY|.
    t5 = zcl_lnt_st_combi_module=>stop_before( i_t1 = t6 i_t2 = t7 ).
    CLEAR t4.
    IF t5 IS BOUND.
      DATA t8 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t8.
      DATA t9 TYPE REF TO object.
      CLEAR t9.
      CLEAR t8.
      t9 = t5.
      TRY.
          t4 ?= t9.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t8 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t8 IS BOUND.
          t4 = t8->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    t3 = t4.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA(t15) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
    CLEAR t14.
    IF t15 IS BOUND.
      CREATE OBJECT t14.
      t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t14->cval = t15.
    ENDIF.
    t13 = t14.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    CLEAR t17.
    IF t18 IS BOUND.
      CREATE OBJECT t17.
      t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t17->cval = t18.
    ENDIF.
    t16 = t17.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t20.
    CREATE OBJECT t20.
    t19 = t20.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t21.
    DATA(t22) = t13.
    DATA(t23) = t16.
    DATA(t24) = t19.
    t21 = zcl_lnt_st_combi_module=>alt( i_first = t22 i_second = t23 i_rest = t24 ).
    t12 = t21.
    CLEAR t11.
    IF t12 IS BOUND.
      DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t25.
      DATA t26 TYPE REF TO object.
      CLEAR t26.
      CLEAR t25.
      t26 = t12.
      TRY.
          t11 ?= t26.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t11 IS NOT BOUND.
        TRY.
            t25 ?= t12.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t25 IS BOUND.
          t11 = t25->source( ).
        ENDIF.
        IF t11 IS NOT BOUND.
          CREATE OBJECT t11.
          t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t11->oval = t12.
        ENDIF.
      ENDIF.
    ENDIF.
    t10 = t11.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t28.
    CREATE OBJECT t28.
    t27 = t28.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t29.
    DATA(t30) = t3.
    DATA(t31) = t10.
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
    DATA t36 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t36.
    DATA t37 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t38.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t38 = zcl_lnt_version_module=>release_b8cd.
    DATA(t39) = |v740sp02|.
    t37 = t38->get( p0 = t39 ).
    t36 = t37.
    CLEAR t35.
    IF t36 IS BOUND.
      DATA t40 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t40.
      DATA t41 TYPE REF TO object.
      CLEAR t41.
      CLEAR t40.
      t41 = t36.
      TRY.
          t35 ?= t41.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t35 IS NOT BOUND.
        TRY.
            t40 ?= t36.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t40 IS BOUND.
          t35 = t40->source( ).
        ENDIF.
        IF t35 IS NOT BOUND.
          CREATE OBJECT t35.
          t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t35->oval = t36.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA(t43) = zlnt_runtime_desc_78196487750d=>zlnt_member_d315_136d5faf95cc.
    CLEAR t42.
    IF t43 IS BOUND.
      CREATE OBJECT t42.
      t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t42->cval = t43.
    ENDIF.
    DATA t44 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t44.
    DATA(t45) = abap_true.
    IF t45 = abap_true.
      DATA t46 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t46.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t47.
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t48.
      DATA(t49) = abap_true.
      IF t49 = abap_true.
        DATA(t50) = |OpenABAP|.
        DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t51->has = abap_true.
        t51->value = t50.
        t48 = t51.
      ELSE.
        DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t52.
        t48 = t52.
      ENDIF.
      t47 = t48.
      t46 = NEW zcl_lnt_iver_options( i_also = t47 ).
      CREATE OBJECT t46->zlnt_view_ownkeys_b0e8086400eb.
      t46->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t53 ).
      ENDIF.
      CREATE OBJECT t46->zlnt_json_ownkeys_70e5fd461788.
      t46->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t54) = |also|.
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t55.
      IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
      ENDIF.
      t44 = t46.
    ELSE.
      DATA t56 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t56.
      t44 = t56.
    ENDIF.
    t34 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t35 i_first = t42 i_opts = t44 ).
    t33 = t34.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t57.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA t60 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t60.
    DATA t61 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t62.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t62 = zcl_lnt_version_module=>release_b8cd.
    DATA(t63) = |v740sp02|.
    t61 = t62->get( p0 = t63 ).
    t60 = t61.
    CLEAR t59.
    IF t60 IS BOUND.
      DATA t64 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t64.
      DATA t65 TYPE REF TO object.
      CLEAR t65.
      CLEAR t64.
      t65 = t60.
      TRY.
          t59 ?= t65.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t59 IS NOT BOUND.
        TRY.
            t64 ?= t60.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t64 IS BOUND.
          t59 = t64->source( ).
        ENDIF.
        IF t59 IS NOT BOUND.
          CREATE OBJECT t59.
          t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t59->oval = t60.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA(t70) = |GROUP BY|.
    CLEAR t69.
    CREATE OBJECT t69.
    t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t69->sval = t70.
    t68 = t69.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA(t73) = t33.
    CLEAR t72.
    IF t73 IS BOUND.
      DATA t74 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t74.
      DATA t75 TYPE REF TO object.
      CLEAR t75.
      CLEAR t74.
      t75 = t73.
      TRY.
          t72 ?= t75.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t72 IS NOT BOUND.
        TRY.
            t74 ?= t73.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t74 IS BOUND.
          t72 = t74->source( ).
        ENDIF.
        IF t72 IS NOT BOUND.
          CREATE OBJECT t72.
          t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t72->oval = t73.
        ENDIF.
      ENDIF.
    ENDIF.
    t71 = t72.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t77.
    CREATE OBJECT t77.
    t76 = t77.
    DATA(t78) = t76.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t80.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA t83 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t83.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t85.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA(t88) = |,|.
    CLEAR t87.
    CREATE OBJECT t87.
    t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t87->sval = t88.
    t86 = t87.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA(t91) = t33.
    CLEAR t90.
    IF t91 IS BOUND.
      DATA t92 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t92.
      DATA t93 TYPE REF TO object.
      CLEAR t93.
      CLEAR t92.
      t93 = t91.
      TRY.
          t90 ?= t93.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t90 IS NOT BOUND.
        TRY.
            t92 ?= t91.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t92 IS BOUND.
          t90 = t92->source( ).
        ENDIF.
        IF t90 IS NOT BOUND.
          CREATE OBJECT t90.
          t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t90->oval = t91.
        ENDIF.
      ENDIF.
    ENDIF.
    t89 = t90.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t95.
    CREATE OBJECT t95.
    t94 = t95.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t96.
    DATA(t97) = t86.
    DATA(t98) = t89.
    DATA(t99) = t94.
    t96 = zcl_lnt_st_combi_module=>seq( i_first = t97 i_second = t98 i_rest = t99 ).
    t85 = t96.
    CLEAR t84.
    IF t85 IS BOUND.
      DATA t100 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t100.
      DATA t101 TYPE REF TO object.
      CLEAR t101.
      CLEAR t100.
      t101 = t85.
      TRY.
          t84 ?= t101.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t84 IS NOT BOUND.
        TRY.
            t100 ?= t85.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t100 IS BOUND.
          t84 = t100->source( ).
        ENDIF.
        IF t84 IS NOT BOUND.
          CREATE OBJECT t84.
          t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t84->oval = t85.
        ENDIF.
      ENDIF.
    ENDIF.
    t83 = zcl_lnt_st_combi_module=>plus( i_first = t84 ).
    CLEAR t82.
    IF t83 IS BOUND.
      DATA t102 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t102.
      DATA t103 TYPE REF TO object.
      CLEAR t103.
      CLEAR t102.
      t103 = t83.
      TRY.
          t82 ?= t103.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t82 IS NOT BOUND.
        TRY.
            t102 ?= t83.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t102 IS BOUND.
          t82 = t102->source( ).
        ENDIF.
        IF t82 IS NOT BOUND.
          CREATE OBJECT t82.
          t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t82->oval = t83.
        ENDIF.
      ENDIF.
    ENDIF.
    t81 = t82.
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
    DATA(t110) = t1.
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
    t108 = zcl_lnt_st_combi_module=>plus( i_first = t109 ).
    CLEAR t107.
    IF t108 IS BOUND.
      DATA t113 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t113.
      DATA t114 TYPE REF TO object.
      CLEAR t114.
      CLEAR t113.
      t114 = t108.
      TRY.
          t107 ?= t114.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t107 IS NOT BOUND.
        TRY.
            t113 ?= t108.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t113 IS BOUND.
          t107 = t113->source( ).
        ENDIF.
        IF t107 IS NOT BOUND.
          CREATE OBJECT t107.
          t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t107->oval = t108.
        ENDIF.
      ENDIF.
    ENDIF.
    t106 = zcl_lnt_st_combi_module=>opt_prio( i_first = t107 ).
    CLEAR t105.
    IF t106 IS BOUND.
      DATA t115 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t115.
      DATA t116 TYPE REF TO object.
      CLEAR t116.
      CLEAR t115.
      t116 = t106.
      TRY.
          t105 ?= t116.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t105 IS NOT BOUND.
        TRY.
            t115 ?= t106.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t115 IS BOUND.
          t105 = t115->source( ).
        ENDIF.
        IF t105 IS NOT BOUND.
          CREATE OBJECT t105.
          t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t105->oval = t106.
        ENDIF.
      ENDIF.
    ENDIF.
    t104 = t105.
    DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t117.
    DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t118.
    CREATE OBJECT t118.
    t117 = t118.
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t119.
    DATA(t120) = t81.
    DATA(t121) = t104.
    DATA(t122) = t117.
    t119 = zcl_lnt_st_combi_module=>alt_prio( i_first = t120 i_second = t121 i_rest = t122 ).
    t80 = t119.
    CLEAR t79.
    IF t80 IS BOUND.
      DATA t123 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t123.
      DATA t124 TYPE REF TO object.
      CLEAR t124.
      CLEAR t123.
      t124 = t80.
      TRY.
          t79 ?= t124.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t79 IS NOT BOUND.
        TRY.
            t123 ?= t80.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t123 IS BOUND.
          t79 = t123->source( ).
        ENDIF.
        IF t79 IS NOT BOUND.
          CREATE OBJECT t79.
          t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t79->oval = t80.
        ENDIF.
      ENDIF.
    ENDIF.
    t78->load( ).
    APPEND t79 TO t78->items.
    t78->save( ).
    DATA t125 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t125.
    DATA(t126) = t68.
    DATA(t127) = t71.
    DATA(t128) = t76.
    t125 = zcl_lnt_st_combi_module=>seq( i_first = t126 i_second = t127 i_rest = t128 ).
    t67 = t125.
    CLEAR t66.
    IF t67 IS BOUND.
      DATA t129 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t129.
      DATA t130 TYPE REF TO object.
      CLEAR t130.
      CLEAR t129.
      t130 = t67.
      TRY.
          t66 ?= t130.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t66 IS NOT BOUND.
        TRY.
            t129 ?= t67.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t129 IS BOUND.
          t66 = t129->source( ).
        ENDIF.
        IF t66 IS NOT BOUND.
          CREATE OBJECT t66.
          t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t66->oval = t67.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t131 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t131.
    DATA(t132) = abap_true.
    IF t132 = abap_true.
      DATA t133 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t133.
      DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t134.
      DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t135.
      DATA(t136) = abap_true.
      IF t136 = abap_true.
        DATA(t137) = |OpenABAP|.
        DATA(t138) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t138->has = abap_true.
        t138->value = t137.
        t135 = t138.
      ELSE.
        DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t139.
        t135 = t139.
      ENDIF.
      t134 = t135.
      t133 = NEW zcl_lnt_iver_options( i_also = t134 ).
      CREATE OBJECT t133->zlnt_view_ownkeys_b0e8086400eb.
      t133->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t140.
      IF t133->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t133->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t140 ).
      ENDIF.
      CREATE OBJECT t133->zlnt_json_ownkeys_70e5fd461788.
      t133->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t141) = |also|.
      DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t142.
      IF t133->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t133->zlnt_json_ownkeys_70e5fd461788->put( p0 = t141 p1 = t142 ).
      ENDIF.
      t131 = t133.
    ELSE.
      DATA t143 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t143.
      t131 = t143.
    ENDIF.
    t58 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t59 i_first = t66 i_opts = t131 ).
    t57 = t58.
    DATA t144 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t144.
    DATA t145 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t145.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t147.
    DATA t148 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t148.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    DATA t150 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t150.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t151.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t152.
    DATA(t153) = t1.
    CLEAR t152.
    IF t153 IS BOUND.
      DATA t154 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t154.
      DATA t155 TYPE REF TO object.
      CLEAR t155.
      CLEAR t154.
      t155 = t153.
      TRY.
          t152 ?= t155.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t152 IS NOT BOUND.
        TRY.
            t154 ?= t153.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t154 IS BOUND.
          t152 = t154->source( ).
        ENDIF.
        IF t152 IS NOT BOUND.
          CREATE OBJECT t152.
          t152->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t152->oval = t153.
        ENDIF.
      ENDIF.
    ENDIF.
    t151 = t152.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t156.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    DATA(t158) = |,|.
    CLEAR t157.
    CREATE OBJECT t157.
    t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t157->sval = t158.
    t156 = t157.
    DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t159.
    DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t160.
    CREATE OBJECT t160.
    t159 = t160.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t161.
    DATA(t162) = t151.
    DATA(t163) = t156.
    DATA(t164) = t159.
    t161 = zcl_lnt_st_combi_module=>seq( i_first = t162 i_second = t163 i_rest = t164 ).
    t150 = t161.
    CLEAR t149.
    IF t150 IS BOUND.
      DATA t165 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t165.
      DATA t166 TYPE REF TO object.
      CLEAR t166.
      CLEAR t165.
      t166 = t150.
      TRY.
          t149 ?= t166.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t149 IS NOT BOUND.
        TRY.
            t165 ?= t150.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t165 IS BOUND.
          t149 = t165->source( ).
        ENDIF.
        IF t149 IS NOT BOUND.
          CREATE OBJECT t149.
          t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t149->oval = t150.
        ENDIF.
      ENDIF.
    ENDIF.
    t148 = zcl_lnt_st_combi_module=>plus( i_first = t149 ).
    CLEAR t147.
    IF t148 IS BOUND.
      DATA t167 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t167.
      DATA t168 TYPE REF TO object.
      CLEAR t168.
      CLEAR t167.
      t168 = t148.
      TRY.
          t147 ?= t168.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t147 IS NOT BOUND.
        TRY.
            t167 ?= t148.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t167 IS BOUND.
          t147 = t167->source( ).
        ENDIF.
        IF t147 IS NOT BOUND.
          CREATE OBJECT t147.
          t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t147->oval = t148.
        ENDIF.
      ENDIF.
    ENDIF.
    t146 = t147.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t169.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t170.
    DATA(t171) = t1.
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
    t169 = t170.
    DATA t174 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t174.
    DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t175.
    CREATE OBJECT t175.
    t174 = t175.
    DATA t176 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t176.
    DATA(t177) = t146.
    DATA(t178) = t169.
    DATA(t179) = t174.
    t176 = zcl_lnt_st_combi_module=>seq( i_first = t177 i_second = t178 i_rest = t179 ).
    t145 = t176.
    t144 = t145.
    DATA t180 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t180.
    DATA t181 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t181.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t182.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    DATA(t184) = |GROUP BY|.
    CLEAR t183.
    CREATE OBJECT t183.
    t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t183->sval = t184.
    t182 = t183.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t185.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t186.
    DATA t187 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t187.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t188.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t189.
    DATA(t190) = t144.
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
    t188 = t189.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t193.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    DATA t195 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t195.
    DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t196.
    DATA(t197) = t1.
    CLEAR t196.
    IF t197 IS BOUND.
      DATA t198 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t198.
      DATA t199 TYPE REF TO object.
      CLEAR t199.
      CLEAR t198.
      t199 = t197.
      TRY.
          t196 ?= t199.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t196 IS NOT BOUND.
        TRY.
            t198 ?= t197.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t198 IS BOUND.
          t196 = t198->source( ).
        ENDIF.
        IF t196 IS NOT BOUND.
          CREATE OBJECT t196.
          t196->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t196->oval = t197.
        ENDIF.
      ENDIF.
    ENDIF.
    t195 = zcl_lnt_st_combi_module=>plus( i_first = t196 ).
    CLEAR t194.
    IF t195 IS BOUND.
      DATA t200 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t200.
      DATA t201 TYPE REF TO object.
      CLEAR t201.
      CLEAR t200.
      t201 = t195.
      TRY.
          t194 ?= t201.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t194 IS NOT BOUND.
        TRY.
            t200 ?= t195.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t200 IS BOUND.
          t194 = t200->source( ).
        ENDIF.
        IF t194 IS NOT BOUND.
          CREATE OBJECT t194.
          t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t194->oval = t195.
        ENDIF.
      ENDIF.
    ENDIF.
    t193 = t194.
    DATA t202 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t202.
    DATA t203 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t203.
    CREATE OBJECT t203.
    t202 = t203.
    DATA t204 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t204.
    DATA(t205) = t188.
    DATA(t206) = t193.
    DATA(t207) = t202.
    t204 = zcl_lnt_st_combi_module=>alt_prio( i_first = t205 i_second = t206 i_rest = t207 ).
    t187 = t204.
    CLEAR t186.
    IF t187 IS BOUND.
      DATA t208 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t208.
      DATA t209 TYPE REF TO object.
      CLEAR t209.
      CLEAR t208.
      t209 = t187.
      TRY.
          t186 ?= t209.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t186 IS NOT BOUND.
        TRY.
            t208 ?= t187.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t208 IS BOUND.
          t186 = t208->source( ).
        ENDIF.
        IF t186 IS NOT BOUND.
          CREATE OBJECT t186.
          t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t186->oval = t187.
        ENDIF.
      ENDIF.
    ENDIF.
    t185 = t186.
    DATA t210 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t210.
    DATA t211 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t211.
    CREATE OBJECT t211.
    t210 = t211.
    DATA t212 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t212.
    DATA(t213) = t182.
    DATA(t214) = t185.
    DATA(t215) = t210.
    t212 = zcl_lnt_st_combi_module=>seq( i_first = t213 i_second = t214 i_rest = t215 ).
    t181 = t212.
    t180 = t181.
    DATA t216 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t216.
    DATA t217 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t217.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t218.
    DATA t219 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t219.
    DATA t220 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t220.
    DATA t221 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t221.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t221 = zcl_lnt_version_module=>release_b8cd.
    DATA(t222) = |v772|.
    t220 = t221->get( p0 = t222 ).
    t219 = t220.
    CLEAR t218.
    IF t219 IS BOUND.
      DATA t223 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t223.
      DATA t224 TYPE REF TO object.
      CLEAR t224.
      CLEAR t223.
      t224 = t219.
      TRY.
          t218 ?= t224.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t218 IS NOT BOUND.
        TRY.
            t223 ?= t219.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t223 IS BOUND.
          t218 = t223->source( ).
        ENDIF.
        IF t218 IS NOT BOUND.
          CREATE OBJECT t218.
          t218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t218->oval = t219.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t225.
    DATA t226 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t226.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t227.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t228.
    DATA(t229) = |GROUP BY|.
    CLEAR t228.
    CREATE OBJECT t228.
    t228->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t228->sval = t229.
    t227 = t228.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t230.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t231.
    DATA(t232) = zlnt_runtime_desc_78196487750d=>zlnt_member_d328_b04944ab696d.
    CLEAR t231.
    IF t232 IS BOUND.
      CREATE OBJECT t231.
      t231->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t231->cval = t232.
    ENDIF.
    t230 = t231.
    DATA t233 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t233.
    DATA t234 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t234.
    CREATE OBJECT t234.
    t233 = t234.
    DATA t235 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t235.
    DATA(t236) = t227.
    DATA(t237) = t230.
    DATA(t238) = t233.
    t235 = zcl_lnt_st_combi_module=>seq( i_first = t236 i_second = t237 i_rest = t238 ).
    t226 = t235.
    CLEAR t225.
    IF t226 IS BOUND.
      DATA t239 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t239.
      DATA t240 TYPE REF TO object.
      CLEAR t240.
      CLEAR t239.
      t240 = t226.
      TRY.
          t225 ?= t240.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t225 IS NOT BOUND.
        TRY.
            t239 ?= t226.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t239 IS BOUND.
          t225 = t239->source( ).
        ENDIF.
        IF t225 IS NOT BOUND.
          CREATE OBJECT t225.
          t225->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t225->oval = t226.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t241 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t241.
    t217 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t218 i_first = t225 i_opts = t241 ).
    t216 = t217.
    DATA t242 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t242.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t243.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t244.
    DATA(t245) = t216.
    CLEAR t244.
    IF t245 IS BOUND.
      DATA t246 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t246.
      DATA t247 TYPE REF TO object.
      CLEAR t247.
      CLEAR t246.
      t247 = t245.
      TRY.
          t244 ?= t247.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t244 IS NOT BOUND.
        TRY.
            t246 ?= t245.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t246 IS BOUND.
          t244 = t246->source( ).
        ENDIF.
        IF t244 IS NOT BOUND.
          CREATE OBJECT t244.
          t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t244->oval = t245.
        ENDIF.
      ENDIF.
    ENDIF.
    t243 = t244.
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t248.
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t249.
    DATA(t250) = t57.
    CLEAR t249.
    IF t250 IS BOUND.
      DATA t251 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t251.
      DATA t252 TYPE REF TO object.
      CLEAR t252.
      CLEAR t251.
      t252 = t250.
      TRY.
          t249 ?= t252.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t249 IS NOT BOUND.
        TRY.
            t251 ?= t250.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t251 IS BOUND.
          t249 = t251->source( ).
        ENDIF.
        IF t249 IS NOT BOUND.
          CREATE OBJECT t249.
          t249->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t249->oval = t250.
        ENDIF.
      ENDIF.
    ENDIF.
    t248 = t249.
    DATA t253 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t253.
    DATA t254 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t254.
    CREATE OBJECT t254.
    t253 = t254.
    DATA(t255) = t253.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t256.
    DATA(t257) = t180.
    CLEAR t256.
    IF t257 IS BOUND.
      DATA t258 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t258.
      DATA t259 TYPE REF TO object.
      CLEAR t259.
      CLEAR t258.
      t259 = t257.
      TRY.
          t256 ?= t259.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t256 IS NOT BOUND.
        TRY.
            t258 ?= t257.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t258 IS BOUND.
          t256 = t258->source( ).
        ENDIF.
        IF t256 IS NOT BOUND.
          CREATE OBJECT t256.
          t256->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t256->oval = t257.
        ENDIF.
      ENDIF.
    ENDIF.
    t255->load( ).
    APPEND t256 TO t255->items.
    t255->save( ).
    DATA t260 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t260.
    DATA(t261) = t243.
    DATA(t262) = t248.
    DATA(t263) = t253.
    t260 = zcl_lnt_st_combi_module=>alt_prio( i_first = t261 i_second = t262 i_rest = t263 ).
    t242 = t260.
    result = t242.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d266_3b538ddd2a60.
  ENDMETHOD.
ENDCLASS.
