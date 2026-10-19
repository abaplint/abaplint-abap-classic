* TS: src/abap/2_statements/expressions/sql_association_entry.ts:10:1 SQLAssociationEntry
CLASS zcl_lnt_sql_association_entry DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_association_entry IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |AS|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d289_f424b1178837.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t10 ).
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = |REDIRECTED TO|.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d290_f492e89b83f5.
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t21->cval = t22.
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t23.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t26.
    t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t26->sval = |VIA|.
    t23->load( ).
    APPEND t26 TO t23->items.
    t23->save( ).
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff.
    IF t30 IS BOUND.
      CREATE OBJECT t29.
      t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t29->cval = t30.
    ENDIF.
    t23->load( ).
    APPEND t29 TO t23->items.
    t23->save( ).
    t15 = zcl_lnt_st_combi_module=>seq( i_first = t18 i_second = t21 i_rest = t23 ).
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t39) = NEW zcl_lnt_sql_path_for_entity( ).
    DATA t40 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t41 TYPE REF TO object.
    t41 = t39.
    TRY.
        t38 ?= t41.
      CATCH cx_sy_move_cast_error.
    ENDTRY.
    IF t38 IS NOT BOUND.
      TRY.
          t40 ?= t39.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t40 IS BOUND.
        t38 = t40->source( ).
      ENDIF.
      IF t38 IS NOT BOUND.
        CREATE OBJECT t38.
        t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        t38->oval = t39.
      ENDIF.
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
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
    t44 = zcl_lnt_st_combi_module=>opt_prio( i_first = t45 ).
    IF t44 IS BOUND.
      DATA t49 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t50 TYPE REF TO object.
      t50 = t44.
      TRY.
          t43 ?= t50.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t43 IS NOT BOUND.
        TRY.
            t49 ?= t44.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t49 IS BOUND.
          t43 = t49->source( ).
        ENDIF.
        IF t43 IS NOT BOUND.
          CREATE OBJECT t43.
          t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t43->oval = t44.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t51.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t58 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t59 TYPE REF TO object.
      t59 = t15.
      TRY.
          t56 ?= t59.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t56 IS NOT BOUND.
        TRY.
            t58 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t58 IS BOUND.
          t56 = t58->source( ).
        ENDIF.
        IF t56 IS NOT BOUND.
          CREATE OBJECT t56.
          t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t56->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    t55 = zcl_lnt_st_combi_module=>opt_prio( i_first = t56 ).
    IF t55 IS BOUND.
      DATA t60 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t61 TYPE REF TO object.
      t61 = t55.
      TRY.
          t54 ?= t61.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t54 IS NOT BOUND.
        TRY.
            t60 ?= t55.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t60 IS BOUND.
          t54 = t60->source( ).
        ENDIF.
        IF t54 IS NOT BOUND.
          CREATE OBJECT t54.
          t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t54->oval = t55.
        ENDIF.
      ENDIF.
    ENDIF.
    t51->load( ).
    APPEND t54 TO t51->items.
    t51->save( ).
    t35 = zcl_lnt_st_combi_module=>seq( i_first = t38 i_second = t43 i_rest = t51 ).
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t68 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t68 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v751| ).
    IF t68 IS BOUND.
      DATA t72 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t73 TYPE REF TO object.
      t73 = t68.
      TRY.
          t67 ?= t73.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t67 IS NOT BOUND.
        TRY.
            t72 ?= t68.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t72 IS BOUND.
          t67 = t72->source( ).
        ENDIF.
        IF t67 IS NOT BOUND.
          CREATE OBJECT t67.
          t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t67->oval = t68.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t78) = NEW zcl_lnt_sql_dfnng_nw_assctn( ).
    DATA t79 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t80 TYPE REF TO object.
    t80 = t78.
    TRY.
        t77 ?= t80.
      CATCH cx_sy_move_cast_error.
    ENDTRY.
    IF t77 IS NOT BOUND.
      TRY.
          t79 ?= t78.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t79 IS BOUND.
        t77 = t79->source( ).
      ENDIF.
      IF t77 IS NOT BOUND.
        CREATE OBJECT t77.
        t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        t77->oval = t78.
      ENDIF.
    ENDIF.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t35 IS BOUND.
      DATA t84 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t85 TYPE REF TO object.
      t85 = t35.
      TRY.
          t82 ?= t85.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t82 IS NOT BOUND.
        TRY.
            t84 ?= t35.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t84 IS BOUND.
          t82 = t84->source( ).
        ENDIF.
        IF t82 IS NOT BOUND.
          CREATE OBJECT t82.
          t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t82->oval = t35.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t87.
    t75 = zcl_lnt_st_combi_module=>alt_prio( i_first = t77 i_second = t82 i_rest = t87 ).
    IF t75 IS BOUND.
      DATA t92 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t93 TYPE REF TO object.
      t93 = t75.
      TRY.
          t74 ?= t93.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t74 IS NOT BOUND.
        TRY.
            t92 ?= t75.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t92 IS BOUND.
          t74 = t92->source( ).
        ENDIF.
        IF t74 IS NOT BOUND.
          CREATE OBJECT t74.
          t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t74->oval = t75.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t94 TYPE REF TO zcl_lnt_iver_options.
    result = zcl_lnt_st_combi_module=>ver( i_version_or_release = t67 i_first = t74 i_opts = t94 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d291_77feaa8efd76.
  ENDMETHOD.
ENDCLASS.
