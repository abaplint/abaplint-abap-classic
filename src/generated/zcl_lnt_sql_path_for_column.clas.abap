* TS: src/abap/2_statements/expressions/sql_path_for_column.ts:8:1 SQLPathForColumn
CLASS zcl_lnt_sql_path_for_column DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_path_for_column IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t3.
    DATA(t4) = `^(\/\w+\/)?\w+~$`.
    DATA(t5) = `^(\/[A-Za-z0-9_]+\/)?[A-Za-z0-9_]+~$`.
    DATA(t6) = ||.
    CREATE OBJECT t3 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t5 flags = t6.
    t3->source = t4.
    t2 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t3 ).
    t1 = t2.
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA(t11) = t1.
    CLEAR t10.
    IF t11 IS BOUND.
      DATA t12 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t12.
      DATA t13 TYPE REF TO object.
      CLEAR t13.
      CLEAR t12.
      t13 = t11.
      TRY.
          t10 ?= t13.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t10 IS NOT BOUND.
        TRY.
            t12 ?= t11.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t12 IS BOUND.
          t10 = t12->source( ).
        ENDIF.
        IF t10 IS NOT BOUND.
          CREATE OBJECT t10.
          t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t10->oval = t11.
        ENDIF.
      ENDIF.
    ENDIF.
    t9 = t10.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zcl_lnt_sql_path_segment.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t19.
    DATA(t20) = abap_true.
    IF t20 = abap_true.
      DATA(t21) = abap_true.
      DATA(t22) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t22->has = abap_true.
      t22->value = t21.
      t19 = t22.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t23.
      t19 = t23.
    ENDIF.
    t18 = NEW zcl_lnt_sql_path_segment( i_nws = t19 ).
    CLEAR t17.
    IF t18 IS BOUND.
      DATA t24 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t24.
      DATA t25 TYPE REF TO object.
      CLEAR t25.
      CLEAR t24.
      t25 = t18.
      TRY.
          t17 ?= t25.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t17 IS NOT BOUND.
        TRY.
            t24 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t24 IS BOUND.
          t17 = t24->source( ).
        ENDIF.
        IF t17 IS NOT BOUND.
          CREATE OBJECT t17.
          t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t17->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    t16 = zcl_lnt_st_combi_module=>plus( i_first = t17 ).
    CLEAR t15.
    IF t16 IS BOUND.
      DATA t26 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t26.
      DATA t27 TYPE REF TO object.
      CLEAR t27.
      CLEAR t26.
      t27 = t16.
      TRY.
          t15 ?= t27.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t15 IS NOT BOUND.
        TRY.
            t26 ?= t16.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t26 IS BOUND.
          t15 = t26->source( ).
        ENDIF.
        IF t15 IS NOT BOUND.
          CREATE OBJECT t15.
          t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t15->oval = t16.
        ENDIF.
      ENDIF.
    ENDIF.
    t14 = t15.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t29.
    CREATE OBJECT t29.
    t28 = t29.
    DATA(t30) = t28.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t32.
    DATA(t33) = zlnt_runtime_desc_78196487750d=>zlnt_member_d22_cfdc313f209817.
    t32 = zcl_lnt_st_combi_module=>tok( i_t = t33 ).
    CLEAR t31.
    IF t32 IS BOUND.
      DATA t34 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t34.
      DATA t35 TYPE REF TO object.
      CLEAR t35.
      CLEAR t34.
      t35 = t32.
      TRY.
          t31 ?= t35.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t31 IS NOT BOUND.
        TRY.
            t34 ?= t32.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t34 IS BOUND.
          t31 = t34->source( ).
        ENDIF.
        IF t31 IS NOT BOUND.
          CREATE OBJECT t31.
          t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t31->oval = t32.
        ENDIF.
      ENDIF.
    ENDIF.
    t30->load( ).
    APPEND t31 TO t30->items.
    t30->save( ).
    DATA(t36) = t28.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    DATA(t38) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    CLEAR t37.
    IF t38 IS BOUND.
      CREATE OBJECT t37.
      t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t37->cval = t38.
    ENDIF.
    t36->load( ).
    APPEND t37 TO t36->items.
    t36->save( ).
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t39.
    DATA(t40) = t9.
    DATA(t41) = t14.
    DATA(t42) = t28.
    t39 = zcl_lnt_st_combi_module=>seq( i_first = t40 i_second = t41 i_rest = t42 ).
    t8 = t39.
    t7 = t8.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t43.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA t49 TYPE REF TO zcl_lnt_sql_path_segment.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t50.
    t49 = NEW zcl_lnt_sql_path_segment( i_nws = t50 ).
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
    t47 = zcl_lnt_st_combi_module=>plus( i_first = t48 ).
    CLEAR t46.
    IF t47 IS BOUND.
      DATA t53 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t53.
      DATA t54 TYPE REF TO object.
      CLEAR t54.
      CLEAR t53.
      t54 = t47.
      TRY.
          t46 ?= t54.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t46 IS NOT BOUND.
        TRY.
            t53 ?= t47.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t53 IS BOUND.
          t46 = t53->source( ).
        ENDIF.
        IF t46 IS NOT BOUND.
          CREATE OBJECT t46.
          t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t46->oval = t47.
        ENDIF.
      ENDIF.
    ENDIF.
    t45 = t46.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t57.
    DATA(t58) = zlnt_runtime_desc_78196487750d=>zlnt_member_d22_cfdc313f209817.
    t57 = zcl_lnt_st_combi_module=>tok( i_t = t58 ).
    CLEAR t56.
    IF t57 IS BOUND.
      DATA t59 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t59.
      DATA t60 TYPE REF TO object.
      CLEAR t60.
      CLEAR t59.
      t60 = t57.
      TRY.
          t56 ?= t60.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t56 IS NOT BOUND.
        TRY.
            t59 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t59 IS BOUND.
          t56 = t59->source( ).
        ENDIF.
        IF t56 IS NOT BOUND.
          CREATE OBJECT t56.
          t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t56->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    t55 = t56.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t62.
    CREATE OBJECT t62.
    t61 = t62.
    DATA(t63) = t61.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA(t65) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    CLEAR t64.
    IF t65 IS BOUND.
      CREATE OBJECT t64.
      t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t64->cval = t65.
    ENDIF.
    t63->load( ).
    APPEND t64 TO t63->items.
    t63->save( ).
    DATA t66 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t66.
    DATA(t67) = t45.
    DATA(t68) = t55.
    DATA(t69) = t61.
    t66 = zcl_lnt_st_combi_module=>seq( i_first = t67 i_second = t68 i_rest = t69 ).
    t44 = t66.
    t43 = t44.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA t72 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t72.
    DATA t73 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t74.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t74 = zcl_lnt_version_module=>release_b8cd.
    DATA(t75) = |v740sp05|.
    t73 = t74->get( p0 = t75 ).
    t72 = t73.
    CLEAR t71.
    IF t72 IS BOUND.
      DATA t76 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t76.
      DATA t77 TYPE REF TO object.
      CLEAR t77.
      CLEAR t76.
      t77 = t72.
      TRY.
          t71 ?= t77.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t71 IS NOT BOUND.
        TRY.
            t76 ?= t72.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t76 IS BOUND.
          t71 = t76->source( ).
        ENDIF.
        IF t71 IS NOT BOUND.
          CREATE OBJECT t71.
          t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t71->oval = t72.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA t79 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t79.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA(t82) = t7.
    CLEAR t81.
    IF t82 IS BOUND.
      DATA t83 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t83.
      DATA t84 TYPE REF TO object.
      CLEAR t84.
      CLEAR t83.
      t84 = t82.
      TRY.
          t81 ?= t84.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t81 IS NOT BOUND.
        TRY.
            t83 ?= t82.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t83 IS BOUND.
          t81 = t83->source( ).
        ENDIF.
        IF t81 IS NOT BOUND.
          CREATE OBJECT t81.
          t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t81->oval = t82.
        ENDIF.
      ENDIF.
    ENDIF.
    t80 = t81.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA(t87) = t43.
    CLEAR t86.
    IF t87 IS BOUND.
      DATA t88 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t88.
      DATA t89 TYPE REF TO object.
      CLEAR t89.
      CLEAR t88.
      t89 = t87.
      TRY.
          t86 ?= t89.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t86 IS NOT BOUND.
        TRY.
            t88 ?= t87.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t88 IS BOUND.
          t86 = t88->source( ).
        ENDIF.
        IF t86 IS NOT BOUND.
          CREATE OBJECT t86.
          t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t86->oval = t87.
        ENDIF.
      ENDIF.
    ENDIF.
    t85 = t86.
    DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t91.
    CREATE OBJECT t91.
    t90 = t91.
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t92.
    DATA(t93) = t80.
    DATA(t94) = t85.
    DATA(t95) = t90.
    t92 = zcl_lnt_st_combi_module=>alt_prio( i_first = t93 i_second = t94 i_rest = t95 ).
    t79 = t92.
    CLEAR t78.
    IF t79 IS BOUND.
      DATA t96 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t96.
      DATA t97 TYPE REF TO object.
      CLEAR t97.
      CLEAR t96.
      t97 = t79.
      TRY.
          t78 ?= t97.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t78 IS NOT BOUND.
        TRY.
            t96 ?= t79.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t96 IS BOUND.
          t78 = t96->source( ).
        ENDIF.
        IF t78 IS NOT BOUND.
          CREATE OBJECT t78.
          t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t78->oval = t79.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t98 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t98.
    t70 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t71 i_first = t78 i_opts = t98 ).
    result = t70.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d295_c8c13651616a.
  ENDMETHOD.
ENDCLASS.
