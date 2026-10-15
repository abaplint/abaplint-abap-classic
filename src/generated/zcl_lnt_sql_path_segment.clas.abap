* TS: src/abap/2_statements/expressions/sql_path_segment.ts:10:1 SQLPathSegment
CLASS zcl_lnt_sql_path_segment DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    DATA nws TYPE abap_bool.
    METHODS constructor IMPORTING i_nws TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_path_segment IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_nws.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = t1.
    IF t3 IS INITIAL.
      t2 = abap_true.
    ELSEIF t3->has = abap_false.
      t2 = abap_true.
    ENDIF.
    IF t2 = abap_true.
      DATA t4 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t4.
      DATA(t5) = abap_true.
      IF t5 = abap_true.
        DATA(t6) = abap_false.
        DATA(t7) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t7->has = abap_true.
        t7->value = t6.
        t4 = t7.
      ELSE.
        DATA t8 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t8.
        t4 = t8.
      ENDIF.
      t1 = t4.
    ENDIF.
    super->constructor( ).
    DATA t9 TYPE abap_bool.
    DATA(t10) = t1.
    t9 = t10->value.
    me->nws = t9.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `nws`.
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
    DATA t6 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t8.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t8 = zcl_lnt_version_module=>release_b8cd.
    DATA(t9) = |v795|.
    t7 = t8->get( p0 = t9 ).
    t6 = t7.
    CLEAR t5.
    IF t6 IS BOUND.
      DATA t10 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t10.
      DATA t11 TYPE REF TO object.
      CLEAR t11.
      CLEAR t10.
      t11 = t6.
      TRY.
          t5 ?= t11.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t5 IS NOT BOUND.
        TRY.
            t10 ?= t6.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t10 IS BOUND.
          t5 = t10->source( ).
        ENDIF.
        IF t5 IS NOT BOUND.
          CREATE OBJECT t5.
          t5->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t5->oval = t6.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t14.
    DATA(t15) = |^#[A-Z][A-Z0-9_]*$|.
    DATA(t16) = |i|.
    CREATE OBJECT t14 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t15 flags = t16.
    t13 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t14 ).
    CLEAR t12.
    IF t13 IS BOUND.
      DATA t17 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t17.
      DATA t18 TYPE REF TO object.
      CLEAR t18.
      CLEAR t17.
      t18 = t13.
      TRY.
          t12 ?= t18.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t12 IS NOT BOUND.
        TRY.
            t17 ?= t13.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t17 IS BOUND.
          t12 = t17->source( ).
        ENDIF.
        IF t12 IS NOT BOUND.
          CREATE OBJECT t12.
          t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t12->oval = t13.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t19 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t19.
    t4 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t5 i_first = t12 i_opts = t19 ).
    CLEAR t3.
    IF t4 IS BOUND.
      DATA t20 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t20.
      DATA t21 TYPE REF TO object.
      CLEAR t21.
      CLEAR t20.
      t21 = t4.
      TRY.
          t3 ?= t21.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t3 IS NOT BOUND.
        TRY.
            t20 ?= t4.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t20 IS BOUND.
          t3 = t20->source( ).
        ENDIF.
        IF t3 IS NOT BOUND.
          CREATE OBJECT t3.
          t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t3->oval = t4.
        ENDIF.
      ENDIF.
    ENDIF.
    t2 = zcl_lnt_st_combi_module=>opt_prio( i_first = t3 ).
    t1 = t2.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t22.
    DATA t23 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA t25 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t25.
    DATA t26 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t27.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t27 = zcl_lnt_version_module=>release_b8cd.
    DATA(t28) = |v751|.
    t26 = t27->get( p0 = t28 ).
    t25 = t26.
    CLEAR t24.
    IF t25 IS BOUND.
      DATA t29 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t29.
      DATA t30 TYPE REF TO object.
      CLEAR t30.
      CLEAR t29.
      t30 = t25.
      TRY.
          t24 ?= t30.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t24 IS NOT BOUND.
        TRY.
            t29 ?= t25.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t29 IS BOUND.
          t24 = t29->source( ).
        ENDIF.
        IF t24 IS NOT BOUND.
          CREATE OBJECT t24.
          t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t24->oval = t25.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t35.
    DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d17_c487d20bb05c7b.
    t35 = zcl_lnt_st_combi_module=>tok( i_t = t36 ).
    CLEAR t34.
    IF t35 IS BOUND.
      DATA t37 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t37.
      DATA t38 TYPE REF TO object.
      CLEAR t38.
      CLEAR t37.
      t38 = t35.
      TRY.
          t34 ?= t38.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t34 IS NOT BOUND.
        TRY.
            t37 ?= t35.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t37 IS BOUND.
          t34 = t37->source( ).
        ENDIF.
        IF t34 IS NOT BOUND.
          CREATE OBJECT t34.
          t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t34->oval = t35.
        ENDIF.
      ENDIF.
    ENDIF.
    t33 = t34.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA(t41) = t1.
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
    DATA(t46) = t44.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d342_e6333b069746.
    CLEAR t49.
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t49->cval = t50.
    ENDIF.
    t48 = zcl_lnt_st_combi_module=>opt_prio( i_first = t49 ).
    CLEAR t47.
    IF t48 IS BOUND.
      DATA t51 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t51.
      DATA t52 TYPE REF TO object.
      CLEAR t52.
      CLEAR t51.
      t52 = t48.
      TRY.
          t47 ?= t52.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t47 IS NOT BOUND.
        TRY.
            t51 ?= t48.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t51 IS BOUND.
          t47 = t51->source( ).
        ENDIF.
        IF t47 IS NOT BOUND.
          CREATE OBJECT t47.
          t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t47->oval = t48.
        ENDIF.
      ENDIF.
    ENDIF.
    t46->load( ).
    APPEND t47 TO t46->items.
    t46->save( ).
    DATA(t53) = t44.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    DATA(t57) = zlnt_runtime_desc_78196487750d=>zlnt_member_d309_e095d3fe668e.
    CLEAR t56.
    IF t57 IS BOUND.
      CREATE OBJECT t56.
      t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t56->cval = t57.
    ENDIF.
    t55 = zcl_lnt_st_combi_module=>opt_prio( i_first = t56 ).
    CLEAR t54.
    IF t55 IS BOUND.
      DATA t58 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t58.
      DATA t59 TYPE REF TO object.
      CLEAR t59.
      CLEAR t58.
      t59 = t55.
      TRY.
          t54 ?= t59.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t54 IS NOT BOUND.
        TRY.
            t58 ?= t55.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t58 IS BOUND.
          t54 = t58->source( ).
        ENDIF.
        IF t54 IS NOT BOUND.
          CREATE OBJECT t54.
          t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t54->oval = t55.
        ENDIF.
      ENDIF.
    ENDIF.
    t53->load( ).
    APPEND t54 TO t53->items.
    t53->save( ).
    DATA(t60) = t44.
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
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA(t69) = |WHERE|.
    CLEAR t68.
    CREATE OBJECT t68.
    t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t68->sval = t69.
    t67 = zcl_lnt_st_combi_module=>opt_prio( i_first = t68 ).
    CLEAR t66.
    IF t67 IS BOUND.
      DATA t70 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t70.
      DATA t71 TYPE REF TO object.
      CLEAR t71.
      CLEAR t70.
      t71 = t67.
      TRY.
          t66 ?= t71.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t66 IS NOT BOUND.
        TRY.
            t70 ?= t67.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t70 IS BOUND.
          t66 = t70->source( ).
        ENDIF.
        IF t66 IS NOT BOUND.
          CREATE OBJECT t66.
          t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t66->oval = t67.
        ENDIF.
      ENDIF.
    ENDIF.
    t65 = t66.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA(t74) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
    CLEAR t73.
    IF t74 IS BOUND.
      CREATE OBJECT t73.
      t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t73->cval = t74.
    ENDIF.
    t72 = t73.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t76.
    CREATE OBJECT t76.
    t75 = t76.
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t77.
    DATA(t78) = t65.
    DATA(t79) = t72.
    DATA(t80) = t75.
    t77 = zcl_lnt_st_combi_module=>seq( i_first = t78 i_second = t79 i_rest = t80 ).
    t64 = t77.
    CLEAR t63.
    IF t64 IS BOUND.
      DATA t81 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t81.
      DATA t82 TYPE REF TO object.
      CLEAR t82.
      CLEAR t81.
      t82 = t64.
      TRY.
          t63 ?= t82.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t63 IS NOT BOUND.
        TRY.
            t81 ?= t64.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t81 IS BOUND.
          t63 = t81->source( ).
        ENDIF.
        IF t63 IS NOT BOUND.
          CREATE OBJECT t63.
          t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t63->oval = t64.
        ENDIF.
      ENDIF.
    ENDIF.
    t62 = zcl_lnt_st_combi_module=>opt_prio( i_first = t63 ).
    CLEAR t61.
    IF t62 IS BOUND.
      DATA t83 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t83.
      DATA t84 TYPE REF TO object.
      CLEAR t84.
      CLEAR t83.
      t84 = t62.
      TRY.
          t61 ?= t84.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t61 IS NOT BOUND.
        TRY.
            t83 ?= t62.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t83 IS BOUND.
          t61 = t83->source( ).
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
    DATA(t85) = t44.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA t90 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t90.
    DATA(t91) = zlnt_runtime_desc_78196487750d=>zlnt_member_d47_2a66c13abb507b.
    t90 = zcl_lnt_st_combi_module=>tok( i_t = t91 ).
    CLEAR t89.
    IF t90 IS BOUND.
      DATA t92 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t92.
      DATA t93 TYPE REF TO object.
      CLEAR t93.
      CLEAR t92.
      t93 = t90.
      TRY.
          t89 ?= t93.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t89 IS NOT BOUND.
        TRY.
            t92 ?= t90.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t92 IS BOUND.
          t89 = t92->source( ).
        ENDIF.
        IF t89 IS NOT BOUND.
          CREATE OBJECT t89.
          t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t89->oval = t90.
        ENDIF.
      ENDIF.
    ENDIF.
    t88 = t89.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t96.
    DATA(t97) = zlnt_runtime_desc_78196487750d=>zlnt_member_d46_b4d7f76ec970d6.
    t96 = zcl_lnt_st_combi_module=>tok( i_t = t97 ).
    CLEAR t95.
    IF t96 IS BOUND.
      DATA t98 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t98.
      DATA t99 TYPE REF TO object.
      CLEAR t99.
      CLEAR t98.
      t99 = t96.
      TRY.
          t95 ?= t99.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t95 IS NOT BOUND.
        TRY.
            t98 ?= t96.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t98 IS BOUND.
          t95 = t98->source( ).
        ENDIF.
        IF t95 IS NOT BOUND.
          CREATE OBJECT t95.
          t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t95->oval = t96.
        ENDIF.
      ENDIF.
    ENDIF.
    t94 = t95.
    DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t101.
    CREATE OBJECT t101.
    t100 = t101.
    DATA t102 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t102.
    DATA(t103) = t88.
    DATA(t104) = t94.
    DATA(t105) = t100.
    t102 = zcl_lnt_st_combi_module=>alt_prio( i_first = t103 i_second = t104 i_rest = t105 ).
    t87 = t102.
    CLEAR t86.
    IF t87 IS BOUND.
      DATA t106 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t106.
      DATA t107 TYPE REF TO object.
      CLEAR t107.
      CLEAR t106.
      t107 = t87.
      TRY.
          t86 ?= t107.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t86 IS NOT BOUND.
        TRY.
            t106 ?= t87.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t106 IS BOUND.
          t86 = t106->source( ).
        ENDIF.
        IF t86 IS NOT BOUND.
          CREATE OBJECT t86.
          t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t86->oval = t87.
        ENDIF.
      ENDIF.
    ENDIF.
    t85->load( ).
    APPEND t86 TO t85->items.
    t85->save( ).
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t108.
    DATA(t109) = t33.
    DATA(t110) = t39.
    DATA(t111) = t44.
    t108 = zcl_lnt_st_combi_module=>seq( i_first = t109 i_second = t110 i_rest = t111 ).
    t32 = t108.
    CLEAR t31.
    IF t32 IS BOUND.
      DATA t112 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t112.
      DATA t113 TYPE REF TO object.
      CLEAR t113.
      CLEAR t112.
      t113 = t32.
      TRY.
          t31 ?= t113.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t31 IS NOT BOUND.
        TRY.
            t112 ?= t32.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t112 IS BOUND.
          t31 = t112->source( ).
        ENDIF.
        IF t31 IS NOT BOUND.
          CREATE OBJECT t31.
          t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t31->oval = t32.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t114 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t114.
    t23 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t24 i_first = t31 i_opts = t114 ).
    t22 = t23.
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t115.
    DATA t116 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t116.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA t118 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t118.
    DATA t119 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t119.
    DATA t120 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t120.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t120 = zcl_lnt_version_module=>release_b8cd.
    DATA(t121) = |v751|.
    t119 = t120->get( p0 = t121 ).
    t118 = t119.
    CLEAR t117.
    IF t118 IS BOUND.
      DATA t122 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t122.
      DATA t123 TYPE REF TO object.
      CLEAR t123.
      CLEAR t122.
      t123 = t118.
      TRY.
          t117 ?= t123.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t117 IS NOT BOUND.
        TRY.
            t122 ?= t118.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t122 IS BOUND.
          t117 = t122->source( ).
        ENDIF.
        IF t117 IS NOT BOUND.
          CREATE OBJECT t117.
          t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t117->oval = t118.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    DATA(t125) = zlnt_runtime_desc_78196487750d=>zlnt_member_d296_6b49712a4964.
    CLEAR t124.
    IF t125 IS BOUND.
      CREATE OBJECT t124.
      t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t124->cval = t125.
    ENDIF.
    DATA t126 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t126.
    t116 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t117 i_first = t124 i_opts = t126 ).
    t115 = t116.
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t127.
    DATA t128 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t128.
    DATA(t129) = CONV abap_bool( me->nws ).
    IF t129 = abap_true.
      DATA t130 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t130.
      DATA(t131) = zlnt_runtime_desc_78196487750d=>zlnt_member_d13_724b547adff3ae.
      t130 = zcl_lnt_st_combi_module=>tok( i_t = t131 ).
      t128 = t130.
    ELSE.
      DATA t132 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t132.
      DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t133.
      DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t134.
      DATA t135 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t135.
      DATA(t136) = zlnt_runtime_desc_78196487750d=>zlnt_member_d13_724b547adff3ae.
      t135 = zcl_lnt_st_combi_module=>tok( i_t = t136 ).
      CLEAR t134.
      IF t135 IS BOUND.
        DATA t137 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t137.
        DATA t138 TYPE REF TO object.
        CLEAR t138.
        CLEAR t137.
        t138 = t135.
        TRY.
            t134 ?= t138.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t134 IS NOT BOUND.
          TRY.
              t137 ?= t135.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t137 IS BOUND.
            t134 = t137->source( ).
          ENDIF.
          IF t134 IS NOT BOUND.
            CREATE OBJECT t134.
            t134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t134->oval = t135.
          ENDIF.
        ENDIF.
      ENDIF.
      t133 = t134.
      DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t139.
      DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t140.
      DATA t141 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t141.
      DATA t142 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t142.
      DATA(t143) = `^\\[\w]+$`.
      DATA(t144) = `^\\[A-Za-z0-9_]+$`.
      DATA(t145) = ||.
      CREATE OBJECT t142 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t144 flags = t145.
      t142->source = t143.
      t141 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t142 ).
      CLEAR t140.
      IF t141 IS BOUND.
        DATA t146 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t146.
        DATA t147 TYPE REF TO object.
        CLEAR t147.
        CLEAR t146.
        t147 = t141.
        TRY.
            t140 ?= t147.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t140 IS NOT BOUND.
          TRY.
              t146 ?= t141.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t146 IS BOUND.
            t140 = t146->source( ).
          ENDIF.
          IF t140 IS NOT BOUND.
            CREATE OBJECT t140.
            t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t140->oval = t141.
          ENDIF.
        ENDIF.
      ENDIF.
      t139 = t140.
      DATA t148 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t148.
      DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t149.
      CREATE OBJECT t149.
      t148 = t149.
      DATA t150 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t150.
      DATA(t151) = t133.
      DATA(t152) = t139.
      DATA(t153) = t148.
      t150 = zcl_lnt_st_combi_module=>alt_prio( i_first = t151 i_second = t152 i_rest = t153 ).
      t132 = t150.
      t128 = t132.
    ENDIF.
    t127 = t128.
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
    DATA(t159) = |v740sp05|.
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
    DATA(t166) = t127.
    CLEAR t165.
    IF t166 IS BOUND.
      DATA t167 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t167.
      DATA t168 TYPE REF TO object.
      CLEAR t168.
      CLEAR t167.
      t168 = t166.
      TRY.
          t165 ?= t168.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t165 IS NOT BOUND.
        TRY.
            t167 ?= t166.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t167 IS BOUND.
          t165 = t167->source( ).
        ENDIF.
        IF t165 IS NOT BOUND.
          CREATE OBJECT t165.
          t165->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t165->oval = t166.
        ENDIF.
      ENDIF.
    ENDIF.
    t164 = t165.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t169.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t170.
    DATA t171 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t171.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t172.
    DATA t173 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t173.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t174.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t175.
    DATA t176 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t176.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t177.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t178.
    DATA(t179) = t115.
    CLEAR t178.
    IF t179 IS BOUND.
      DATA t180 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t180.
      DATA t181 TYPE REF TO object.
      CLEAR t181.
      CLEAR t180.
      t181 = t179.
      TRY.
          t178 ?= t181.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t178 IS NOT BOUND.
        TRY.
            t180 ?= t179.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t180 IS BOUND.
          t178 = t180->source( ).
        ENDIF.
        IF t178 IS NOT BOUND.
          CREATE OBJECT t178.
          t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t178->oval = t179.
        ENDIF.
      ENDIF.
    ENDIF.
    t177 = t178.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t182.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    DATA t184 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t184.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t185.
    DATA(t186) = t22.
    CLEAR t185.
    IF t186 IS BOUND.
      DATA t187 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t187.
      DATA t188 TYPE REF TO object.
      CLEAR t188.
      CLEAR t187.
      t188 = t186.
      TRY.
          t185 ?= t188.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t185 IS NOT BOUND.
        TRY.
            t187 ?= t186.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t187 IS BOUND.
          t185 = t187->source( ).
        ENDIF.
        IF t185 IS NOT BOUND.
          CREATE OBJECT t185.
          t185->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t185->oval = t186.
        ENDIF.
      ENDIF.
    ENDIF.
    t184 = zcl_lnt_st_combi_module=>opt_prio( i_first = t185 ).
    CLEAR t183.
    IF t184 IS BOUND.
      DATA t189 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t189.
      DATA t190 TYPE REF TO object.
      CLEAR t190.
      CLEAR t189.
      t190 = t184.
      TRY.
          t183 ?= t190.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t183 IS NOT BOUND.
        TRY.
            t189 ?= t184.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t189 IS BOUND.
          t183 = t189->source( ).
        ENDIF.
        IF t183 IS NOT BOUND.
          CREATE OBJECT t183.
          t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t183->oval = t184.
        ENDIF.
      ENDIF.
    ENDIF.
    t182 = t183.
    DATA t191 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t191.
    DATA t192 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t192.
    CREATE OBJECT t192.
    t191 = t192.
    DATA t193 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t193.
    DATA(t194) = t177.
    DATA(t195) = t182.
    DATA(t196) = t191.
    t193 = zcl_lnt_st_combi_module=>seq( i_first = t194 i_second = t195 i_rest = t196 ).
    t176 = t193.
    CLEAR t175.
    IF t176 IS BOUND.
      DATA t197 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t197.
      DATA t198 TYPE REF TO object.
      CLEAR t198.
      CLEAR t197.
      t198 = t176.
      TRY.
          t175 ?= t198.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t175 IS NOT BOUND.
        TRY.
            t197 ?= t176.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t197 IS BOUND.
          t175 = t197->source( ).
        ENDIF.
        IF t175 IS NOT BOUND.
          CREATE OBJECT t175.
          t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t175->oval = t176.
        ENDIF.
      ENDIF.
    ENDIF.
    t174 = t175.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t199.
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t200.
    DATA(t201) = t22.
    CLEAR t200.
    IF t201 IS BOUND.
      DATA t202 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t202.
      DATA t203 TYPE REF TO object.
      CLEAR t203.
      CLEAR t202.
      t203 = t201.
      TRY.
          t200 ?= t203.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t200 IS NOT BOUND.
        TRY.
            t202 ?= t201.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t202 IS BOUND.
          t200 = t202->source( ).
        ENDIF.
        IF t200 IS NOT BOUND.
          CREATE OBJECT t200.
          t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t200->oval = t201.
        ENDIF.
      ENDIF.
    ENDIF.
    t199 = t200.
    DATA t204 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t204.
    DATA t205 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t205.
    CREATE OBJECT t205.
    t204 = t205.
    DATA t206 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t206.
    DATA(t207) = t174.
    DATA(t208) = t199.
    DATA(t209) = t204.
    t206 = zcl_lnt_st_combi_module=>alt_prio( i_first = t207 i_second = t208 i_rest = t209 ).
    t173 = t206.
    CLEAR t172.
    IF t173 IS BOUND.
      DATA t210 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t210.
      DATA t211 TYPE REF TO object.
      CLEAR t211.
      CLEAR t210.
      t211 = t173.
      TRY.
          t172 ?= t211.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t172 IS NOT BOUND.
        TRY.
            t210 ?= t173.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t210 IS BOUND.
          t172 = t210->source( ).
        ENDIF.
        IF t172 IS NOT BOUND.
          CREATE OBJECT t172.
          t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t172->oval = t173.
        ENDIF.
      ENDIF.
    ENDIF.
    t171 = zcl_lnt_st_combi_module=>opt_prio( i_first = t172 ).
    CLEAR t170.
    IF t171 IS BOUND.
      DATA t212 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t212.
      DATA t213 TYPE REF TO object.
      CLEAR t213.
      CLEAR t212.
      t213 = t171.
      TRY.
          t170 ?= t213.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t170 IS NOT BOUND.
        TRY.
            t212 ?= t171.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t212 IS BOUND.
          t170 = t212->source( ).
        ENDIF.
        IF t170 IS NOT BOUND.
          CREATE OBJECT t170.
          t170->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t170->oval = t171.
        ENDIF.
      ENDIF.
    ENDIF.
    t169 = t170.
    DATA t214 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t214.
    DATA t215 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t215.
    CREATE OBJECT t215.
    t214 = t215.
    DATA t216 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t216.
    DATA(t217) = t164.
    DATA(t218) = t169.
    DATA(t219) = t214.
    t216 = zcl_lnt_st_combi_module=>seq( i_first = t217 i_second = t218 i_rest = t219 ).
    t163 = t216.
    CLEAR t162.
    IF t163 IS BOUND.
      DATA t220 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t220.
      DATA t221 TYPE REF TO object.
      CLEAR t221.
      CLEAR t220.
      t221 = t163.
      TRY.
          t162 ?= t221.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t162 IS NOT BOUND.
        TRY.
            t220 ?= t163.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t220 IS BOUND.
          t162 = t220->source( ).
        ENDIF.
        IF t162 IS NOT BOUND.
          CREATE OBJECT t162.
          t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t162->oval = t163.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t222 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t222.
    t154 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t155 i_first = t162 i_opts = t222 ).
    result = t154.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d344_e2f9d6730e5a.
  ENDMETHOD.
ENDCLASS.
