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
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    DATA t5 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t5 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^#[A-Z][A-Z0-9_]*$| flags = |i|.
    t4 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t5 ).
    IF t4 IS BOUND.
      DATA t8 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t9 TYPE REF TO object.
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
    t1 = zcl_lnt_st_combi_module=>opt_prio( i_first = t3 ).
    DATA t10 TYPE REF TO zif_lnt_statement_runnable.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zcl_lnt_st_database_table.
    DATA(t18) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t18->has = abap_true.
    t18->value = abap_true.
    t14 = NEW zcl_lnt_st_database_table( i_no_dynamic = t18 ).
    DATA t20 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t21 TYPE REF TO object.
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
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d290_f492e89b83f5.
    IF t24 IS BOUND.
      CREATE OBJECT t23.
      t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t23->cval = t24.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t26.
    t10 = zcl_lnt_st_combi_module=>alt_prio( i_first = t13 i_second = t23 i_rest = t26 ).
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t33 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t33 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v751| ).
    IF t33 IS BOUND.
      DATA t37 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t38 TYPE REF TO object.
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
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t42.
    t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t42->sval = |JOIN|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t47 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t48 TYPE REF TO object.
      t48 = t1.
      TRY.
          t45 ?= t48.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t45 IS NOT BOUND.
        TRY.
            t47 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t47 IS BOUND.
          t45 = t47->source( ).
        ENDIF.
        IF t45 IS NOT BOUND.
          CREATE OBJECT t45.
          t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t45->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t49.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t55) = zlnt_runtime_desc_78196487750d=>zlnt_member_d309_e095d3fe668e.
    IF t55 IS BOUND.
      CREATE OBJECT t54.
      t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t54->cval = t55.
    ENDIF.
    t53 = zcl_lnt_st_combi_module=>opt_prio( i_first = t54 ).
    IF t53 IS BOUND.
      DATA t56 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t57 TYPE REF TO object.
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
    t49->load( ).
    APPEND t52 TO t49->items.
    t49->save( ).
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t10 IS BOUND.
      DATA t61 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t62 TYPE REF TO object.
      t62 = t10.
      TRY.
          t59 ?= t62.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t59 IS NOT BOUND.
        TRY.
            t61 ?= t10.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t61 IS BOUND.
          t59 = t61->source( ).
        ENDIF.
        IF t59 IS NOT BOUND.
          CREATE OBJECT t59.
          t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t59->oval = t10.
        ENDIF.
      ENDIF.
    ENDIF.
    t49->load( ).
    APPEND t59 TO t49->items.
    t49->save( ).
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t64.
    t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t64->sval = |AS|.
    t49->load( ).
    APPEND t64 TO t49->items.
    t49->save( ).
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t68) = zlnt_runtime_desc_78196487750d=>zlnt_member_d289_f424b1178837.
    IF t68 IS BOUND.
      CREATE OBJECT t67.
      t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t67->cval = t68.
    ENDIF.
    t49->load( ).
    APPEND t67 TO t49->items.
    t49->save( ).
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t70.
    t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t70->sval = |ON|.
    t49->load( ).
    APPEND t70 TO t49->items.
    t49->save( ).
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t74) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
    IF t74 IS BOUND.
      CREATE OBJECT t73.
      t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t73->cval = t74.
    ENDIF.
    t49->load( ).
    APPEND t73 TO t49->items.
    t49->save( ).
    t40 = zcl_lnt_st_combi_module=>seq( i_first = t42 i_second = t45 i_rest = t49 ).
    IF t40 IS BOUND.
      DATA t79 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t80 TYPE REF TO object.
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
    result = zcl_lnt_st_combi_module=>ver( i_version_or_release = t32 i_first = t39 i_opts = t81 ).

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
