* TS: src/abap/2_statements/expressions/cond.ts:7:1 Cond
CLASS zcl_lnt_st_cond DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_cond IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |AND|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = |OR|.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t15 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t15 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v702| ).
    IF t15 IS BOUND.
      DATA t19 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t20 TYPE REF TO object.
      t20 = t15.
      TRY.
          t14 ?= t20.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t14 IS NOT BOUND.
        TRY.
            t19 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t19 IS BOUND.
          t14 = t19->source( ).
        ENDIF.
        IF t14 IS NOT BOUND.
          CREATE OBJECT t14.
          t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t14->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = |EQUIV|.
    DATA t23 TYPE REF TO zcl_lnt_iver_options.
    t13 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t14 i_first = t21 i_opts = t23 ).
    IF t13 IS BOUND.
      DATA t24 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t25 TYPE REF TO object.
      t25 = t13.
      TRY.
          t12 ?= t25.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t12 IS NOT BOUND.
        TRY.
            t24 ?= t13.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t24 IS BOUND.
          t12 = t24->source( ).
        ENDIF.
        IF t12 IS NOT BOUND.
          CREATE OBJECT t12.
          t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t12->oval = t13.
        ENDIF.
      ENDIF.
    ENDIF.
    t9->load( ).
    APPEND t12 TO t9->items.
    t9->save( ).
    t1 = zcl_lnt_st_combi_module=>alt_prio( i_first = t4 i_second = t7 i_rest = t9 ).
    DATA t30 TYPE REF TO zif_lnt_statement_runnable.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d125_e2c9d8de971e.
    IF t34 IS BOUND.
      CREATE OBJECT t33.
      t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t33->cval = t34.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d135_0d084eddc054.
    IF t37 IS BOUND.
      CREATE OBJECT t36.
      t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t36->cval = t37.
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t39.
    t30 = zcl_lnt_st_combi_module=>alt_prio( i_first = t33 i_second = t36 i_rest = t39 ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t30 IS BOUND.
      DATA t49 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t50 TYPE REF TO object.
      t50 = t30.
      TRY.
          t47 ?= t50.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t47 IS NOT BOUND.
        TRY.
            t49 ?= t30.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t49 IS BOUND.
          t47 = t49->source( ).
        ENDIF.
        IF t47 IS NOT BOUND.
          CREATE OBJECT t47.
          t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t47->oval = t30.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t59 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t60 TYPE REF TO object.
      t60 = t1.
      TRY.
          t57 ?= t60.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t57 IS NOT BOUND.
        TRY.
            t59 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t59 IS BOUND.
          t57 = t59->source( ).
        ENDIF.
        IF t57 IS NOT BOUND.
          CREATE OBJECT t57.
          t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t57->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t30 IS BOUND.
      DATA t64 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t65 TYPE REF TO object.
      t65 = t30.
      TRY.
          t62 ?= t65.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t62 IS NOT BOUND.
        TRY.
            t64 ?= t30.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t64 IS BOUND.
          t62 = t64->source( ).
        ENDIF.
        IF t62 IS NOT BOUND.
          CREATE OBJECT t62.
          t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t62->oval = t30.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t67.
    t55 = zcl_lnt_st_combi_module=>seq( i_first = t57 i_second = t62 i_rest = t67 ).
    IF t55 IS BOUND.
      DATA t72 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t73 TYPE REF TO object.
      t73 = t55.
      TRY.
          t54 ?= t73.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t54 IS NOT BOUND.
        TRY.
            t72 ?= t55.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t72 IS BOUND.
          t54 = t72->source( ).
        ENDIF.
        IF t54 IS NOT BOUND.
          CREATE OBJECT t54.
          t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t54->oval = t55.
        ENDIF.
      ENDIF.
    ENDIF.
    t53 = zcl_lnt_st_combi_module=>star_prio( i_first = t54 ).
    IF t53 IS BOUND.
      DATA t74 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t75 TYPE REF TO object.
      t75 = t53.
      TRY.
          t52 ?= t75.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t52 IS NOT BOUND.
        TRY.
            t74 ?= t53.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t74 IS BOUND.
          t52 = t74->source( ).
        ENDIF.
        IF t52 IS NOT BOUND.
          CREATE OBJECT t52.
          t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t52->oval = t53.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t77.
    result = zcl_lnt_st_combi_module=>seq( i_first = t47 i_second = t52 i_rest = t77 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
  ENDMETHOD.
ENDCLASS.
