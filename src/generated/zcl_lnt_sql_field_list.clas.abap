* TS: src/abap/2_statements/expressions/sql_field_list.ts:7:1 SQLFieldList
CLASS zcl_lnt_sql_field_list DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_field_list IMPLEMENTATION.
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
    DATA(t5) = |AS|.
    CLEAR t4.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d289_f424b1178837.
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
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t19.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t19 = zcl_lnt_st_combi_module=>tok( i_t = t20 ).
    CLEAR t18.
    IF t19 IS BOUND.
      DATA t21 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t21.
      DATA t22 TYPE REF TO object.
      CLEAR t22.
      CLEAR t21.
      t22 = t19.
      TRY.
          t18 ?= t22.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t18 IS NOT BOUND.
        TRY.
            t21 ?= t19.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t21 IS BOUND.
          t18 = t21->source( ).
        ENDIF.
        IF t18 IS NOT BOUND.
          CREATE OBJECT t18.
          t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t18->oval = t19.
        ENDIF.
      ENDIF.
    ENDIF.
    t17 = t18.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
    CLEAR t24.
    IF t25 IS BOUND.
      CREATE OBJECT t24.
      t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t24->cval = t25.
    ENDIF.
    t23 = t24.
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
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t33.
    DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t33 = zcl_lnt_st_combi_module=>tok( i_t = t34 ).
    CLEAR t32.
    IF t33 IS BOUND.
      DATA t35 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t35.
      DATA t36 TYPE REF TO object.
      CLEAR t36.
      CLEAR t35.
      t36 = t33.
      TRY.
          t32 ?= t36.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t32 IS NOT BOUND.
        TRY.
            t35 ?= t33.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t35 IS BOUND.
          t32 = t35->source( ).
        ENDIF.
        IF t32 IS NOT BOUND.
          CREATE OBJECT t32.
          t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t32->oval = t33.
        ENDIF.
      ENDIF.
    ENDIF.
    t31 = t32.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t39.
    DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de.
    t39 = zcl_lnt_st_combi_module=>tok( i_t = t40 ).
    CLEAR t38.
    IF t39 IS BOUND.
      DATA t41 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t41.
      DATA t42 TYPE REF TO object.
      CLEAR t42.
      CLEAR t41.
      t42 = t39.
      TRY.
          t38 ?= t42.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t38 IS NOT BOUND.
        TRY.
            t41 ?= t39.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t41 IS BOUND.
          t38 = t41->source( ).
        ENDIF.
        IF t38 IS NOT BOUND.
          CREATE OBJECT t38.
          t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t38->oval = t39.
        ENDIF.
      ENDIF.
    ENDIF.
    t37 = t38.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t44.
    CREATE OBJECT t44.
    t43 = t44.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t45.
    DATA(t46) = t31.
    DATA(t47) = t37.
    DATA(t48) = t43.
    t45 = zcl_lnt_st_combi_module=>alt_prio( i_first = t46 i_second = t47 i_rest = t48 ).
    t30 = t45.
    CLEAR t29.
    IF t30 IS BOUND.
      DATA t49 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t49.
      DATA t50 TYPE REF TO object.
      CLEAR t50.
      CLEAR t49.
      t50 = t30.
      TRY.
          t29 ?= t50.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t29 IS NOT BOUND.
        TRY.
            t49 ?= t30.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t49 IS BOUND.
          t29 = t49->source( ).
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
    DATA(t51) = t26.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA(t55) = t1.
    CLEAR t54.
    IF t55 IS BOUND.
      DATA t56 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t56.
      DATA t57 TYPE REF TO object.
      CLEAR t57.
      CLEAR t56.
      t57 = t55.
      TRY.
          t54 ?= t57.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t54 IS NOT BOUND.
        TRY.
            t56 ?= t55.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t56 IS BOUND.
          t54 = t56->source( ).
        ENDIF.
        IF t54 IS NOT BOUND.
          CREATE OBJECT t54.
          t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t54->oval = t55.
        ENDIF.
      ENDIF.
    ENDIF.
    t53 = zcl_lnt_st_combi_module=>opt_prio( i_first = t54 ).
    CLEAR t52.
    IF t53 IS BOUND.
      DATA t58 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t58.
      DATA t59 TYPE REF TO object.
      CLEAR t59.
      CLEAR t58.
      t59 = t53.
      TRY.
          t52 ?= t59.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t52 IS NOT BOUND.
        TRY.
            t58 ?= t53.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t58 IS BOUND.
          t52 = t58->source( ).
        ENDIF.
        IF t52 IS NOT BOUND.
          CREATE OBJECT t52.
          t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t52->oval = t53.
        ENDIF.
      ENDIF.
    ENDIF.
    t51->load( ).
    APPEND t52 TO t51->items.
    t51->save( ).
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t60.
    DATA(t61) = t17.
    DATA(t62) = t23.
    DATA(t63) = t26.
    t60 = zcl_lnt_st_combi_module=>seq( i_first = t61 i_second = t62 i_rest = t63 ).
    t16 = t60.
    t15 = t16.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t64.
    DATA t65 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t65.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA t67 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t67.
    DATA t68 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t68.
    DATA t69 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t69.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t69 = zcl_lnt_version_module=>release_b8cd.
    DATA(t70) = |v740sp05|.
    t68 = t69->get( p0 = t70 ).
    t67 = t68.
    CLEAR t66.
    IF t67 IS BOUND.
      DATA t71 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t71.
      DATA t72 TYPE REF TO object.
      CLEAR t72.
      CLEAR t71.
      t72 = t67.
      TRY.
          t66 ?= t72.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t66 IS NOT BOUND.
        TRY.
            t71 ?= t67.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t71 IS BOUND.
          t66 = t71->source( ).
        ENDIF.
        IF t66 IS NOT BOUND.
          CREATE OBJECT t66.
          t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t66->oval = t67.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA(t79) = |,|.
    CLEAR t78.
    CREATE OBJECT t78.
    t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t78->sval = t79.
    t77 = t78.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA(t85) = zlnt_runtime_desc_78196487750d=>zlnt_member_d315_136d5faf95cc.
    CLEAR t84.
    IF t85 IS BOUND.
      CREATE OBJECT t84.
      t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t84->cval = t85.
    ENDIF.
    t83 = t84.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA(t88) = t15.
    CLEAR t87.
    IF t88 IS BOUND.
      DATA t89 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t89.
      DATA t90 TYPE REF TO object.
      CLEAR t90.
      CLEAR t89.
      t90 = t88.
      TRY.
          t87 ?= t90.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t87 IS NOT BOUND.
        TRY.
            t89 ?= t88.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t89 IS BOUND.
          t87 = t89->source( ).
        ENDIF.
        IF t87 IS NOT BOUND.
          CREATE OBJECT t87.
          t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t87->oval = t88.
        ENDIF.
      ENDIF.
    ENDIF.
    t86 = t87.
    DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t92.
    CREATE OBJECT t92.
    t91 = t92.
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t93.
    DATA(t94) = t83.
    DATA(t95) = t86.
    DATA(t96) = t91.
    t93 = zcl_lnt_st_combi_module=>alt_prio( i_first = t94 i_second = t95 i_rest = t96 ).
    t82 = t93.
    CLEAR t81.
    IF t82 IS BOUND.
      DATA t97 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t97.
      DATA t98 TYPE REF TO object.
      CLEAR t98.
      CLEAR t97.
      t98 = t82.
      TRY.
          t81 ?= t98.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t81 IS NOT BOUND.
        TRY.
            t97 ?= t82.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t97 IS BOUND.
          t81 = t97->source( ).
        ENDIF.
        IF t81 IS NOT BOUND.
          CREATE OBJECT t81.
          t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t81->oval = t82.
        ENDIF.
      ENDIF.
    ENDIF.
    t80 = t81.
    DATA t99 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t100.
    CREATE OBJECT t100.
    t99 = t100.
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t101.
    DATA(t102) = t77.
    DATA(t103) = t80.
    DATA(t104) = t99.
    t101 = zcl_lnt_st_combi_module=>seq( i_first = t102 i_second = t103 i_rest = t104 ).
    t76 = t101.
    CLEAR t75.
    IF t76 IS BOUND.
      DATA t105 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t105.
      DATA t106 TYPE REF TO object.
      CLEAR t106.
      CLEAR t105.
      t106 = t76.
      TRY.
          t75 ?= t106.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t75 IS NOT BOUND.
        TRY.
            t105 ?= t76.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t105 IS BOUND.
          t75 = t105->source( ).
        ENDIF.
        IF t75 IS NOT BOUND.
          CREATE OBJECT t75.
          t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t75->oval = t76.
        ENDIF.
      ENDIF.
    ENDIF.
    t74 = zcl_lnt_st_combi_module=>star_prio( i_first = t75 ).
    CLEAR t73.
    IF t74 IS BOUND.
      DATA t107 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t107.
      DATA t108 TYPE REF TO object.
      CLEAR t108.
      CLEAR t107.
      t108 = t74.
      TRY.
          t73 ?= t108.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t73 IS NOT BOUND.
        TRY.
            t107 ?= t74.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t107 IS BOUND.
          t73 = t107->source( ).
        ENDIF.
        IF t73 IS NOT BOUND.
          CREATE OBJECT t73.
          t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t73->oval = t74.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t109 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t109.
    DATA(t110) = abap_true.
    IF t110 = abap_true.
      DATA t111 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t111.
      DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t112.
      DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t113.
      DATA(t114) = abap_true.
      IF t114 = abap_true.
        DATA(t115) = |OpenABAP|.
        DATA(t116) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t116->has = abap_true.
        t116->value = t115.
        t113 = t116.
      ELSE.
        DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t117.
        t113 = t117.
      ENDIF.
      t112 = t113.
      t111 = NEW zcl_lnt_iver_options( i_also = t112 ).
      CREATE OBJECT t111->zlnt_view_ownkeys_b0e8086400eb.
      t111->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t118.
      IF t111->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t111->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `also` p1 = t118 ).
      ENDIF.
      CREATE OBJECT t111->zlnt_json_ownkeys_70e5fd461788.
      t111->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t119) = |also|.
      DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t120.
      IF t111->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t111->zlnt_json_ownkeys_70e5fd461788->put( p0 = t119 p1 = t120 ).
      ENDIF.
      t109 = t111.
    ELSE.
      DATA t121 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t121.
      t109 = t121.
    ENDIF.
    t65 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t66 i_first = t73 i_opts = t109 ).
    t64 = t65.
    DATA t122 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t122.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t123.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    DATA t125 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t125.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t127.
    DATA t128 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t128.
    DATA(t129) = |UP|.
    DATA(t130) = |TO|.
    t128 = zcl_lnt_st_combi_module=>stop_before( i_t1 = t129 i_t2 = t130 ).
    CLEAR t127.
    IF t128 IS BOUND.
      DATA t131 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t131.
      DATA t132 TYPE REF TO object.
      CLEAR t132.
      CLEAR t131.
      t132 = t128.
      TRY.
          t127 ?= t132.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t127 IS NOT BOUND.
        TRY.
            t131 ?= t128.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t131 IS BOUND.
          t127 = t131->source( ).
        ENDIF.
        IF t127 IS NOT BOUND.
          CREATE OBJECT t127.
          t127->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t127->oval = t128.
        ENDIF.
      ENDIF.
    ENDIF.
    t126 = t127.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t133.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    DATA(t135) = zlnt_runtime_desc_78196487750d=>zlnt_member_d315_136d5faf95cc.
    CLEAR t134.
    IF t135 IS BOUND.
      CREATE OBJECT t134.
      t134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t134->cval = t135.
    ENDIF.
    t133 = t134.
    DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t136.
    DATA t137 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t137.
    CREATE OBJECT t137.
    t136 = t137.
    DATA t138 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t138.
    DATA(t139) = t126.
    DATA(t140) = t133.
    DATA(t141) = t136.
    t138 = zcl_lnt_st_combi_module=>seq( i_first = t139 i_second = t140 i_rest = t141 ).
    t125 = t138.
    CLEAR t124.
    IF t125 IS BOUND.
      DATA t142 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t142.
      DATA t143 TYPE REF TO object.
      CLEAR t143.
      CLEAR t142.
      t143 = t125.
      TRY.
          t124 ?= t143.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t124 IS NOT BOUND.
        TRY.
            t142 ?= t125.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t142 IS BOUND.
          t124 = t142->source( ).
        ENDIF.
        IF t124 IS NOT BOUND.
          CREATE OBJECT t124.
          t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t124->oval = t125.
        ENDIF.
      ENDIF.
    ENDIF.
    t123 = zcl_lnt_st_combi_module=>star_prio( i_first = t124 ).
    t122 = t123.
    DATA t144 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t144.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t145.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA(t147) = |*|.
    CLEAR t146.
    CREATE OBJECT t146.
    t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t146->sval = t147.
    t145 = t146.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    DATA(t150) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    CLEAR t149.
    IF t150 IS BOUND.
      CREATE OBJECT t149.
      t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t149->cval = t150.
    ENDIF.
    t148 = t149.
    DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t151.
    DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t152.
    CREATE OBJECT t152.
    t151 = t152.
    DATA(t153) = t151.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t154.
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t155.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t156.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    DATA(t158) = zlnt_runtime_desc_78196487750d=>zlnt_member_d315_136d5faf95cc.
    CLEAR t157.
    IF t158 IS BOUND.
      CREATE OBJECT t157.
      t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t157->cval = t158.
    ENDIF.
    t156 = t157.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t161.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t162.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t163.
    DATA(t164) = t64.
    CLEAR t163.
    IF t164 IS BOUND.
      DATA t165 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t165.
      DATA t166 TYPE REF TO object.
      CLEAR t166.
      CLEAR t165.
      t166 = t164.
      TRY.
          t163 ?= t166.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t163 IS NOT BOUND.
        TRY.
            t165 ?= t164.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t165 IS BOUND.
          t163 = t165->source( ).
        ENDIF.
        IF t163 IS NOT BOUND.
          CREATE OBJECT t163.
          t163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t163->oval = t164.
        ENDIF.
      ENDIF.
    ENDIF.
    t162 = t163.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t167.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t168.
    DATA(t169) = t122.
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
    DATA(t175) = t162.
    DATA(t176) = t167.
    DATA(t177) = t172.
    t174 = zcl_lnt_st_combi_module=>alt( i_first = t175 i_second = t176 i_rest = t177 ).
    t161 = t174.
    CLEAR t160.
    IF t161 IS BOUND.
      DATA t178 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t178.
      DATA t179 TYPE REF TO object.
      CLEAR t179.
      CLEAR t178.
      t179 = t161.
      TRY.
          t160 ?= t179.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t160 IS NOT BOUND.
        TRY.
            t178 ?= t161.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t178 IS BOUND.
          t160 = t178->source( ).
        ENDIF.
        IF t160 IS NOT BOUND.
          CREATE OBJECT t160.
          t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t160->oval = t161.
        ENDIF.
      ENDIF.
    ENDIF.
    t159 = t160.
    DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t180.
    DATA t181 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t181.
    CREATE OBJECT t181.
    t180 = t181.
    DATA t182 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t182.
    DATA(t183) = t156.
    DATA(t184) = t159.
    DATA(t185) = t180.
    t182 = zcl_lnt_st_combi_module=>seq( i_first = t183 i_second = t184 i_rest = t185 ).
    t155 = t182.
    CLEAR t154.
    IF t155 IS BOUND.
      DATA t186 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t186.
      DATA t187 TYPE REF TO object.
      CLEAR t187.
      CLEAR t186.
      t187 = t155.
      TRY.
          t154 ?= t187.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t154 IS NOT BOUND.
        TRY.
            t186 ?= t155.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t186 IS BOUND.
          t154 = t186->source( ).
        ENDIF.
        IF t154 IS NOT BOUND.
          CREATE OBJECT t154.
          t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t154->oval = t155.
        ENDIF.
      ENDIF.
    ENDIF.
    t153->load( ).
    APPEND t154 TO t153->items.
    t153->save( ).
    DATA t188 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t188.
    DATA(t189) = t145.
    DATA(t190) = t148.
    DATA(t191) = t151.
    t188 = zcl_lnt_st_combi_module=>alt_prio( i_first = t189 i_second = t190 i_rest = t191 ).
    t144 = t188.
    result = t144.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d317_252b4f448498.
  ENDMETHOD.
ENDCLASS.
