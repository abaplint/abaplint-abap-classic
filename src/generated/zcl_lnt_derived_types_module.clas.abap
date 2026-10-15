* TS: src/abap/2_statements/expressions/_derived_types.ts.module module
CLASS zcl_lnt_derived_types_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS common_derived_types RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-METHODS derived_types_alt IMPORTING i_extra TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-DATA zlnt_builtin_init_97883fd3a7a5 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_7b8174c20e26.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_derived_types_module IMPLEMENTATION.
  METHOD common_derived_types.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
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
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d162_57231f39acd0.
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
    t11 = zcl_lnt_st_combi_module=>alt( i_first = t12 i_second = t13 i_rest = t14 ).
    t2 = t11.
    t1 = t2.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t17.
    CREATE OBJECT t17.
    t16 = t17.
    DATA(t18) = t16.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t21.
    DATA t22 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t23.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t23 = zcl_lnt_version_module=>release_b8cd.
    DATA(t24) = |v774|.
    t22 = t23->get( p0 = t24 ).
    t21 = t22.
    CLEAR t20.
    IF t21 IS BOUND.
      DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t25.
      DATA t26 TYPE REF TO object.
      CLEAR t26.
      CLEAR t25.
      t26 = t21.
      TRY.
          t20 ?= t26.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t20 IS NOT BOUND.
        TRY.
            t25 ?= t21.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t25 IS BOUND.
          t20 = t25->source( ).
        ENDIF.
        IF t20 IS NOT BOUND.
          CREATE OBJECT t20.
          t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t20->oval = t21.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA(t31) = |FAILED LATE|.
    CLEAR t30.
    CREATE OBJECT t30.
    t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t30->sval = t31.
    t29 = t30.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA(t34) = t1.
    CLEAR t33.
    IF t34 IS BOUND.
      DATA t35 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t35.
      DATA t36 TYPE REF TO object.
      CLEAR t36.
      CLEAR t35.
      t36 = t34.
      TRY.
          t33 ?= t36.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t33 IS NOT BOUND.
        TRY.
            t35 ?= t34.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t35 IS BOUND.
          t33 = t35->source( ).
        ENDIF.
        IF t33 IS NOT BOUND.
          CREATE OBJECT t33.
          t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t33->oval = t34.
        ENDIF.
      ENDIF.
    ENDIF.
    t32 = t33.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t38.
    CREATE OBJECT t38.
    t37 = t38.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t39.
    DATA(t40) = t29.
    DATA(t41) = t32.
    DATA(t42) = t37.
    t39 = zcl_lnt_st_combi_module=>seq( i_first = t40 i_second = t41 i_rest = t42 ).
    t28 = t39.
    CLEAR t27.
    IF t28 IS BOUND.
      DATA t43 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t43.
      DATA t44 TYPE REF TO object.
      CLEAR t44.
      CLEAR t43.
      t44 = t28.
      TRY.
          t27 ?= t44.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t27 IS NOT BOUND.
        TRY.
            t43 ?= t28.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t43 IS BOUND.
          t27 = t43->source( ).
        ENDIF.
        IF t27 IS NOT BOUND.
          CREATE OBJECT t27.
          t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t27->oval = t28.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t45 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t45.
    DATA(t46) = abap_true.
    IF t46 = abap_true.
      DATA t47 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t47.
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t48.
      DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t49.
      DATA(t50) = abap_true.
      IF t50 = abap_true.
        DATA(t51) = |OpenABAP|.
        DATA(t52) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t52->has = abap_true.
        t52->value = t51.
        t49 = t52.
      ELSE.
        DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t53.
        t49 = t53.
      ENDIF.
      t48 = t49.
      t47 = NEW zcl_lnt_iver_options( i_also = t48 ).
      CREATE OBJECT t47->zlnt_view_ownkeys_b0e8086400eb.
      t47->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t54.
      IF t47->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t47->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t54 ).
      ENDIF.
      CREATE OBJECT t47->zlnt_json_ownkeys_70e5fd461788.
      t47->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t55) = |also|.
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t56.
      IF t47->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t47->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
      ENDIF.
      t45 = t47.
    ELSE.
      DATA t57 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t57.
      t45 = t57.
    ENDIF.
    t19 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t20 i_first = t27 i_opts = t45 ).
    t18->load( ).
    APPEND t19 TO t18->items.
    t18->save( ).
    DATA(t58) = t16.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA t61 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t61.
    DATA t62 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t63.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t63 = zcl_lnt_version_module=>release_b8cd.
    DATA(t64) = |v774|.
    t62 = t63->get( p0 = t64 ).
    t61 = t62.
    CLEAR t60.
    IF t61 IS BOUND.
      DATA t65 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t65.
      DATA t66 TYPE REF TO object.
      CLEAR t66.
      CLEAR t65.
      t66 = t61.
      TRY.
          t60 ?= t66.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t60 IS NOT BOUND.
        TRY.
            t65 ?= t61.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t65 IS BOUND.
          t60 = t65->source( ).
        ENDIF.
        IF t60 IS NOT BOUND.
          CREATE OBJECT t60.
          t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t60->oval = t61.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA t68 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t68.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA(t71) = |MAPPED LATE|.
    CLEAR t70.
    CREATE OBJECT t70.
    t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t70->sval = t71.
    t69 = t70.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA(t74) = t1.
    CLEAR t73.
    IF t74 IS BOUND.
      DATA t75 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t75.
      DATA t76 TYPE REF TO object.
      CLEAR t76.
      CLEAR t75.
      t76 = t74.
      TRY.
          t73 ?= t76.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t73 IS NOT BOUND.
        TRY.
            t75 ?= t74.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t75 IS BOUND.
          t73 = t75->source( ).
        ENDIF.
        IF t73 IS NOT BOUND.
          CREATE OBJECT t73.
          t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t73->oval = t74.
        ENDIF.
      ENDIF.
    ENDIF.
    t72 = t73.
    DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t78.
    CREATE OBJECT t78.
    t77 = t78.
    DATA t79 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t79.
    DATA(t80) = t69.
    DATA(t81) = t72.
    DATA(t82) = t77.
    t79 = zcl_lnt_st_combi_module=>seq( i_first = t80 i_second = t81 i_rest = t82 ).
    t68 = t79.
    CLEAR t67.
    IF t68 IS BOUND.
      DATA t83 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t83.
      DATA t84 TYPE REF TO object.
      CLEAR t84.
      CLEAR t83.
      t84 = t68.
      TRY.
          t67 ?= t84.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t67 IS NOT BOUND.
        TRY.
            t83 ?= t68.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t83 IS BOUND.
          t67 = t83->source( ).
        ENDIF.
        IF t67 IS NOT BOUND.
          CREATE OBJECT t67.
          t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t67->oval = t68.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t85 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t85.
    DATA(t86) = abap_true.
    IF t86 = abap_true.
      DATA t87 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t87.
      DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t88.
      DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t89.
      DATA(t90) = abap_true.
      IF t90 = abap_true.
        DATA(t91) = |OpenABAP|.
        DATA(t92) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t92->has = abap_true.
        t92->value = t91.
        t89 = t92.
      ELSE.
        DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t93.
        t89 = t93.
      ENDIF.
      t88 = t89.
      t87 = NEW zcl_lnt_iver_options( i_also = t88 ).
      CREATE OBJECT t87->zlnt_view_ownkeys_b0e8086400eb.
      t87->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t94.
      IF t87->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t87->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t94 ).
      ENDIF.
      CREATE OBJECT t87->zlnt_json_ownkeys_70e5fd461788.
      t87->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t95) = |also|.
      DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t96.
      IF t87->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t87->zlnt_json_ownkeys_70e5fd461788->put( p0 = t95 p1 = t96 ).
      ENDIF.
      t85 = t87.
    ELSE.
      DATA t97 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t97.
      t85 = t97.
    ENDIF.
    t59 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t60 i_first = t67 i_opts = t85 ).
    t58->load( ).
    APPEND t59 TO t58->items.
    t58->save( ).
    DATA(t98) = t16.
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA t101 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t101.
    DATA t102 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t103.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t103 = zcl_lnt_version_module=>release_b8cd.
    DATA(t104) = |v774|.
    t102 = t103->get( p0 = t104 ).
    t101 = t102.
    CLEAR t100.
    IF t101 IS BOUND.
      DATA t105 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t105.
      DATA t106 TYPE REF TO object.
      CLEAR t106.
      CLEAR t105.
      t106 = t101.
      TRY.
          t100 ?= t106.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t100 IS NOT BOUND.
        TRY.
            t105 ?= t101.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t105 IS BOUND.
          t100 = t105->source( ).
        ENDIF.
        IF t100 IS NOT BOUND.
          CREATE OBJECT t100.
          t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t100->oval = t101.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t108.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t110.
    DATA(t111) = |REPORTED LATE|.
    CLEAR t110.
    CREATE OBJECT t110.
    t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t110->sval = t111.
    t109 = t110.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t112.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA(t114) = t1.
    CLEAR t113.
    IF t114 IS BOUND.
      DATA t115 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t115.
      DATA t116 TYPE REF TO object.
      CLEAR t116.
      CLEAR t115.
      t116 = t114.
      TRY.
          t113 ?= t116.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t113 IS NOT BOUND.
        TRY.
            t115 ?= t114.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t115 IS BOUND.
          t113 = t115->source( ).
        ENDIF.
        IF t113 IS NOT BOUND.
          CREATE OBJECT t113.
          t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t113->oval = t114.
        ENDIF.
      ENDIF.
    ENDIF.
    t112 = t113.
    DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t117.
    DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t118.
    CREATE OBJECT t118.
    t117 = t118.
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t119.
    DATA(t120) = t109.
    DATA(t121) = t112.
    DATA(t122) = t117.
    t119 = zcl_lnt_st_combi_module=>seq( i_first = t120 i_second = t121 i_rest = t122 ).
    t108 = t119.
    CLEAR t107.
    IF t108 IS BOUND.
      DATA t123 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t123.
      DATA t124 TYPE REF TO object.
      CLEAR t124.
      CLEAR t123.
      t124 = t108.
      TRY.
          t107 ?= t124.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t107 IS NOT BOUND.
        TRY.
            t123 ?= t108.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t123 IS BOUND.
          t107 = t123->source( ).
        ENDIF.
        IF t107 IS NOT BOUND.
          CREATE OBJECT t107.
          t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t107->oval = t108.
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
    t99 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t100 i_first = t107 i_opts = t125 ).
    t98->load( ).
    APPEND t99 TO t98->items.
    t98->save( ).
    DATA(t138) = t16.
    DATA t139 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t139.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t140.
    DATA t141 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t141.
    DATA t142 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t143.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t143 = zcl_lnt_version_module=>release_b8cd.
    DATA(t144) = |v777|.
    t142 = t143->get( p0 = t144 ).
    t141 = t142.
    CLEAR t140.
    IF t141 IS BOUND.
      DATA t145 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t145.
      DATA t146 TYPE REF TO object.
      CLEAR t146.
      CLEAR t145.
      t146 = t141.
      TRY.
          t140 ?= t146.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t140 IS NOT BOUND.
        TRY.
            t145 ?= t141.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t145 IS BOUND.
          t140 = t145->source( ).
        ENDIF.
        IF t140 IS NOT BOUND.
          CREATE OBJECT t140.
          t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t140->oval = t141.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t147.
    DATA t148 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t148.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t150.
    DATA(t151) = |FAILED EARLY|.
    CLEAR t150.
    CREATE OBJECT t150.
    t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t150->sval = t151.
    t149 = t150.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t152.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t153.
    DATA(t154) = t1.
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
    DATA t157 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t157.
    DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t158.
    CREATE OBJECT t158.
    t157 = t158.
    DATA t159 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t159.
    DATA(t160) = t149.
    DATA(t161) = t152.
    DATA(t162) = t157.
    t159 = zcl_lnt_st_combi_module=>seq( i_first = t160 i_second = t161 i_rest = t162 ).
    t148 = t159.
    CLEAR t147.
    IF t148 IS BOUND.
      DATA t163 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t163.
      DATA t164 TYPE REF TO object.
      CLEAR t164.
      CLEAR t163.
      t164 = t148.
      TRY.
          t147 ?= t164.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t147 IS NOT BOUND.
        TRY.
            t163 ?= t148.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t163 IS BOUND.
          t147 = t163->source( ).
        ENDIF.
        IF t147 IS NOT BOUND.
          CREATE OBJECT t147.
          t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t147->oval = t148.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t165 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t165.
    DATA(t166) = abap_true.
    IF t166 = abap_true.
      DATA t167 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t167.
      DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t168.
      DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t169.
      DATA(t170) = abap_true.
      IF t170 = abap_true.
        DATA(t171) = |OpenABAP|.
        DATA(t172) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t172->has = abap_true.
        t172->value = t171.
        t169 = t172.
      ELSE.
        DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t173.
        t169 = t173.
      ENDIF.
      t168 = t169.
      t167 = NEW zcl_lnt_iver_options( i_also = t168 ).
      CREATE OBJECT t167->zlnt_view_ownkeys_b0e8086400eb.
      t167->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t174.
      IF t167->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t167->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t174 ).
      ENDIF.
      CREATE OBJECT t167->zlnt_json_ownkeys_70e5fd461788.
      t167->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t175) = |also|.
      DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t176.
      IF t167->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t167->zlnt_json_ownkeys_70e5fd461788->put( p0 = t175 p1 = t176 ).
      ENDIF.
      t165 = t167.
    ELSE.
      DATA t177 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t177.
      t165 = t177.
    ENDIF.
    t139 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t140 i_first = t147 i_opts = t165 ).
    t138->load( ).
    APPEND t139 TO t138->items.
    t138->save( ).
    DATA(t178) = t16.
    DATA t179 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t179.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t180.
    DATA t181 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t181.
    DATA t182 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t182.
    DATA t183 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t183.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t183 = zcl_lnt_version_module=>release_b8cd.
    DATA(t184) = |v777|.
    t182 = t183->get( p0 = t184 ).
    t181 = t182.
    CLEAR t180.
    IF t181 IS BOUND.
      DATA t185 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t185.
      DATA t186 TYPE REF TO object.
      CLEAR t186.
      CLEAR t185.
      t186 = t181.
      TRY.
          t180 ?= t186.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t180 IS NOT BOUND.
        TRY.
            t185 ?= t181.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t185 IS BOUND.
          t180 = t185->source( ).
        ENDIF.
        IF t180 IS NOT BOUND.
          CREATE OBJECT t180.
          t180->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t180->oval = t181.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t187.
    DATA t188 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t188.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t189.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t190.
    DATA(t191) = |MAPPED EARLY|.
    CLEAR t190.
    CREATE OBJECT t190.
    t190->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t190->sval = t191.
    t189 = t190.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t192.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t193.
    DATA(t194) = t1.
    CLEAR t193.
    IF t194 IS BOUND.
      DATA t195 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t195.
      DATA t196 TYPE REF TO object.
      CLEAR t196.
      CLEAR t195.
      t196 = t194.
      TRY.
          t193 ?= t196.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t193 IS NOT BOUND.
        TRY.
            t195 ?= t194.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t195 IS BOUND.
          t193 = t195->source( ).
        ENDIF.
        IF t193 IS NOT BOUND.
          CREATE OBJECT t193.
          t193->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t193->oval = t194.
        ENDIF.
      ENDIF.
    ENDIF.
    t192 = t193.
    DATA t197 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t197.
    DATA t198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t198.
    CREATE OBJECT t198.
    t197 = t198.
    DATA t199 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t199.
    DATA(t200) = t189.
    DATA(t201) = t192.
    DATA(t202) = t197.
    t199 = zcl_lnt_st_combi_module=>seq( i_first = t200 i_second = t201 i_rest = t202 ).
    t188 = t199.
    CLEAR t187.
    IF t188 IS BOUND.
      DATA t203 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t203.
      DATA t204 TYPE REF TO object.
      CLEAR t204.
      CLEAR t203.
      t204 = t188.
      TRY.
          t187 ?= t204.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t187 IS NOT BOUND.
        TRY.
            t203 ?= t188.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t203 IS BOUND.
          t187 = t203->source( ).
        ENDIF.
        IF t187 IS NOT BOUND.
          CREATE OBJECT t187.
          t187->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t187->oval = t188.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t205 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t205.
    DATA(t206) = abap_true.
    IF t206 = abap_true.
      DATA t207 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t207.
      DATA t208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t208.
      DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t209.
      DATA(t210) = abap_true.
      IF t210 = abap_true.
        DATA(t211) = |OpenABAP|.
        DATA(t212) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t212->has = abap_true.
        t212->value = t211.
        t209 = t212.
      ELSE.
        DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t213.
        t209 = t213.
      ENDIF.
      t208 = t209.
      t207 = NEW zcl_lnt_iver_options( i_also = t208 ).
      CREATE OBJECT t207->zlnt_view_ownkeys_b0e8086400eb.
      t207->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t214.
      IF t207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t214 ).
      ENDIF.
      CREATE OBJECT t207->zlnt_json_ownkeys_70e5fd461788.
      t207->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t215) = |also|.
      DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t216.
      IF t207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = t215 p1 = t216 ).
      ENDIF.
      t205 = t207.
    ELSE.
      DATA t217 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t217.
      t205 = t217.
    ENDIF.
    t179 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t180 i_first = t187 i_opts = t205 ).
    t178->load( ).
    APPEND t179 TO t178->items.
    t178->save( ).
    DATA(t218) = t16.
    DATA t219 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t219.
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t220.
    DATA t221 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t221.
    DATA t222 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t222.
    DATA t223 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t223.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t223 = zcl_lnt_version_module=>release_b8cd.
    DATA(t224) = |v777|.
    t222 = t223->get( p0 = t224 ).
    t221 = t222.
    CLEAR t220.
    IF t221 IS BOUND.
      DATA t225 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t225.
      DATA t226 TYPE REF TO object.
      CLEAR t226.
      CLEAR t225.
      t226 = t221.
      TRY.
          t220 ?= t226.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t220 IS NOT BOUND.
        TRY.
            t225 ?= t221.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t225 IS BOUND.
          t220 = t225->source( ).
        ENDIF.
        IF t220 IS NOT BOUND.
          CREATE OBJECT t220.
          t220->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t220->oval = t221.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t227.
    DATA t228 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t228.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t229.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t230.
    DATA(t231) = |REPORTED EARLY|.
    CLEAR t230.
    CREATE OBJECT t230.
    t230->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t230->sval = t231.
    t229 = t230.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t232.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t233.
    DATA(t234) = t1.
    CLEAR t233.
    IF t234 IS BOUND.
      DATA t235 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t235.
      DATA t236 TYPE REF TO object.
      CLEAR t236.
      CLEAR t235.
      t236 = t234.
      TRY.
          t233 ?= t236.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t233 IS NOT BOUND.
        TRY.
            t235 ?= t234.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t235 IS BOUND.
          t233 = t235->source( ).
        ENDIF.
        IF t233 IS NOT BOUND.
          CREATE OBJECT t233.
          t233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t233->oval = t234.
        ENDIF.
      ENDIF.
    ENDIF.
    t232 = t233.
    DATA t237 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t237.
    DATA t238 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t238.
    CREATE OBJECT t238.
    t237 = t238.
    DATA t239 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t239.
    DATA(t240) = t229.
    DATA(t241) = t232.
    DATA(t242) = t237.
    t239 = zcl_lnt_st_combi_module=>seq( i_first = t240 i_second = t241 i_rest = t242 ).
    t228 = t239.
    CLEAR t227.
    IF t228 IS BOUND.
      DATA t243 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t243.
      DATA t244 TYPE REF TO object.
      CLEAR t244.
      CLEAR t243.
      t244 = t228.
      TRY.
          t227 ?= t244.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t227 IS NOT BOUND.
        TRY.
            t243 ?= t228.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t243 IS BOUND.
          t227 = t243->source( ).
        ENDIF.
        IF t227 IS NOT BOUND.
          CREATE OBJECT t227.
          t227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t227->oval = t228.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t245 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t245.
    DATA(t246) = abap_true.
    IF t246 = abap_true.
      DATA t247 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t247.
      DATA t248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t248.
      DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t249.
      DATA(t250) = abap_true.
      IF t250 = abap_true.
        DATA(t251) = |OpenABAP|.
        DATA(t252) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t252->has = abap_true.
        t252->value = t251.
        t249 = t252.
      ELSE.
        DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t253.
        t249 = t253.
      ENDIF.
      t248 = t249.
      t247 = NEW zcl_lnt_iver_options( i_also = t248 ).
      CREATE OBJECT t247->zlnt_view_ownkeys_b0e8086400eb.
      t247->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t254.
      IF t247->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t247->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t254 ).
      ENDIF.
      CREATE OBJECT t247->zlnt_json_ownkeys_70e5fd461788.
      t247->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t255) = |also|.
      DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t256.
      IF t247->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t247->zlnt_json_ownkeys_70e5fd461788->put( p0 = t255 p1 = t256 ).
      ENDIF.
      t245 = t247.
    ELSE.
      DATA t257 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t257.
      t245 = t257.
    ENDIF.
    t219 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t220 i_first = t227 i_opts = t245 ).
    t218->load( ).
    APPEND t219 TO t218->items.
    t218->save( ).
    DATA(t258) = t16.
    DATA t259 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t259.
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t260.
    DATA t261 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t261.
    DATA t262 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t262.
    DATA t263 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t263.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t263 = zcl_lnt_version_module=>release_b8cd.
    DATA(t264) = |v776|.
    t262 = t263->get( p0 = t264 ).
    t261 = t262.
    CLEAR t260.
    IF t261 IS BOUND.
      DATA t265 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t265.
      DATA t266 TYPE REF TO object.
      CLEAR t266.
      CLEAR t265.
      t266 = t261.
      TRY.
          t260 ?= t266.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t260 IS NOT BOUND.
        TRY.
            t265 ?= t261.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t265 IS BOUND.
          t260 = t265->source( ).
        ENDIF.
        IF t260 IS NOT BOUND.
          CREATE OBJECT t260.
          t260->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t260->oval = t261.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t267.
    DATA t268 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t268.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t269.
    DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t270.
    DATA(t271) = |FAILED|.
    CLEAR t270.
    CREATE OBJECT t270.
    t270->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t270->sval = t271.
    t269 = t270.
    DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t272.
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t273.
    DATA(t274) = t1.
    CLEAR t273.
    IF t274 IS BOUND.
      DATA t275 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t275.
      DATA t276 TYPE REF TO object.
      CLEAR t276.
      CLEAR t275.
      t276 = t274.
      TRY.
          t273 ?= t276.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t273 IS NOT BOUND.
        TRY.
            t275 ?= t274.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t275 IS BOUND.
          t273 = t275->source( ).
        ENDIF.
        IF t273 IS NOT BOUND.
          CREATE OBJECT t273.
          t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t273->oval = t274.
        ENDIF.
      ENDIF.
    ENDIF.
    t272 = t273.
    DATA t277 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t277.
    DATA t278 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t278.
    CREATE OBJECT t278.
    t277 = t278.
    DATA t279 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t279.
    DATA(t280) = t269.
    DATA(t281) = t272.
    DATA(t282) = t277.
    t279 = zcl_lnt_st_combi_module=>seq( i_first = t280 i_second = t281 i_rest = t282 ).
    t268 = t279.
    CLEAR t267.
    IF t268 IS BOUND.
      DATA t283 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t283.
      DATA t284 TYPE REF TO object.
      CLEAR t284.
      CLEAR t283.
      t284 = t268.
      TRY.
          t267 ?= t284.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t267 IS NOT BOUND.
        TRY.
            t283 ?= t268.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t283 IS BOUND.
          t267 = t283->source( ).
        ENDIF.
        IF t267 IS NOT BOUND.
          CREATE OBJECT t267.
          t267->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t267->oval = t268.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t285 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t285.
    DATA(t286) = abap_true.
    IF t286 = abap_true.
      DATA t287 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t287.
      DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t288.
      DATA t289 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t289.
      DATA(t290) = abap_true.
      IF t290 = abap_true.
        DATA(t291) = |OpenABAP|.
        DATA(t292) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t292->has = abap_true.
        t292->value = t291.
        t289 = t292.
      ELSE.
        DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t293.
        t289 = t293.
      ENDIF.
      t288 = t289.
      t287 = NEW zcl_lnt_iver_options( i_also = t288 ).
      CREATE OBJECT t287->zlnt_view_ownkeys_b0e8086400eb.
      t287->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t294.
      IF t287->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t287->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t294 ).
      ENDIF.
      CREATE OBJECT t287->zlnt_json_ownkeys_70e5fd461788.
      t287->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t295) = |also|.
      DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t296.
      IF t287->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t287->zlnt_json_ownkeys_70e5fd461788->put( p0 = t295 p1 = t296 ).
      ENDIF.
      t285 = t287.
    ELSE.
      DATA t297 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t297.
      t285 = t297.
    ENDIF.
    t259 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t260 i_first = t267 i_opts = t285 ).
    t258->load( ).
    APPEND t259 TO t258->items.
    t258->save( ).
    DATA(t298) = t16.
    DATA t299 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t299.
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t300.
    DATA t301 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t301.
    DATA t302 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t302.
    DATA t303 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t303.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t303 = zcl_lnt_version_module=>release_b8cd.
    DATA(t304) = |v776|.
    t302 = t303->get( p0 = t304 ).
    t301 = t302.
    CLEAR t300.
    IF t301 IS BOUND.
      DATA t305 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t305.
      DATA t306 TYPE REF TO object.
      CLEAR t306.
      CLEAR t305.
      t306 = t301.
      TRY.
          t300 ?= t306.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t300 IS NOT BOUND.
        TRY.
            t305 ?= t301.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t305 IS BOUND.
          t300 = t305->source( ).
        ENDIF.
        IF t300 IS NOT BOUND.
          CREATE OBJECT t300.
          t300->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t300->oval = t301.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t307.
    DATA t308 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t308.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t309.
    DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t310.
    DATA(t311) = |MAPPED|.
    CLEAR t310.
    CREATE OBJECT t310.
    t310->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t310->sval = t311.
    t309 = t310.
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t312.
    DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t313.
    DATA(t314) = t1.
    CLEAR t313.
    IF t314 IS BOUND.
      DATA t315 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t315.
      DATA t316 TYPE REF TO object.
      CLEAR t316.
      CLEAR t315.
      t316 = t314.
      TRY.
          t313 ?= t316.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t313 IS NOT BOUND.
        TRY.
            t315 ?= t314.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t315 IS BOUND.
          t313 = t315->source( ).
        ENDIF.
        IF t313 IS NOT BOUND.
          CREATE OBJECT t313.
          t313->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t313->oval = t314.
        ENDIF.
      ENDIF.
    ENDIF.
    t312 = t313.
    DATA t317 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t317.
    DATA t318 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t318.
    CREATE OBJECT t318.
    t317 = t318.
    DATA t319 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t319.
    DATA(t320) = t309.
    DATA(t321) = t312.
    DATA(t322) = t317.
    t319 = zcl_lnt_st_combi_module=>seq( i_first = t320 i_second = t321 i_rest = t322 ).
    t308 = t319.
    CLEAR t307.
    IF t308 IS BOUND.
      DATA t323 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t323.
      DATA t324 TYPE REF TO object.
      CLEAR t324.
      CLEAR t323.
      t324 = t308.
      TRY.
          t307 ?= t324.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t307 IS NOT BOUND.
        TRY.
            t323 ?= t308.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t323 IS BOUND.
          t307 = t323->source( ).
        ENDIF.
        IF t307 IS NOT BOUND.
          CREATE OBJECT t307.
          t307->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t307->oval = t308.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t325 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t325.
    DATA(t326) = abap_true.
    IF t326 = abap_true.
      DATA t327 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t327.
      DATA t328 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t328.
      DATA t329 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t329.
      DATA(t330) = abap_true.
      IF t330 = abap_true.
        DATA(t331) = |OpenABAP|.
        DATA(t332) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t332->has = abap_true.
        t332->value = t331.
        t329 = t332.
      ELSE.
        DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t333.
        t329 = t333.
      ENDIF.
      t328 = t329.
      t327 = NEW zcl_lnt_iver_options( i_also = t328 ).
      CREATE OBJECT t327->zlnt_view_ownkeys_b0e8086400eb.
      t327->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t334.
      IF t327->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t327->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t334 ).
      ENDIF.
      CREATE OBJECT t327->zlnt_json_ownkeys_70e5fd461788.
      t327->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t335) = |also|.
      DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t336.
      IF t327->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t327->zlnt_json_ownkeys_70e5fd461788->put( p0 = t335 p1 = t336 ).
      ENDIF.
      t325 = t327.
    ELSE.
      DATA t337 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t337.
      t325 = t337.
    ENDIF.
    t299 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t300 i_first = t307 i_opts = t325 ).
    t298->load( ).
    APPEND t299 TO t298->items.
    t298->save( ).
    DATA(t338) = t16.
    DATA t339 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t339.
    DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t340.
    DATA t341 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t341.
    DATA t342 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t342.
    DATA t343 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t343.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t343 = zcl_lnt_version_module=>release_b8cd.
    DATA(t344) = |v776|.
    t342 = t343->get( p0 = t344 ).
    t341 = t342.
    CLEAR t340.
    IF t341 IS BOUND.
      DATA t345 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t345.
      DATA t346 TYPE REF TO object.
      CLEAR t346.
      CLEAR t345.
      t346 = t341.
      TRY.
          t340 ?= t346.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t340 IS NOT BOUND.
        TRY.
            t345 ?= t341.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t345 IS BOUND.
          t340 = t345->source( ).
        ENDIF.
        IF t340 IS NOT BOUND.
          CREATE OBJECT t340.
          t340->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t340->oval = t341.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t347.
    DATA t348 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t348.
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t349.
    DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t350.
    DATA(t351) = |REPORTED|.
    CLEAR t350.
    CREATE OBJECT t350.
    t350->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t350->sval = t351.
    t349 = t350.
    DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t352.
    DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t353.
    DATA(t354) = t1.
    CLEAR t353.
    IF t354 IS BOUND.
      DATA t355 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t355.
      DATA t356 TYPE REF TO object.
      CLEAR t356.
      CLEAR t355.
      t356 = t354.
      TRY.
          t353 ?= t356.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t353 IS NOT BOUND.
        TRY.
            t355 ?= t354.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t355 IS BOUND.
          t353 = t355->source( ).
        ENDIF.
        IF t353 IS NOT BOUND.
          CREATE OBJECT t353.
          t353->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t353->oval = t354.
        ENDIF.
      ENDIF.
    ENDIF.
    t352 = t353.
    DATA t357 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t357.
    DATA t358 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t358.
    CREATE OBJECT t358.
    t357 = t358.
    DATA t359 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t359.
    DATA(t360) = t349.
    DATA(t361) = t352.
    DATA(t362) = t357.
    t359 = zcl_lnt_st_combi_module=>seq( i_first = t360 i_second = t361 i_rest = t362 ).
    t348 = t359.
    CLEAR t347.
    IF t348 IS BOUND.
      DATA t363 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t363.
      DATA t364 TYPE REF TO object.
      CLEAR t364.
      CLEAR t363.
      t364 = t348.
      TRY.
          t347 ?= t364.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t347 IS NOT BOUND.
        TRY.
            t363 ?= t348.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t363 IS BOUND.
          t347 = t363->source( ).
        ENDIF.
        IF t347 IS NOT BOUND.
          CREATE OBJECT t347.
          t347->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t347->oval = t348.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t365 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t365.
    DATA(t366) = abap_true.
    IF t366 = abap_true.
      DATA t367 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t367.
      DATA t368 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t368.
      DATA t369 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t369.
      DATA(t370) = abap_true.
      IF t370 = abap_true.
        DATA(t371) = |OpenABAP|.
        DATA(t372) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t372->has = abap_true.
        t372->value = t371.
        t369 = t372.
      ELSE.
        DATA t373 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t373.
        t369 = t373.
      ENDIF.
      t368 = t369.
      t367 = NEW zcl_lnt_iver_options( i_also = t368 ).
      CREATE OBJECT t367->zlnt_view_ownkeys_b0e8086400eb.
      t367->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t374.
      IF t367->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t367->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t374 ).
      ENDIF.
      CREATE OBJECT t367->zlnt_json_ownkeys_70e5fd461788.
      t367->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t375) = |also|.
      DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t376.
      IF t367->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t367->zlnt_json_ownkeys_70e5fd461788->put( p0 = t375 p1 = t376 ).
      ENDIF.
      t365 = t367.
    ELSE.
      DATA t377 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t377.
      t365 = t377.
    ENDIF.
    t339 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t340 i_first = t347 i_opts = t365 ).
    t338->load( ).
    APPEND t339 TO t338->items.
    t338->save( ).
    DATA(t378) = t16.
    DATA t379 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t379.
    DATA t380 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t380.
    DATA t381 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t381.
    DATA t382 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t382.
    DATA t383 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t383.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t383 = zcl_lnt_version_module=>release_b8cd.
    DATA(t384) = |v773|.
    t382 = t383->get( p0 = t384 ).
    t381 = t382.
    CLEAR t380.
    IF t381 IS BOUND.
      DATA t385 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t385.
      DATA t386 TYPE REF TO object.
      CLEAR t386.
      CLEAR t385.
      t386 = t381.
      TRY.
          t380 ?= t386.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t380 IS NOT BOUND.
        TRY.
            t385 ?= t381.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t385 IS BOUND.
          t380 = t385->source( ).
        ENDIF.
        IF t380 IS NOT BOUND.
          CREATE OBJECT t380.
          t380->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t380->oval = t381.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t387.
    DATA t388 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t388.
    DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t389.
    DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t390.
    DATA(t391) = |FUNCTION IMPORT|.
    CLEAR t390.
    CREATE OBJECT t390.
    t390->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t390->sval = t391.
    t389 = t390.
    DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t392.
    DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t393.
    DATA(t394) = t1.
    CLEAR t393.
    IF t394 IS BOUND.
      DATA t395 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t395.
      DATA t396 TYPE REF TO object.
      CLEAR t396.
      CLEAR t395.
      t396 = t394.
      TRY.
          t393 ?= t396.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t393 IS NOT BOUND.
        TRY.
            t395 ?= t394.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t395 IS BOUND.
          t393 = t395->source( ).
        ENDIF.
        IF t393 IS NOT BOUND.
          CREATE OBJECT t393.
          t393->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t393->oval = t394.
        ENDIF.
      ENDIF.
    ENDIF.
    t392 = t393.
    DATA t397 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t397.
    DATA t398 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t398.
    CREATE OBJECT t398.
    t397 = t398.
    DATA t399 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t399.
    DATA(t400) = t389.
    DATA(t401) = t392.
    DATA(t402) = t397.
    t399 = zcl_lnt_st_combi_module=>seq( i_first = t400 i_second = t401 i_rest = t402 ).
    t388 = t399.
    CLEAR t387.
    IF t388 IS BOUND.
      DATA t403 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t403.
      DATA t404 TYPE REF TO object.
      CLEAR t404.
      CLEAR t403.
      t404 = t388.
      TRY.
          t387 ?= t404.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t387 IS NOT BOUND.
        TRY.
            t403 ?= t388.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t403 IS BOUND.
          t387 = t403->source( ).
        ENDIF.
        IF t387 IS NOT BOUND.
          CREATE OBJECT t387.
          t387->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t387->oval = t388.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t405 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t405.
    DATA(t406) = abap_true.
    IF t406 = abap_true.
      DATA t407 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t407.
      DATA t408 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t408.
      DATA t409 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t409.
      DATA(t410) = abap_true.
      IF t410 = abap_true.
        DATA(t411) = |OpenABAP|.
        DATA(t412) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t412->has = abap_true.
        t412->value = t411.
        t409 = t412.
      ELSE.
        DATA t413 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t413.
        t409 = t413.
      ENDIF.
      t408 = t409.
      t407 = NEW zcl_lnt_iver_options( i_also = t408 ).
      CREATE OBJECT t407->zlnt_view_ownkeys_b0e8086400eb.
      t407->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t414.
      IF t407->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t407->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t414 ).
      ENDIF.
      CREATE OBJECT t407->zlnt_json_ownkeys_70e5fd461788.
      t407->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t415) = |also|.
      DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t416.
      IF t407->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t407->zlnt_json_ownkeys_70e5fd461788->put( p0 = t415 p1 = t416 ).
      ENDIF.
      t405 = t407.
    ELSE.
      DATA t417 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t417.
      t405 = t417.
    ENDIF.
    t379 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t380 i_first = t387 i_opts = t405 ).
    t378->load( ).
    APPEND t379 TO t378->items.
    t378->save( ).
    DATA(t418) = t16.
    DATA t419 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t419.
    DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t420.
    DATA t421 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t421.
    DATA t422 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t422.
    DATA t423 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t423.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t423 = zcl_lnt_version_module=>release_b8cd.
    DATA(t424) = |v773|.
    t422 = t423->get( p0 = t424 ).
    t421 = t422.
    CLEAR t420.
    IF t421 IS BOUND.
      DATA t425 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t425.
      DATA t426 TYPE REF TO object.
      CLEAR t426.
      CLEAR t425.
      t426 = t421.
      TRY.
          t420 ?= t426.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t420 IS NOT BOUND.
        TRY.
            t425 ?= t421.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t425 IS BOUND.
          t420 = t425->source( ).
        ENDIF.
        IF t420 IS NOT BOUND.
          CREATE OBJECT t420.
          t420->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t420->oval = t421.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t427.
    DATA t428 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t428.
    DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t429.
    DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t430.
    DATA(t431) = |FUNCTION RESULT|.
    CLEAR t430.
    CREATE OBJECT t430.
    t430->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t430->sval = t431.
    t429 = t430.
    DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t432.
    DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t433.
    DATA(t434) = t1.
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
    t432 = t433.
    DATA t437 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t437.
    DATA t438 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t438.
    CREATE OBJECT t438.
    t437 = t438.
    DATA t439 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t439.
    DATA(t440) = t429.
    DATA(t441) = t432.
    DATA(t442) = t437.
    t439 = zcl_lnt_st_combi_module=>seq( i_first = t440 i_second = t441 i_rest = t442 ).
    t428 = t439.
    CLEAR t427.
    IF t428 IS BOUND.
      DATA t443 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t443.
      DATA t444 TYPE REF TO object.
      CLEAR t444.
      CLEAR t443.
      t444 = t428.
      TRY.
          t427 ?= t444.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t427 IS NOT BOUND.
        TRY.
            t443 ?= t428.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t443 IS BOUND.
          t427 = t443->source( ).
        ENDIF.
        IF t427 IS NOT BOUND.
          CREATE OBJECT t427.
          t427->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t427->oval = t428.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t445 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t445.
    DATA(t446) = abap_true.
    IF t446 = abap_true.
      DATA t447 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t447.
      DATA t448 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t448.
      DATA t449 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t449.
      DATA(t450) = abap_true.
      IF t450 = abap_true.
        DATA(t451) = |OpenABAP|.
        DATA(t452) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t452->has = abap_true.
        t452->value = t451.
        t449 = t452.
      ELSE.
        DATA t453 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t453.
        t449 = t453.
      ENDIF.
      t448 = t449.
      t447 = NEW zcl_lnt_iver_options( i_also = t448 ).
      CREATE OBJECT t447->zlnt_view_ownkeys_b0e8086400eb.
      t447->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t454 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t454.
      IF t447->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t447->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t454 ).
      ENDIF.
      CREATE OBJECT t447->zlnt_json_ownkeys_70e5fd461788.
      t447->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t455) = |also|.
      DATA t456 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t456.
      IF t447->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t447->zlnt_json_ownkeys_70e5fd461788->put( p0 = t455 p1 = t456 ).
      ENDIF.
      t445 = t447.
    ELSE.
      DATA t457 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t457.
      t445 = t457.
    ENDIF.
    t419 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t420 i_first = t427 i_opts = t445 ).
    t418->load( ).
    APPEND t419 TO t418->items.
    t418->save( ).
    DATA(t458) = t16.
    DATA t459 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t459.
    DATA t460 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t460.
    DATA t461 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t461.
    DATA t462 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t462.
    DATA t463 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t463.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t463 = zcl_lnt_version_module=>release_b8cd.
    DATA(t464) = |v773|.
    t462 = t463->get( p0 = t464 ).
    t461 = t462.
    CLEAR t460.
    IF t461 IS BOUND.
      DATA t465 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t465.
      DATA t466 TYPE REF TO object.
      CLEAR t466.
      CLEAR t465.
      t466 = t461.
      TRY.
          t460 ?= t466.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t460 IS NOT BOUND.
        TRY.
            t465 ?= t461.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t465 IS BOUND.
          t460 = t465->source( ).
        ENDIF.
        IF t460 IS NOT BOUND.
          CREATE OBJECT t460.
          t460->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t460->oval = t461.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t467.
    DATA t468 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t468.
    DATA t469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t469.
    DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t470.
    DATA(t471) = |ACTION RESULT|.
    CLEAR t470.
    CREATE OBJECT t470.
    t470->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t470->sval = t471.
    t469 = t470.
    DATA t472 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t472.
    DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t473.
    DATA(t474) = t1.
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
    DATA t477 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t477.
    DATA t478 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t478.
    CREATE OBJECT t478.
    t477 = t478.
    DATA t479 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t479.
    DATA(t480) = t469.
    DATA(t481) = t472.
    DATA(t482) = t477.
    t479 = zcl_lnt_st_combi_module=>seq( i_first = t480 i_second = t481 i_rest = t482 ).
    t468 = t479.
    CLEAR t467.
    IF t468 IS BOUND.
      DATA t483 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t483.
      DATA t484 TYPE REF TO object.
      CLEAR t484.
      CLEAR t483.
      t484 = t468.
      TRY.
          t467 ?= t484.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t467 IS NOT BOUND.
        TRY.
            t483 ?= t468.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t483 IS BOUND.
          t467 = t483->source( ).
        ENDIF.
        IF t467 IS NOT BOUND.
          CREATE OBJECT t467.
          t467->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t467->oval = t468.
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
    t459 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t460 i_first = t467 i_opts = t485 ).
    t458->load( ).
    APPEND t459 TO t458->items.
    t458->save( ).
    DATA(t498) = t16.
    DATA t499 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t499.
    DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t500.
    DATA t501 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t501.
    DATA t502 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t502.
    DATA t503 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t503.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t503 = zcl_lnt_version_module=>release_b8cd.
    DATA(t504) = |v781|.
    t502 = t503->get( p0 = t504 ).
    t501 = t502.
    CLEAR t500.
    IF t501 IS BOUND.
      DATA t505 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t505.
      DATA t506 TYPE REF TO object.
      CLEAR t506.
      CLEAR t505.
      t506 = t501.
      TRY.
          t500 ?= t506.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t500 IS NOT BOUND.
        TRY.
            t505 ?= t501.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t505 IS BOUND.
          t500 = t505->source( ).
        ENDIF.
        IF t500 IS NOT BOUND.
          CREATE OBJECT t500.
          t500->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t500->oval = t501.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t507.
    DATA t508 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t508.
    DATA t509 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t509.
    DATA t510 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t510.
    DATA(t511) = |INSTANCE AUTHORIZATION KEY|.
    CLEAR t510.
    CREATE OBJECT t510.
    t510->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t510->sval = t511.
    t509 = t510.
    DATA t512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t512.
    DATA t513 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t513.
    DATA(t514) = t1.
    CLEAR t513.
    IF t514 IS BOUND.
      DATA t515 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t515.
      DATA t516 TYPE REF TO object.
      CLEAR t516.
      CLEAR t515.
      t516 = t514.
      TRY.
          t513 ?= t516.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t513 IS NOT BOUND.
        TRY.
            t515 ?= t514.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t515 IS BOUND.
          t513 = t515->source( ).
        ENDIF.
        IF t513 IS NOT BOUND.
          CREATE OBJECT t513.
          t513->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t513->oval = t514.
        ENDIF.
      ENDIF.
    ENDIF.
    t512 = t513.
    DATA t517 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t517.
    DATA t518 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t518.
    CREATE OBJECT t518.
    t517 = t518.
    DATA t519 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t519.
    DATA(t520) = t509.
    DATA(t521) = t512.
    DATA(t522) = t517.
    t519 = zcl_lnt_st_combi_module=>seq( i_first = t520 i_second = t521 i_rest = t522 ).
    t508 = t519.
    CLEAR t507.
    IF t508 IS BOUND.
      DATA t523 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t523.
      DATA t524 TYPE REF TO object.
      CLEAR t524.
      CLEAR t523.
      t524 = t508.
      TRY.
          t507 ?= t524.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t507 IS NOT BOUND.
        TRY.
            t523 ?= t508.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t523 IS BOUND.
          t507 = t523->source( ).
        ENDIF.
        IF t507 IS NOT BOUND.
          CREATE OBJECT t507.
          t507->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t507->oval = t508.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t525 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t525.
    DATA(t526) = abap_true.
    IF t526 = abap_true.
      DATA t527 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t527.
      DATA t528 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t528.
      DATA t529 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t529.
      DATA(t530) = abap_true.
      IF t530 = abap_true.
        DATA(t531) = |OpenABAP|.
        DATA(t532) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t532->has = abap_true.
        t532->value = t531.
        t529 = t532.
      ELSE.
        DATA t533 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t533.
        t529 = t533.
      ENDIF.
      t528 = t529.
      t527 = NEW zcl_lnt_iver_options( i_also = t528 ).
      CREATE OBJECT t527->zlnt_view_ownkeys_b0e8086400eb.
      t527->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t534 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t534.
      IF t527->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t527->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t534 ).
      ENDIF.
      CREATE OBJECT t527->zlnt_json_ownkeys_70e5fd461788.
      t527->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t535) = |also|.
      DATA t536 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t536.
      IF t527->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t527->zlnt_json_ownkeys_70e5fd461788->put( p0 = t535 p1 = t536 ).
      ENDIF.
      t525 = t527.
    ELSE.
      DATA t537 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t537.
      t525 = t537.
    ENDIF.
    t499 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t500 i_first = t507 i_opts = t525 ).
    t498->load( ).
    APPEND t499 TO t498->items.
    t498->save( ).
    DATA(t538) = t16.
    DATA t539 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t539.
    DATA t540 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t540.
    DATA t541 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t541.
    DATA t542 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t542.
    DATA t543 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t543.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t543 = zcl_lnt_version_module=>release_b8cd.
    DATA(t544) = |v781|.
    t542 = t543->get( p0 = t544 ).
    t541 = t542.
    CLEAR t540.
    IF t541 IS BOUND.
      DATA t545 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t545.
      DATA t546 TYPE REF TO object.
      CLEAR t546.
      CLEAR t545.
      t546 = t541.
      TRY.
          t540 ?= t546.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t540 IS NOT BOUND.
        TRY.
            t545 ?= t541.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t545 IS BOUND.
          t540 = t545->source( ).
        ENDIF.
        IF t540 IS NOT BOUND.
          CREATE OBJECT t540.
          t540->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t540->oval = t541.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t547.
    DATA t548 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t548.
    DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t549.
    DATA t550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t550.
    DATA(t551) = |INSTANCE AUTHORIZATION REQUEST|.
    CLEAR t550.
    CREATE OBJECT t550.
    t550->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t550->sval = t551.
    t549 = t550.
    DATA t552 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t552.
    DATA t553 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t553.
    DATA(t554) = t1.
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
    DATA t557 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t557.
    DATA t558 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t558.
    CREATE OBJECT t558.
    t557 = t558.
    DATA t559 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t559.
    DATA(t560) = t549.
    DATA(t561) = t552.
    DATA(t562) = t557.
    t559 = zcl_lnt_st_combi_module=>seq( i_first = t560 i_second = t561 i_rest = t562 ).
    t548 = t559.
    CLEAR t547.
    IF t548 IS BOUND.
      DATA t563 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t563.
      DATA t564 TYPE REF TO object.
      CLEAR t564.
      CLEAR t563.
      t564 = t548.
      TRY.
          t547 ?= t564.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t547 IS NOT BOUND.
        TRY.
            t563 ?= t548.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t563 IS BOUND.
          t547 = t563->source( ).
        ENDIF.
        IF t547 IS NOT BOUND.
          CREATE OBJECT t547.
          t547->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t547->oval = t548.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t565 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t565.
    DATA(t566) = abap_true.
    IF t566 = abap_true.
      DATA t567 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t567.
      DATA t568 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t568.
      DATA t569 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t569.
      DATA(t570) = abap_true.
      IF t570 = abap_true.
        DATA(t571) = |OpenABAP|.
        DATA(t572) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t572->has = abap_true.
        t572->value = t571.
        t569 = t572.
      ELSE.
        DATA t573 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t573.
        t569 = t573.
      ENDIF.
      t568 = t569.
      t567 = NEW zcl_lnt_iver_options( i_also = t568 ).
      CREATE OBJECT t567->zlnt_view_ownkeys_b0e8086400eb.
      t567->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t574 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t574.
      IF t567->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t567->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t574 ).
      ENDIF.
      CREATE OBJECT t567->zlnt_json_ownkeys_70e5fd461788.
      t567->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t575) = |also|.
      DATA t576 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t576.
      IF t567->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t567->zlnt_json_ownkeys_70e5fd461788->put( p0 = t575 p1 = t576 ).
      ENDIF.
      t565 = t567.
    ELSE.
      DATA t577 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t577.
      t565 = t577.
    ENDIF.
    t539 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t540 i_first = t547 i_opts = t565 ).
    t538->load( ).
    APPEND t539 TO t538->items.
    t538->save( ).
    DATA(t578) = t16.
    DATA t579 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t579.
    DATA t580 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t580.
    DATA t581 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t581.
    DATA t582 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t582.
    DATA t583 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t583.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t583 = zcl_lnt_version_module=>release_b8cd.
    DATA(t584) = |v781|.
    t582 = t583->get( p0 = t584 ).
    t581 = t582.
    CLEAR t580.
    IF t581 IS BOUND.
      DATA t585 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t585.
      DATA t586 TYPE REF TO object.
      CLEAR t586.
      CLEAR t585.
      t586 = t581.
      TRY.
          t580 ?= t586.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t580 IS NOT BOUND.
        TRY.
            t585 ?= t581.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t585 IS BOUND.
          t580 = t585->source( ).
        ENDIF.
        IF t580 IS NOT BOUND.
          CREATE OBJECT t580.
          t580->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t580->oval = t581.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t587 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t587.
    DATA t588 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t588.
    DATA t589 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t589.
    DATA t590 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t590.
    DATA(t591) = |INSTANCE AUTHORIZATION RESULT|.
    CLEAR t590.
    CREATE OBJECT t590.
    t590->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t590->sval = t591.
    t589 = t590.
    DATA t592 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t592.
    DATA t593 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t593.
    DATA(t594) = t1.
    CLEAR t593.
    IF t594 IS BOUND.
      DATA t595 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t595.
      DATA t596 TYPE REF TO object.
      CLEAR t596.
      CLEAR t595.
      t596 = t594.
      TRY.
          t593 ?= t596.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t593 IS NOT BOUND.
        TRY.
            t595 ?= t594.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t595 IS BOUND.
          t593 = t595->source( ).
        ENDIF.
        IF t593 IS NOT BOUND.
          CREATE OBJECT t593.
          t593->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t593->oval = t594.
        ENDIF.
      ENDIF.
    ENDIF.
    t592 = t593.
    DATA t597 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t597.
    DATA t598 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t598.
    CREATE OBJECT t598.
    t597 = t598.
    DATA t599 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t599.
    DATA(t600) = t589.
    DATA(t601) = t592.
    DATA(t602) = t597.
    t599 = zcl_lnt_st_combi_module=>seq( i_first = t600 i_second = t601 i_rest = t602 ).
    t588 = t599.
    CLEAR t587.
    IF t588 IS BOUND.
      DATA t603 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t603.
      DATA t604 TYPE REF TO object.
      CLEAR t604.
      CLEAR t603.
      t604 = t588.
      TRY.
          t587 ?= t604.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t587 IS NOT BOUND.
        TRY.
            t603 ?= t588.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t603 IS BOUND.
          t587 = t603->source( ).
        ENDIF.
        IF t587 IS NOT BOUND.
          CREATE OBJECT t587.
          t587->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t587->oval = t588.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t605 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t605.
    DATA(t606) = abap_true.
    IF t606 = abap_true.
      DATA t607 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t607.
      DATA t608 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t608.
      DATA t609 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t609.
      DATA(t610) = abap_true.
      IF t610 = abap_true.
        DATA(t611) = |OpenABAP|.
        DATA(t612) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t612->has = abap_true.
        t612->value = t611.
        t609 = t612.
      ELSE.
        DATA t613 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t613.
        t609 = t613.
      ENDIF.
      t608 = t609.
      t607 = NEW zcl_lnt_iver_options( i_also = t608 ).
      CREATE OBJECT t607->zlnt_view_ownkeys_b0e8086400eb.
      t607->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t614 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t614.
      IF t607->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t607->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t614 ).
      ENDIF.
      CREATE OBJECT t607->zlnt_json_ownkeys_70e5fd461788.
      t607->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t615) = |also|.
      DATA t616 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t616.
      IF t607->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t607->zlnt_json_ownkeys_70e5fd461788->put( p0 = t615 p1 = t616 ).
      ENDIF.
      t605 = t607.
    ELSE.
      DATA t617 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t617.
      t605 = t617.
    ENDIF.
    t579 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t580 i_first = t587 i_opts = t605 ).
    t578->load( ).
    APPEND t579 TO t578->items.
    t578->save( ).
    DATA(t618) = t16.
    DATA t619 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t619.
    DATA t620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t620.
    DATA t621 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t621.
    DATA t622 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t622.
    DATA t623 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t623.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t623 = zcl_lnt_version_module=>release_b8cd.
    DATA(t624) = |v781|.
    t622 = t623->get( p0 = t624 ).
    t621 = t622.
    CLEAR t620.
    IF t621 IS BOUND.
      DATA t625 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t625.
      DATA t626 TYPE REF TO object.
      CLEAR t626.
      CLEAR t625.
      t626 = t621.
      TRY.
          t620 ?= t626.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t620 IS NOT BOUND.
        TRY.
            t625 ?= t621.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t625 IS BOUND.
          t620 = t625->source( ).
        ENDIF.
        IF t620 IS NOT BOUND.
          CREATE OBJECT t620.
          t620->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t620->oval = t621.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t627 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t627.
    DATA t628 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t628.
    DATA t629 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t629.
    DATA t630 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t630.
    DATA(t631) = |INSTANCE FEATURES KEY|.
    CLEAR t630.
    CREATE OBJECT t630.
    t630->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t630->sval = t631.
    t629 = t630.
    DATA t632 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t632.
    DATA t633 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t633.
    DATA(t634) = t1.
    CLEAR t633.
    IF t634 IS BOUND.
      DATA t635 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t635.
      DATA t636 TYPE REF TO object.
      CLEAR t636.
      CLEAR t635.
      t636 = t634.
      TRY.
          t633 ?= t636.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t633 IS NOT BOUND.
        TRY.
            t635 ?= t634.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t635 IS BOUND.
          t633 = t635->source( ).
        ENDIF.
        IF t633 IS NOT BOUND.
          CREATE OBJECT t633.
          t633->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t633->oval = t634.
        ENDIF.
      ENDIF.
    ENDIF.
    t632 = t633.
    DATA t637 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t637.
    DATA t638 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t638.
    CREATE OBJECT t638.
    t637 = t638.
    DATA t639 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t639.
    DATA(t640) = t629.
    DATA(t641) = t632.
    DATA(t642) = t637.
    t639 = zcl_lnt_st_combi_module=>seq( i_first = t640 i_second = t641 i_rest = t642 ).
    t628 = t639.
    CLEAR t627.
    IF t628 IS BOUND.
      DATA t643 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t643.
      DATA t644 TYPE REF TO object.
      CLEAR t644.
      CLEAR t643.
      t644 = t628.
      TRY.
          t627 ?= t644.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t627 IS NOT BOUND.
        TRY.
            t643 ?= t628.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t643 IS BOUND.
          t627 = t643->source( ).
        ENDIF.
        IF t627 IS NOT BOUND.
          CREATE OBJECT t627.
          t627->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t627->oval = t628.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t645 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t645.
    DATA(t646) = abap_true.
    IF t646 = abap_true.
      DATA t647 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t647.
      DATA t648 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t648.
      DATA t649 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t649.
      DATA(t650) = abap_true.
      IF t650 = abap_true.
        DATA(t651) = |OpenABAP|.
        DATA(t652) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t652->has = abap_true.
        t652->value = t651.
        t649 = t652.
      ELSE.
        DATA t653 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t653.
        t649 = t653.
      ENDIF.
      t648 = t649.
      t647 = NEW zcl_lnt_iver_options( i_also = t648 ).
      CREATE OBJECT t647->zlnt_view_ownkeys_b0e8086400eb.
      t647->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t654 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t654.
      IF t647->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t647->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t654 ).
      ENDIF.
      CREATE OBJECT t647->zlnt_json_ownkeys_70e5fd461788.
      t647->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t655) = |also|.
      DATA t656 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t656.
      IF t647->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t647->zlnt_json_ownkeys_70e5fd461788->put( p0 = t655 p1 = t656 ).
      ENDIF.
      t645 = t647.
    ELSE.
      DATA t657 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t657.
      t645 = t657.
    ENDIF.
    t619 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t620 i_first = t627 i_opts = t645 ).
    t618->load( ).
    APPEND t619 TO t618->items.
    t618->save( ).
    DATA(t658) = t16.
    DATA t659 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t659.
    DATA t660 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t660.
    DATA t661 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t661.
    DATA t662 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t662.
    DATA t663 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t663.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t663 = zcl_lnt_version_module=>release_b8cd.
    DATA(t664) = |v781|.
    t662 = t663->get( p0 = t664 ).
    t661 = t662.
    CLEAR t660.
    IF t661 IS BOUND.
      DATA t665 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t665.
      DATA t666 TYPE REF TO object.
      CLEAR t666.
      CLEAR t665.
      t666 = t661.
      TRY.
          t660 ?= t666.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t660 IS NOT BOUND.
        TRY.
            t665 ?= t661.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t665 IS BOUND.
          t660 = t665->source( ).
        ENDIF.
        IF t660 IS NOT BOUND.
          CREATE OBJECT t660.
          t660->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t660->oval = t661.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t667 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t667.
    DATA t668 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t668.
    DATA t669 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t669.
    DATA t670 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t670.
    DATA(t671) = |INSTANCE FEATURES REQUEST|.
    CLEAR t670.
    CREATE OBJECT t670.
    t670->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t670->sval = t671.
    t669 = t670.
    DATA t672 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t672.
    DATA t673 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t673.
    DATA(t674) = t1.
    CLEAR t673.
    IF t674 IS BOUND.
      DATA t675 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t675.
      DATA t676 TYPE REF TO object.
      CLEAR t676.
      CLEAR t675.
      t676 = t674.
      TRY.
          t673 ?= t676.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t673 IS NOT BOUND.
        TRY.
            t675 ?= t674.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t675 IS BOUND.
          t673 = t675->source( ).
        ENDIF.
        IF t673 IS NOT BOUND.
          CREATE OBJECT t673.
          t673->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t673->oval = t674.
        ENDIF.
      ENDIF.
    ENDIF.
    t672 = t673.
    DATA t677 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t677.
    DATA t678 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t678.
    CREATE OBJECT t678.
    t677 = t678.
    DATA t679 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t679.
    DATA(t680) = t669.
    DATA(t681) = t672.
    DATA(t682) = t677.
    t679 = zcl_lnt_st_combi_module=>seq( i_first = t680 i_second = t681 i_rest = t682 ).
    t668 = t679.
    CLEAR t667.
    IF t668 IS BOUND.
      DATA t683 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t683.
      DATA t684 TYPE REF TO object.
      CLEAR t684.
      CLEAR t683.
      t684 = t668.
      TRY.
          t667 ?= t684.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t667 IS NOT BOUND.
        TRY.
            t683 ?= t668.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t683 IS BOUND.
          t667 = t683->source( ).
        ENDIF.
        IF t667 IS NOT BOUND.
          CREATE OBJECT t667.
          t667->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t667->oval = t668.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t685 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t685.
    DATA(t686) = abap_true.
    IF t686 = abap_true.
      DATA t687 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t687.
      DATA t688 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t688.
      DATA t689 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t689.
      DATA(t690) = abap_true.
      IF t690 = abap_true.
        DATA(t691) = |OpenABAP|.
        DATA(t692) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t692->has = abap_true.
        t692->value = t691.
        t689 = t692.
      ELSE.
        DATA t693 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t693.
        t689 = t693.
      ENDIF.
      t688 = t689.
      t687 = NEW zcl_lnt_iver_options( i_also = t688 ).
      CREATE OBJECT t687->zlnt_view_ownkeys_b0e8086400eb.
      t687->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t694 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t694.
      IF t687->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t687->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t694 ).
      ENDIF.
      CREATE OBJECT t687->zlnt_json_ownkeys_70e5fd461788.
      t687->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t695) = |also|.
      DATA t696 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t696.
      IF t687->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t687->zlnt_json_ownkeys_70e5fd461788->put( p0 = t695 p1 = t696 ).
      ENDIF.
      t685 = t687.
    ELSE.
      DATA t697 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t697.
      t685 = t697.
    ENDIF.
    t659 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t660 i_first = t667 i_opts = t685 ).
    t658->load( ).
    APPEND t659 TO t658->items.
    t658->save( ).
    DATA(t698) = t16.
    DATA t699 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t699.
    DATA t700 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t700.
    DATA t701 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t701.
    DATA t702 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t702.
    DATA t703 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t703.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t703 = zcl_lnt_version_module=>release_b8cd.
    DATA(t704) = |v781|.
    t702 = t703->get( p0 = t704 ).
    t701 = t702.
    CLEAR t700.
    IF t701 IS BOUND.
      DATA t705 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t705.
      DATA t706 TYPE REF TO object.
      CLEAR t706.
      CLEAR t705.
      t706 = t701.
      TRY.
          t700 ?= t706.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t700 IS NOT BOUND.
        TRY.
            t705 ?= t701.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t705 IS BOUND.
          t700 = t705->source( ).
        ENDIF.
        IF t700 IS NOT BOUND.
          CREATE OBJECT t700.
          t700->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t700->oval = t701.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t707 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t707.
    DATA t708 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t708.
    DATA t709 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t709.
    DATA t710 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t710.
    DATA(t711) = |INSTANCE FEATURES RESULT|.
    CLEAR t710.
    CREATE OBJECT t710.
    t710->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t710->sval = t711.
    t709 = t710.
    DATA t712 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t712.
    DATA t713 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t713.
    DATA(t714) = t1.
    CLEAR t713.
    IF t714 IS BOUND.
      DATA t715 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t715.
      DATA t716 TYPE REF TO object.
      CLEAR t716.
      CLEAR t715.
      t716 = t714.
      TRY.
          t713 ?= t716.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t713 IS NOT BOUND.
        TRY.
            t715 ?= t714.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t715 IS BOUND.
          t713 = t715->source( ).
        ENDIF.
        IF t713 IS NOT BOUND.
          CREATE OBJECT t713.
          t713->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t713->oval = t714.
        ENDIF.
      ENDIF.
    ENDIF.
    t712 = t713.
    DATA t717 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t717.
    DATA t718 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t718.
    CREATE OBJECT t718.
    t717 = t718.
    DATA t719 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t719.
    DATA(t720) = t709.
    DATA(t721) = t712.
    DATA(t722) = t717.
    t719 = zcl_lnt_st_combi_module=>seq( i_first = t720 i_second = t721 i_rest = t722 ).
    t708 = t719.
    CLEAR t707.
    IF t708 IS BOUND.
      DATA t723 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t723.
      DATA t724 TYPE REF TO object.
      CLEAR t724.
      CLEAR t723.
      t724 = t708.
      TRY.
          t707 ?= t724.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t707 IS NOT BOUND.
        TRY.
            t723 ?= t708.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t723 IS BOUND.
          t707 = t723->source( ).
        ENDIF.
        IF t707 IS NOT BOUND.
          CREATE OBJECT t707.
          t707->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t707->oval = t708.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t725 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t725.
    DATA(t726) = abap_true.
    IF t726 = abap_true.
      DATA t727 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t727.
      DATA t728 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t728.
      DATA t729 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t729.
      DATA(t730) = abap_true.
      IF t730 = abap_true.
        DATA(t731) = |OpenABAP|.
        DATA(t732) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t732->has = abap_true.
        t732->value = t731.
        t729 = t732.
      ELSE.
        DATA t733 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t733.
        t729 = t733.
      ENDIF.
      t728 = t729.
      t727 = NEW zcl_lnt_iver_options( i_also = t728 ).
      CREATE OBJECT t727->zlnt_view_ownkeys_b0e8086400eb.
      t727->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t734 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t734.
      IF t727->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t727->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t734 ).
      ENDIF.
      CREATE OBJECT t727->zlnt_json_ownkeys_70e5fd461788.
      t727->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t735) = |also|.
      DATA t736 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t736.
      IF t727->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t727->zlnt_json_ownkeys_70e5fd461788->put( p0 = t735 p1 = t736 ).
      ENDIF.
      t725 = t727.
    ELSE.
      DATA t737 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t737.
      t725 = t737.
    ENDIF.
    t699 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t700 i_first = t707 i_opts = t725 ).
    t698->load( ).
    APPEND t699 TO t698->items.
    t698->save( ).
    DATA(t738) = t16.
    DATA t739 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t739.
    DATA t740 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t740.
    DATA t741 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t741.
    DATA t742 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t742.
    DATA t743 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t743.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t743 = zcl_lnt_version_module=>release_b8cd.
    DATA(t744) = |v780|.
    t742 = t743->get( p0 = t744 ).
    t741 = t742.
    CLEAR t740.
    IF t741 IS BOUND.
      DATA t745 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t745.
      DATA t746 TYPE REF TO object.
      CLEAR t746.
      CLEAR t745.
      t746 = t741.
      TRY.
          t740 ?= t746.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t740 IS NOT BOUND.
        TRY.
            t745 ?= t741.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t745 IS BOUND.
          t740 = t745->source( ).
        ENDIF.
        IF t740 IS NOT BOUND.
          CREATE OBJECT t740.
          t740->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t740->oval = t741.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t747 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t747.
    DATA t748 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t748.
    DATA t749 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t749.
    DATA t750 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t750.
    DATA(t751) = |AUTHORIZATION RESULT|.
    CLEAR t750.
    CREATE OBJECT t750.
    t750->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t750->sval = t751.
    t749 = t750.
    DATA t752 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t752.
    DATA t753 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t753.
    DATA(t754) = t1.
    CLEAR t753.
    IF t754 IS BOUND.
      DATA t755 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t755.
      DATA t756 TYPE REF TO object.
      CLEAR t756.
      CLEAR t755.
      t756 = t754.
      TRY.
          t753 ?= t756.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t753 IS NOT BOUND.
        TRY.
            t755 ?= t754.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t755 IS BOUND.
          t753 = t755->source( ).
        ENDIF.
        IF t753 IS NOT BOUND.
          CREATE OBJECT t753.
          t753->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t753->oval = t754.
        ENDIF.
      ENDIF.
    ENDIF.
    t752 = t753.
    DATA t757 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t757.
    DATA t758 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t758.
    CREATE OBJECT t758.
    t757 = t758.
    DATA t759 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t759.
    DATA(t760) = t749.
    DATA(t761) = t752.
    DATA(t762) = t757.
    t759 = zcl_lnt_st_combi_module=>seq( i_first = t760 i_second = t761 i_rest = t762 ).
    t748 = t759.
    CLEAR t747.
    IF t748 IS BOUND.
      DATA t763 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t763.
      DATA t764 TYPE REF TO object.
      CLEAR t764.
      CLEAR t763.
      t764 = t748.
      TRY.
          t747 ?= t764.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t747 IS NOT BOUND.
        TRY.
            t763 ?= t748.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t763 IS BOUND.
          t747 = t763->source( ).
        ENDIF.
        IF t747 IS NOT BOUND.
          CREATE OBJECT t747.
          t747->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t747->oval = t748.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t765 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t765.
    DATA(t766) = abap_true.
    IF t766 = abap_true.
      DATA t767 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t767.
      DATA t768 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t768.
      DATA t769 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t769.
      DATA(t770) = abap_true.
      IF t770 = abap_true.
        DATA(t771) = |OpenABAP|.
        DATA(t772) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t772->has = abap_true.
        t772->value = t771.
        t769 = t772.
      ELSE.
        DATA t773 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t773.
        t769 = t773.
      ENDIF.
      t768 = t769.
      t767 = NEW zcl_lnt_iver_options( i_also = t768 ).
      CREATE OBJECT t767->zlnt_view_ownkeys_b0e8086400eb.
      t767->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t774 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t774.
      IF t767->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t767->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t774 ).
      ENDIF.
      CREATE OBJECT t767->zlnt_json_ownkeys_70e5fd461788.
      t767->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t775) = |also|.
      DATA t776 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t776.
      IF t767->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t767->zlnt_json_ownkeys_70e5fd461788->put( p0 = t775 p1 = t776 ).
      ENDIF.
      t765 = t767.
    ELSE.
      DATA t777 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t777.
      t765 = t777.
    ENDIF.
    t739 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t740 i_first = t747 i_opts = t765 ).
    t738->load( ).
    APPEND t739 TO t738->items.
    t738->save( ).
    DATA(t778) = t16.
    DATA t779 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t779.
    DATA t780 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t780.
    DATA t781 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t781.
    DATA t782 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t782.
    DATA t783 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t783.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t783 = zcl_lnt_version_module=>release_b8cd.
    DATA(t784) = |v781|.
    t782 = t783->get( p0 = t784 ).
    t781 = t782.
    CLEAR t780.
    IF t781 IS BOUND.
      DATA t785 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t785.
      DATA t786 TYPE REF TO object.
      CLEAR t786.
      CLEAR t785.
      t786 = t781.
      TRY.
          t780 ?= t786.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t780 IS NOT BOUND.
        TRY.
            t785 ?= t781.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t785 IS BOUND.
          t780 = t785->source( ).
        ENDIF.
        IF t780 IS NOT BOUND.
          CREATE OBJECT t780.
          t780->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t780->oval = t781.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t787 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t787.
    DATA t788 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t788.
    DATA t789 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t789.
    DATA t790 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t790.
    DATA(t791) = |AUTHORIZATION KEY|.
    CLEAR t790.
    CREATE OBJECT t790.
    t790->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t790->sval = t791.
    t789 = t790.
    DATA t792 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t792.
    DATA t793 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t793.
    DATA(t794) = t1.
    CLEAR t793.
    IF t794 IS BOUND.
      DATA t795 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t795.
      DATA t796 TYPE REF TO object.
      CLEAR t796.
      CLEAR t795.
      t796 = t794.
      TRY.
          t793 ?= t796.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t793 IS NOT BOUND.
        TRY.
            t795 ?= t794.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t795 IS BOUND.
          t793 = t795->source( ).
        ENDIF.
        IF t793 IS NOT BOUND.
          CREATE OBJECT t793.
          t793->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t793->oval = t794.
        ENDIF.
      ENDIF.
    ENDIF.
    t792 = t793.
    DATA t797 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t797.
    DATA t798 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t798.
    CREATE OBJECT t798.
    t797 = t798.
    DATA t799 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t799.
    DATA(t800) = t789.
    DATA(t801) = t792.
    DATA(t802) = t797.
    t799 = zcl_lnt_st_combi_module=>seq( i_first = t800 i_second = t801 i_rest = t802 ).
    t788 = t799.
    CLEAR t787.
    IF t788 IS BOUND.
      DATA t803 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t803.
      DATA t804 TYPE REF TO object.
      CLEAR t804.
      CLEAR t803.
      t804 = t788.
      TRY.
          t787 ?= t804.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t787 IS NOT BOUND.
        TRY.
            t803 ?= t788.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t803 IS BOUND.
          t787 = t803->source( ).
        ENDIF.
        IF t787 IS NOT BOUND.
          CREATE OBJECT t787.
          t787->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t787->oval = t788.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t805 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t805.
    DATA(t806) = abap_true.
    IF t806 = abap_true.
      DATA t807 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t807.
      DATA t808 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t808.
      DATA t809 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t809.
      DATA(t810) = abap_true.
      IF t810 = abap_true.
        DATA(t811) = |OpenABAP|.
        DATA(t812) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t812->has = abap_true.
        t812->value = t811.
        t809 = t812.
      ELSE.
        DATA t813 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t813.
        t809 = t813.
      ENDIF.
      t808 = t809.
      t807 = NEW zcl_lnt_iver_options( i_also = t808 ).
      CREATE OBJECT t807->zlnt_view_ownkeys_b0e8086400eb.
      t807->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t814 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t814.
      IF t807->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t807->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t814 ).
      ENDIF.
      CREATE OBJECT t807->zlnt_json_ownkeys_70e5fd461788.
      t807->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t815) = |also|.
      DATA t816 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t816.
      IF t807->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t807->zlnt_json_ownkeys_70e5fd461788->put( p0 = t815 p1 = t816 ).
      ENDIF.
      t805 = t807.
    ELSE.
      DATA t817 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t817.
      t805 = t817.
    ENDIF.
    t779 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t780 i_first = t787 i_opts = t805 ).
    t778->load( ).
    APPEND t779 TO t778->items.
    t778->save( ).
    DATA(t818) = t16.
    DATA t819 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t819.
    DATA t820 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t820.
    DATA t821 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t821.
    DATA t822 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t822.
    DATA t823 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t823.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t823 = zcl_lnt_version_module=>release_b8cd.
    DATA(t824) = |v776|.
    t822 = t823->get( p0 = t824 ).
    t821 = t822.
    CLEAR t820.
    IF t821 IS BOUND.
      DATA t825 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t825.
      DATA t826 TYPE REF TO object.
      CLEAR t826.
      CLEAR t825.
      t826 = t821.
      TRY.
          t820 ?= t826.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t820 IS NOT BOUND.
        TRY.
            t825 ?= t821.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t825 IS BOUND.
          t820 = t825->source( ).
        ENDIF.
        IF t820 IS NOT BOUND.
          CREATE OBJECT t820.
          t820->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t820->oval = t821.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t827 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t827.
    DATA t828 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t828.
    DATA t829 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t829.
    DATA t830 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t830.
    DATA(t831) = |FEATURES RESULT|.
    CLEAR t830.
    CREATE OBJECT t830.
    t830->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t830->sval = t831.
    t829 = t830.
    DATA t832 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t832.
    DATA t833 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t833.
    DATA(t834) = t1.
    CLEAR t833.
    IF t834 IS BOUND.
      DATA t835 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t835.
      DATA t836 TYPE REF TO object.
      CLEAR t836.
      CLEAR t835.
      t836 = t834.
      TRY.
          t833 ?= t836.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t833 IS NOT BOUND.
        TRY.
            t835 ?= t834.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t835 IS BOUND.
          t833 = t835->source( ).
        ENDIF.
        IF t833 IS NOT BOUND.
          CREATE OBJECT t833.
          t833->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t833->oval = t834.
        ENDIF.
      ENDIF.
    ENDIF.
    t832 = t833.
    DATA t837 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t837.
    DATA t838 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t838.
    CREATE OBJECT t838.
    t837 = t838.
    DATA t839 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t839.
    DATA(t840) = t829.
    DATA(t841) = t832.
    DATA(t842) = t837.
    t839 = zcl_lnt_st_combi_module=>seq( i_first = t840 i_second = t841 i_rest = t842 ).
    t828 = t839.
    CLEAR t827.
    IF t828 IS BOUND.
      DATA t843 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t843.
      DATA t844 TYPE REF TO object.
      CLEAR t844.
      CLEAR t843.
      t844 = t828.
      TRY.
          t827 ?= t844.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t827 IS NOT BOUND.
        TRY.
            t843 ?= t828.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t843 IS BOUND.
          t827 = t843->source( ).
        ENDIF.
        IF t827 IS NOT BOUND.
          CREATE OBJECT t827.
          t827->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t827->oval = t828.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t845 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t845.
    DATA(t846) = abap_true.
    IF t846 = abap_true.
      DATA t847 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t847.
      DATA t848 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t848.
      DATA t849 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t849.
      DATA(t850) = abap_true.
      IF t850 = abap_true.
        DATA(t851) = |OpenABAP|.
        DATA(t852) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t852->has = abap_true.
        t852->value = t851.
        t849 = t852.
      ELSE.
        DATA t853 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t853.
        t849 = t853.
      ENDIF.
      t848 = t849.
      t847 = NEW zcl_lnt_iver_options( i_also = t848 ).
      CREATE OBJECT t847->zlnt_view_ownkeys_b0e8086400eb.
      t847->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t854 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t854.
      IF t847->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t847->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t854 ).
      ENDIF.
      CREATE OBJECT t847->zlnt_json_ownkeys_70e5fd461788.
      t847->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t855) = |also|.
      DATA t856 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t856.
      IF t847->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t847->zlnt_json_ownkeys_70e5fd461788->put( p0 = t855 p1 = t856 ).
      ENDIF.
      t845 = t847.
    ELSE.
      DATA t857 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t857.
      t845 = t857.
    ENDIF.
    t819 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t820 i_first = t827 i_opts = t845 ).
    t818->load( ).
    APPEND t819 TO t818->items.
    t818->save( ).
    DATA(t858) = t16.
    DATA t859 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t859.
    DATA t860 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t860.
    DATA t861 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t861.
    DATA t862 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t862.
    DATA t863 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t863.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t863 = zcl_lnt_version_module=>release_b8cd.
    DATA(t864) = |v776|.
    t862 = t863->get( p0 = t864 ).
    t861 = t862.
    CLEAR t860.
    IF t861 IS BOUND.
      DATA t865 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t865.
      DATA t866 TYPE REF TO object.
      CLEAR t866.
      CLEAR t865.
      t866 = t861.
      TRY.
          t860 ?= t866.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t860 IS NOT BOUND.
        TRY.
            t865 ?= t861.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t865 IS BOUND.
          t860 = t865->source( ).
        ENDIF.
        IF t860 IS NOT BOUND.
          CREATE OBJECT t860.
          t860->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t860->oval = t861.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t867 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t867.
    DATA t868 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t868.
    DATA t869 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t869.
    DATA t870 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t870.
    DATA(t871) = |FEATURES KEY|.
    CLEAR t870.
    CREATE OBJECT t870.
    t870->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t870->sval = t871.
    t869 = t870.
    DATA t872 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t872.
    DATA t873 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t873.
    DATA(t874) = t1.
    CLEAR t873.
    IF t874 IS BOUND.
      DATA t875 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t875.
      DATA t876 TYPE REF TO object.
      CLEAR t876.
      CLEAR t875.
      t876 = t874.
      TRY.
          t873 ?= t876.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t873 IS NOT BOUND.
        TRY.
            t875 ?= t874.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t875 IS BOUND.
          t873 = t875->source( ).
        ENDIF.
        IF t873 IS NOT BOUND.
          CREATE OBJECT t873.
          t873->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t873->oval = t874.
        ENDIF.
      ENDIF.
    ENDIF.
    t872 = t873.
    DATA t877 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t877.
    DATA t878 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t878.
    CREATE OBJECT t878.
    t877 = t878.
    DATA t879 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t879.
    DATA(t880) = t869.
    DATA(t881) = t872.
    DATA(t882) = t877.
    t879 = zcl_lnt_st_combi_module=>seq( i_first = t880 i_second = t881 i_rest = t882 ).
    t868 = t879.
    CLEAR t867.
    IF t868 IS BOUND.
      DATA t883 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t883.
      DATA t884 TYPE REF TO object.
      CLEAR t884.
      CLEAR t883.
      t884 = t868.
      TRY.
          t867 ?= t884.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t867 IS NOT BOUND.
        TRY.
            t883 ?= t868.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t883 IS BOUND.
          t867 = t883->source( ).
        ENDIF.
        IF t867 IS NOT BOUND.
          CREATE OBJECT t867.
          t867->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t867->oval = t868.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t885 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t885.
    DATA(t886) = abap_true.
    IF t886 = abap_true.
      DATA t887 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t887.
      DATA t888 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t888.
      DATA t889 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t889.
      DATA(t890) = abap_true.
      IF t890 = abap_true.
        DATA(t891) = |OpenABAP|.
        DATA(t892) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t892->has = abap_true.
        t892->value = t891.
        t889 = t892.
      ELSE.
        DATA t893 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t893.
        t889 = t893.
      ENDIF.
      t888 = t889.
      t887 = NEW zcl_lnt_iver_options( i_also = t888 ).
      CREATE OBJECT t887->zlnt_view_ownkeys_b0e8086400eb.
      t887->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t894 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t894.
      IF t887->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t887->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t894 ).
      ENDIF.
      CREATE OBJECT t887->zlnt_json_ownkeys_70e5fd461788.
      t887->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t895) = |also|.
      DATA t896 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t896.
      IF t887->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t887->zlnt_json_ownkeys_70e5fd461788->put( p0 = t895 p1 = t896 ).
      ENDIF.
      t885 = t887.
    ELSE.
      DATA t897 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t897.
      t885 = t897.
    ENDIF.
    t859 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t860 i_first = t867 i_opts = t885 ).
    t858->load( ).
    APPEND t859 TO t858->items.
    t858->save( ).
    DATA(t898) = t16.
    DATA t899 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t899.
    DATA t900 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t900.
    DATA t901 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t901.
    DATA t902 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t902.
    DATA t903 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t903.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t903 = zcl_lnt_version_module=>release_b8cd.
    DATA(t904) = |v780|.
    t902 = t903->get( p0 = t904 ).
    t901 = t902.
    CLEAR t900.
    IF t901 IS BOUND.
      DATA t905 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t905.
      DATA t906 TYPE REF TO object.
      CLEAR t906.
      CLEAR t905.
      t906 = t901.
      TRY.
          t900 ?= t906.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t900 IS NOT BOUND.
        TRY.
            t905 ?= t901.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t905 IS BOUND.
          t900 = t905->source( ).
        ENDIF.
        IF t900 IS NOT BOUND.
          CREATE OBJECT t900.
          t900->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t900->oval = t901.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t907 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t907.
    DATA t908 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t908.
    DATA t909 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t909.
    DATA t910 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t910.
    DATA(t911) = |PERMISSIONS KEY|.
    CLEAR t910.
    CREATE OBJECT t910.
    t910->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t910->sval = t911.
    t909 = t910.
    DATA t912 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t912.
    DATA t913 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t913.
    DATA(t914) = t1.
    CLEAR t913.
    IF t914 IS BOUND.
      DATA t915 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t915.
      DATA t916 TYPE REF TO object.
      CLEAR t916.
      CLEAR t915.
      t916 = t914.
      TRY.
          t913 ?= t916.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t913 IS NOT BOUND.
        TRY.
            t915 ?= t914.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t915 IS BOUND.
          t913 = t915->source( ).
        ENDIF.
        IF t913 IS NOT BOUND.
          CREATE OBJECT t913.
          t913->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t913->oval = t914.
        ENDIF.
      ENDIF.
    ENDIF.
    t912 = t913.
    DATA t917 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t917.
    DATA t918 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t918.
    CREATE OBJECT t918.
    t917 = t918.
    DATA t919 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t919.
    DATA(t920) = t909.
    DATA(t921) = t912.
    DATA(t922) = t917.
    t919 = zcl_lnt_st_combi_module=>seq( i_first = t920 i_second = t921 i_rest = t922 ).
    t908 = t919.
    CLEAR t907.
    IF t908 IS BOUND.
      DATA t923 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t923.
      DATA t924 TYPE REF TO object.
      CLEAR t924.
      CLEAR t923.
      t924 = t908.
      TRY.
          t907 ?= t924.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t907 IS NOT BOUND.
        TRY.
            t923 ?= t908.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t923 IS BOUND.
          t907 = t923->source( ).
        ENDIF.
        IF t907 IS NOT BOUND.
          CREATE OBJECT t907.
          t907->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t907->oval = t908.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t925 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t925.
    DATA(t926) = abap_true.
    IF t926 = abap_true.
      DATA t927 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t927.
      DATA t928 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t928.
      DATA t929 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t929.
      DATA(t930) = abap_true.
      IF t930 = abap_true.
        DATA(t931) = |OpenABAP|.
        DATA(t932) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t932->has = abap_true.
        t932->value = t931.
        t929 = t932.
      ELSE.
        DATA t933 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t933.
        t929 = t933.
      ENDIF.
      t928 = t929.
      t927 = NEW zcl_lnt_iver_options( i_also = t928 ).
      CREATE OBJECT t927->zlnt_view_ownkeys_b0e8086400eb.
      t927->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t934 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t934.
      IF t927->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t927->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t934 ).
      ENDIF.
      CREATE OBJECT t927->zlnt_json_ownkeys_70e5fd461788.
      t927->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t935) = |also|.
      DATA t936 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t936.
      IF t927->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t927->zlnt_json_ownkeys_70e5fd461788->put( p0 = t935 p1 = t936 ).
      ENDIF.
      t925 = t927.
    ELSE.
      DATA t937 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t937.
      t925 = t937.
    ENDIF.
    t899 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t900 i_first = t907 i_opts = t925 ).
    t898->load( ).
    APPEND t899 TO t898->items.
    t898->save( ).
    DATA(t938) = t16.
    DATA t939 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t939.
    DATA t940 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t940.
    DATA t941 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t941.
    DATA(t942) = |READ IMPORT|.
    CLEAR t941.
    CREATE OBJECT t941.
    t941->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t941->sval = t942.
    t940 = t941.
    DATA t943 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t943.
    DATA t944 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t944.
    DATA(t945) = t1.
    CLEAR t944.
    IF t945 IS BOUND.
      DATA t946 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t946.
      DATA t947 TYPE REF TO object.
      CLEAR t947.
      CLEAR t946.
      t947 = t945.
      TRY.
          t944 ?= t947.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t944 IS NOT BOUND.
        TRY.
            t946 ?= t945.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t946 IS BOUND.
          t944 = t946->source( ).
        ENDIF.
        IF t944 IS NOT BOUND.
          CREATE OBJECT t944.
          t944->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t944->oval = t945.
        ENDIF.
      ENDIF.
    ENDIF.
    t943 = t944.
    DATA t948 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t948.
    DATA t949 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t949.
    CREATE OBJECT t949.
    t948 = t949.
    DATA t950 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t950.
    DATA(t951) = t940.
    DATA(t952) = t943.
    DATA(t953) = t948.
    t950 = zcl_lnt_st_combi_module=>seq( i_first = t951 i_second = t952 i_rest = t953 ).
    t939 = t950.
    t938->load( ).
    APPEND t939 TO t938->items.
    t938->save( ).
    DATA(t954) = t16.
    DATA t955 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t955.
    DATA t956 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t956.
    DATA t957 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t957.
    DATA(t958) = |READ RESULT|.
    CLEAR t957.
    CREATE OBJECT t957.
    t957->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t957->sval = t958.
    t956 = t957.
    DATA t959 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t959.
    DATA t960 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t960.
    DATA(t961) = t1.
    CLEAR t960.
    IF t961 IS BOUND.
      DATA t962 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t962.
      DATA t963 TYPE REF TO object.
      CLEAR t963.
      CLEAR t962.
      t963 = t961.
      TRY.
          t960 ?= t963.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t960 IS NOT BOUND.
        TRY.
            t962 ?= t961.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t962 IS BOUND.
          t960 = t962->source( ).
        ENDIF.
        IF t960 IS NOT BOUND.
          CREATE OBJECT t960.
          t960->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t960->oval = t961.
        ENDIF.
      ENDIF.
    ENDIF.
    t959 = t960.
    DATA t964 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t964.
    DATA t965 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t965.
    CREATE OBJECT t965.
    t964 = t965.
    DATA t966 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t966.
    DATA(t967) = t956.
    DATA(t968) = t959.
    DATA(t969) = t964.
    t966 = zcl_lnt_st_combi_module=>seq( i_first = t967 i_second = t968 i_rest = t969 ).
    t955 = t966.
    t954->load( ).
    APPEND t955 TO t954->items.
    t954->save( ).
    DATA(t970) = t16.
    DATA t971 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t971.
    DATA t972 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t972.
    DATA t973 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t973.
    DATA t974 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t974.
    DATA t975 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t975.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t975 = zcl_lnt_version_module=>release_b8cd.
    DATA(t976) = |v915|.
    t974 = t975->get( p0 = t976 ).
    t973 = t974.
    CLEAR t972.
    IF t973 IS BOUND.
      DATA t977 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t977.
      DATA t978 TYPE REF TO object.
      CLEAR t978.
      CLEAR t977.
      t978 = t973.
      TRY.
          t972 ?= t978.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t972 IS NOT BOUND.
        TRY.
            t977 ?= t973.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t977 IS BOUND.
          t972 = t977->source( ).
        ENDIF.
        IF t972 IS NOT BOUND.
          CREATE OBJECT t972.
          t972->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t972->oval = t973.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t979 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t979.
    DATA t980 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t980.
    DATA t981 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t981.
    DATA t982 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t982.
    DATA(t983) = |READ CHANGES|.
    CLEAR t982.
    CREATE OBJECT t982.
    t982->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t982->sval = t983.
    t981 = t982.
    DATA t984 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t984.
    DATA t985 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t985.
    DATA(t986) = t1.
    CLEAR t985.
    IF t986 IS BOUND.
      DATA t987 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t987.
      DATA t988 TYPE REF TO object.
      CLEAR t988.
      CLEAR t987.
      t988 = t986.
      TRY.
          t985 ?= t988.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t985 IS NOT BOUND.
        TRY.
            t987 ?= t986.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t987 IS BOUND.
          t985 = t987->source( ).
        ENDIF.
        IF t985 IS NOT BOUND.
          CREATE OBJECT t985.
          t985->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t985->oval = t986.
        ENDIF.
      ENDIF.
    ENDIF.
    t984 = t985.
    DATA t989 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t989.
    DATA t990 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t990.
    CREATE OBJECT t990.
    t989 = t990.
    DATA t991 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t991.
    DATA(t992) = t981.
    DATA(t993) = t984.
    DATA(t994) = t989.
    t991 = zcl_lnt_st_combi_module=>seq( i_first = t992 i_second = t993 i_rest = t994 ).
    t980 = t991.
    CLEAR t979.
    IF t980 IS BOUND.
      DATA t995 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t995.
      DATA t996 TYPE REF TO object.
      CLEAR t996.
      CLEAR t995.
      t996 = t980.
      TRY.
          t979 ?= t996.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t979 IS NOT BOUND.
        TRY.
            t995 ?= t980.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t995 IS BOUND.
          t979 = t995->source( ).
        ENDIF.
        IF t979 IS NOT BOUND.
          CREATE OBJECT t979.
          t979->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t979->oval = t980.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t997 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t997.
    DATA(t998) = abap_true.
    IF t998 = abap_true.
      DATA t999 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t999.
      DATA t1000 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1000.
      DATA t1001 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1001.
      DATA(t1002) = abap_true.
      IF t1002 = abap_true.
        DATA(t1003) = |OpenABAP|.
        DATA(t1004) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1004->has = abap_true.
        t1004->value = t1003.
        t1001 = t1004.
      ELSE.
        DATA t1005 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1005.
        t1001 = t1005.
      ENDIF.
      t1000 = t1001.
      t999 = NEW zcl_lnt_iver_options( i_also = t1000 ).
      CREATE OBJECT t999->zlnt_view_ownkeys_b0e8086400eb.
      t999->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t1006 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1006.
      IF t999->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t999->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t1006 ).
      ENDIF.
      CREATE OBJECT t999->zlnt_json_ownkeys_70e5fd461788.
      t999->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t1007) = |also|.
      DATA t1008 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1008.
      IF t999->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t999->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1007 p1 = t1008 ).
      ENDIF.
      t997 = t999.
    ELSE.
      DATA t1009 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t1009.
      t997 = t1009.
    ENDIF.
    t971 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t972 i_first = t979 i_opts = t997 ).
    t970->load( ).
    APPEND t971 TO t970->items.
    t970->save( ).
    DATA(t1010) = t16.
    DATA t1011 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1011.
    DATA t1012 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1012.
    DATA t1013 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1013.
    DATA(t1014) = |CREATE|.
    CLEAR t1013.
    CREATE OBJECT t1013.
    t1013->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1013->sval = t1014.
    t1012 = t1013.
    DATA t1015 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1015.
    DATA t1016 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1016.
    DATA(t1017) = t1.
    CLEAR t1016.
    IF t1017 IS BOUND.
      DATA t1018 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t1018.
      DATA t1019 TYPE REF TO object.
      CLEAR t1019.
      CLEAR t1018.
      t1019 = t1017.
      TRY.
          t1016 ?= t1019.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1016 IS NOT BOUND.
        TRY.
            t1018 ?= t1017.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1018 IS BOUND.
          t1016 = t1018->source( ).
        ENDIF.
        IF t1016 IS NOT BOUND.
          CREATE OBJECT t1016.
          t1016->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1016->oval = t1017.
        ENDIF.
      ENDIF.
    ENDIF.
    t1015 = t1016.
    DATA t1020 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1020.
    DATA t1021 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1021.
    CREATE OBJECT t1021.
    t1020 = t1021.
    DATA t1022 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1022.
    DATA(t1023) = t1012.
    DATA(t1024) = t1015.
    DATA(t1025) = t1020.
    t1022 = zcl_lnt_st_combi_module=>seq( i_first = t1023 i_second = t1024 i_rest = t1025 ).
    t1011 = t1022.
    t1010->load( ).
    APPEND t1011 TO t1010->items.
    t1010->save( ).
    DATA(t1026) = t16.
    DATA t1027 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1027.
    DATA t1028 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1028.
    DATA t1029 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1029.
    DATA(t1030) = |DELETE|.
    CLEAR t1029.
    CREATE OBJECT t1029.
    t1029->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1029->sval = t1030.
    t1028 = t1029.
    DATA t1031 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1031.
    DATA t1032 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1032.
    DATA(t1033) = t1.
    CLEAR t1032.
    IF t1033 IS BOUND.
      DATA t1034 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t1034.
      DATA t1035 TYPE REF TO object.
      CLEAR t1035.
      CLEAR t1034.
      t1035 = t1033.
      TRY.
          t1032 ?= t1035.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1032 IS NOT BOUND.
        TRY.
            t1034 ?= t1033.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1034 IS BOUND.
          t1032 = t1034->source( ).
        ENDIF.
        IF t1032 IS NOT BOUND.
          CREATE OBJECT t1032.
          t1032->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1032->oval = t1033.
        ENDIF.
      ENDIF.
    ENDIF.
    t1031 = t1032.
    DATA t1036 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1036.
    DATA t1037 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1037.
    CREATE OBJECT t1037.
    t1036 = t1037.
    DATA t1038 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1038.
    DATA(t1039) = t1028.
    DATA(t1040) = t1031.
    DATA(t1041) = t1036.
    t1038 = zcl_lnt_st_combi_module=>seq( i_first = t1039 i_second = t1040 i_rest = t1041 ).
    t1027 = t1038.
    t1026->load( ).
    APPEND t1027 TO t1026->items.
    t1026->save( ).
    DATA(t1042) = t16.
    DATA t1043 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1043.
    DATA t1044 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1044.
    DATA t1045 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1045.
    DATA(t1046) = |UPDATE|.
    CLEAR t1045.
    CREATE OBJECT t1045.
    t1045->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1045->sval = t1046.
    t1044 = t1045.
    DATA t1047 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1047.
    DATA t1048 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1048.
    DATA(t1049) = t1.
    CLEAR t1048.
    IF t1049 IS BOUND.
      DATA t1050 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t1050.
      DATA t1051 TYPE REF TO object.
      CLEAR t1051.
      CLEAR t1050.
      t1051 = t1049.
      TRY.
          t1048 ?= t1051.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1048 IS NOT BOUND.
        TRY.
            t1050 ?= t1049.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1050 IS BOUND.
          t1048 = t1050->source( ).
        ENDIF.
        IF t1048 IS NOT BOUND.
          CREATE OBJECT t1048.
          t1048->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1048->oval = t1049.
        ENDIF.
      ENDIF.
    ENDIF.
    t1047 = t1048.
    DATA t1052 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1052.
    DATA t1053 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1053.
    CREATE OBJECT t1053.
    t1052 = t1053.
    DATA t1054 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1054.
    DATA(t1055) = t1044.
    DATA(t1056) = t1047.
    DATA(t1057) = t1052.
    t1054 = zcl_lnt_st_combi_module=>seq( i_first = t1055 i_second = t1056 i_rest = t1057 ).
    t1043 = t1054.
    t1042->load( ).
    APPEND t1043 TO t1042->items.
    t1042->save( ).
    DATA(t1058) = t16.
    DATA t1059 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1059.
    DATA t1060 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1060.
    DATA t1061 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1061.
    DATA t1062 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1062.
    DATA t1063 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1063.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1063 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1064) = |v777|.
    t1062 = t1063->get( p0 = t1064 ).
    t1061 = t1062.
    CLEAR t1060.
    IF t1061 IS BOUND.
      DATA t1065 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t1065.
      DATA t1066 TYPE REF TO object.
      CLEAR t1066.
      CLEAR t1065.
      t1066 = t1061.
      TRY.
          t1060 ?= t1066.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1060 IS NOT BOUND.
        TRY.
            t1065 ?= t1061.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1065 IS BOUND.
          t1060 = t1065->source( ).
        ENDIF.
        IF t1060 IS NOT BOUND.
          CREATE OBJECT t1060.
          t1060->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1060->oval = t1061.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1067 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1067.
    DATA t1068 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1068.
    DATA t1069 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1069.
    DATA t1070 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1070.
    DATA(t1071) = |LOCK|.
    CLEAR t1070.
    CREATE OBJECT t1070.
    t1070->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1070->sval = t1071.
    t1069 = t1070.
    DATA t1072 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1072.
    DATA t1073 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1073.
    DATA(t1074) = t1.
    CLEAR t1073.
    IF t1074 IS BOUND.
      DATA t1075 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t1075.
      DATA t1076 TYPE REF TO object.
      CLEAR t1076.
      CLEAR t1075.
      t1076 = t1074.
      TRY.
          t1073 ?= t1076.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1073 IS NOT BOUND.
        TRY.
            t1075 ?= t1074.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1075 IS BOUND.
          t1073 = t1075->source( ).
        ENDIF.
        IF t1073 IS NOT BOUND.
          CREATE OBJECT t1073.
          t1073->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1073->oval = t1074.
        ENDIF.
      ENDIF.
    ENDIF.
    t1072 = t1073.
    DATA t1077 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1077.
    DATA t1078 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1078.
    CREATE OBJECT t1078.
    t1077 = t1078.
    DATA t1079 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1079.
    DATA(t1080) = t1069.
    DATA(t1081) = t1072.
    DATA(t1082) = t1077.
    t1079 = zcl_lnt_st_combi_module=>seq( i_first = t1080 i_second = t1081 i_rest = t1082 ).
    t1068 = t1079.
    CLEAR t1067.
    IF t1068 IS BOUND.
      DATA t1083 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t1083.
      DATA t1084 TYPE REF TO object.
      CLEAR t1084.
      CLEAR t1083.
      t1084 = t1068.
      TRY.
          t1067 ?= t1084.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1067 IS NOT BOUND.
        TRY.
            t1083 ?= t1068.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1083 IS BOUND.
          t1067 = t1083->source( ).
        ENDIF.
        IF t1067 IS NOT BOUND.
          CREATE OBJECT t1067.
          t1067->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1067->oval = t1068.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1085 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t1085.
    DATA(t1086) = abap_true.
    IF t1086 = abap_true.
      DATA t1087 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t1087.
      DATA t1088 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1088.
      DATA t1089 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1089.
      DATA(t1090) = abap_true.
      IF t1090 = abap_true.
        DATA(t1091) = |OpenABAP|.
        DATA(t1092) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1092->has = abap_true.
        t1092->value = t1091.
        t1089 = t1092.
      ELSE.
        DATA t1093 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1093.
        t1089 = t1093.
      ENDIF.
      t1088 = t1089.
      t1087 = NEW zcl_lnt_iver_options( i_also = t1088 ).
      CREATE OBJECT t1087->zlnt_view_ownkeys_b0e8086400eb.
      t1087->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t1094 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1094.
      IF t1087->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t1087->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t1094 ).
      ENDIF.
      CREATE OBJECT t1087->zlnt_json_ownkeys_70e5fd461788.
      t1087->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t1095) = |also|.
      DATA t1096 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1096.
      IF t1087->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t1087->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1095 p1 = t1096 ).
      ENDIF.
      t1085 = t1087.
    ELSE.
      DATA t1097 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t1097.
      t1085 = t1097.
    ENDIF.
    t1059 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t1060 i_first = t1067 i_opts = t1085 ).
    t1058->load( ).
    APPEND t1059 TO t1058->items.
    t1058->save( ).
    DATA(t1098) = t16.
    DATA t1099 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1099.
    DATA t1100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1100.
    DATA t1101 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1101.
    DATA t1102 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1102.
    DATA t1103 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1103.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1103 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1104) = |v775|.
    t1102 = t1103->get( p0 = t1104 ).
    t1101 = t1102.
    CLEAR t1100.
    IF t1101 IS BOUND.
      DATA t1105 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t1105.
      DATA t1106 TYPE REF TO object.
      CLEAR t1106.
      CLEAR t1105.
      t1106 = t1101.
      TRY.
          t1100 ?= t1106.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1100 IS NOT BOUND.
        TRY.
            t1105 ?= t1101.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1105 IS BOUND.
          t1100 = t1105->source( ).
        ENDIF.
        IF t1100 IS NOT BOUND.
          CREATE OBJECT t1100.
          t1100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1100->oval = t1101.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1107.
    DATA t1108 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1108.
    DATA t1109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1109.
    DATA t1110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1110.
    DATA(t1111) = |KEY OF|.
    CLEAR t1110.
    CREATE OBJECT t1110.
    t1110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1110->sval = t1111.
    t1109 = t1110.
    DATA t1112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1112.
    DATA t1113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1113.
    DATA(t1114) = t1.
    CLEAR t1113.
    IF t1114 IS BOUND.
      DATA t1115 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t1115.
      DATA t1116 TYPE REF TO object.
      CLEAR t1116.
      CLEAR t1115.
      t1116 = t1114.
      TRY.
          t1113 ?= t1116.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1113 IS NOT BOUND.
        TRY.
            t1115 ?= t1114.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1115 IS BOUND.
          t1113 = t1115->source( ).
        ENDIF.
        IF t1113 IS NOT BOUND.
          CREATE OBJECT t1113.
          t1113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1113->oval = t1114.
        ENDIF.
      ENDIF.
    ENDIF.
    t1112 = t1113.
    DATA t1117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1117.
    DATA t1118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1118.
    CREATE OBJECT t1118.
    t1117 = t1118.
    DATA t1119 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1119.
    DATA(t1120) = t1109.
    DATA(t1121) = t1112.
    DATA(t1122) = t1117.
    t1119 = zcl_lnt_st_combi_module=>seq( i_first = t1120 i_second = t1121 i_rest = t1122 ).
    t1108 = t1119.
    CLEAR t1107.
    IF t1108 IS BOUND.
      DATA t1123 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t1123.
      DATA t1124 TYPE REF TO object.
      CLEAR t1124.
      CLEAR t1123.
      t1124 = t1108.
      TRY.
          t1107 ?= t1124.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1107 IS NOT BOUND.
        TRY.
            t1123 ?= t1108.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1123 IS BOUND.
          t1107 = t1123->source( ).
        ENDIF.
        IF t1107 IS NOT BOUND.
          CREATE OBJECT t1107.
          t1107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1107->oval = t1108.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1125 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t1125.
    DATA(t1126) = abap_true.
    IF t1126 = abap_true.
      DATA t1127 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t1127.
      DATA t1128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1128.
      DATA t1129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1129.
      DATA(t1130) = abap_true.
      IF t1130 = abap_true.
        DATA(t1131) = |OpenABAP|.
        DATA(t1132) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1132->has = abap_true.
        t1132->value = t1131.
        t1129 = t1132.
      ELSE.
        DATA t1133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1133.
        t1129 = t1133.
      ENDIF.
      t1128 = t1129.
      t1127 = NEW zcl_lnt_iver_options( i_also = t1128 ).
      CREATE OBJECT t1127->zlnt_view_ownkeys_b0e8086400eb.
      t1127->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t1134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1134.
      IF t1127->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t1127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t1134 ).
      ENDIF.
      CREATE OBJECT t1127->zlnt_json_ownkeys_70e5fd461788.
      t1127->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t1135) = |also|.
      DATA t1136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1136.
      IF t1127->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t1127->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1135 p1 = t1136 ).
      ENDIF.
      t1125 = t1127.
    ELSE.
      DATA t1137 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t1137.
      t1125 = t1137.
    ENDIF.
    t1099 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t1100 i_first = t1107 i_opts = t1125 ).
    t1098->load( ).
    APPEND t1099 TO t1098->items.
    t1098->save( ).
    DATA(t1138) = t16.
    DATA t1139 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1139.
    DATA t1140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1140.
    DATA t1141 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1141.
    DATA t1142 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1142.
    DATA t1143 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1143.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1143 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1144) = |v776|.
    t1142 = t1143->get( p0 = t1144 ).
    t1141 = t1142.
    CLEAR t1140.
    IF t1141 IS BOUND.
      DATA t1145 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t1145.
      DATA t1146 TYPE REF TO object.
      CLEAR t1146.
      CLEAR t1145.
      t1146 = t1141.
      TRY.
          t1140 ?= t1146.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1140 IS NOT BOUND.
        TRY.
            t1145 ?= t1141.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1145 IS BOUND.
          t1140 = t1145->source( ).
        ENDIF.
        IF t1140 IS NOT BOUND.
          CREATE OBJECT t1140.
          t1140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1140->oval = t1141.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1147.
    DATA t1148 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1148.
    DATA t1149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1149.
    DATA t1150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1150.
    DATA(t1151) = |DETERMINATION|.
    CLEAR t1150.
    CREATE OBJECT t1150.
    t1150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1150->sval = t1151.
    t1149 = t1150.
    DATA t1152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1152.
    DATA t1153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1153.
    DATA(t1154) = t1.
    CLEAR t1153.
    IF t1154 IS BOUND.
      DATA t1155 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t1155.
      DATA t1156 TYPE REF TO object.
      CLEAR t1156.
      CLEAR t1155.
      t1156 = t1154.
      TRY.
          t1153 ?= t1156.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1153 IS NOT BOUND.
        TRY.
            t1155 ?= t1154.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1155 IS BOUND.
          t1153 = t1155->source( ).
        ENDIF.
        IF t1153 IS NOT BOUND.
          CREATE OBJECT t1153.
          t1153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1153->oval = t1154.
        ENDIF.
      ENDIF.
    ENDIF.
    t1152 = t1153.
    DATA t1157 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1157.
    DATA t1158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1158.
    CREATE OBJECT t1158.
    t1157 = t1158.
    DATA t1159 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1159.
    DATA(t1160) = t1149.
    DATA(t1161) = t1152.
    DATA(t1162) = t1157.
    t1159 = zcl_lnt_st_combi_module=>seq( i_first = t1160 i_second = t1161 i_rest = t1162 ).
    t1148 = t1159.
    CLEAR t1147.
    IF t1148 IS BOUND.
      DATA t1163 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t1163.
      DATA t1164 TYPE REF TO object.
      CLEAR t1164.
      CLEAR t1163.
      t1164 = t1148.
      TRY.
          t1147 ?= t1164.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1147 IS NOT BOUND.
        TRY.
            t1163 ?= t1148.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1163 IS BOUND.
          t1147 = t1163->source( ).
        ENDIF.
        IF t1147 IS NOT BOUND.
          CREATE OBJECT t1147.
          t1147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1147->oval = t1148.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1165 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t1165.
    DATA(t1166) = abap_true.
    IF t1166 = abap_true.
      DATA t1167 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t1167.
      DATA t1168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1168.
      DATA t1169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1169.
      DATA(t1170) = abap_true.
      IF t1170 = abap_true.
        DATA(t1171) = |OpenABAP|.
        DATA(t1172) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1172->has = abap_true.
        t1172->value = t1171.
        t1169 = t1172.
      ELSE.
        DATA t1173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1173.
        t1169 = t1173.
      ENDIF.
      t1168 = t1169.
      t1167 = NEW zcl_lnt_iver_options( i_also = t1168 ).
      CREATE OBJECT t1167->zlnt_view_ownkeys_b0e8086400eb.
      t1167->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t1174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1174.
      IF t1167->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t1167->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t1174 ).
      ENDIF.
      CREATE OBJECT t1167->zlnt_json_ownkeys_70e5fd461788.
      t1167->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t1175) = |also|.
      DATA t1176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1176.
      IF t1167->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t1167->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1175 p1 = t1176 ).
      ENDIF.
      t1165 = t1167.
    ELSE.
      DATA t1177 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t1177.
      t1165 = t1177.
    ENDIF.
    t1139 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t1140 i_first = t1147 i_opts = t1165 ).
    t1138->load( ).
    APPEND t1139 TO t1138->items.
    t1138->save( ).
    DATA(t1178) = t16.
    DATA t1179 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1179.
    DATA t1180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1180.
    DATA t1181 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1181.
    DATA t1182 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1182.
    DATA t1183 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1183.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1183 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1184) = |v776|.
    t1182 = t1183->get( p0 = t1184 ).
    t1181 = t1182.
    CLEAR t1180.
    IF t1181 IS BOUND.
      DATA t1185 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t1185.
      DATA t1186 TYPE REF TO object.
      CLEAR t1186.
      CLEAR t1185.
      t1186 = t1181.
      TRY.
          t1180 ?= t1186.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1180 IS NOT BOUND.
        TRY.
            t1185 ?= t1181.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1185 IS BOUND.
          t1180 = t1185->source( ).
        ENDIF.
        IF t1180 IS NOT BOUND.
          CREATE OBJECT t1180.
          t1180->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1180->oval = t1181.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1187.
    DATA t1188 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1188.
    DATA t1189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1189.
    DATA t1190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1190.
    DATA(t1191) = |VALIDATION|.
    CLEAR t1190.
    CREATE OBJECT t1190.
    t1190->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1190->sval = t1191.
    t1189 = t1190.
    DATA t1192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1192.
    DATA t1193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1193.
    DATA(t1194) = t1.
    CLEAR t1193.
    IF t1194 IS BOUND.
      DATA t1195 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t1195.
      DATA t1196 TYPE REF TO object.
      CLEAR t1196.
      CLEAR t1195.
      t1196 = t1194.
      TRY.
          t1193 ?= t1196.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1193 IS NOT BOUND.
        TRY.
            t1195 ?= t1194.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1195 IS BOUND.
          t1193 = t1195->source( ).
        ENDIF.
        IF t1193 IS NOT BOUND.
          CREATE OBJECT t1193.
          t1193->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1193->oval = t1194.
        ENDIF.
      ENDIF.
    ENDIF.
    t1192 = t1193.
    DATA t1197 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1197.
    DATA t1198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1198.
    CREATE OBJECT t1198.
    t1197 = t1198.
    DATA t1199 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1199.
    DATA(t1200) = t1189.
    DATA(t1201) = t1192.
    DATA(t1202) = t1197.
    t1199 = zcl_lnt_st_combi_module=>seq( i_first = t1200 i_second = t1201 i_rest = t1202 ).
    t1188 = t1199.
    CLEAR t1187.
    IF t1188 IS BOUND.
      DATA t1203 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t1203.
      DATA t1204 TYPE REF TO object.
      CLEAR t1204.
      CLEAR t1203.
      t1204 = t1188.
      TRY.
          t1187 ?= t1204.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1187 IS NOT BOUND.
        TRY.
            t1203 ?= t1188.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1203 IS BOUND.
          t1187 = t1203->source( ).
        ENDIF.
        IF t1187 IS NOT BOUND.
          CREATE OBJECT t1187.
          t1187->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1187->oval = t1188.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1205 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t1205.
    DATA(t1206) = abap_true.
    IF t1206 = abap_true.
      DATA t1207 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t1207.
      DATA t1208 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1208.
      DATA t1209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1209.
      DATA(t1210) = abap_true.
      IF t1210 = abap_true.
        DATA(t1211) = |OpenABAP|.
        DATA(t1212) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1212->has = abap_true.
        t1212->value = t1211.
        t1209 = t1212.
      ELSE.
        DATA t1213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1213.
        t1209 = t1213.
      ENDIF.
      t1208 = t1209.
      t1207 = NEW zcl_lnt_iver_options( i_also = t1208 ).
      CREATE OBJECT t1207->zlnt_view_ownkeys_b0e8086400eb.
      t1207->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t1214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1214.
      IF t1207->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t1207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t1214 ).
      ENDIF.
      CREATE OBJECT t1207->zlnt_json_ownkeys_70e5fd461788.
      t1207->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t1215) = |also|.
      DATA t1216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1216.
      IF t1207->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t1207->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1215 p1 = t1216 ).
      ENDIF.
      t1205 = t1207.
    ELSE.
      DATA t1217 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t1217.
      t1205 = t1217.
    ENDIF.
    t1179 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t1180 i_first = t1187 i_opts = t1205 ).
    t1178->load( ).
    APPEND t1179 TO t1178->items.
    t1178->save( ).
    DATA(t1218) = t16.
    DATA t1219 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1219.
    DATA t1220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1220.
    DATA t1221 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1221.
    DATA t1222 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t1222.
    DATA t1223 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t1223.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t1223 = zcl_lnt_version_module=>release_b8cd.
    DATA(t1224) = |v778|.
    t1222 = t1223->get( p0 = t1224 ).
    t1221 = t1222.
    CLEAR t1220.
    IF t1221 IS BOUND.
      DATA t1225 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t1225.
      DATA t1226 TYPE REF TO object.
      CLEAR t1226.
      CLEAR t1225.
      t1226 = t1221.
      TRY.
          t1220 ?= t1226.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1220 IS NOT BOUND.
        TRY.
            t1225 ?= t1221.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1225 IS BOUND.
          t1220 = t1225->source( ).
        ENDIF.
        IF t1220 IS NOT BOUND.
          CREATE OBJECT t1220.
          t1220->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1220->oval = t1221.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1227.
    DATA t1228 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1228.
    DATA t1229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1229.
    DATA t1230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1230.
    DATA(t1231) = |CHANGE|.
    CLEAR t1230.
    CREATE OBJECT t1230.
    t1230->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1230->sval = t1231.
    t1229 = t1230.
    DATA t1232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1232.
    DATA t1233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1233.
    DATA(t1234) = t1.
    CLEAR t1233.
    IF t1234 IS BOUND.
      DATA t1235 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t1235.
      DATA t1236 TYPE REF TO object.
      CLEAR t1236.
      CLEAR t1235.
      t1236 = t1234.
      TRY.
          t1233 ?= t1236.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1233 IS NOT BOUND.
        TRY.
            t1235 ?= t1234.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1235 IS BOUND.
          t1233 = t1235->source( ).
        ENDIF.
        IF t1233 IS NOT BOUND.
          CREATE OBJECT t1233.
          t1233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1233->oval = t1234.
        ENDIF.
      ENDIF.
    ENDIF.
    t1232 = t1233.
    DATA t1237 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1237.
    DATA t1238 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t1238.
    CREATE OBJECT t1238.
    t1237 = t1238.
    DATA t1239 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1239.
    DATA(t1240) = t1229.
    DATA(t1241) = t1232.
    DATA(t1242) = t1237.
    t1239 = zcl_lnt_st_combi_module=>seq( i_first = t1240 i_second = t1241 i_rest = t1242 ).
    t1228 = t1239.
    CLEAR t1227.
    IF t1228 IS BOUND.
      DATA t1243 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t1243.
      DATA t1244 TYPE REF TO object.
      CLEAR t1244.
      CLEAR t1243.
      t1244 = t1228.
      TRY.
          t1227 ?= t1244.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1227 IS NOT BOUND.
        TRY.
            t1243 ?= t1228.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1243 IS BOUND.
          t1227 = t1243->source( ).
        ENDIF.
        IF t1227 IS NOT BOUND.
          CREATE OBJECT t1227.
          t1227->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1227->oval = t1228.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1245 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t1245.
    DATA(t1246) = abap_true.
    IF t1246 = abap_true.
      DATA t1247 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t1247.
      DATA t1248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1248.
      DATA t1249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t1249.
      DATA(t1250) = abap_true.
      IF t1250 = abap_true.
        DATA(t1251) = |OpenABAP|.
        DATA(t1252) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1252->has = abap_true.
        t1252->value = t1251.
        t1249 = t1252.
      ELSE.
        DATA t1253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1253.
        t1249 = t1253.
      ENDIF.
      t1248 = t1249.
      t1247 = NEW zcl_lnt_iver_options( i_also = t1248 ).
      CREATE OBJECT t1247->zlnt_view_ownkeys_b0e8086400eb.
      t1247->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t1254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1254.
      IF t1247->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t1247->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t1254 ).
      ENDIF.
      CREATE OBJECT t1247->zlnt_json_ownkeys_70e5fd461788.
      t1247->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t1255) = |also|.
      DATA t1256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1256.
      IF t1247->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t1247->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1255 p1 = t1256 ).
      ENDIF.
      t1245 = t1247.
    ELSE.
      DATA t1257 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t1257.
      t1245 = t1257.
    ENDIF.
    t1219 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t1220 i_first = t1227 i_opts = t1245 ).
    t1218->load( ).
    APPEND t1219 TO t1218->items.
    t1218->save( ).
    DATA(t1258) = t16.
    t15 = t1258.
    result = t15.

  ENDMETHOD.

  METHOD derived_types_alt.
    DATA(t1) = i_extra.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    CREATE OBJECT t5.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t7.
    DATA(t8) = t4.
    DATA(t9) = t1.
    t7 = t8->concat( p0 = t9 ).
    t6 = t7.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t11.
    DATA(t12) = t6.
    DATA(t13) = CAST zlnt_runtime_arra_c22708faf2e3( zcl_lnt_derived_types_module=>common_derived_types( ) ).
    t11 = t12->concat( p0 = t13 ).
    t10 = t11.
    DATA(t14) = t10.
    t3 = t14.
    t2 = t3.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t15.
    DATA(t16) = t2.
    t15 = t16.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t17.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA(t19) = t15.
    DATA t20 TYPE REF TO object.
    CLEAR t20.
    t19->load( ).
    CLEAR t20.
    READ TABLE t19->items INDEX 1 INTO t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    CLEAR t18.
    IF t20 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t21 ?= t20.
      DATA t22 TYPE REF TO object.
      CLEAR t22.
      t22 = t21->as_ref( ).
      t18 ?= t22.
    ELSE.
      t18 ?= t20.
    ENDIF.
    t17 = t18.
    DATA t23 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t23.
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t24.
    DATA(t25) = t15.
    DATA t26 TYPE REF TO object.
    CLEAR t26.
    t25->load( ).
    CLEAR t26.
    READ TABLE t25->items INDEX 2 INTO t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    CLEAR t24.
    IF t26 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t27 ?= t26.
      DATA t28 TYPE REF TO object.
      CLEAR t28.
      t28 = t27->as_ref( ).
      t24 ?= t28.
    ELSE.
      t24 ?= t26.
    ENDIF.
    t23 = t24.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t30.
    DATA(t31) = t15.
    DATA(t32) = 2.
    t30 = t31->slice1( p0 = t32 ).
    t29 = t30.
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA(t36) = t17.
    CLEAR t35.
    IF t36 IS BOUND.
      DATA t37 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t37.
      DATA t38 TYPE REF TO object.
      CLEAR t38.
      CLEAR t37.
      t38 = t36.
      TRY.
          t35 ?= t38.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t35 IS NOT BOUND.
        TRY.
            t37 ?= t36.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t37 IS BOUND.
          t35 = t37->source( ).
        ENDIF.
        IF t35 IS NOT BOUND.
          CREATE OBJECT t35.
          t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t35->oval = t36.
        ENDIF.
      ENDIF.
    ENDIF.
    t34 = t35.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA(t41) = t23.
    CLEAR t40.
    IF t41 IS BOUND.
      DATA t42 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t42.
      DATA t43 TYPE REF TO object.
      CLEAR t43.
      CLEAR t42.
      t43 = t41.
      TRY.
          t40 ?= t43.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t40 IS NOT BOUND.
        TRY.
            t42 ?= t41.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t42 IS BOUND.
          t40 = t42->source( ).
        ENDIF.
        IF t40 IS NOT BOUND.
          CREATE OBJECT t40.
          t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t40->oval = t41.
        ENDIF.
      ENDIF.
    ENDIF.
    t39 = t40.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t45.
    CREATE OBJECT t45.
    t44 = t45.
    DATA(t46) = t29.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t47.
    DATA t48 TYPE REF TO object.
    CLEAR t48.
    DATA(t49) = VALUE i( ).
    DO.
      t46->load( ).
      IF t49 >= lines( t46->items ).
        EXIT.
      ENDIF.
      CLEAR t48.
      READ TABLE t46->items INDEX t49 + 1 INTO t48.
      t49 = t49 + 1.
      DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t50.
      CLEAR t47.
      IF t48 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t50 ?= t48.
        DATA t51 TYPE REF TO object.
        CLEAR t51.
        t51 = t50->as_ref( ).
        t47 ?= t51.
      ELSE.
        t47 ?= t48.
      ENDIF.
      DATA(t52) = t44.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      DATA(t54) = t47.
      CLEAR t53.
      IF t54 IS BOUND.
        DATA t55 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t55.
        DATA t56 TYPE REF TO object.
        CLEAR t56.
        CLEAR t55.
        t56 = t54.
        TRY.
            t53 ?= t56.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t53 IS NOT BOUND.
          TRY.
              t55 ?= t54.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t55 IS BOUND.
            t53 = t55->source( ).
          ENDIF.
          IF t53 IS NOT BOUND.
            CREATE OBJECT t53.
            t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t53->oval = t54.
          ENDIF.
        ENDIF.
      ENDIF.
      t52->load( ).
      APPEND t53 TO t52->items.
      t52->save( ).
    ENDDO.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t57.
    DATA(t58) = t34.
    DATA(t59) = t39.
    DATA(t60) = t44.
    t57 = zcl_lnt_st_combi_module=>alt_prio( i_first = t58 i_second = t59 i_rest = t60 ).
    t33 = t57.
    result = t33.

  ENDMETHOD.

  METHOD zlnt_builtin_init_7b8174c20e26.
    IF zlnt_builtin_init_97883fd3a7a5 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_97883fd3a7a5 = abap_true.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1921_e47f466bb518.
  ENDMETHOD.
ENDCLASS.
