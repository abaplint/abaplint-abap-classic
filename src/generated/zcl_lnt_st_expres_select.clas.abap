* TS: src/abap/2_statements/expressions/select.ts:8:1 Select
CLASS zcl_lnt_st_expres_select DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_expres_select IMPLEMENTATION.
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
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d257_509c7b1190c0.
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
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d258_47daac7ded2f.
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
    DATA(t11) = t9.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d259_29e6bae3a66c.
    CLEAR t12.
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t12->cval = t13.
    ENDIF.
    t11->load( ).
    APPEND t12 TO t11->items.
    t11->save( ).
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t14.
    DATA(t15) = t3.
    DATA(t16) = t6.
    DATA(t17) = t9.
    t14 = zcl_lnt_st_combi_module=>alt_prio( i_first = t15 i_second = t16 i_rest = t17 ).
    t2 = t14.
    t1 = t2.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA(t25) = |SINGLE|.
    CLEAR t24.
    CREATE OBJECT t24.
    t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t24->sval = t25.
    t23 = t24.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA t30 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t30.
    DATA(t31) = |KeyUser|.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA(t33) = |FOR UPDATE|.
    CLEAR t32.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = t33.
    t30 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t31 i_first = t32 ).
    CLEAR t29.
    IF t30 IS BOUND.
      DATA t34 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t34.
      DATA t35 TYPE REF TO object.
      CLEAR t35.
      CLEAR t34.
      t35 = t30.
      TRY.
          t29 ?= t35.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t29 IS NOT BOUND.
        TRY.
            t34 ?= t30.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t34 IS BOUND.
          t29 = t34->source( ).
        ENDIF.
        IF t29 IS NOT BOUND.
          CREATE OBJECT t29.
          t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t29->oval = t30.
        ENDIF.
      ENDIF.
    ENDIF.
    t28 = zcl_lnt_st_combi_module=>opt_prio( i_first = t29 ).
    CLEAR t27.
    IF t28 IS BOUND.
      DATA t36 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t36.
      DATA t37 TYPE REF TO object.
      CLEAR t37.
      CLEAR t36.
      t37 = t28.
      TRY.
          t27 ?= t37.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t27 IS NOT BOUND.
        TRY.
            t36 ?= t28.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t36 IS BOUND.
          t27 = t36->source( ).
        ENDIF.
        IF t27 IS NOT BOUND.
          CREATE OBJECT t27.
          t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t27->oval = t28.
        ENDIF.
      ENDIF.
    ENDIF.
    t26 = t27.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t39.
    CREATE OBJECT t39.
    t38 = t39.
    DATA(t40) = t38.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t43.
    DATA(t44) = abap_true.
    IF t44 = abap_true.
      DATA(t45) = abap_true.
      DATA(t46) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t46->has = abap_true.
      t46->value = t45.
      t43 = t46.
    ELSE.
      DATA t47 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t47.
      t43 = t47.
    ENDIF.
    t42 = zcl_lnt_select_core_module=>build_select_single_core( i_allow_into = t43 ).
    CLEAR t41.
    IF t42 IS BOUND.
      DATA t48 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t48.
      DATA t49 TYPE REF TO object.
      CLEAR t49.
      CLEAR t48.
      t49 = t42.
      TRY.
          t41 ?= t49.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t41 IS NOT BOUND.
        TRY.
            t48 ?= t42.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t48 IS BOUND.
          t41 = t48->source( ).
        ENDIF.
        IF t41 IS NOT BOUND.
          CREATE OBJECT t41.
          t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t41->oval = t42.
        ENDIF.
      ENDIF.
    ENDIF.
    t40->load( ).
    APPEND t41 TO t40->items.
    t40->save( ).
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t50.
    DATA(t51) = t23.
    DATA(t52) = t26.
    DATA(t53) = t38.
    t50 = zcl_lnt_st_combi_module=>seq( i_first = t51 i_second = t52 i_rest = t53 ).
    t22 = t50.
    CLEAR t21.
    IF t22 IS BOUND.
      DATA t54 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t54.
      DATA t55 TYPE REF TO object.
      CLEAR t55.
      CLEAR t54.
      t55 = t22.
      TRY.
          t21 ?= t55.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t21 IS NOT BOUND.
        TRY.
            t54 ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t54 IS BOUND.
          t21 = t54->source( ).
        ENDIF.
        IF t21 IS NOT BOUND.
          CREATE OBJECT t21.
          t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t21->oval = t22.
        ENDIF.
      ENDIF.
    ENDIF.
    t20 = t21.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t59.
    DATA(t60) = abap_true.
    IF t60 = abap_true.
      DATA(t61) = abap_true.
      DATA(t62) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t62->has = abap_true.
      t62->value = t61.
      t59 = t62.
    ELSE.
      DATA t63 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t63.
      t59 = t63.
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t64.
    t58 = zcl_lnt_select_core_module=>build_select_core( i_allow_into = t59 i_allow_order_by = t64 ).
    CLEAR t57.
    IF t58 IS BOUND.
      DATA t65 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t65.
      DATA t66 TYPE REF TO object.
      CLEAR t66.
      CLEAR t65.
      t66 = t58.
      TRY.
          t57 ?= t66.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t57 IS NOT BOUND.
        TRY.
            t65 ?= t58.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t65 IS BOUND.
          t57 = t65->source( ).
        ENDIF.
        IF t57 IS NOT BOUND.
          CREATE OBJECT t57.
          t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t57->oval = t58.
        ENDIF.
      ENDIF.
    ENDIF.
    t56 = t57.
    DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t68.
    CREATE OBJECT t68.
    t67 = t68.
    DATA t69 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t69.
    DATA(t70) = t20.
    DATA(t71) = t56.
    DATA(t72) = t67.
    t69 = zcl_lnt_st_combi_module=>alt_prio( i_first = t70 i_second = t71 i_rest = t72 ).
    t19 = t69.
    t18 = t19.
    DATA t73 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t73.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA t76 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t76.
    DATA t77 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t78.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t78 = zcl_lnt_version_module=>release_b8cd.
    DATA(t79) = |v750|.
    t77 = t78->get( p0 = t79 ).
    t76 = t77.
    CLEAR t75.
    IF t76 IS BOUND.
      DATA t80 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t80.
      DATA t81 TYPE REF TO object.
      CLEAR t81.
      CLEAR t80.
      t81 = t76.
      TRY.
          t75 ?= t81.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t75 IS NOT BOUND.
        TRY.
            t80 ?= t76.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t80 IS BOUND.
          t75 = t80->source( ).
        ENDIF.
        IF t75 IS NOT BOUND.
          CREATE OBJECT t75.
          t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t75->oval = t76.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA t83 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t83.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA(t85) = zlnt_runtime_desc_78196487750d=>zlnt_member_d260_1308f310bc0a.
    CLEAR t84.
    IF t85 IS BOUND.
      CREATE OBJECT t84.
      t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t84->cval = t85.
    ENDIF.
    t83 = zcl_lnt_st_combi_module=>plus_prio( i_first = t84 ).
    CLEAR t82.
    IF t83 IS BOUND.
      DATA t86 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t86.
      DATA t87 TYPE REF TO object.
      CLEAR t87.
      CLEAR t86.
      t87 = t83.
      TRY.
          t82 ?= t87.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t82 IS NOT BOUND.
        TRY.
            t86 ?= t83.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t86 IS BOUND.
          t82 = t86->source( ).
        ENDIF.
        IF t82 IS NOT BOUND.
          CREATE OBJECT t82.
          t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t82->oval = t83.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t88 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t88.
    DATA(t89) = abap_true.
    IF t89 = abap_true.
      DATA t90 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t90.
      DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t91.
      DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t92.
      DATA(t93) = abap_true.
      IF t93 = abap_true.
        DATA(t94) = |OpenABAP|.
        DATA(t95) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t95->has = abap_true.
        t95->value = t94.
        t92 = t95.
      ELSE.
        DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t96.
        t92 = t96.
      ENDIF.
      t91 = t92.
      t90 = NEW zcl_lnt_iver_options( i_also = t91 ).
      CREATE OBJECT t90->zlnt_view_ownkeys_b0e8086400eb.
      t90->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t97.
      IF t90->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t90->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t97 ).
      ENDIF.
      CREATE OBJECT t90->zlnt_json_ownkeys_70e5fd461788.
      t90->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t98) = |also|.
      DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t99.
      IF t90->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t90->zlnt_json_ownkeys_70e5fd461788->put( p0 = t98 p1 = t99 ).
      ENDIF.
      t88 = t90.
    ELSE.
      DATA t100 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t100.
      t88 = t100.
    ENDIF.
    t74 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t75 i_first = t82 i_opts = t88 ).
    t73 = t74.
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t101.
    DATA t102 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA t105 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t105.
    DATA t106 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t106.
    DATA(t107) = abap_true.
    IF t107 = abap_true.
      DATA(t108) = abap_false.
      DATA(t109) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t109->has = abap_true.
      t109->value = t108.
      t106 = t109.
    ELSE.
      DATA t110 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t110.
      t106 = t110.
    ENDIF.
    DATA t111 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t111.
    DATA(t112) = abap_true.
    IF t112 = abap_true.
      DATA(t113) = abap_false.
      DATA(t114) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t114->has = abap_true.
      t114->value = t113.
      t111 = t114.
    ELSE.
      DATA t115 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t115.
      t111 = t115.
    ENDIF.
    t105 = zcl_lnt_select_core_module=>build_select_core( i_allow_into = t106 i_allow_order_by = t111 ).
    CLEAR t104.
    IF t105 IS BOUND.
      DATA t116 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t116.
      DATA t117 TYPE REF TO object.
      CLEAR t117.
      CLEAR t116.
      t117 = t105.
      TRY.
          t104 ?= t117.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t104 IS NOT BOUND.
        TRY.
            t116 ?= t105.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t116 IS BOUND.
          t104 = t116->source( ).
        ENDIF.
        IF t104 IS NOT BOUND.
          CREATE OBJECT t104.
          t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t104->oval = t105.
        ENDIF.
      ENDIF.
    ENDIF.
    t103 = t104.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t119.
    DATA(t120) = t73.
    CLEAR t119.
    IF t120 IS BOUND.
      DATA t121 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t121.
      DATA t122 TYPE REF TO object.
      CLEAR t122.
      CLEAR t121.
      t122 = t120.
      TRY.
          t119 ?= t122.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t119 IS NOT BOUND.
        TRY.
            t121 ?= t120.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t121 IS BOUND.
          t119 = t121->source( ).
        ENDIF.
        IF t119 IS NOT BOUND.
          CREATE OBJECT t119.
          t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t119->oval = t120.
        ENDIF.
      ENDIF.
    ENDIF.
    t118 = t119.
    DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t123.
    DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t124.
    CREATE OBJECT t124.
    t123 = t124.
    DATA(t125) = t123.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t127.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    DATA(t129) = zlnt_runtime_desc_78196487750d=>zlnt_member_d261_e2dcf59482ac.
    CLEAR t128.
    IF t129 IS BOUND.
      CREATE OBJECT t128.
      t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t128->cval = t129.
    ENDIF.
    t127 = zcl_lnt_st_combi_module=>opt_prio( i_first = t128 ).
    CLEAR t126.
    IF t127 IS BOUND.
      DATA t130 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t130.
      DATA t131 TYPE REF TO object.
      CLEAR t131.
      CLEAR t130.
      t131 = t127.
      TRY.
          t126 ?= t131.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t126 IS NOT BOUND.
        TRY.
            t130 ?= t127.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t130 IS BOUND.
          t126 = t130->source( ).
        ENDIF.
        IF t126 IS NOT BOUND.
          CREATE OBJECT t126.
          t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t126->oval = t127.
        ENDIF.
      ENDIF.
    ENDIF.
    t125->load( ).
    APPEND t126 TO t125->items.
    t125->save( ).
    DATA(t132) = t123.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t133.
    DATA t134 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t134.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t135.
    DATA(t136) = t1.
    CLEAR t135.
    IF t136 IS BOUND.
      DATA t137 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t137.
      DATA t138 TYPE REF TO object.
      CLEAR t138.
      CLEAR t137.
      t138 = t136.
      TRY.
          t135 ?= t138.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t135 IS NOT BOUND.
        TRY.
            t137 ?= t136.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t137 IS BOUND.
          t135 = t137->source( ).
        ENDIF.
        IF t135 IS NOT BOUND.
          CREATE OBJECT t135.
          t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t135->oval = t136.
        ENDIF.
      ENDIF.
    ENDIF.
    t134 = zcl_lnt_st_combi_module=>opt_prio( i_first = t135 ).
    CLEAR t133.
    IF t134 IS BOUND.
      DATA t139 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t139.
      DATA t140 TYPE REF TO object.
      CLEAR t140.
      CLEAR t139.
      t140 = t134.
      TRY.
          t133 ?= t140.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t133 IS NOT BOUND.
        TRY.
            t139 ?= t134.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t139 IS BOUND.
          t133 = t139->source( ).
        ENDIF.
        IF t133 IS NOT BOUND.
          CREATE OBJECT t133.
          t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t133->oval = t134.
        ENDIF.
      ENDIF.
    ENDIF.
    t132->load( ).
    APPEND t133 TO t132->items.
    t132->save( ).
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t141.
    DATA(t142) = t103.
    DATA(t143) = t118.
    DATA(t144) = t123.
    t141 = zcl_lnt_st_combi_module=>seq( i_first = t142 i_second = t143 i_rest = t144 ).
    t102 = t141.
    t101 = t102.
    DATA t145 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t145.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t147.
    DATA(t148) = |SELECT|.
    CLEAR t147.
    CREATE OBJECT t147.
    t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t147->sval = t148.
    t146 = t147.
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
    DATA(t154) = t101.
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
    DATA(t159) = t18.
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
    DATA t164 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t164.
    DATA(t165) = t152.
    DATA(t166) = t157.
    DATA(t167) = t162.
    t164 = zcl_lnt_st_combi_module=>alt_prio( i_first = t165 i_second = t166 i_rest = t167 ).
    t151 = t164.
    CLEAR t150.
    IF t151 IS BOUND.
      DATA t168 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t168.
      DATA t169 TYPE REF TO object.
      CLEAR t169.
      CLEAR t168.
      t169 = t151.
      TRY.
          t150 ?= t169.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t150 IS NOT BOUND.
        TRY.
            t168 ?= t151.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t168 IS BOUND.
          t150 = t168->source( ).
        ENDIF.
        IF t150 IS NOT BOUND.
          CREATE OBJECT t150.
          t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t150->oval = t151.
        ENDIF.
      ENDIF.
    ENDIF.
    t149 = t150.
    DATA t170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t170.
    DATA t171 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t171.
    CREATE OBJECT t171.
    t170 = t171.
    DATA t172 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t172.
    DATA(t173) = t146.
    DATA(t174) = t149.
    DATA(t175) = t170.
    t172 = zcl_lnt_st_combi_module=>seq( i_first = t173 i_second = t174 i_rest = t175 ).
    t145 = t172.
    result = t145.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0.
  ENDMETHOD.
ENDCLASS.
