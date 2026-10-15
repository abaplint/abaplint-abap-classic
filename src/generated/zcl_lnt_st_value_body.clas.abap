* TS: src/abap/2_statements/expressions/value_body.ts:6:1 ValueBody
CLASS zcl_lnt_st_value_body DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_value_body IMPLEMENTATION.
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
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d112_70ce077ce8e3.
    CLEAR t6.
    IF t7 IS BOUND.
      CREATE OBJECT t6.
      t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t6->cval = t7.
    ENDIF.
    t5 = zcl_lnt_st_combi_module=>opt_prio( i_first = t6 ).
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
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d354_a6deeff18cfd.
    CLEAR t13.
    IF t14 IS BOUND.
      CREATE OBJECT t13.
      t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t13->cval = t14.
    ENDIF.
    t12 = zcl_lnt_st_combi_module=>opt_prio( i_first = t13 ).
    CLEAR t11.
    IF t12 IS BOUND.
      DATA t15 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t15.
      DATA t16 TYPE REF TO object.
      CLEAR t16.
      CLEAR t15.
      t16 = t12.
      TRY.
          t11 ?= t16.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t11 IS NOT BOUND.
        TRY.
            t15 ?= t12.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t15 IS BOUND.
          t11 = t15->source( ).
        ENDIF.
        IF t11 IS NOT BOUND.
          CREATE OBJECT t11.
          t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t11->oval = t12.
        ENDIF.
      ENDIF.
    ENDIF.
    t10 = t11.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t18.
    CREATE OBJECT t18.
    t17 = t18.
    DATA(t19) = t17.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d182_555fcb96e22f.
    CLEAR t22.
    IF t23 IS BOUND.
      CREATE OBJECT t22.
      t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t22->cval = t23.
    ENDIF.
    t21 = zcl_lnt_st_combi_module=>star_prio( i_first = t22 ).
    CLEAR t20.
    IF t21 IS BOUND.
      DATA t24 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t24.
      DATA t25 TYPE REF TO object.
      CLEAR t25.
      CLEAR t24.
      t25 = t21.
      TRY.
          t20 ?= t25.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t20 IS NOT BOUND.
        TRY.
            t24 ?= t21.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t24 IS BOUND.
          t20 = t24->source( ).
        ENDIF.
        IF t20 IS NOT BOUND.
          CREATE OBJECT t20.
          t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t20->oval = t21.
        ENDIF.
      ENDIF.
    ENDIF.
    t19->load( ).
    APPEND t20 TO t19->items.
    t19->save( ).
    DATA(t26) = t17.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA t30 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA(t33) = zlnt_runtime_desc_78196487750d=>zlnt_member_d168_9f6549d76396.
    CLEAR t32.
    IF t33 IS BOUND.
      CREATE OBJECT t32.
      t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t32->cval = t33.
    ENDIF.
    t31 = t32.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d355_f5f8042a98ef.
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
    t39 = zcl_lnt_st_combi_module=>alt_prio( i_first = t40 i_second = t41 i_rest = t42 ).
    t30 = t39.
    CLEAR t29.
    IF t30 IS BOUND.
      DATA t43 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t43.
      DATA t44 TYPE REF TO object.
      CLEAR t44.
      CLEAR t43.
      t44 = t30.
      TRY.
          t29 ?= t44.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t29 IS NOT BOUND.
        TRY.
            t43 ?= t30.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t43 IS BOUND.
          t29 = t43->source( ).
        ENDIF.
        IF t29 IS NOT BOUND.
          CREATE OBJECT t29.
          t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t29->oval = t30.
        ENDIF.
      ENDIF.
    ENDIF.
    t28 = zcl_lnt_st_combi_module=>plus_prio( i_first = t29 ).
    CLEAR t27.
    IF t28 IS BOUND.
      DATA t45 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t45.
      DATA t46 TYPE REF TO object.
      CLEAR t46.
      CLEAR t45.
      t46 = t28.
      TRY.
          t27 ?= t46.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t27 IS NOT BOUND.
        TRY.
            t45 ?= t28.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t45 IS BOUND.
          t27 = t45->source( ).
        ENDIF.
        IF t27 IS NOT BOUND.
          CREATE OBJECT t27.
          t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t27->oval = t28.
        ENDIF.
      ENDIF.
    ENDIF.
    t26->load( ).
    APPEND t27 TO t26->items.
    t26->save( ).
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t47.
    DATA(t48) = t3.
    DATA(t49) = t10.
    DATA(t50) = t17.
    t47 = zcl_lnt_st_combi_module=>seq( i_first = t48 i_second = t49 i_rest = t50 ).
    t2 = t47.
    t1 = t2.
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t51.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA t54 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t54.
    DATA t55 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t56.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t56 = zcl_lnt_version_module=>release_b8cd.
    DATA(t57) = |v740sp08|.
    t55 = t56->get( p0 = t57 ).
    t54 = t55.
    CLEAR t53.
    IF t54 IS BOUND.
      DATA t58 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t58.
      DATA t59 TYPE REF TO object.
      CLEAR t59.
      CLEAR t58.
      t59 = t54.
      TRY.
          t53 ?= t59.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t53 IS NOT BOUND.
        TRY.
            t58 ?= t54.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t58 IS BOUND.
          t53 = t58->source( ).
        ENDIF.
        IF t53 IS NOT BOUND.
          CREATE OBJECT t53.
          t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t53->oval = t54.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA(t64) = |OPTIONAL|.
    CLEAR t63.
    CREATE OBJECT t63.
    t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t63->sval = t64.
    t62 = t63.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA(t70) = |DEFAULT|.
    CLEAR t69.
    CREATE OBJECT t69.
    t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t69->sval = t70.
    t68 = t69.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA(t73) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t72.
    IF t73 IS BOUND.
      CREATE OBJECT t72.
      t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t72->cval = t73.
    ENDIF.
    t71 = t72.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t75.
    CREATE OBJECT t75.
    t74 = t75.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t76.
    DATA(t77) = t68.
    DATA(t78) = t71.
    DATA(t79) = t74.
    t76 = zcl_lnt_st_combi_module=>seq( i_first = t77 i_second = t78 i_rest = t79 ).
    t67 = t76.
    CLEAR t66.
    IF t67 IS BOUND.
      DATA t80 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t80.
      DATA t81 TYPE REF TO object.
      CLEAR t81.
      CLEAR t80.
      t81 = t67.
      TRY.
          t66 ?= t81.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t66 IS NOT BOUND.
        TRY.
            t80 ?= t67.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t80 IS BOUND.
          t66 = t80->source( ).
        ENDIF.
        IF t66 IS NOT BOUND.
          CREATE OBJECT t66.
          t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t66->oval = t67.
        ENDIF.
      ENDIF.
    ENDIF.
    t65 = t66.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t83.
    CREATE OBJECT t83.
    t82 = t83.
    DATA t84 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t84.
    DATA(t85) = t62.
    DATA(t86) = t65.
    DATA(t87) = t82.
    t84 = zcl_lnt_st_combi_module=>alt_prio( i_first = t85 i_second = t86 i_rest = t87 ).
    t61 = t84.
    CLEAR t60.
    IF t61 IS BOUND.
      DATA t88 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t88.
      DATA t89 TYPE REF TO object.
      CLEAR t89.
      CLEAR t88.
      t89 = t61.
      TRY.
          t60 ?= t89.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t60 IS NOT BOUND.
        TRY.
            t88 ?= t61.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t88 IS BOUND.
          t60 = t88->source( ).
        ENDIF.
        IF t60 IS NOT BOUND.
          CREATE OBJECT t60.
          t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t60->oval = t61.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t90 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t90.
    DATA(t91) = abap_true.
    IF t91 = abap_true.
      DATA t92 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t92.
      DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t93.
      DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t94.
      DATA(t95) = abap_true.
      IF t95 = abap_true.
        DATA(t96) = |OpenABAP|.
        DATA(t97) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t97->has = abap_true.
        t97->value = t96.
        t94 = t97.
      ELSE.
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t98.
        t94 = t98.
      ENDIF.
      t93 = t94.
      t92 = NEW zcl_lnt_iver_options( i_also = t93 ).
      CREATE OBJECT t92->zlnt_view_ownkeys_b0e8086400eb.
      t92->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t99.
      IF t92->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t92->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t99 ).
      ENDIF.
      CREATE OBJECT t92->zlnt_json_ownkeys_70e5fd461788.
      t92->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t100) = |also|.
      DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t101.
      IF t92->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t92->zlnt_json_ownkeys_70e5fd461788->put( p0 = t100 p1 = t101 ).
      ENDIF.
      t90 = t92.
    ELSE.
      DATA t102 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t102.
      t90 = t102.
    ENDIF.
    t52 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t53 i_first = t60 i_opts = t90 ).
    t51 = t52.
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t103.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA t105 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t105.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA(t108) = t1.
    CLEAR t107.
    IF t108 IS BOUND.
      DATA t109 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t109.
      DATA t110 TYPE REF TO object.
      CLEAR t110.
      CLEAR t109.
      t110 = t108.
      TRY.
          t107 ?= t110.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t107 IS NOT BOUND.
        TRY.
            t109 ?= t108.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t109 IS BOUND.
          t107 = t109->source( ).
        ENDIF.
        IF t107 IS NOT BOUND.
          CREATE OBJECT t107.
          t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t107->oval = t108.
        ENDIF.
      ENDIF.
    ENDIF.
    t106 = t107.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t112.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t113.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA(t116) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t115.
    IF t116 IS BOUND.
      CREATE OBJECT t115.
      t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t115->cval = t116.
    ENDIF.
    t114 = t115.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t119.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    DATA(t121) = t51.
    CLEAR t120.
    IF t121 IS BOUND.
      DATA t122 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t122.
      DATA t123 TYPE REF TO object.
      CLEAR t123.
      CLEAR t122.
      t123 = t121.
      TRY.
          t120 ?= t123.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t120 IS NOT BOUND.
        TRY.
            t122 ?= t121.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t122 IS BOUND.
          t120 = t122->source( ).
        ENDIF.
        IF t120 IS NOT BOUND.
          CREATE OBJECT t120.
          t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t120->oval = t121.
        ENDIF.
      ENDIF.
    ENDIF.
    t119 = zcl_lnt_st_combi_module=>opt_prio( i_first = t120 ).
    CLEAR t118.
    IF t119 IS BOUND.
      DATA t124 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t124.
      DATA t125 TYPE REF TO object.
      CLEAR t125.
      CLEAR t124.
      t125 = t119.
      TRY.
          t118 ?= t125.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t118 IS NOT BOUND.
        TRY.
            t124 ?= t119.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t124 IS BOUND.
          t118 = t124->source( ).
        ENDIF.
        IF t118 IS NOT BOUND.
          CREATE OBJECT t118.
          t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t118->oval = t119.
        ENDIF.
      ENDIF.
    ENDIF.
    t117 = t118.
    DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t126.
    DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t127.
    CREATE OBJECT t127.
    t126 = t127.
    DATA t128 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t128.
    DATA(t129) = t114.
    DATA(t130) = t117.
    DATA(t131) = t126.
    t128 = zcl_lnt_st_combi_module=>seq( i_first = t129 i_second = t130 i_rest = t131 ).
    t113 = t128.
    CLEAR t112.
    IF t113 IS BOUND.
      DATA t132 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t132.
      DATA t133 TYPE REF TO object.
      CLEAR t133.
      CLEAR t132.
      t133 = t113.
      TRY.
          t112 ?= t133.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t112 IS NOT BOUND.
        TRY.
            t132 ?= t113.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t132 IS BOUND.
          t112 = t132->source( ).
        ENDIF.
        IF t112 IS NOT BOUND.
          CREATE OBJECT t112.
          t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t112->oval = t113.
        ENDIF.
      ENDIF.
    ENDIF.
    t111 = t112.
    DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t134.
    DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t135.
    CREATE OBJECT t135.
    t134 = t135.
    DATA t136 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t136.
    DATA(t137) = t106.
    DATA(t138) = t111.
    DATA(t139) = t134.
    t136 = zcl_lnt_st_combi_module=>alt_prio( i_first = t137 i_second = t138 i_rest = t139 ).
    t105 = t136.
    CLEAR t104.
    IF t105 IS BOUND.
      DATA t140 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t140.
      DATA t141 TYPE REF TO object.
      CLEAR t141.
      CLEAR t140.
      t141 = t105.
      TRY.
          t104 ?= t141.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t104 IS NOT BOUND.
        TRY.
            t140 ?= t105.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t140 IS BOUND.
          t104 = t140->source( ).
        ENDIF.
        IF t104 IS NOT BOUND.
          CREATE OBJECT t104.
          t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t104->oval = t105.
        ENDIF.
      ENDIF.
    ENDIF.
    t103 = zcl_lnt_st_combi_module=>opt_prio( i_first = t104 ).
    result = t103.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d280_c851733508cf.
  ENDMETHOD.
ENDCLASS.
