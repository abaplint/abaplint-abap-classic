* TS: src/abap/2_statements/expressions/type_structure.ts:7:1 TypeStructure
CLASS zcl_lnt_type_structure DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_type_structure IMPLEMENTATION.
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
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t18.
    CREATE OBJECT t18.
    t17 = t18.
    DATA(t19) = t17.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA t22 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t22.
    DATA t23 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t24.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t24 = zcl_lnt_version_module=>release_b8cd.
    DATA(t25) = |v779|.
    t23 = t24->get( p0 = t25 ).
    t22 = t23.
    CLEAR t21.
    IF t22 IS BOUND.
      DATA t26 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t26.
      DATA t27 TYPE REF TO object.
      CLEAR t27.
      CLEAR t26.
      t27 = t22.
      TRY.
          t21 ?= t27.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t21 IS NOT BOUND.
        TRY.
            t26 ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t26 IS BOUND.
          t21 = t26->source( ).
        ENDIF.
        IF t21 IS NOT BOUND.
          CREATE OBJECT t21.
          t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t21->oval = t22.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA(t32) = |FUNCTION REQUEST|.
    CLEAR t31.
    CREATE OBJECT t31.
    t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t31->sval = t32.
    t30 = t31.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA(t35) = t1.
    CLEAR t34.
    IF t35 IS BOUND.
      DATA t36 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t36.
      DATA t37 TYPE REF TO object.
      CLEAR t37.
      CLEAR t36.
      t37 = t35.
      TRY.
          t34 ?= t37.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t34 IS NOT BOUND.
        TRY.
            t36 ?= t35.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t36 IS BOUND.
          t34 = t36->source( ).
        ENDIF.
        IF t34 IS NOT BOUND.
          CREATE OBJECT t34.
          t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t34->oval = t35.
        ENDIF.
      ENDIF.
    ENDIF.
    t33 = t34.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t39.
    CREATE OBJECT t39.
    t38 = t39.
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t40.
    DATA(t41) = t30.
    DATA(t42) = t33.
    DATA(t43) = t38.
    t40 = zcl_lnt_st_combi_module=>seq( i_first = t41 i_second = t42 i_rest = t43 ).
    t29 = t40.
    CLEAR t28.
    IF t29 IS BOUND.
      DATA t44 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t44.
      DATA t45 TYPE REF TO object.
      CLEAR t45.
      CLEAR t44.
      t45 = t29.
      TRY.
          t28 ?= t45.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t28 IS NOT BOUND.
        TRY.
            t44 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t44 IS BOUND.
          t28 = t44->source( ).
        ENDIF.
        IF t28 IS NOT BOUND.
          CREATE OBJECT t28.
          t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t28->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t46 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t46.
    DATA(t47) = abap_true.
    IF t47 = abap_true.
      DATA t48 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t48.
      DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t49.
      DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t50.
      DATA(t51) = abap_true.
      IF t51 = abap_true.
        DATA(t52) = |OpenABAP|.
        DATA(t53) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t53->has = abap_true.
        t53->value = t52.
        t50 = t53.
      ELSE.
        DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t54.
        t50 = t54.
      ENDIF.
      t49 = t50.
      t48 = NEW zcl_lnt_iver_options( i_also = t49 ).
      CREATE OBJECT t48->zlnt_view_ownkeys_b0e8086400eb.
      t48->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t55.
      IF t48->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t48->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t55 ).
      ENDIF.
      CREATE OBJECT t48->zlnt_json_ownkeys_70e5fd461788.
      t48->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t56) = |also|.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t57.
      IF t48->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t48->zlnt_json_ownkeys_70e5fd461788->put( p0 = t56 p1 = t57 ).
      ENDIF.
      t46 = t48.
    ELSE.
      DATA t58 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t58.
      t46 = t58.
    ENDIF.
    t20 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t21 i_first = t28 i_opts = t46 ).
    t19->load( ).
    APPEND t20 TO t19->items.
    t19->save( ).
    DATA(t59) = t17.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA t62 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t62.
    DATA t63 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t64.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t64 = zcl_lnt_version_module=>release_b8cd.
    DATA(t65) = |v779|.
    t63 = t64->get( p0 = t65 ).
    t62 = t63.
    CLEAR t61.
    IF t62 IS BOUND.
      DATA t66 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t66.
      DATA t67 TYPE REF TO object.
      CLEAR t67.
      CLEAR t66.
      t67 = t62.
      TRY.
          t61 ?= t67.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t61 IS NOT BOUND.
        TRY.
            t66 ?= t62.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t66 IS BOUND.
          t61 = t66->source( ).
        ENDIF.
        IF t61 IS NOT BOUND.
          CREATE OBJECT t61.
          t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t61->oval = t62.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA t69 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t69.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA(t72) = |ACTION REQUEST|.
    CLEAR t71.
    CREATE OBJECT t71.
    t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t71->sval = t72.
    t70 = t71.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA(t75) = t1.
    CLEAR t74.
    IF t75 IS BOUND.
      DATA t76 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t76.
      DATA t77 TYPE REF TO object.
      CLEAR t77.
      CLEAR t76.
      t77 = t75.
      TRY.
          t74 ?= t77.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t74 IS NOT BOUND.
        TRY.
            t76 ?= t75.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t76 IS BOUND.
          t74 = t76->source( ).
        ENDIF.
        IF t74 IS NOT BOUND.
          CREATE OBJECT t74.
          t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t74->oval = t75.
        ENDIF.
      ENDIF.
    ENDIF.
    t73 = t74.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t79.
    CREATE OBJECT t79.
    t78 = t79.
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t80.
    DATA(t81) = t70.
    DATA(t82) = t73.
    DATA(t83) = t78.
    t80 = zcl_lnt_st_combi_module=>seq( i_first = t81 i_second = t82 i_rest = t83 ).
    t69 = t80.
    CLEAR t68.
    IF t69 IS BOUND.
      DATA t84 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t84.
      DATA t85 TYPE REF TO object.
      CLEAR t85.
      CLEAR t84.
      t85 = t69.
      TRY.
          t68 ?= t85.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t68 IS NOT BOUND.
        TRY.
            t84 ?= t69.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t84 IS BOUND.
          t68 = t84->source( ).
        ENDIF.
        IF t68 IS NOT BOUND.
          CREATE OBJECT t68.
          t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t68->oval = t69.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t86 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t86.
    DATA(t87) = abap_true.
    IF t87 = abap_true.
      DATA t88 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t88.
      DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t89.
      DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t90.
      DATA(t91) = abap_true.
      IF t91 = abap_true.
        DATA(t92) = |OpenABAP|.
        DATA(t93) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t93->has = abap_true.
        t93->value = t92.
        t90 = t93.
      ELSE.
        DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t94.
        t90 = t94.
      ENDIF.
      t89 = t90.
      t88 = NEW zcl_lnt_iver_options( i_also = t89 ).
      CREATE OBJECT t88->zlnt_view_ownkeys_b0e8086400eb.
      t88->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t95.
      IF t88->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t95 ).
      ENDIF.
      CREATE OBJECT t88->zlnt_json_ownkeys_70e5fd461788.
      t88->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t96) = |also|.
      DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t97.
      IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = t96 p1 = t97 ).
      ENDIF.
      t86 = t88.
    ELSE.
      DATA t98 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t98.
      t86 = t98.
    ENDIF.
    t60 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t61 i_first = t68 i_opts = t86 ).
    t59->load( ).
    APPEND t60 TO t59->items.
    t59->save( ).
    DATA(t99) = t17.
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA(t103) = |ACTION IMPORT|.
    CLEAR t102.
    CREATE OBJECT t102.
    t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t102->sval = t103.
    t101 = t102.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA(t106) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    CLEAR t105.
    IF t106 IS BOUND.
      CREATE OBJECT t105.
      t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t105->cval = t106.
    ENDIF.
    t104 = t105.
    DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t107.
    DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t108.
    CREATE OBJECT t108.
    t107 = t108.
    DATA t109 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t109.
    DATA(t110) = t101.
    DATA(t111) = t104.
    DATA(t112) = t107.
    t109 = zcl_lnt_st_combi_module=>seq( i_first = t110 i_second = t111 i_rest = t112 ).
    t100 = t109.
    t99->load( ).
    APPEND t100 TO t99->items.
    t99->save( ).
    DATA(t113) = t17.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA t116 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t116.
    DATA t117 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t117.
    DATA t118 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t118.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t118 = zcl_lnt_version_module=>release_b8cd.
    DATA(t119) = |v781|.
    t117 = t118->get( p0 = t119 ).
    t116 = t117.
    CLEAR t115.
    IF t116 IS BOUND.
      DATA t120 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t120.
      DATA t121 TYPE REF TO object.
      CLEAR t121.
      CLEAR t120.
      t121 = t116.
      TRY.
          t115 ?= t121.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t115 IS NOT BOUND.
        TRY.
            t120 ?= t116.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t120 IS BOUND.
          t115 = t120->source( ).
        ENDIF.
        IF t115 IS NOT BOUND.
          CREATE OBJECT t115.
          t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t115->oval = t116.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t123.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA(t126) = |GLOBAL AUTHORIZATION REQUEST|.
    CLEAR t125.
    CREATE OBJECT t125.
    t125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t125->sval = t126.
    t124 = t125.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t127.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    DATA(t129) = t1.
    CLEAR t128.
    IF t129 IS BOUND.
      DATA t130 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t130.
      DATA t131 TYPE REF TO object.
      CLEAR t131.
      CLEAR t130.
      t131 = t129.
      TRY.
          t128 ?= t131.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t128 IS NOT BOUND.
        TRY.
            t130 ?= t129.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t130 IS BOUND.
          t128 = t130->source( ).
        ENDIF.
        IF t128 IS NOT BOUND.
          CREATE OBJECT t128.
          t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t128->oval = t129.
        ENDIF.
      ENDIF.
    ENDIF.
    t127 = t128.
    DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t132.
    DATA t133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t133.
    CREATE OBJECT t133.
    t132 = t133.
    DATA t134 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t134.
    DATA(t135) = t124.
    DATA(t136) = t127.
    DATA(t137) = t132.
    t134 = zcl_lnt_st_combi_module=>seq( i_first = t135 i_second = t136 i_rest = t137 ).
    t123 = t134.
    CLEAR t122.
    IF t123 IS BOUND.
      DATA t138 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t138.
      DATA t139 TYPE REF TO object.
      CLEAR t139.
      CLEAR t138.
      t139 = t123.
      TRY.
          t122 ?= t139.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t122 IS NOT BOUND.
        TRY.
            t138 ?= t123.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t138 IS BOUND.
          t122 = t138->source( ).
        ENDIF.
        IF t122 IS NOT BOUND.
          CREATE OBJECT t122.
          t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t122->oval = t123.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t140 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t140.
    DATA(t141) = abap_true.
    IF t141 = abap_true.
      DATA t142 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t142.
      DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t143.
      DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t144.
      DATA(t145) = abap_true.
      IF t145 = abap_true.
        DATA(t146) = |OpenABAP|.
        DATA(t147) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t147->has = abap_true.
        t147->value = t146.
        t144 = t147.
      ELSE.
        DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t148.
        t144 = t148.
      ENDIF.
      t143 = t144.
      t142 = NEW zcl_lnt_iver_options( i_also = t143 ).
      CREATE OBJECT t142->zlnt_view_ownkeys_b0e8086400eb.
      t142->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t149.
      IF t142->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t142->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t149 ).
      ENDIF.
      CREATE OBJECT t142->zlnt_json_ownkeys_70e5fd461788.
      t142->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t150) = |also|.
      DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t151.
      IF t142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = t150 p1 = t151 ).
      ENDIF.
      t140 = t142.
    ELSE.
      DATA t152 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t152.
      t140 = t152.
    ENDIF.
    t114 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t115 i_first = t122 i_opts = t140 ).
    t113->load( ).
    APPEND t114 TO t113->items.
    t113->save( ).
    DATA(t153) = t17.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t154.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t155.
    DATA t156 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t156.
    DATA t157 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t157.
    DATA t158 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t158.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t158 = zcl_lnt_version_module=>release_b8cd.
    DATA(t159) = |v781|.
    t157 = t158->get( p0 = t159 ).
    t156 = t157.
    CLEAR t155.
    IF t156 IS BOUND.
      DATA t160 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t160.
      DATA t161 TYPE REF TO object.
      CLEAR t161.
      CLEAR t160.
      t161 = t156.
      TRY.
          t155 ?= t161.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t155 IS NOT BOUND.
        TRY.
            t160 ?= t156.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t160 IS BOUND.
          t155 = t160->source( ).
        ENDIF.
        IF t155 IS NOT BOUND.
          CREATE OBJECT t155.
          t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t155->oval = t156.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t162.
    DATA t163 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t163.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t164.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t165.
    DATA(t166) = |GLOBAL AUTHORIZATION RESULT|.
    CLEAR t165.
    CREATE OBJECT t165.
    t165->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t165->sval = t166.
    t164 = t165.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t167.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t168.
    DATA(t169) = t1.
    CLEAR t168.
    IF t169 IS BOUND.
      DATA t170 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t170.
      DATA t171 TYPE REF TO object.
      CLEAR t171.
      CLEAR t170.
      t171 = t169.
      TRY.
          t168 ?= t171.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t168 IS NOT BOUND.
        TRY.
            t170 ?= t169.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t170 IS BOUND.
          t168 = t170->source( ).
        ENDIF.
        IF t168 IS NOT BOUND.
          CREATE OBJECT t168.
          t168->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t168->oval = t169.
        ENDIF.
      ENDIF.
    ENDIF.
    t167 = t168.
    DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t172.
    DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t173.
    CREATE OBJECT t173.
    t172 = t173.
    DATA t174 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t174.
    DATA(t175) = t164.
    DATA(t176) = t167.
    DATA(t177) = t172.
    t174 = zcl_lnt_st_combi_module=>seq( i_first = t175 i_second = t176 i_rest = t177 ).
    t163 = t174.
    CLEAR t162.
    IF t163 IS BOUND.
      DATA t178 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t178.
      DATA t179 TYPE REF TO object.
      CLEAR t179.
      CLEAR t178.
      t179 = t163.
      TRY.
          t162 ?= t179.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t162 IS NOT BOUND.
        TRY.
            t178 ?= t163.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t178 IS BOUND.
          t162 = t178->source( ).
        ENDIF.
        IF t162 IS NOT BOUND.
          CREATE OBJECT t162.
          t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t162->oval = t163.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t180 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t180.
    DATA(t181) = abap_true.
    IF t181 = abap_true.
      DATA t182 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t182.
      DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t183.
      DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t184.
      DATA(t185) = abap_true.
      IF t185 = abap_true.
        DATA(t186) = |OpenABAP|.
        DATA(t187) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t187->has = abap_true.
        t187->value = t186.
        t184 = t187.
      ELSE.
        DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t188.
        t184 = t188.
      ENDIF.
      t183 = t184.
      t182 = NEW zcl_lnt_iver_options( i_also = t183 ).
      CREATE OBJECT t182->zlnt_view_ownkeys_b0e8086400eb.
      t182->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t189.
      IF t182->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t189 ).
      ENDIF.
      CREATE OBJECT t182->zlnt_json_ownkeys_70e5fd461788.
      t182->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t190) = |also|.
      DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t191.
      IF t182->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = t190 p1 = t191 ).
      ENDIF.
      t180 = t182.
    ELSE.
      DATA t192 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t192.
      t180 = t192.
    ENDIF.
    t154 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t155 i_first = t162 i_opts = t180 ).
    t153->load( ).
    APPEND t154 TO t153->items.
    t153->save( ).
    DATA(t193) = t17.
    DATA t194 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t194.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t195.
    DATA t196 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t196.
    DATA t197 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t197.
    DATA t198 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t198.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t198 = zcl_lnt_version_module=>release_b8cd.
    DATA(t199) = |v781|.
    t197 = t198->get( p0 = t199 ).
    t196 = t197.
    CLEAR t195.
    IF t196 IS BOUND.
      DATA t200 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t200.
      DATA t201 TYPE REF TO object.
      CLEAR t201.
      CLEAR t200.
      t201 = t196.
      TRY.
          t195 ?= t201.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t195 IS NOT BOUND.
        TRY.
            t200 ?= t196.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t200 IS BOUND.
          t195 = t200->source( ).
        ENDIF.
        IF t195 IS NOT BOUND.
          CREATE OBJECT t195.
          t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t195->oval = t196.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t202.
    DATA t203 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t203.
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t204.
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t205.
    DATA(t206) = |GLOBAL FEATURES REQUEST|.
    CLEAR t205.
    CREATE OBJECT t205.
    t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t205->sval = t206.
    t204 = t205.
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t207.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t208.
    DATA(t209) = t1.
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
    t207 = t208.
    DATA t212 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t212.
    DATA t213 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t213.
    CREATE OBJECT t213.
    t212 = t213.
    DATA t214 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t214.
    DATA(t215) = t204.
    DATA(t216) = t207.
    DATA(t217) = t212.
    t214 = zcl_lnt_st_combi_module=>seq( i_first = t215 i_second = t216 i_rest = t217 ).
    t203 = t214.
    CLEAR t202.
    IF t203 IS BOUND.
      DATA t218 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t218.
      DATA t219 TYPE REF TO object.
      CLEAR t219.
      CLEAR t218.
      t219 = t203.
      TRY.
          t202 ?= t219.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t202 IS NOT BOUND.
        TRY.
            t218 ?= t203.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t218 IS BOUND.
          t202 = t218->source( ).
        ENDIF.
        IF t202 IS NOT BOUND.
          CREATE OBJECT t202.
          t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t202->oval = t203.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t220 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t220.
    DATA(t221) = abap_true.
    IF t221 = abap_true.
      DATA t222 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t222.
      DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t223.
      DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t224.
      DATA(t225) = abap_true.
      IF t225 = abap_true.
        DATA(t226) = |OpenABAP|.
        DATA(t227) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t227->has = abap_true.
        t227->value = t226.
        t224 = t227.
      ELSE.
        DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t228.
        t224 = t228.
      ENDIF.
      t223 = t224.
      t222 = NEW zcl_lnt_iver_options( i_also = t223 ).
      CREATE OBJECT t222->zlnt_view_ownkeys_b0e8086400eb.
      t222->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t229.
      IF t222->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t222->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t229 ).
      ENDIF.
      CREATE OBJECT t222->zlnt_json_ownkeys_70e5fd461788.
      t222->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t230) = |also|.
      DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t231.
      IF t222->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t222->zlnt_json_ownkeys_70e5fd461788->put( p0 = t230 p1 = t231 ).
      ENDIF.
      t220 = t222.
    ELSE.
      DATA t232 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t232.
      t220 = t232.
    ENDIF.
    t194 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t195 i_first = t202 i_opts = t220 ).
    t193->load( ).
    APPEND t194 TO t193->items.
    t193->save( ).
    DATA(t233) = t17.
    DATA t234 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t234.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t235.
    DATA t236 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t236.
    DATA t237 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t237.
    DATA t238 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t238.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t238 = zcl_lnt_version_module=>release_b8cd.
    DATA(t239) = |v781|.
    t237 = t238->get( p0 = t239 ).
    t236 = t237.
    CLEAR t235.
    IF t236 IS BOUND.
      DATA t240 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t240.
      DATA t241 TYPE REF TO object.
      CLEAR t241.
      CLEAR t240.
      t241 = t236.
      TRY.
          t235 ?= t241.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t235 IS NOT BOUND.
        TRY.
            t240 ?= t236.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t240 IS BOUND.
          t235 = t240->source( ).
        ENDIF.
        IF t235 IS NOT BOUND.
          CREATE OBJECT t235.
          t235->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t235->oval = t236.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t242.
    DATA t243 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t243.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t244.
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t245.
    DATA(t246) = |GLOBAL FEATURES RESULT|.
    CLEAR t245.
    CREATE OBJECT t245.
    t245->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t245->sval = t246.
    t244 = t245.
    DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t247.
    DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t248.
    DATA(t249) = t1.
    CLEAR t248.
    IF t249 IS BOUND.
      DATA t250 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t250.
      DATA t251 TYPE REF TO object.
      CLEAR t251.
      CLEAR t250.
      t251 = t249.
      TRY.
          t248 ?= t251.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t248 IS NOT BOUND.
        TRY.
            t250 ?= t249.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t250 IS BOUND.
          t248 = t250->source( ).
        ENDIF.
        IF t248 IS NOT BOUND.
          CREATE OBJECT t248.
          t248->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t248->oval = t249.
        ENDIF.
      ENDIF.
    ENDIF.
    t247 = t248.
    DATA t252 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t252.
    DATA t253 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t253.
    CREATE OBJECT t253.
    t252 = t253.
    DATA t254 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t254.
    DATA(t255) = t244.
    DATA(t256) = t247.
    DATA(t257) = t252.
    t254 = zcl_lnt_st_combi_module=>seq( i_first = t255 i_second = t256 i_rest = t257 ).
    t243 = t254.
    CLEAR t242.
    IF t243 IS BOUND.
      DATA t258 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t258.
      DATA t259 TYPE REF TO object.
      CLEAR t259.
      CLEAR t258.
      t259 = t243.
      TRY.
          t242 ?= t259.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t242 IS NOT BOUND.
        TRY.
            t258 ?= t243.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t258 IS BOUND.
          t242 = t258->source( ).
        ENDIF.
        IF t242 IS NOT BOUND.
          CREATE OBJECT t242.
          t242->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t242->oval = t243.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t260 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t260.
    DATA(t261) = abap_true.
    IF t261 = abap_true.
      DATA t262 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t262.
      DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t263.
      DATA t264 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t264.
      DATA(t265) = abap_true.
      IF t265 = abap_true.
        DATA(t266) = |OpenABAP|.
        DATA(t267) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t267->has = abap_true.
        t267->value = t266.
        t264 = t267.
      ELSE.
        DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t268.
        t264 = t268.
      ENDIF.
      t263 = t264.
      t262 = NEW zcl_lnt_iver_options( i_also = t263 ).
      CREATE OBJECT t262->zlnt_view_ownkeys_b0e8086400eb.
      t262->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t269.
      IF t262->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t262->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t269 ).
      ENDIF.
      CREATE OBJECT t262->zlnt_json_ownkeys_70e5fd461788.
      t262->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t270) = |also|.
      DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t271.
      IF t262->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t262->zlnt_json_ownkeys_70e5fd461788->put( p0 = t270 p1 = t271 ).
      ENDIF.
      t260 = t262.
    ELSE.
      DATA t272 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t272.
      t260 = t272.
    ENDIF.
    t234 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t235 i_first = t242 i_opts = t260 ).
    t233->load( ).
    APPEND t234 TO t233->items.
    t233->save( ).
    DATA(t273) = t17.
    DATA t274 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t274.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t275.
    DATA t276 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t276.
    DATA t277 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t277.
    DATA t278 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t278.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t278 = zcl_lnt_version_module=>release_b8cd.
    DATA(t279) = |v780|.
    t277 = t278->get( p0 = t279 ).
    t276 = t277.
    CLEAR t275.
    IF t276 IS BOUND.
      DATA t280 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t280.
      DATA t281 TYPE REF TO object.
      CLEAR t281.
      CLEAR t280.
      t281 = t276.
      TRY.
          t275 ?= t281.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t275 IS NOT BOUND.
        TRY.
            t280 ?= t276.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t280 IS BOUND.
          t275 = t280->source( ).
        ENDIF.
        IF t275 IS NOT BOUND.
          CREATE OBJECT t275.
          t275->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t275->oval = t276.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t282.
    DATA t283 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t283.
    DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t284.
    DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t285.
    DATA(t286) = |AUTHORIZATION REQUEST|.
    CLEAR t285.
    CREATE OBJECT t285.
    t285->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t285->sval = t286.
    t284 = t285.
    DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t287.
    DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t288.
    DATA(t289) = t1.
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
    DATA t294 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t294.
    DATA(t295) = t284.
    DATA(t296) = t287.
    DATA(t297) = t292.
    t294 = zcl_lnt_st_combi_module=>seq( i_first = t295 i_second = t296 i_rest = t297 ).
    t283 = t294.
    CLEAR t282.
    IF t283 IS BOUND.
      DATA t298 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t298.
      DATA t299 TYPE REF TO object.
      CLEAR t299.
      CLEAR t298.
      t299 = t283.
      TRY.
          t282 ?= t299.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t282 IS NOT BOUND.
        TRY.
            t298 ?= t283.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t298 IS BOUND.
          t282 = t298->source( ).
        ENDIF.
        IF t282 IS NOT BOUND.
          CREATE OBJECT t282.
          t282->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t282->oval = t283.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t300 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t300.
    DATA(t301) = abap_true.
    IF t301 = abap_true.
      DATA t302 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t302.
      DATA t303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t303.
      DATA t304 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t304.
      DATA(t305) = abap_true.
      IF t305 = abap_true.
        DATA(t306) = |OpenABAP|.
        DATA(t307) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t307->has = abap_true.
        t307->value = t306.
        t304 = t307.
      ELSE.
        DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t308.
        t304 = t308.
      ENDIF.
      t303 = t304.
      t302 = NEW zcl_lnt_iver_options( i_also = t303 ).
      CREATE OBJECT t302->zlnt_view_ownkeys_b0e8086400eb.
      t302->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t309.
      IF t302->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t302->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t309 ).
      ENDIF.
      CREATE OBJECT t302->zlnt_json_ownkeys_70e5fd461788.
      t302->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t310) = |also|.
      DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t311.
      IF t302->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t302->zlnt_json_ownkeys_70e5fd461788->put( p0 = t310 p1 = t311 ).
      ENDIF.
      t300 = t302.
    ELSE.
      DATA t312 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t312.
      t300 = t312.
    ENDIF.
    t274 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t275 i_first = t282 i_opts = t300 ).
    t273->load( ).
    APPEND t274 TO t273->items.
    t273->save( ).
    DATA(t313) = t17.
    DATA t314 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t314.
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t315.
    DATA t316 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t316.
    DATA t317 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t317.
    DATA t318 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t318.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t318 = zcl_lnt_version_module=>release_b8cd.
    DATA(t319) = |v776|.
    t317 = t318->get( p0 = t319 ).
    t316 = t317.
    CLEAR t315.
    IF t316 IS BOUND.
      DATA t320 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t320.
      DATA t321 TYPE REF TO object.
      CLEAR t321.
      CLEAR t320.
      t321 = t316.
      TRY.
          t315 ?= t321.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t315 IS NOT BOUND.
        TRY.
            t320 ?= t316.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t320 IS BOUND.
          t315 = t320->source( ).
        ENDIF.
        IF t315 IS NOT BOUND.
          CREATE OBJECT t315.
          t315->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t315->oval = t316.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t322.
    DATA t323 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t323.
    DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t324.
    DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t325.
    DATA(t326) = |FEATURES REQUEST|.
    CLEAR t325.
    CREATE OBJECT t325.
    t325->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t325->sval = t326.
    t324 = t325.
    DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t327.
    DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t328.
    DATA(t329) = t1.
    CLEAR t328.
    IF t329 IS BOUND.
      DATA t330 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t330.
      DATA t331 TYPE REF TO object.
      CLEAR t331.
      CLEAR t330.
      t331 = t329.
      TRY.
          t328 ?= t331.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t328 IS NOT BOUND.
        TRY.
            t330 ?= t329.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t330 IS BOUND.
          t328 = t330->source( ).
        ENDIF.
        IF t328 IS NOT BOUND.
          CREATE OBJECT t328.
          t328->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t328->oval = t329.
        ENDIF.
      ENDIF.
    ENDIF.
    t327 = t328.
    DATA t332 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t332.
    DATA t333 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t333.
    CREATE OBJECT t333.
    t332 = t333.
    DATA t334 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t334.
    DATA(t335) = t324.
    DATA(t336) = t327.
    DATA(t337) = t332.
    t334 = zcl_lnt_st_combi_module=>seq( i_first = t335 i_second = t336 i_rest = t337 ).
    t323 = t334.
    CLEAR t322.
    IF t323 IS BOUND.
      DATA t338 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t338.
      DATA t339 TYPE REF TO object.
      CLEAR t339.
      CLEAR t338.
      t339 = t323.
      TRY.
          t322 ?= t339.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t322 IS NOT BOUND.
        TRY.
            t338 ?= t323.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t338 IS BOUND.
          t322 = t338->source( ).
        ENDIF.
        IF t322 IS NOT BOUND.
          CREATE OBJECT t322.
          t322->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t322->oval = t323.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t340 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t340.
    DATA(t341) = abap_true.
    IF t341 = abap_true.
      DATA t342 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t342.
      DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t343.
      DATA t344 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t344.
      DATA(t345) = abap_true.
      IF t345 = abap_true.
        DATA(t346) = |OpenABAP|.
        DATA(t347) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t347->has = abap_true.
        t347->value = t346.
        t344 = t347.
      ELSE.
        DATA t348 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t348.
        t344 = t348.
      ENDIF.
      t343 = t344.
      t342 = NEW zcl_lnt_iver_options( i_also = t343 ).
      CREATE OBJECT t342->zlnt_view_ownkeys_b0e8086400eb.
      t342->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t349.
      IF t342->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t342->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t349 ).
      ENDIF.
      CREATE OBJECT t342->zlnt_json_ownkeys_70e5fd461788.
      t342->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t350) = |also|.
      DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t351.
      IF t342->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t342->zlnt_json_ownkeys_70e5fd461788->put( p0 = t350 p1 = t351 ).
      ENDIF.
      t340 = t342.
    ELSE.
      DATA t352 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t352.
      t340 = t352.
    ENDIF.
    t314 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t315 i_first = t322 i_opts = t340 ).
    t313->load( ).
    APPEND t314 TO t313->items.
    t313->save( ).
    DATA(t353) = t17.
    DATA t354 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t354.
    DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t355.
    DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t356.
    DATA(t357) = |PERMISSIONS REQUEST|.
    CLEAR t356.
    CREATE OBJECT t356.
    t356->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t356->sval = t357.
    t355 = t356.
    DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t358.
    DATA t359 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t359.
    DATA(t360) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    CLEAR t359.
    IF t360 IS BOUND.
      CREATE OBJECT t359.
      t359->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t359->cval = t360.
    ENDIF.
    t358 = t359.
    DATA t361 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t361.
    DATA t362 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t362.
    CREATE OBJECT t362.
    t361 = t362.
    DATA t363 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t363.
    DATA(t364) = t355.
    DATA(t365) = t358.
    DATA(t366) = t361.
    t363 = zcl_lnt_st_combi_module=>seq( i_first = t364 i_second = t365 i_rest = t366 ).
    t354 = t363.
    t353->load( ).
    APPEND t354 TO t353->items.
    t353->save( ).
    DATA(t367) = t17.
    DATA t368 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t368.
    DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t369.
    DATA t370 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t370.
    DATA t371 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t371.
    DATA t372 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t372.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t372 = zcl_lnt_version_module=>release_b8cd.
    DATA(t373) = |v780|.
    t371 = t372->get( p0 = t373 ).
    t370 = t371.
    CLEAR t369.
    IF t370 IS BOUND.
      DATA t374 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t374.
      DATA t375 TYPE REF TO object.
      CLEAR t375.
      CLEAR t374.
      t375 = t370.
      TRY.
          t369 ?= t375.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t369 IS NOT BOUND.
        TRY.
            t374 ?= t370.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t374 IS BOUND.
          t369 = t374->source( ).
        ENDIF.
        IF t369 IS NOT BOUND.
          CREATE OBJECT t369.
          t369->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t369->oval = t370.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t376.
    DATA t377 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t377.
    DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t378.
    DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t379.
    DATA(t380) = |PERMISSIONS RESULT|.
    CLEAR t379.
    CREATE OBJECT t379.
    t379->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t379->sval = t380.
    t378 = t379.
    DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t381.
    DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t382.
    DATA(t383) = t1.
    CLEAR t382.
    IF t383 IS BOUND.
      DATA t384 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t384.
      DATA t385 TYPE REF TO object.
      CLEAR t385.
      CLEAR t384.
      t385 = t383.
      TRY.
          t382 ?= t385.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t382 IS NOT BOUND.
        TRY.
            t384 ?= t383.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t384 IS BOUND.
          t382 = t384->source( ).
        ENDIF.
        IF t382 IS NOT BOUND.
          CREATE OBJECT t382.
          t382->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t382->oval = t383.
        ENDIF.
      ENDIF.
    ENDIF.
    t381 = t382.
    DATA t386 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t386.
    DATA t387 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t387.
    CREATE OBJECT t387.
    t386 = t387.
    DATA t388 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t388.
    DATA(t389) = t378.
    DATA(t390) = t381.
    DATA(t391) = t386.
    t388 = zcl_lnt_st_combi_module=>seq( i_first = t389 i_second = t390 i_rest = t391 ).
    t377 = t388.
    CLEAR t376.
    IF t377 IS BOUND.
      DATA t392 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t392.
      DATA t393 TYPE REF TO object.
      CLEAR t393.
      CLEAR t392.
      t393 = t377.
      TRY.
          t376 ?= t393.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t376 IS NOT BOUND.
        TRY.
            t392 ?= t377.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t392 IS BOUND.
          t376 = t392->source( ).
        ENDIF.
        IF t376 IS NOT BOUND.
          CREATE OBJECT t376.
          t376->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t376->oval = t377.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t394 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t394.
    DATA(t395) = abap_true.
    IF t395 = abap_true.
      DATA t396 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t396.
      DATA t397 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t397.
      DATA t398 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t398.
      DATA(t399) = abap_true.
      IF t399 = abap_true.
        DATA(t400) = |OpenABAP|.
        DATA(t401) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t401->has = abap_true.
        t401->value = t400.
        t398 = t401.
      ELSE.
        DATA t402 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t402.
        t398 = t402.
      ENDIF.
      t397 = t398.
      t396 = NEW zcl_lnt_iver_options( i_also = t397 ).
      CREATE OBJECT t396->zlnt_view_ownkeys_b0e8086400eb.
      t396->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t403 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t403.
      IF t396->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t396->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t403 ).
      ENDIF.
      CREATE OBJECT t396->zlnt_json_ownkeys_70e5fd461788.
      t396->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t404) = |also|.
      DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t405.
      IF t396->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t396->zlnt_json_ownkeys_70e5fd461788->put( p0 = t404 p1 = t405 ).
      ENDIF.
      t394 = t396.
    ELSE.
      DATA t406 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t406.
      t394 = t406.
    ENDIF.
    t368 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t369 i_first = t376 i_opts = t394 ).
    t367->load( ).
    APPEND t368 TO t367->items.
    t367->save( ).
    DATA(t407) = t17.
    DATA t408 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t408.
    DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t409.
    DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t410.
    DATA(t411) = |READ LINK|.
    CLEAR t410.
    CREATE OBJECT t410.
    t410->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t410->sval = t411.
    t409 = t410.
    DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t412.
    DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t413.
    DATA(t414) = zlnt_runtime_desc_78196487750d=>zlnt_member_d162_57231f39acd0.
    CLEAR t413.
    IF t414 IS BOUND.
      CREATE OBJECT t413.
      t413->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t413->cval = t414.
    ENDIF.
    t412 = t413.
    DATA t415 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t415.
    DATA t416 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t416.
    CREATE OBJECT t416.
    t415 = t416.
    DATA t417 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t417.
    DATA(t418) = t409.
    DATA(t419) = t412.
    DATA(t420) = t415.
    t417 = zcl_lnt_st_combi_module=>seq( i_first = t418 i_second = t419 i_rest = t420 ).
    t408 = t417.
    t407->load( ).
    APPEND t408 TO t407->items.
    t407->save( ).
    DATA(t421) = t17.
    DATA t422 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t422.
    DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t423.
    DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t424.
    DATA(t425) = |HIERARCHY|.
    CLEAR t424.
    CREATE OBJECT t424.
    t424->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t424->sval = t425.
    t423 = t424.
    DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t426.
    DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t427.
    DATA(t428) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    CLEAR t427.
    IF t428 IS BOUND.
      CREATE OBJECT t427.
      t427->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t427->cval = t428.
    ENDIF.
    t426 = t427.
    DATA t429 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t429.
    DATA t430 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t430.
    CREATE OBJECT t430.
    t429 = t430.
    DATA t431 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t431.
    DATA(t432) = t423.
    DATA(t433) = t426.
    DATA(t434) = t429.
    t431 = zcl_lnt_st_combi_module=>seq( i_first = t432 i_second = t433 i_rest = t434 ).
    t422 = t431.
    t421->load( ).
    APPEND t422 TO t421->items.
    t421->save( ).
    DATA(t435) = t17.
    DATA t436 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t436.
    DATA t437 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t437.
    DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t438.
    DATA(t439) = |EVENT|.
    CLEAR t438.
    CREATE OBJECT t438.
    t438->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t438->sval = t439.
    t437 = t438.
    DATA t440 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t440.
    DATA t441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t441.
    DATA(t442) = zlnt_runtime_desc_78196487750d=>zlnt_member_d163_115ae64060bd.
    CLEAR t441.
    IF t442 IS BOUND.
      CREATE OBJECT t441.
      t441->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t441->cval = t442.
    ENDIF.
    t440 = t441.
    DATA t443 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t443.
    DATA t444 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t444.
    CREATE OBJECT t444.
    t443 = t444.
    DATA t445 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t445.
    DATA(t446) = t437.
    DATA(t447) = t440.
    DATA(t448) = t443.
    t445 = zcl_lnt_st_combi_module=>seq( i_first = t446 i_second = t447 i_rest = t448 ).
    t436 = t445.
    t435->load( ).
    APPEND t436 TO t435->items.
    t435->save( ).
    DATA t449 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t449.
    DATA(t450) = t17.
    t449 = zcl_lnt_derived_types_module=>derived_types_alt( i_extra = t450 ).
    t16 = t449.
    t15 = t16.
    DATA t451 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t451.
    DATA t452 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t452.
    DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t453.
    DATA t454 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t454.
    DATA t455 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t455.
    DATA t456 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t456.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t456 = zcl_lnt_version_module=>release_b8cd.
    DATA(t457) = |v774|.
    t455 = t456->get( p0 = t457 ).
    t454 = t455.
    CLEAR t453.
    IF t454 IS BOUND.
      DATA t458 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t458.
      DATA t459 TYPE REF TO object.
      CLEAR t459.
      CLEAR t458.
      t459 = t454.
      TRY.
          t453 ?= t459.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t453 IS NOT BOUND.
        TRY.
            t458 ?= t454.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t458 IS BOUND.
          t453 = t458->source( ).
        ENDIF.
        IF t453 IS NOT BOUND.
          CREATE OBJECT t453.
          t453->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t453->oval = t454.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t460 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t460.
    DATA t461 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t461.
    DATA t462 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t462.
    DATA t463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t463.
    DATA(t464) = |STRUCTURE FOR|.
    CLEAR t463.
    CREATE OBJECT t463.
    t463->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t463->sval = t464.
    t462 = t463.
    DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t465.
    DATA t466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t466.
    DATA(t467) = t15.
    CLEAR t466.
    IF t467 IS BOUND.
      DATA t468 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t468.
      DATA t469 TYPE REF TO object.
      CLEAR t469.
      CLEAR t468.
      t469 = t467.
      TRY.
          t466 ?= t469.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t466 IS NOT BOUND.
        TRY.
            t468 ?= t467.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t468 IS BOUND.
          t466 = t468->source( ).
        ENDIF.
        IF t466 IS NOT BOUND.
          CREATE OBJECT t466.
          t466->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t466->oval = t467.
        ENDIF.
      ENDIF.
    ENDIF.
    t465 = t466.
    DATA t470 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t470.
    DATA t471 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t471.
    CREATE OBJECT t471.
    t470 = t471.
    DATA t472 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t472.
    DATA(t473) = t462.
    DATA(t474) = t465.
    DATA(t475) = t470.
    t472 = zcl_lnt_st_combi_module=>seq( i_first = t473 i_second = t474 i_rest = t475 ).
    t461 = t472.
    CLEAR t460.
    IF t461 IS BOUND.
      DATA t476 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t476.
      DATA t477 TYPE REF TO object.
      CLEAR t477.
      CLEAR t476.
      t477 = t461.
      TRY.
          t460 ?= t477.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t460 IS NOT BOUND.
        TRY.
            t476 ?= t461.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t476 IS BOUND.
          t460 = t476->source( ).
        ENDIF.
        IF t460 IS NOT BOUND.
          CREATE OBJECT t460.
          t460->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t460->oval = t461.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t478 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t478.
    DATA(t479) = abap_true.
    IF t479 = abap_true.
      DATA t480 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t480.
      DATA t481 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t481.
      DATA t482 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t482.
      DATA(t483) = abap_true.
      IF t483 = abap_true.
        DATA(t484) = |OpenABAP|.
        DATA(t485) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t485->has = abap_true.
        t485->value = t484.
        t482 = t485.
      ELSE.
        DATA t486 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t486.
        t482 = t486.
      ENDIF.
      t481 = t482.
      t480 = NEW zcl_lnt_iver_options( i_also = t481 ).
      CREATE OBJECT t480->zlnt_view_ownkeys_b0e8086400eb.
      t480->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t487 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t487.
      IF t480->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t480->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t487 ).
      ENDIF.
      CREATE OBJECT t480->zlnt_json_ownkeys_70e5fd461788.
      t480->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t488) = |also|.
      DATA t489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t489.
      IF t480->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t480->zlnt_json_ownkeys_70e5fd461788->put( p0 = t488 p1 = t489 ).
      ENDIF.
      t478 = t480.
    ELSE.
      DATA t490 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t490.
      t478 = t490.
    ENDIF.
    t452 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t453 i_first = t460 i_opts = t478 ).
    t451 = t452.
    DATA t491 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t491.
    DATA t492 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t492.
    DATA t493 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t493.
    DATA t494 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t494.
    DATA t495 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t495.
    DATA t496 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t496.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t496 = zcl_lnt_version_module=>release_b8cd.
    DATA(t497) = |v776|.
    t495 = t496->get( p0 = t497 ).
    t494 = t495.
    CLEAR t493.
    IF t494 IS BOUND.
      DATA t498 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t498.
      DATA t499 TYPE REF TO object.
      CLEAR t499.
      CLEAR t498.
      t499 = t494.
      TRY.
          t493 ?= t499.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t493 IS NOT BOUND.
        TRY.
            t498 ?= t494.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t498 IS BOUND.
          t493 = t498->source( ).
        ENDIF.
        IF t493 IS NOT BOUND.
          CREATE OBJECT t493.
          t493->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t493->oval = t494.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t500.
    DATA t501 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t501.
    DATA t502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t502.
    DATA t503 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t503.
    DATA(t504) = |RESPONSE FOR|.
    CLEAR t503.
    CREATE OBJECT t503.
    t503->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t503->sval = t504.
    t502 = t503.
    DATA t505 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t505.
    DATA t506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t506.
    DATA t507 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t507.
    DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t508.
    DATA t509 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t509.
    DATA t510 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t510.
    DATA t511 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t511.
    DATA t512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t512.
    DATA(t513) = |FAILED EARLY|.
    CLEAR t512.
    CREATE OBJECT t512.
    t512->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t512->sval = t513.
    t511 = t512.
    DATA t514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t514.
    DATA t515 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t515.
    DATA(t516) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    CLEAR t515.
    IF t516 IS BOUND.
      CREATE OBJECT t515.
      t515->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t515->cval = t516.
    ENDIF.
    t514 = t515.
    DATA t517 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t517.
    DATA t518 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t518.
    CREATE OBJECT t518.
    t517 = t518.
    DATA t519 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t519.
    DATA(t520) = t511.
    DATA(t521) = t514.
    DATA(t522) = t517.
    t519 = zcl_lnt_st_combi_module=>seq( i_first = t520 i_second = t521 i_rest = t522 ).
    t510 = t519.
    CLEAR t509.
    IF t510 IS BOUND.
      DATA t523 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t523.
      DATA t524 TYPE REF TO object.
      CLEAR t524.
      CLEAR t523.
      t524 = t510.
      TRY.
          t509 ?= t524.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t509 IS NOT BOUND.
        TRY.
            t523 ?= t510.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t523 IS BOUND.
          t509 = t523->source( ).
        ENDIF.
        IF t509 IS NOT BOUND.
          CREATE OBJECT t509.
          t509->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t509->oval = t510.
        ENDIF.
      ENDIF.
    ENDIF.
    t508 = t509.
    DATA t525 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t525.
    DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t526.
    DATA t527 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t527.
    DATA t528 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t528.
    DATA t529 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t529.
    DATA(t530) = |FAILED LATE|.
    CLEAR t529.
    CREATE OBJECT t529.
    t529->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t529->sval = t530.
    t528 = t529.
    DATA t531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t531.
    DATA t532 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t532.
    DATA(t533) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    CLEAR t532.
    IF t533 IS BOUND.
      CREATE OBJECT t532.
      t532->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t532->cval = t533.
    ENDIF.
    t531 = t532.
    DATA t534 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t534.
    DATA t535 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t535.
    CREATE OBJECT t535.
    t534 = t535.
    DATA t536 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t536.
    DATA(t537) = t528.
    DATA(t538) = t531.
    DATA(t539) = t534.
    t536 = zcl_lnt_st_combi_module=>seq( i_first = t537 i_second = t538 i_rest = t539 ).
    t527 = t536.
    CLEAR t526.
    IF t527 IS BOUND.
      DATA t540 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t540.
      DATA t541 TYPE REF TO object.
      CLEAR t541.
      CLEAR t540.
      t541 = t527.
      TRY.
          t526 ?= t541.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t526 IS NOT BOUND.
        TRY.
            t540 ?= t527.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t540 IS BOUND.
          t526 = t540->source( ).
        ENDIF.
        IF t526 IS NOT BOUND.
          CREATE OBJECT t526.
          t526->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t526->oval = t527.
        ENDIF.
      ENDIF.
    ENDIF.
    t525 = t526.
    DATA t542 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t542.
    DATA t543 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t543.
    CREATE OBJECT t543.
    t542 = t543.
    DATA(t544) = t542.
    DATA t545 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t545.
    DATA t546 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t546.
    DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t547.
    DATA t548 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t548.
    DATA(t549) = |FAILED|.
    CLEAR t548.
    CREATE OBJECT t548.
    t548->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t548->sval = t549.
    t547 = t548.
    DATA t550 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t550.
    DATA t551 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t551.
    DATA(t552) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    CLEAR t551.
    IF t552 IS BOUND.
      CREATE OBJECT t551.
      t551->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t551->cval = t552.
    ENDIF.
    t550 = t551.
    DATA t553 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t553.
    DATA t554 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t554.
    CREATE OBJECT t554.
    t553 = t554.
    DATA t555 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t555.
    DATA(t556) = t547.
    DATA(t557) = t550.
    DATA(t558) = t553.
    t555 = zcl_lnt_st_combi_module=>seq( i_first = t556 i_second = t557 i_rest = t558 ).
    t546 = t555.
    CLEAR t545.
    IF t546 IS BOUND.
      DATA t559 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t559.
      DATA t560 TYPE REF TO object.
      CLEAR t560.
      CLEAR t559.
      t560 = t546.
      TRY.
          t545 ?= t560.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t545 IS NOT BOUND.
        TRY.
            t559 ?= t546.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t559 IS BOUND.
          t545 = t559->source( ).
        ENDIF.
        IF t545 IS NOT BOUND.
          CREATE OBJECT t545.
          t545->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t545->oval = t546.
        ENDIF.
      ENDIF.
    ENDIF.
    t544->load( ).
    APPEND t545 TO t544->items.
    t544->save( ).
    DATA(t561) = t542.
    DATA t562 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t562.
    DATA t563 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t563.
    DATA t564 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t564.
    DATA t565 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t565.
    DATA(t566) = |MAPPED EARLY|.
    CLEAR t565.
    CREATE OBJECT t565.
    t565->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t565->sval = t566.
    t564 = t565.
    DATA t567 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t567.
    DATA t568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t568.
    DATA(t569) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    CLEAR t568.
    IF t569 IS BOUND.
      CREATE OBJECT t568.
      t568->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t568->cval = t569.
    ENDIF.
    t567 = t568.
    DATA t570 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t570.
    DATA t571 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t571.
    CREATE OBJECT t571.
    t570 = t571.
    DATA t572 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t572.
    DATA(t573) = t564.
    DATA(t574) = t567.
    DATA(t575) = t570.
    t572 = zcl_lnt_st_combi_module=>seq( i_first = t573 i_second = t574 i_rest = t575 ).
    t563 = t572.
    CLEAR t562.
    IF t563 IS BOUND.
      DATA t576 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t576.
      DATA t577 TYPE REF TO object.
      CLEAR t577.
      CLEAR t576.
      t577 = t563.
      TRY.
          t562 ?= t577.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t562 IS NOT BOUND.
        TRY.
            t576 ?= t563.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t576 IS BOUND.
          t562 = t576->source( ).
        ENDIF.
        IF t562 IS NOT BOUND.
          CREATE OBJECT t562.
          t562->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t562->oval = t563.
        ENDIF.
      ENDIF.
    ENDIF.
    t561->load( ).
    APPEND t562 TO t561->items.
    t561->save( ).
    DATA(t578) = t542.
    DATA t579 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t579.
    DATA t580 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t580.
    DATA t581 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t581.
    DATA t582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t582.
    DATA(t583) = |MAPPED LATE|.
    CLEAR t582.
    CREATE OBJECT t582.
    t582->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t582->sval = t583.
    t581 = t582.
    DATA t584 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t584.
    DATA t585 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t585.
    DATA(t586) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    CLEAR t585.
    IF t586 IS BOUND.
      CREATE OBJECT t585.
      t585->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t585->cval = t586.
    ENDIF.
    t584 = t585.
    DATA t587 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t587.
    DATA t588 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t588.
    CREATE OBJECT t588.
    t587 = t588.
    DATA t589 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t589.
    DATA(t590) = t581.
    DATA(t591) = t584.
    DATA(t592) = t587.
    t589 = zcl_lnt_st_combi_module=>seq( i_first = t590 i_second = t591 i_rest = t592 ).
    t580 = t589.
    CLEAR t579.
    IF t580 IS BOUND.
      DATA t593 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t593.
      DATA t594 TYPE REF TO object.
      CLEAR t594.
      CLEAR t593.
      t594 = t580.
      TRY.
          t579 ?= t594.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t579 IS NOT BOUND.
        TRY.
            t593 ?= t580.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t593 IS BOUND.
          t579 = t593->source( ).
        ENDIF.
        IF t579 IS NOT BOUND.
          CREATE OBJECT t579.
          t579->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t579->oval = t580.
        ENDIF.
      ENDIF.
    ENDIF.
    t578->load( ).
    APPEND t579 TO t578->items.
    t578->save( ).
    DATA(t595) = t542.
    DATA t596 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t596.
    DATA t597 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t597.
    DATA t598 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t598.
    DATA t599 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t599.
    DATA(t600) = |MAPPED|.
    CLEAR t599.
    CREATE OBJECT t599.
    t599->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t599->sval = t600.
    t598 = t599.
    DATA t601 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t601.
    DATA t602 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t602.
    DATA(t603) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    CLEAR t602.
    IF t603 IS BOUND.
      CREATE OBJECT t602.
      t602->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t602->cval = t603.
    ENDIF.
    t601 = t602.
    DATA t604 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t604.
    DATA t605 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t605.
    CREATE OBJECT t605.
    t604 = t605.
    DATA t606 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t606.
    DATA(t607) = t598.
    DATA(t608) = t601.
    DATA(t609) = t604.
    t606 = zcl_lnt_st_combi_module=>seq( i_first = t607 i_second = t608 i_rest = t609 ).
    t597 = t606.
    CLEAR t596.
    IF t597 IS BOUND.
      DATA t610 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t610.
      DATA t611 TYPE REF TO object.
      CLEAR t611.
      CLEAR t610.
      t611 = t597.
      TRY.
          t596 ?= t611.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t596 IS NOT BOUND.
        TRY.
            t610 ?= t597.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t610 IS BOUND.
          t596 = t610->source( ).
        ENDIF.
        IF t596 IS NOT BOUND.
          CREATE OBJECT t596.
          t596->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t596->oval = t597.
        ENDIF.
      ENDIF.
    ENDIF.
    t595->load( ).
    APPEND t596 TO t595->items.
    t595->save( ).
    DATA(t612) = t542.
    DATA t613 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t613.
    DATA t614 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t614.
    DATA t615 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t615.
    DATA t616 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t616.
    DATA(t617) = |REPORTED EARLY|.
    CLEAR t616.
    CREATE OBJECT t616.
    t616->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t616->sval = t617.
    t615 = t616.
    DATA t618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t618.
    DATA t619 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t619.
    DATA(t620) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    CLEAR t619.
    IF t620 IS BOUND.
      CREATE OBJECT t619.
      t619->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t619->cval = t620.
    ENDIF.
    t618 = t619.
    DATA t621 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t621.
    DATA t622 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t622.
    CREATE OBJECT t622.
    t621 = t622.
    DATA t623 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t623.
    DATA(t624) = t615.
    DATA(t625) = t618.
    DATA(t626) = t621.
    t623 = zcl_lnt_st_combi_module=>seq( i_first = t624 i_second = t625 i_rest = t626 ).
    t614 = t623.
    CLEAR t613.
    IF t614 IS BOUND.
      DATA t627 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t627.
      DATA t628 TYPE REF TO object.
      CLEAR t628.
      CLEAR t627.
      t628 = t614.
      TRY.
          t613 ?= t628.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t613 IS NOT BOUND.
        TRY.
            t627 ?= t614.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t627 IS BOUND.
          t613 = t627->source( ).
        ENDIF.
        IF t613 IS NOT BOUND.
          CREATE OBJECT t613.
          t613->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t613->oval = t614.
        ENDIF.
      ENDIF.
    ENDIF.
    t612->load( ).
    APPEND t613 TO t612->items.
    t612->save( ).
    DATA(t629) = t542.
    DATA t630 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t630.
    DATA t631 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t631.
    DATA t632 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t632.
    DATA t633 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t633.
    DATA(t634) = |REPORTED LATE|.
    CLEAR t633.
    CREATE OBJECT t633.
    t633->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t633->sval = t634.
    t632 = t633.
    DATA t635 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t635.
    DATA t636 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t636.
    DATA(t637) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    CLEAR t636.
    IF t637 IS BOUND.
      CREATE OBJECT t636.
      t636->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t636->cval = t637.
    ENDIF.
    t635 = t636.
    DATA t638 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t638.
    DATA t639 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t639.
    CREATE OBJECT t639.
    t638 = t639.
    DATA t640 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t640.
    DATA(t641) = t632.
    DATA(t642) = t635.
    DATA(t643) = t638.
    t640 = zcl_lnt_st_combi_module=>seq( i_first = t641 i_second = t642 i_rest = t643 ).
    t631 = t640.
    CLEAR t630.
    IF t631 IS BOUND.
      DATA t644 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t644.
      DATA t645 TYPE REF TO object.
      CLEAR t645.
      CLEAR t644.
      t645 = t631.
      TRY.
          t630 ?= t645.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t630 IS NOT BOUND.
        TRY.
            t644 ?= t631.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t644 IS BOUND.
          t630 = t644->source( ).
        ENDIF.
        IF t630 IS NOT BOUND.
          CREATE OBJECT t630.
          t630->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t630->oval = t631.
        ENDIF.
      ENDIF.
    ENDIF.
    t629->load( ).
    APPEND t630 TO t629->items.
    t629->save( ).
    DATA(t646) = t542.
    DATA t647 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t647.
    DATA t648 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t648.
    DATA t649 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t649.
    DATA t650 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t650.
    DATA(t651) = |REPORTED|.
    CLEAR t650.
    CREATE OBJECT t650.
    t650->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t650->sval = t651.
    t649 = t650.
    DATA t652 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t652.
    DATA t653 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t653.
    DATA(t654) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    CLEAR t653.
    IF t654 IS BOUND.
      CREATE OBJECT t653.
      t653->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t653->cval = t654.
    ENDIF.
    t652 = t653.
    DATA t655 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t655.
    DATA t656 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t656.
    CREATE OBJECT t656.
    t655 = t656.
    DATA t657 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t657.
    DATA(t658) = t649.
    DATA(t659) = t652.
    DATA(t660) = t655.
    t657 = zcl_lnt_st_combi_module=>seq( i_first = t658 i_second = t659 i_rest = t660 ).
    t648 = t657.
    CLEAR t647.
    IF t648 IS BOUND.
      DATA t661 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t661.
      DATA t662 TYPE REF TO object.
      CLEAR t662.
      CLEAR t661.
      t662 = t648.
      TRY.
          t647 ?= t662.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t647 IS NOT BOUND.
        TRY.
            t661 ?= t648.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t661 IS BOUND.
          t647 = t661->source( ).
        ENDIF.
        IF t647 IS NOT BOUND.
          CREATE OBJECT t647.
          t647->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t647->oval = t648.
        ENDIF.
      ENDIF.
    ENDIF.
    t646->load( ).
    APPEND t647 TO t646->items.
    t646->save( ).
    DATA t663 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t663.
    DATA(t664) = t508.
    DATA(t665) = t525.
    DATA(t666) = t542.
    t663 = zcl_lnt_st_combi_module=>alt_prio( i_first = t664 i_second = t665 i_rest = t666 ).
    t507 = t663.
    CLEAR t506.
    IF t507 IS BOUND.
      DATA t667 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t667.
      DATA t668 TYPE REF TO object.
      CLEAR t668.
      CLEAR t667.
      t668 = t507.
      TRY.
          t506 ?= t668.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t506 IS NOT BOUND.
        TRY.
            t667 ?= t507.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t667 IS BOUND.
          t506 = t667->source( ).
        ENDIF.
        IF t506 IS NOT BOUND.
          CREATE OBJECT t506.
          t506->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t506->oval = t507.
        ENDIF.
      ENDIF.
    ENDIF.
    t505 = t506.
    DATA t669 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t669.
    DATA t670 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t670.
    CREATE OBJECT t670.
    t669 = t670.
    DATA t671 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t671.
    DATA(t672) = t502.
    DATA(t673) = t505.
    DATA(t674) = t669.
    t671 = zcl_lnt_st_combi_module=>seq( i_first = t672 i_second = t673 i_rest = t674 ).
    t501 = t671.
    CLEAR t500.
    IF t501 IS BOUND.
      DATA t675 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t675.
      DATA t676 TYPE REF TO object.
      CLEAR t676.
      CLEAR t675.
      t676 = t501.
      TRY.
          t500 ?= t676.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t500 IS NOT BOUND.
        TRY.
            t675 ?= t501.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t675 IS BOUND.
          t500 = t675->source( ).
        ENDIF.
        IF t500 IS NOT BOUND.
          CREATE OBJECT t500.
          t500->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t500->oval = t501.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t677 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t677.
    DATA(t678) = abap_true.
    IF t678 = abap_true.
      DATA t679 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t679.
      DATA t680 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t680.
      DATA t681 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t681.
      DATA(t682) = abap_true.
      IF t682 = abap_true.
        DATA(t683) = |OpenABAP|.
        DATA(t684) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t684->has = abap_true.
        t684->value = t683.
        t681 = t684.
      ELSE.
        DATA t685 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t685.
        t681 = t685.
      ENDIF.
      t680 = t681.
      t679 = NEW zcl_lnt_iver_options( i_also = t680 ).
      CREATE OBJECT t679->zlnt_view_ownkeys_b0e8086400eb.
      t679->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t686 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t686.
      IF t679->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t679->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t686 ).
      ENDIF.
      CREATE OBJECT t679->zlnt_json_ownkeys_70e5fd461788.
      t679->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t687) = |also|.
      DATA t688 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t688.
      IF t679->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t679->zlnt_json_ownkeys_70e5fd461788->put( p0 = t687 p1 = t688 ).
      ENDIF.
      t677 = t679.
    ELSE.
      DATA t689 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t689.
      t677 = t689.
    ENDIF.
    t492 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t493 i_first = t500 i_opts = t677 ).
    t491 = t492.
    DATA t690 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t690.
    DATA t691 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t691.
    DATA t692 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t692.
    DATA t693 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t693.
    DATA t694 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t694.
    DATA t695 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t695.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t695 = zcl_lnt_version_module=>release_b8cd.
    DATA(t696) = |v778|.
    t694 = t695->get( p0 = t696 ).
    t693 = t694.
    CLEAR t692.
    IF t693 IS BOUND.
      DATA t697 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t697.
      DATA t698 TYPE REF TO object.
      CLEAR t698.
      CLEAR t697.
      t698 = t693.
      TRY.
          t692 ?= t698.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t692 IS NOT BOUND.
        TRY.
            t697 ?= t693.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t697 IS BOUND.
          t692 = t697->source( ).
        ENDIF.
        IF t692 IS NOT BOUND.
          CREATE OBJECT t692.
          t692->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t692->oval = t693.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t699 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t699.
    DATA t700 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t700.
    DATA t701 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t701.
    DATA t702 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t702.
    DATA(t703) = |REQUEST FOR|.
    CLEAR t702.
    CREATE OBJECT t702.
    t702->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t702->sval = t703.
    t701 = t702.
    DATA t704 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t704.
    DATA t705 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t705.
    DATA t706 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t706.
    DATA t707 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t707.
    DATA t708 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t708.
    DATA(t709) = |CHANGE|.
    CLEAR t708.
    CREATE OBJECT t708.
    t708->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t708->sval = t709.
    t707 = t708.
    DATA t710 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t710.
    DATA t711 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t711.
    DATA(t712) = |DELETE|.
    CLEAR t711.
    CREATE OBJECT t711.
    t711->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t711->sval = t712.
    t710 = t711.
    DATA t713 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t713.
    DATA t714 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t714.
    CREATE OBJECT t714.
    t713 = t714.
    DATA t715 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t715.
    DATA(t716) = t707.
    DATA(t717) = t710.
    DATA(t718) = t713.
    t715 = zcl_lnt_st_combi_module=>alt( i_first = t716 i_second = t717 i_rest = t718 ).
    t706 = t715.
    CLEAR t705.
    IF t706 IS BOUND.
      DATA t719 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t719.
      DATA t720 TYPE REF TO object.
      CLEAR t720.
      CLEAR t719.
      t720 = t706.
      TRY.
          t705 ?= t720.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t705 IS NOT BOUND.
        TRY.
            t719 ?= t706.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t719 IS BOUND.
          t705 = t719->source( ).
        ENDIF.
        IF t705 IS NOT BOUND.
          CREATE OBJECT t705.
          t705->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t705->oval = t706.
        ENDIF.
      ENDIF.
    ENDIF.
    t704 = t705.
    DATA t721 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t721.
    DATA t722 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t722.
    CREATE OBJECT t722.
    t721 = t722.
    DATA(t723) = t721.
    DATA t724 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t724.
    DATA(t725) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    CLEAR t724.
    IF t725 IS BOUND.
      CREATE OBJECT t724.
      t724->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t724->cval = t725.
    ENDIF.
    t723->load( ).
    APPEND t724 TO t723->items.
    t723->save( ).
    DATA t726 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t726.
    DATA(t727) = t701.
    DATA(t728) = t704.
    DATA(t729) = t721.
    t726 = zcl_lnt_st_combi_module=>seq( i_first = t727 i_second = t728 i_rest = t729 ).
    t700 = t726.
    CLEAR t699.
    IF t700 IS BOUND.
      DATA t730 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t730.
      DATA t731 TYPE REF TO object.
      CLEAR t731.
      CLEAR t730.
      t731 = t700.
      TRY.
          t699 ?= t731.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t699 IS NOT BOUND.
        TRY.
            t730 ?= t700.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t730 IS BOUND.
          t699 = t730->source( ).
        ENDIF.
        IF t699 IS NOT BOUND.
          CREATE OBJECT t699.
          t699->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t699->oval = t700.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t732 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t732.
    DATA(t733) = abap_true.
    IF t733 = abap_true.
      DATA t734 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t734.
      DATA t735 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t735.
      DATA t736 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t736.
      DATA(t737) = abap_true.
      IF t737 = abap_true.
        DATA(t738) = |OpenABAP|.
        DATA(t739) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t739->has = abap_true.
        t739->value = t738.
        t736 = t739.
      ELSE.
        DATA t740 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t740.
        t736 = t740.
      ENDIF.
      t735 = t736.
      t734 = NEW zcl_lnt_iver_options( i_also = t735 ).
      CREATE OBJECT t734->zlnt_view_ownkeys_b0e8086400eb.
      t734->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t741 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t741.
      IF t734->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t741 ).
      ENDIF.
      CREATE OBJECT t734->zlnt_json_ownkeys_70e5fd461788.
      t734->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t742) = |also|.
      DATA t743 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t743.
      IF t734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t734->zlnt_json_ownkeys_70e5fd461788->put( p0 = t742 p1 = t743 ).
      ENDIF.
      t732 = t734.
    ELSE.
      DATA t744 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t744.
      t732 = t744.
    ENDIF.
    t691 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t692 i_first = t699 i_opts = t732 ).
    t690 = t691.
    DATA t745 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t745.
    DATA t746 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t746.
    DATA t747 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t747.
    DATA(t748) = |TYPE|.
    CLEAR t747.
    CREATE OBJECT t747.
    t747->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t747->sval = t748.
    t746 = t747.
    DATA t749 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t749.
    DATA t750 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t750.
    DATA t751 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t751.
    DATA t752 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t752.
    DATA t753 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t753.
    DATA(t754) = t451.
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
    DATA t757 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t757.
    DATA t758 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t758.
    DATA(t759) = t491.
    CLEAR t758.
    IF t759 IS BOUND.
      DATA t760 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t760.
      DATA t761 TYPE REF TO object.
      CLEAR t761.
      CLEAR t760.
      t761 = t759.
      TRY.
          t758 ?= t761.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t758 IS NOT BOUND.
        TRY.
            t760 ?= t759.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t760 IS BOUND.
          t758 = t760->source( ).
        ENDIF.
        IF t758 IS NOT BOUND.
          CREATE OBJECT t758.
          t758->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t758->oval = t759.
        ENDIF.
      ENDIF.
    ENDIF.
    t757 = t758.
    DATA t762 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t762.
    DATA t763 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t763.
    CREATE OBJECT t763.
    t762 = t763.
    DATA(t764) = t762.
    DATA t765 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t765.
    DATA(t766) = t690.
    CLEAR t765.
    IF t766 IS BOUND.
      DATA t767 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t767.
      DATA t768 TYPE REF TO object.
      CLEAR t768.
      CLEAR t767.
      t768 = t766.
      TRY.
          t765 ?= t768.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t765 IS NOT BOUND.
        TRY.
            t767 ?= t766.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t767 IS BOUND.
          t765 = t767->source( ).
        ENDIF.
        IF t765 IS NOT BOUND.
          CREATE OBJECT t765.
          t765->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t765->oval = t766.
        ENDIF.
      ENDIF.
    ENDIF.
    t764->load( ).
    APPEND t765 TO t764->items.
    t764->save( ).
    DATA t769 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t769.
    DATA(t770) = t752.
    DATA(t771) = t757.
    DATA(t772) = t762.
    t769 = zcl_lnt_st_combi_module=>alt_prio( i_first = t770 i_second = t771 i_rest = t772 ).
    t751 = t769.
    CLEAR t750.
    IF t751 IS BOUND.
      DATA t773 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t773.
      DATA t774 TYPE REF TO object.
      CLEAR t774.
      CLEAR t773.
      t774 = t751.
      TRY.
          t750 ?= t774.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t750 IS NOT BOUND.
        TRY.
            t773 ?= t751.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t773 IS BOUND.
          t750 = t773->source( ).
        ENDIF.
        IF t750 IS NOT BOUND.
          CREATE OBJECT t750.
          t750->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t750->oval = t751.
        ENDIF.
      ENDIF.
    ENDIF.
    t749 = t750.
    DATA t775 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t775.
    DATA t776 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t776.
    CREATE OBJECT t776.
    t775 = t776.
    DATA(t777) = t775.
    DATA t778 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t778.
    DATA t779 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t779.
    DATA t780 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t780.
    DATA(t781) = |VALUE IS INITIAL|.
    CLEAR t780.
    CREATE OBJECT t780.
    t780->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t780->sval = t781.
    t779 = zcl_lnt_st_combi_module=>opt_prio( i_first = t780 ).
    CLEAR t778.
    IF t779 IS BOUND.
      DATA t782 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t782.
      DATA t783 TYPE REF TO object.
      CLEAR t783.
      CLEAR t782.
      t783 = t779.
      TRY.
          t778 ?= t783.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t778 IS NOT BOUND.
        TRY.
            t782 ?= t779.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t782 IS BOUND.
          t778 = t782->source( ).
        ENDIF.
        IF t778 IS NOT BOUND.
          CREATE OBJECT t778.
          t778->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t778->oval = t779.
        ENDIF.
      ENDIF.
    ENDIF.
    t777->load( ).
    APPEND t778 TO t777->items.
    t777->save( ).
    DATA t784 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t784.
    DATA(t785) = t746.
    DATA(t786) = t749.
    DATA(t787) = t775.
    t784 = zcl_lnt_st_combi_module=>seq( i_first = t785 i_second = t786 i_rest = t787 ).
    t745 = t784.
    result = t745.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d153_a3333d63766c.
  ENDMETHOD.
ENDCLASS.
