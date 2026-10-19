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
      DATA(t7) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t7->has = abap_true.
      t7->value = abap_false.
      t1 = t7.
    ENDIF.
    super->constructor( ).
    me->nws = t1->value.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `nws`.
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t6 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v795| ).
    IF t6 IS BOUND.
      DATA t10 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t11 TYPE REF TO object.
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
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    DATA t14 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t14 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^#[A-Z][A-Z0-9_]*$| flags = |i|.
    t13 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t14 ).
    IF t13 IS BOUND.
      DATA t17 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t18 TYPE REF TO object.
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
    t4 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t5 i_first = t12 i_opts = t19 ).
    IF t4 IS BOUND.
      DATA t20 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t21 TYPE REF TO object.
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
    t1 = zcl_lnt_st_combi_module=>opt_prio( i_first = t3 ).
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t25 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t25 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v751| ).
    IF t25 IS BOUND.
      DATA t29 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t30 TYPE REF TO object.
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
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d17_c487d20bb05c7b.
    t35 = zcl_lnt_st_combi_module=>tok( i_t = t36 ).
    IF t35 IS BOUND.
      DATA t37 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t38 TYPE REF TO object.
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
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t42 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t43 TYPE REF TO object.
      t43 = t1.
      TRY.
          t40 ?= t43.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t40 IS NOT BOUND.
        TRY.
            t42 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t42 IS BOUND.
          t40 = t42->source( ).
        ENDIF.
        IF t40 IS NOT BOUND.
          CREATE OBJECT t40.
          t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t40->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t44.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d342_e6333b069746.
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t49->cval = t50.
    ENDIF.
    t48 = zcl_lnt_st_combi_module=>opt_prio( i_first = t49 ).
    IF t48 IS BOUND.
      DATA t51 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t52 TYPE REF TO object.
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
    t44->load( ).
    APPEND t47 TO t44->items.
    t44->save( ).
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t57) = zlnt_runtime_desc_78196487750d=>zlnt_member_d309_e095d3fe668e.
    IF t57 IS BOUND.
      CREATE OBJECT t56.
      t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t56->cval = t57.
    ENDIF.
    t55 = zcl_lnt_st_combi_module=>opt_prio( i_first = t56 ).
    IF t55 IS BOUND.
      DATA t58 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t59 TYPE REF TO object.
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
    t44->load( ).
    APPEND t54 TO t44->items.
    t44->save( ).
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t62 TYPE REF TO zif_lnt_statement_runnable.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t68.
    t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t68->sval = |WHERE|.
    t67 = zcl_lnt_st_combi_module=>opt_prio( i_first = t68 ).
    IF t67 IS BOUND.
      DATA t70 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t71 TYPE REF TO object.
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
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t74) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
    IF t74 IS BOUND.
      CREATE OBJECT t73.
      t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t73->cval = t74.
    ENDIF.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t76.
    t64 = zcl_lnt_st_combi_module=>seq( i_first = t66 i_second = t73 i_rest = t76 ).
    IF t64 IS BOUND.
      DATA t81 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t82 TYPE REF TO object.
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
    IF t62 IS BOUND.
      DATA t83 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t84 TYPE REF TO object.
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
    t44->load( ).
    APPEND t61 TO t44->items.
    t44->save( ).
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t90 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t91) = zlnt_runtime_desc_78196487750d=>zlnt_member_d47_2a66c13abb507b.
    t90 = zcl_lnt_st_combi_module=>tok( i_t = t91 ).
    IF t90 IS BOUND.
      DATA t92 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t93 TYPE REF TO object.
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
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t97) = zlnt_runtime_desc_78196487750d=>zlnt_member_d46_b4d7f76ec970d6.
    t96 = zcl_lnt_st_combi_module=>tok( i_t = t97 ).
    IF t96 IS BOUND.
      DATA t98 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t99 TYPE REF TO object.
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
    DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t101.
    t87 = zcl_lnt_st_combi_module=>alt_prio( i_first = t89 i_second = t95 i_rest = t101 ).
    IF t87 IS BOUND.
      DATA t106 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t107 TYPE REF TO object.
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
    t44->load( ).
    APPEND t86 TO t44->items.
    t44->save( ).
    t32 = zcl_lnt_st_combi_module=>seq( i_first = t34 i_second = t40 i_rest = t44 ).
    IF t32 IS BOUND.
      DATA t112 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t113 TYPE REF TO object.
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
    t22 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t24 i_first = t31 i_opts = t114 ).
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t118 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t118 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v751| ).
    IF t118 IS BOUND.
      DATA t122 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t123 TYPE REF TO object.
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
    DATA(t125) = zlnt_runtime_desc_78196487750d=>zlnt_member_d296_6b49712a4964.
    IF t125 IS BOUND.
      CREATE OBJECT t124.
      t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t124->cval = t125.
    ENDIF.
    DATA t126 TYPE REF TO zcl_lnt_iver_options.
    t115 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t117 i_first = t124 i_opts = t126 ).
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    DATA t128 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t129) = CONV abap_bool( me->nws ).
    IF t129 = abap_true.
      DATA(t131) = zlnt_runtime_desc_78196487750d=>zlnt_member_d13_724b547adff3ae.
      t128 = zcl_lnt_st_combi_module=>tok( i_t = t131 ).
    ELSE.
      DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t135 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t136) = zlnt_runtime_desc_78196487750d=>zlnt_member_d13_724b547adff3ae.
      t135 = zcl_lnt_st_combi_module=>tok( i_t = t136 ).
      IF t135 IS BOUND.
        DATA t137 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t138 TYPE REF TO object.
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
      DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t141 TYPE REF TO zif_lnt_statement_runnable.
      DATA t142 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CREATE OBJECT t142 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = `^\\[A-Za-z0-9_]+$` flags = ||.
      t142->source = `^\\[\w]+$`.
      t141 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t142 ).
      IF t141 IS BOUND.
        DATA t146 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t147 TYPE REF TO object.
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
      DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t149.
      t128 = zcl_lnt_st_combi_module=>alt_prio( i_first = t134 i_second = t140 i_rest = t149 ).
    ENDIF.
    t127 = t128.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t156 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t156 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v740sp05| ).
    IF t156 IS BOUND.
      DATA t160 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t161 TYPE REF TO object.
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
    DATA t163 TYPE REF TO zif_lnt_statement_runnable.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t127 IS BOUND.
      DATA t167 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t168 TYPE REF TO object.
      t168 = t127.
      TRY.
          t165 ?= t168.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t165 IS NOT BOUND.
        TRY.
            t167 ?= t127.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t167 IS BOUND.
          t165 = t167->source( ).
        ENDIF.
        IF t165 IS NOT BOUND.
          CREATE OBJECT t165.
          t165->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t165->oval = t127.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t171 TYPE REF TO zif_lnt_statement_runnable.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t173 TYPE REF TO zif_lnt_statement_runnable.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t176 TYPE REF TO zif_lnt_statement_runnable.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t115 IS BOUND.
      DATA t180 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t181 TYPE REF TO object.
      t181 = t115.
      TRY.
          t178 ?= t181.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t178 IS NOT BOUND.
        TRY.
            t180 ?= t115.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t180 IS BOUND.
          t178 = t180->source( ).
        ENDIF.
        IF t178 IS NOT BOUND.
          CREATE OBJECT t178.
          t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t178->oval = t115.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t184 TYPE REF TO zif_lnt_statement_runnable.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t22 IS BOUND.
      DATA t187 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t188 TYPE REF TO object.
      t188 = t22.
      TRY.
          t185 ?= t188.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t185 IS NOT BOUND.
        TRY.
            t187 ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t187 IS BOUND.
          t185 = t187->source( ).
        ENDIF.
        IF t185 IS NOT BOUND.
          CREATE OBJECT t185.
          t185->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t185->oval = t22.
        ENDIF.
      ENDIF.
    ENDIF.
    t184 = zcl_lnt_st_combi_module=>opt_prio( i_first = t185 ).
    IF t184 IS BOUND.
      DATA t189 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t190 TYPE REF TO object.
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
    DATA t192 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t192.
    t176 = zcl_lnt_st_combi_module=>seq( i_first = t178 i_second = t183 i_rest = t192 ).
    IF t176 IS BOUND.
      DATA t197 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t198 TYPE REF TO object.
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
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t22 IS BOUND.
      DATA t202 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t203 TYPE REF TO object.
      t203 = t22.
      TRY.
          t200 ?= t203.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t200 IS NOT BOUND.
        TRY.
            t202 ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t202 IS BOUND.
          t200 = t202->source( ).
        ENDIF.
        IF t200 IS NOT BOUND.
          CREATE OBJECT t200.
          t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t200->oval = t22.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t205 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t205.
    t173 = zcl_lnt_st_combi_module=>alt_prio( i_first = t175 i_second = t200 i_rest = t205 ).
    IF t173 IS BOUND.
      DATA t210 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t211 TYPE REF TO object.
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
    IF t171 IS BOUND.
      DATA t212 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t213 TYPE REF TO object.
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
    DATA t215 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t215.
    t163 = zcl_lnt_st_combi_module=>seq( i_first = t165 i_second = t170 i_rest = t215 ).
    IF t163 IS BOUND.
      DATA t220 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t221 TYPE REF TO object.
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
    result = zcl_lnt_st_combi_module=>ver( i_version_or_release = t155 i_first = t162 i_opts = t222 ).

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
