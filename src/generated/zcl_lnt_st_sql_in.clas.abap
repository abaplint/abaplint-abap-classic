* TS: src/abap/2_statements/expressions/sql_in.ts:9:1 SQLIn
CLASS zcl_lnt_st_sql_in DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_sql_in IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zcl_lnt_st_sql_source.
    CLEAR t1.
    DATA(t2) = NEW zcl_lnt_st_sql_source( ).
    t1 = t2.
    DATA t3 TYPE REF TO zcl_lnt_sql_source_no_space.
    CLEAR t3.
    DATA(t4) = NEW zcl_lnt_sql_source_no_space( ).
    t3 = t4.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t5.
    DATA t6 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t9.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d52_2e425786555090.
    t9 = zcl_lnt_st_combi_module=>tok( i_t = t10 ).
    CLEAR t8.
    IF t9 IS BOUND.
      DATA t11 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t11.
      DATA t12 TYPE REF TO object.
      CLEAR t12.
      CLEAR t11.
      t12 = t9.
      TRY.
          t8 ?= t12.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t8 IS NOT BOUND.
        TRY.
            t11 ?= t9.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t11 IS BOUND.
          t8 = t11->source( ).
        ENDIF.
        IF t8 IS NOT BOUND.
          CREATE OBJECT t8.
          t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t8->oval = t9.
        ENDIF.
      ENDIF.
    ENDIF.
    t7 = t8.
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
    DATA t20 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t20.
    DATA t21 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t22.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t22 = zcl_lnt_version_module=>release_b8cd.
    DATA(t23) = |v740sp05|.
    t21 = t22->get( p0 = t23 ).
    t20 = t21.
    CLEAR t19.
    IF t20 IS BOUND.
      DATA t24 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t24.
      DATA t25 TYPE REF TO object.
      CLEAR t25.
      CLEAR t24.
      t25 = t20.
      TRY.
          t19 ?= t25.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t19 IS NOT BOUND.
        TRY.
            t24 ?= t20.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t24 IS BOUND.
          t19 = t24->source( ).
        ENDIF.
        IF t19 IS NOT BOUND.
          CREATE OBJECT t19.
          t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t19->oval = t20.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA(t27) = t3.
    CLEAR t26.
    IF t27 IS BOUND.
      DATA t28 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t28.
      DATA t29 TYPE REF TO object.
      CLEAR t29.
      CLEAR t28.
      t29 = t27.
      TRY.
          t26 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t26 IS NOT BOUND.
        TRY.
            t28 ?= t27.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t28 IS BOUND.
          t26 = t28->source( ).
        ENDIF.
        IF t26 IS NOT BOUND.
          CREATE OBJECT t26.
          t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t26->oval = t27.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t30 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t30.
    DATA(t31) = abap_true.
    IF t31 = abap_true.
      DATA t32 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t32.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t34.
      DATA(t35) = abap_true.
      IF t35 = abap_true.
        DATA(t36) = |OpenABAP|.
        DATA(t37) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t37->has = abap_true.
        t37->value = t36.
        t34 = t37.
      ELSE.
        DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t38.
        t34 = t38.
      ENDIF.
      t33 = t34.
      t32 = NEW zcl_lnt_iver_options( i_also = t33 ).
      CREATE OBJECT t32->zlnt_view_ownkeys_b0e8086400eb.
      t32->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      IF t32->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t32->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t39 ).
      ENDIF.
      CREATE OBJECT t32->zlnt_json_ownkeys_70e5fd461788.
      t32->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t40) = |also|.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      IF t32->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t32->zlnt_json_ownkeys_70e5fd461788->put( p0 = t40 p1 = t41 ).
      ENDIF.
      t30 = t32.
    ELSE.
      DATA t42 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t42.
      t30 = t42.
    ENDIF.
    t18 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t19 i_first = t26 i_opts = t30 ).
    CLEAR t17.
    IF t18 IS BOUND.
      DATA t43 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t43.
      DATA t44 TYPE REF TO object.
      CLEAR t44.
      CLEAR t43.
      t44 = t18.
      TRY.
          t17 ?= t44.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t17 IS NOT BOUND.
        TRY.
            t43 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t43 IS BOUND.
          t17 = t43->source( ).
        ENDIF.
        IF t17 IS NOT BOUND.
          CREATE OBJECT t17.
          t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t17->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    t16 = t17.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA(t47) = t1.
    CLEAR t46.
    IF t47 IS BOUND.
      DATA t48 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t48.
      DATA t49 TYPE REF TO object.
      CLEAR t49.
      CLEAR t48.
      t49 = t47.
      TRY.
          t46 ?= t49.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t46 IS NOT BOUND.
        TRY.
            t48 ?= t47.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t48 IS BOUND.
          t46 = t48->source( ).
        ENDIF.
        IF t46 IS NOT BOUND.
          CREATE OBJECT t46.
          t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t46->oval = t47.
        ENDIF.
      ENDIF.
    ENDIF.
    t45 = t46.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t51.
    CREATE OBJECT t51.
    t50 = t51.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t52.
    DATA(t53) = t16.
    DATA(t54) = t45.
    DATA(t55) = t50.
    t52 = zcl_lnt_st_combi_module=>alt( i_first = t53 i_second = t54 i_rest = t55 ).
    t15 = t52.
    CLEAR t14.
    IF t15 IS BOUND.
      DATA t56 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t56.
      DATA t57 TYPE REF TO object.
      CLEAR t57.
      CLEAR t56.
      t57 = t15.
      TRY.
          t14 ?= t57.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t14 IS NOT BOUND.
        TRY.
            t56 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t56 IS BOUND.
          t14 = t56->source( ).
        ENDIF.
        IF t14 IS NOT BOUND.
          CREATE OBJECT t14.
          t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t14->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    t13 = t14.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t59.
    CREATE OBJECT t59.
    t58 = t59.
    DATA(t60) = t58.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA t62 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t64.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA(t67) = |,|.
    CLEAR t66.
    CREATE OBJECT t66.
    t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t66->sval = t67.
    t65 = t66.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA(t70) = t1.
    CLEAR t69.
    IF t70 IS BOUND.
      DATA t71 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t71.
      DATA t72 TYPE REF TO object.
      CLEAR t72.
      CLEAR t71.
      t72 = t70.
      TRY.
          t69 ?= t72.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t69 IS NOT BOUND.
        TRY.
            t71 ?= t70.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t71 IS BOUND.
          t69 = t71->source( ).
        ENDIF.
        IF t69 IS NOT BOUND.
          CREATE OBJECT t69.
          t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t69->oval = t70.
        ENDIF.
      ENDIF.
    ENDIF.
    t68 = t69.
    DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t74.
    CREATE OBJECT t74.
    t73 = t74.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t75.
    DATA(t76) = t65.
    DATA(t77) = t68.
    DATA(t78) = t73.
    t75 = zcl_lnt_st_combi_module=>seq( i_first = t76 i_second = t77 i_rest = t78 ).
    t64 = t75.
    CLEAR t63.
    IF t64 IS BOUND.
      DATA t79 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t79.
      DATA t80 TYPE REF TO object.
      CLEAR t80.
      CLEAR t79.
      t80 = t64.
      TRY.
          t63 ?= t80.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t63 IS NOT BOUND.
        TRY.
            t79 ?= t64.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t79 IS BOUND.
          t63 = t79->source( ).
        ENDIF.
        IF t63 IS NOT BOUND.
          CREATE OBJECT t63.
          t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t63->oval = t64.
        ENDIF.
      ENDIF.
    ENDIF.
    t62 = zcl_lnt_st_combi_module=>star_prio( i_first = t63 ).
    CLEAR t61.
    IF t62 IS BOUND.
      DATA t81 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t81.
      DATA t82 TYPE REF TO object.
      CLEAR t82.
      CLEAR t81.
      t82 = t62.
      TRY.
          t61 ?= t82.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t61 IS NOT BOUND.
        TRY.
            t81 ?= t62.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t81 IS BOUND.
          t61 = t81->source( ).
        ENDIF.
        IF t61 IS NOT BOUND.
          CREATE OBJECT t61.
          t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t61->oval = t62.
        ENDIF.
      ENDIF.
    ENDIF.
    t60->load( ).
    APPEND t61 TO t60->items.
    t60->save( ).
    DATA(t83) = t58.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t85.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA t88 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t88.
    DATA(t89) = zlnt_runtime_desc_78196487750d=>zlnt_member_d29_f2ed5131cb71b6.
    t88 = zcl_lnt_st_combi_module=>tok( i_t = t89 ).
    CLEAR t87.
    IF t88 IS BOUND.
      DATA t90 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t90.
      DATA t91 TYPE REF TO object.
      CLEAR t91.
      CLEAR t90.
      t91 = t88.
      TRY.
          t87 ?= t91.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t87 IS NOT BOUND.
        TRY.
            t90 ?= t88.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t90 IS BOUND.
          t87 = t90->source( ).
        ENDIF.
        IF t87 IS NOT BOUND.
          CREATE OBJECT t87.
          t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t87->oval = t88.
        ENDIF.
      ENDIF.
    ENDIF.
    t86 = t87.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t94.
    DATA(t95) = zlnt_runtime_desc_78196487750d=>zlnt_member_d30_2f4abb22e3612e.
    t94 = zcl_lnt_st_combi_module=>tok( i_t = t95 ).
    CLEAR t93.
    IF t94 IS BOUND.
      DATA t96 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t96.
      DATA t97 TYPE REF TO object.
      CLEAR t97.
      CLEAR t96.
      t97 = t94.
      TRY.
          t93 ?= t97.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t93 IS NOT BOUND.
        TRY.
            t96 ?= t94.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t96 IS BOUND.
          t93 = t96->source( ).
        ENDIF.
        IF t93 IS NOT BOUND.
          CREATE OBJECT t93.
          t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t93->oval = t94.
        ENDIF.
      ENDIF.
    ENDIF.
    t92 = t93.
    DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t99.
    CREATE OBJECT t99.
    t98 = t99.
    DATA(t100) = t98.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA t102 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t102.
    DATA(t103) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t102 = zcl_lnt_st_combi_module=>tok( i_t = t103 ).
    CLEAR t101.
    IF t102 IS BOUND.
      DATA t104 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t104.
      DATA t105 TYPE REF TO object.
      CLEAR t105.
      CLEAR t104.
      t105 = t102.
      TRY.
          t101 ?= t105.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t101 IS NOT BOUND.
        TRY.
            t104 ?= t102.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t104 IS BOUND.
          t101 = t104->source( ).
        ENDIF.
        IF t101 IS NOT BOUND.
          CREATE OBJECT t101.
          t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t101->oval = t102.
        ENDIF.
      ENDIF.
    ENDIF.
    t100->load( ).
    APPEND t101 TO t100->items.
    t100->save( ).
    DATA t106 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t106.
    DATA(t107) = t86.
    DATA(t108) = t92.
    DATA(t109) = t98.
    t106 = zcl_lnt_st_combi_module=>alt_prio( i_first = t107 i_second = t108 i_rest = t109 ).
    t85 = t106.
    CLEAR t84.
    IF t85 IS BOUND.
      DATA t110 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t110.
      DATA t111 TYPE REF TO object.
      CLEAR t111.
      CLEAR t110.
      t111 = t85.
      TRY.
          t84 ?= t111.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t84 IS NOT BOUND.
        TRY.
            t110 ?= t85.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t110 IS BOUND.
          t84 = t110->source( ).
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
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t112.
    DATA(t113) = t7.
    DATA(t114) = t13.
    DATA(t115) = t58.
    t112 = zcl_lnt_st_combi_module=>seq( i_first = t113 i_second = t114 i_rest = t115 ).
    t6 = t112.
    t5 = t6.
    DATA t116 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t116.
    DATA t117 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t117.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t119.
    DATA t120 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t120.
    DATA(t121) = zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77.
    t120 = zcl_lnt_st_combi_module=>tok( i_t = t121 ).
    CLEAR t119.
    IF t120 IS BOUND.
      DATA t122 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t122.
      DATA t123 TYPE REF TO object.
      CLEAR t123.
      CLEAR t122.
      t123 = t120.
      TRY.
          t119 ?= t123.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t119 IS NOT BOUND.
        TRY.
            t122 ?= t120.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t122 IS BOUND.
          t119 = t122->source( ).
        ENDIF.
        IF t119 IS NOT BOUND.
          CREATE OBJECT t119.
          t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t119->oval = t120.
        ENDIF.
      ENDIF.
    ENDIF.
    t118 = t119.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA(t126) = t1.
    CLEAR t125.
    IF t126 IS BOUND.
      DATA t127 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t127.
      DATA t128 TYPE REF TO object.
      CLEAR t128.
      CLEAR t127.
      t128 = t126.
      TRY.
          t125 ?= t128.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t125 IS NOT BOUND.
        TRY.
            t127 ?= t126.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t127 IS BOUND.
          t125 = t127->source( ).
        ENDIF.
        IF t125 IS NOT BOUND.
          CREATE OBJECT t125.
          t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t125->oval = t126.
        ENDIF.
      ENDIF.
    ENDIF.
    t124 = t125.
    DATA t129 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t129.
    DATA t130 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t130.
    CREATE OBJECT t130.
    t129 = t130.
    DATA(t131) = t129.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA t133 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t133.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    DATA t135 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t135.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t136.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t137.
    DATA(t138) = |,|.
    CLEAR t137.
    CREATE OBJECT t137.
    t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t137->sval = t138.
    t136 = t137.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t139.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t140.
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t141.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    DATA(t144) = t3.
    CLEAR t143.
    IF t144 IS BOUND.
      DATA t145 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t145.
      DATA t146 TYPE REF TO object.
      CLEAR t146.
      CLEAR t145.
      t146 = t144.
      TRY.
          t143 ?= t146.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t143 IS NOT BOUND.
        TRY.
            t145 ?= t144.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t145 IS BOUND.
          t143 = t145->source( ).
        ENDIF.
        IF t143 IS NOT BOUND.
          CREATE OBJECT t143.
          t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t143->oval = t144.
        ENDIF.
      ENDIF.
    ENDIF.
    t142 = t143.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t147.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    DATA(t149) = t1.
    CLEAR t148.
    IF t149 IS BOUND.
      DATA t150 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t150.
      DATA t151 TYPE REF TO object.
      CLEAR t151.
      CLEAR t150.
      t151 = t149.
      TRY.
          t148 ?= t151.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t148 IS NOT BOUND.
        TRY.
            t150 ?= t149.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t150 IS BOUND.
          t148 = t150->source( ).
        ENDIF.
        IF t148 IS NOT BOUND.
          CREATE OBJECT t148.
          t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t148->oval = t149.
        ENDIF.
      ENDIF.
    ENDIF.
    t147 = t148.
    DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t152.
    DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t153.
    CREATE OBJECT t153.
    t152 = t153.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t154.
    DATA(t155) = t142.
    DATA(t156) = t147.
    DATA(t157) = t152.
    t154 = zcl_lnt_st_combi_module=>alt_prio( i_first = t155 i_second = t156 i_rest = t157 ).
    t141 = t154.
    CLEAR t140.
    IF t141 IS BOUND.
      DATA t158 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t158.
      DATA t159 TYPE REF TO object.
      CLEAR t159.
      CLEAR t158.
      t159 = t141.
      TRY.
          t140 ?= t159.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t140 IS NOT BOUND.
        TRY.
            t158 ?= t141.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t158 IS BOUND.
          t140 = t158->source( ).
        ENDIF.
        IF t140 IS NOT BOUND.
          CREATE OBJECT t140.
          t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t140->oval = t141.
        ENDIF.
      ENDIF.
    ENDIF.
    t139 = t140.
    DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t160.
    DATA t161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t161.
    CREATE OBJECT t161.
    t160 = t161.
    DATA t162 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t162.
    DATA(t163) = t136.
    DATA(t164) = t139.
    DATA(t165) = t160.
    t162 = zcl_lnt_st_combi_module=>seq( i_first = t163 i_second = t164 i_rest = t165 ).
    t135 = t162.
    CLEAR t134.
    IF t135 IS BOUND.
      DATA t166 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t166.
      DATA t167 TYPE REF TO object.
      CLEAR t167.
      CLEAR t166.
      t167 = t135.
      TRY.
          t134 ?= t167.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t134 IS NOT BOUND.
        TRY.
            t166 ?= t135.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t166 IS BOUND.
          t134 = t166->source( ).
        ENDIF.
        IF t134 IS NOT BOUND.
          CREATE OBJECT t134.
          t134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t134->oval = t135.
        ENDIF.
      ENDIF.
    ENDIF.
    t133 = zcl_lnt_st_combi_module=>star_prio( i_first = t134 ).
    CLEAR t132.
    IF t133 IS BOUND.
      DATA t168 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t168.
      DATA t169 TYPE REF TO object.
      CLEAR t169.
      CLEAR t168.
      t169 = t133.
      TRY.
          t132 ?= t169.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t132 IS NOT BOUND.
        TRY.
            t168 ?= t133.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t168 IS BOUND.
          t132 = t168->source( ).
        ENDIF.
        IF t132 IS NOT BOUND.
          CREATE OBJECT t132.
          t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t132->oval = t133.
        ENDIF.
      ENDIF.
    ENDIF.
    t131->load( ).
    APPEND t132 TO t131->items.
    t131->save( ).
    DATA(t170) = t129.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t171.
    DATA t172 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t172.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t174.
    DATA t175 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t175.
    DATA(t176) = zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de.
    t175 = zcl_lnt_st_combi_module=>tok( i_t = t176 ).
    CLEAR t174.
    IF t175 IS BOUND.
      DATA t177 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t177.
      DATA t178 TYPE REF TO object.
      CLEAR t178.
      CLEAR t177.
      t178 = t175.
      TRY.
          t174 ?= t178.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t174 IS NOT BOUND.
        TRY.
            t177 ?= t175.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t177 IS BOUND.
          t174 = t177->source( ).
        ENDIF.
        IF t174 IS NOT BOUND.
          CREATE OBJECT t174.
          t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t174->oval = t175.
        ENDIF.
      ENDIF.
    ENDIF.
    t173 = t174.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t179.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t180.
    DATA t181 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t181.
    DATA(t182) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t181 = zcl_lnt_st_combi_module=>tok( i_t = t182 ).
    CLEAR t180.
    IF t181 IS BOUND.
      DATA t183 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t183.
      DATA t184 TYPE REF TO object.
      CLEAR t184.
      CLEAR t183.
      t184 = t181.
      TRY.
          t180 ?= t184.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t180 IS NOT BOUND.
        TRY.
            t183 ?= t181.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t183 IS BOUND.
          t180 = t183->source( ).
        ENDIF.
        IF t180 IS NOT BOUND.
          CREATE OBJECT t180.
          t180->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t180->oval = t181.
        ENDIF.
      ENDIF.
    ENDIF.
    t179 = t180.
    DATA t185 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t185.
    DATA t186 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t186.
    CREATE OBJECT t186.
    t185 = t186.
    DATA t187 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t187.
    DATA(t188) = t173.
    DATA(t189) = t179.
    DATA(t190) = t185.
    t187 = zcl_lnt_st_combi_module=>alt_prio( i_first = t188 i_second = t189 i_rest = t190 ).
    t172 = t187.
    CLEAR t171.
    IF t172 IS BOUND.
      DATA t191 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t191.
      DATA t192 TYPE REF TO object.
      CLEAR t192.
      CLEAR t191.
      t192 = t172.
      TRY.
          t171 ?= t192.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t171 IS NOT BOUND.
        TRY.
            t191 ?= t172.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t191 IS BOUND.
          t171 = t191->source( ).
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
    DATA t193 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t193.
    DATA(t194) = t118.
    DATA(t195) = t124.
    DATA(t196) = t129.
    t193 = zcl_lnt_st_combi_module=>seq( i_first = t194 i_second = t195 i_rest = t196 ).
    t117 = t193.
    t116 = t117.
    DATA t197 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t197.
    DATA t198 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t198.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t199.
    DATA t200 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t200.
    DATA t201 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t201.
    DATA t202 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t202.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t202 = zcl_lnt_version_module=>release_b8cd.
    DATA(t203) = |v740sp02|.
    t201 = t202->get( p0 = t203 ).
    t200 = t201.
    CLEAR t199.
    IF t200 IS BOUND.
      DATA t204 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t204.
      DATA t205 TYPE REF TO object.
      CLEAR t205.
      CLEAR t204.
      t205 = t200.
      TRY.
          t199 ?= t205.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t199 IS NOT BOUND.
        TRY.
            t204 ?= t200.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t204 IS BOUND.
          t199 = t204->source( ).
        ENDIF.
        IF t199 IS NOT BOUND.
          CREATE OBJECT t199.
          t199->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t199->oval = t200.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t206.
    DATA(t207) = t116.
    CLEAR t206.
    IF t207 IS BOUND.
      DATA t208 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t208.
      DATA t209 TYPE REF TO object.
      CLEAR t209.
      CLEAR t208.
      t209 = t207.
      TRY.
          t206 ?= t209.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t206 IS NOT BOUND.
        TRY.
            t208 ?= t207.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t208 IS BOUND.
          t206 = t208->source( ).
        ENDIF.
        IF t206 IS NOT BOUND.
          CREATE OBJECT t206.
          t206->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t206->oval = t207.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t210 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t210.
    DATA(t211) = abap_true.
    IF t211 = abap_true.
      DATA t212 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t212.
      DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t213.
      DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t214.
      DATA(t215) = abap_true.
      IF t215 = abap_true.
        DATA(t216) = |OpenABAP|.
        DATA(t217) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t217->has = abap_true.
        t217->value = t216.
        t214 = t217.
      ELSE.
        DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t218.
        t214 = t218.
      ENDIF.
      t213 = t214.
      t212 = NEW zcl_lnt_iver_options( i_also = t213 ).
      CREATE OBJECT t212->zlnt_view_ownkeys_b0e8086400eb.
      t212->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t219.
      IF t212->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t212->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t219 ).
      ENDIF.
      CREATE OBJECT t212->zlnt_json_ownkeys_70e5fd461788.
      t212->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t220) = |also|.
      DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t221.
      IF t212->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t212->zlnt_json_ownkeys_70e5fd461788->put( p0 = t220 p1 = t221 ).
      ENDIF.
      t210 = t212.
    ELSE.
      DATA t222 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t222.
      t210 = t222.
    ENDIF.
    t198 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t199 i_first = t206 i_opts = t210 ).
    t197 = t198.
    DATA t223 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLEAR t223.
    DATA(t224) = zlnt_runtime_desc_78196487750d=>zlnt_member_d276_d6ee8049769d.
    t223 = t224.
    DATA t225 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t225.
    DATA t226 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t226.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t227.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t228.
    DATA(t229) = |(|.
    CLEAR t228.
    CREATE OBJECT t228.
    t228->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t228->sval = t229.
    t227 = t228.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t230.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t231.
    DATA(t232) = |SELECT|.
    CLEAR t231.
    CREATE OBJECT t231.
    t231->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t231->sval = t232.
    t230 = t231.
    DATA t233 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t233.
    DATA t234 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t234.
    CREATE OBJECT t234.
    t233 = t234.
    DATA(t235) = t233.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t236.
    DATA t237 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t237.
    DATA t238 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t238.
    DATA t239 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t239.
    DATA(t240) = abap_true.
    IF t240 = abap_true.
      DATA(t241) = abap_false.
      DATA(t242) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t242->has = abap_true.
      t242->value = t241.
      t239 = t242.
    ELSE.
      DATA t243 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t243.
      t239 = t243.
    ENDIF.
    t237 = zcl_lnt_select_core_module=>build_select_core( i_allow_into = t238 i_allow_order_by = t239 ).
    CLEAR t236.
    IF t237 IS BOUND.
      DATA t244 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t244.
      DATA t245 TYPE REF TO object.
      CLEAR t245.
      CLEAR t244.
      t245 = t237.
      TRY.
          t236 ?= t245.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t236 IS NOT BOUND.
        TRY.
            t244 ?= t237.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t244 IS BOUND.
          t236 = t244->source( ).
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
    DATA(t246) = t233.
    DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t247.
    DATA(t248) = |)|.
    CLEAR t247.
    CREATE OBJECT t247.
    t247->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t247->sval = t248.
    t246->load( ).
    APPEND t247 TO t246->items.
    t246->save( ).
    DATA t249 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t249.
    DATA(t250) = t227.
    DATA(t251) = t230.
    DATA(t252) = t233.
    t249 = zcl_lnt_st_combi_module=>seq( i_first = t250 i_second = t251 i_rest = t252 ).
    t226 = t249.
    t225 = t226.
    DATA t253 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t253.
    DATA t254 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t254.
    DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t255.
    DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t256.
    DATA(t257) = |IN|.
    CLEAR t256.
    CREATE OBJECT t256.
    t256->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t256->sval = t257.
    t255 = t256.
    DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t258.
    DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t259.
    DATA t260 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t260.
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t261.
    DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t262.
    DATA(t263) = t223.
    CLEAR t262.
    IF t263 IS BOUND.
      CREATE OBJECT t262.
      t262->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t262->cval = t263.
    ENDIF.
    t261 = t262.
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t264.
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t265.
    DATA(t266) = t225.
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
    t264 = t265.
    DATA t269 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t269.
    DATA t270 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t270.
    CREATE OBJECT t270.
    t269 = t270.
    DATA(t271) = t269.
    DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t272.
    DATA(t273) = t5.
    CLEAR t272.
    IF t273 IS BOUND.
      DATA t274 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t274.
      DATA t275 TYPE REF TO object.
      CLEAR t275.
      CLEAR t274.
      t275 = t273.
      TRY.
          t272 ?= t275.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t272 IS NOT BOUND.
        TRY.
            t274 ?= t273.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t274 IS BOUND.
          t272 = t274->source( ).
        ENDIF.
        IF t272 IS NOT BOUND.
          CREATE OBJECT t272.
          t272->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t272->oval = t273.
        ENDIF.
      ENDIF.
    ENDIF.
    t271->load( ).
    APPEND t272 TO t271->items.
    t271->save( ).
    DATA(t276) = t269.
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t277.
    DATA(t278) = t197.
    CLEAR t277.
    IF t278 IS BOUND.
      DATA t279 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t279.
      DATA t280 TYPE REF TO object.
      CLEAR t280.
      CLEAR t279.
      t280 = t278.
      TRY.
          t277 ?= t280.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t277 IS NOT BOUND.
        TRY.
            t279 ?= t278.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t279 IS BOUND.
          t277 = t279->source( ).
        ENDIF.
        IF t277 IS NOT BOUND.
          CREATE OBJECT t277.
          t277->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t277->oval = t278.
        ENDIF.
      ENDIF.
    ENDIF.
    t276->load( ).
    APPEND t277 TO t276->items.
    t276->save( ).
    DATA(t281) = t269.
    DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t282.
    DATA(t283) = zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8.
    CLEAR t282.
    IF t283 IS BOUND.
      CREATE OBJECT t282.
      t282->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t282->cval = t283.
    ENDIF.
    t281->load( ).
    APPEND t282 TO t281->items.
    t281->save( ).
    DATA t284 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t284.
    DATA(t285) = t261.
    DATA(t286) = t264.
    DATA(t287) = t269.
    t284 = zcl_lnt_st_combi_module=>alt_prio( i_first = t285 i_second = t286 i_rest = t287 ).
    t260 = t284.
    CLEAR t259.
    IF t260 IS BOUND.
      DATA t288 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t288.
      DATA t289 TYPE REF TO object.
      CLEAR t289.
      CLEAR t288.
      t289 = t260.
      TRY.
          t259 ?= t289.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t259 IS NOT BOUND.
        TRY.
            t288 ?= t260.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t288 IS BOUND.
          t259 = t288->source( ).
        ENDIF.
        IF t259 IS NOT BOUND.
          CREATE OBJECT t259.
          t259->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t259->oval = t260.
        ENDIF.
      ENDIF.
    ENDIF.
    t258 = t259.
    DATA t290 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t290.
    DATA t291 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t291.
    CREATE OBJECT t291.
    t290 = t291.
    DATA t292 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t292.
    DATA(t293) = t255.
    DATA(t294) = t258.
    DATA(t295) = t290.
    t292 = zcl_lnt_st_combi_module=>seq( i_first = t293 i_second = t294 i_rest = t295 ).
    t254 = t292.
    t253 = t254.
    DATA(t296) = t253.
    result = t296.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d299_0ba2c1ef340d.
  ENDMETHOD.
ENDCLASS.
