* TS: src/abap/2_statements/expressions/sql_defining_new_association.ts:10:1 SQLDefiningNewAssociation
CLASS zcl_lnt_sql_dfnng_nw_assctn DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_dfnng_nw_assctn IMPLEMENTATION.
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
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t5.
    DATA(t6) = |^#[A-Z][A-Z0-9_]*$|.
    DATA(t7) = |i|.
    CREATE OBJECT t5 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t6 flags = t7.
    t4 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t5 ).
    CLEAR t3.
    IF t4 IS BOUND.
      DATA t8 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t8.
      DATA t9 TYPE REF TO object.
      CLEAR t9.
      CLEAR t8.
      t9 = t4.
      TRY.
          t3 ?= t9.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t3 IS NOT BOUND.
        TRY.
            t8 ?= t4.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t8 IS BOUND.
          t3 = t8->source( ).
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
    DATA t10 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t10.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zcl_lnt_st_database_table.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA(t17) = abap_true.
      DATA(t18) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t18->has = abap_true.
      t18->value = t17.
      t15 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t19.
      t15 = t19.
    ENDIF.
    t14 = NEW zcl_lnt_st_database_table( i_no_dynamic = t15 ).
    CLEAR t13.
    IF t14 IS BOUND.
      DATA t20 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t20.
      DATA t21 TYPE REF TO object.
      CLEAR t21.
      CLEAR t20.
      t21 = t14.
      TRY.
          t13 ?= t21.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t13 IS NOT BOUND.
        TRY.
            t20 ?= t14.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t20 IS BOUND.
          t13 = t20->source( ).
        ENDIF.
        IF t13 IS NOT BOUND.
          CREATE OBJECT t13.
          t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t13->oval = t14.
        ENDIF.
      ENDIF.
    ENDIF.
    t12 = t13.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d290_f492e89b83f5.
    CLEAR t23.
    IF t24 IS BOUND.
      CREATE OBJECT t23.
      t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t23->cval = t24.
    ENDIF.
    t22 = t23.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t26.
    CREATE OBJECT t26.
    t25 = t26.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t27.
    DATA(t28) = t12.
    DATA(t29) = t22.
    DATA(t30) = t25.
    t27 = zcl_lnt_st_combi_module=>alt_prio( i_first = t28 i_second = t29 i_rest = t30 ).
    t11 = t27.
    t10 = t11.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA t33 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t33.
    DATA t34 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t35.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t35 = zcl_lnt_version_module=>release_b8cd.
    DATA(t36) = |v751|.
    t34 = t35->get( p0 = t36 ).
    t33 = t34.
    CLEAR t32.
    IF t33 IS BOUND.
      DATA t37 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t37.
      DATA t38 TYPE REF TO object.
      CLEAR t38.
      CLEAR t37.
      t38 = t33.
      TRY.
          t32 ?= t38.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t32 IS NOT BOUND.
        TRY.
            t37 ?= t33.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t37 IS BOUND.
          t32 = t37->source( ).
        ENDIF.
        IF t32 IS NOT BOUND.
          CREATE OBJECT t32.
          t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t32->oval = t33.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA(t43) = |JOIN|.
    CLEAR t42.
    CREATE OBJECT t42.
    t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t42->sval = t43.
    t41 = t42.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA(t46) = t1.
    CLEAR t45.
    IF t46 IS BOUND.
      DATA t47 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t47.
      DATA t48 TYPE REF TO object.
      CLEAR t48.
      CLEAR t47.
      t48 = t46.
      TRY.
          t45 ?= t48.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t45 IS NOT BOUND.
        TRY.
            t47 ?= t46.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t47 IS BOUND.
          t45 = t47->source( ).
        ENDIF.
        IF t45 IS NOT BOUND.
          CREATE OBJECT t45.
          t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t45->oval = t46.
        ENDIF.
      ENDIF.
    ENDIF.
    t44 = t45.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t50.
    CREATE OBJECT t50.
    t49 = t50.
    DATA(t51) = t49.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA(t55) = zlnt_runtime_desc_78196487750d=>zlnt_member_d309_e095d3fe668e.
    CLEAR t54.
    IF t55 IS BOUND.
      CREATE OBJECT t54.
      t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t54->cval = t55.
    ENDIF.
    t53 = zcl_lnt_st_combi_module=>opt_prio( i_first = t54 ).
    CLEAR t52.
    IF t53 IS BOUND.
      DATA t56 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t56.
      DATA t57 TYPE REF TO object.
      CLEAR t57.
      CLEAR t56.
      t57 = t53.
      TRY.
          t52 ?= t57.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t52 IS NOT BOUND.
        TRY.
            t56 ?= t53.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t56 IS BOUND.
          t52 = t56->source( ).
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
    DATA(t58) = t49.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA(t60) = t10.
    CLEAR t59.
    IF t60 IS BOUND.
      DATA t61 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t61.
      DATA t62 TYPE REF TO object.
      CLEAR t62.
      CLEAR t61.
      t62 = t60.
      TRY.
          t59 ?= t62.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t59 IS NOT BOUND.
        TRY.
            t61 ?= t60.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t61 IS BOUND.
          t59 = t61->source( ).
        ENDIF.
        IF t59 IS NOT BOUND.
          CREATE OBJECT t59.
          t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t59->oval = t60.
        ENDIF.
      ENDIF.
    ENDIF.
    t58->load( ).
    APPEND t59 TO t58->items.
    t58->save( ).
    DATA(t63) = t49.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA(t65) = |AS|.
    CLEAR t64.
    CREATE OBJECT t64.
    t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t64->sval = t65.
    t63->load( ).
    APPEND t64 TO t63->items.
    t63->save( ).
    DATA(t66) = t49.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA(t68) = zlnt_runtime_desc_78196487750d=>zlnt_member_d289_f424b1178837.
    CLEAR t67.
    IF t68 IS BOUND.
      CREATE OBJECT t67.
      t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t67->cval = t68.
    ENDIF.
    t66->load( ).
    APPEND t67 TO t66->items.
    t66->save( ).
    DATA(t69) = t49.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA(t71) = |ON|.
    CLEAR t70.
    CREATE OBJECT t70.
    t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t70->sval = t71.
    t69->load( ).
    APPEND t70 TO t69->items.
    t69->save( ).
    DATA(t72) = t49.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA(t74) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
    CLEAR t73.
    IF t74 IS BOUND.
      CREATE OBJECT t73.
      t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t73->cval = t74.
    ENDIF.
    t72->load( ).
    APPEND t73 TO t72->items.
    t72->save( ).
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t75.
    DATA(t76) = t41.
    DATA(t77) = t44.
    DATA(t78) = t49.
    t75 = zcl_lnt_st_combi_module=>seq( i_first = t76 i_second = t77 i_rest = t78 ).
    t40 = t75.
    CLEAR t39.
    IF t40 IS BOUND.
      DATA t79 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t79.
      DATA t80 TYPE REF TO object.
      CLEAR t80.
      CLEAR t79.
      t80 = t40.
      TRY.
          t39 ?= t80.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t39 IS NOT BOUND.
        TRY.
            t79 ?= t40.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t79 IS BOUND.
          t39 = t79->source( ).
        ENDIF.
        IF t39 IS NOT BOUND.
          CREATE OBJECT t39.
          t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t39->oval = t40.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t81 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t81.
    t31 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t32 i_first = t39 i_opts = t81 ).
    result = t31.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d310_a5d6a619b3d6.
  ENDMETHOD.
ENDCLASS.
