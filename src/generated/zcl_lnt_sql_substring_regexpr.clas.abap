* TS: src/abap/2_statements/expressions/sql_substring_regexpr.ts:10:1 SQLSubstringRegexpr
CLASS zcl_lnt_sql_substring_regexpr DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_substring_regexpr IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |SUBSTRING_REGEXPR|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = |SUBSTR_REGEXPR|.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t1 = zcl_lnt_st_combi_module=>alt_prio( i_first = t4 i_second = t7 i_rest = t10 ).
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t17 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t17 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v758| ).
    IF t17 IS BOUND.
      DATA t21 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t22 TYPE REF TO object.
      t22 = t17.
      TRY.
          t16 ?= t22.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t16 IS NOT BOUND.
        TRY.
            t21 ?= t17.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t21 IS BOUND.
          t16 = t21->source( ).
        ENDIF.
        IF t16 IS NOT BOUND.
          CREATE OBJECT t16.
          t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t16->oval = t17.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t28 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t29 TYPE REF TO object.
      t29 = t1.
      TRY.
          t26 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t26 IS NOT BOUND.
        TRY.
            t28 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t28 IS BOUND.
          t26 = t28->source( ).
        ENDIF.
        IF t26 IS NOT BOUND.
          CREATE OBJECT t26.
          t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t26->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t33) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t32 = zcl_lnt_st_combi_module=>tok( i_t = t33 ).
    IF t32 IS BOUND.
      DATA t34 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t35 TYPE REF TO object.
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
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t36.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d335_fce3d394071e.
    IF t40 IS BOUND.
      CREATE OBJECT t39.
      t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t39->cval = t40.
    ENDIF.
    t36->load( ).
    APPEND t39 TO t36->items.
    t36->save( ).
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t45) = zlnt_runtime_desc_78196487750d=>zlnt_member_d336_e416d8dcf33c.
    IF t45 IS BOUND.
      CREATE OBJECT t44.
      t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t44->cval = t45.
    ENDIF.
    t43 = zcl_lnt_st_combi_module=>opt_prio( i_first = t44 ).
    IF t43 IS BOUND.
      DATA t46 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t47 TYPE REF TO object.
      t47 = t43.
      TRY.
          t42 ?= t47.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t42 IS NOT BOUND.
        TRY.
            t46 ?= t43.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t46 IS BOUND.
          t42 = t46->source( ).
        ENDIF.
        IF t42 IS NOT BOUND.
          CREATE OBJECT t42.
          t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t42->oval = t43.
        ENDIF.
      ENDIF.
    ENDIF.
    t36->load( ).
    APPEND t42 TO t36->items.
    t36->save( ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t52) = zlnt_runtime_desc_78196487750d=>zlnt_member_d337_a8481289bbef.
    IF t52 IS BOUND.
      CREATE OBJECT t51.
      t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t51->cval = t52.
    ENDIF.
    t50 = zcl_lnt_st_combi_module=>opt_prio( i_first = t51 ).
    IF t50 IS BOUND.
      DATA t53 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t54 TYPE REF TO object.
      t54 = t50.
      TRY.
          t49 ?= t54.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t49 IS NOT BOUND.
        TRY.
            t53 ?= t50.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t53 IS BOUND.
          t49 = t53->source( ).
        ENDIF.
        IF t49 IS NOT BOUND.
          CREATE OBJECT t49.
          t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t49->oval = t50.
        ENDIF.
      ENDIF.
    ENDIF.
    t36->load( ).
    APPEND t49 TO t36->items.
    t36->save( ).
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t59) = zlnt_runtime_desc_78196487750d=>zlnt_member_d338_8158a9a51d17.
    IF t59 IS BOUND.
      CREATE OBJECT t58.
      t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t58->cval = t59.
    ENDIF.
    t57 = zcl_lnt_st_combi_module=>opt_prio( i_first = t58 ).
    IF t57 IS BOUND.
      DATA t60 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t61 TYPE REF TO object.
      t61 = t57.
      TRY.
          t56 ?= t61.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t56 IS NOT BOUND.
        TRY.
            t60 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t60 IS BOUND.
          t56 = t60->source( ).
        ENDIF.
        IF t56 IS NOT BOUND.
          CREATE OBJECT t56.
          t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t56->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    t36->load( ).
    APPEND t56 TO t36->items.
    t36->save( ).
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t65) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t64 = zcl_lnt_st_combi_module=>tok( i_t = t65 ).
    IF t64 IS BOUND.
      DATA t66 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t67 TYPE REF TO object.
      t67 = t64.
      TRY.
          t63 ?= t67.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t63 IS NOT BOUND.
        TRY.
            t66 ?= t64.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t66 IS BOUND.
          t63 = t66->source( ).
        ENDIF.
        IF t63 IS NOT BOUND.
          CREATE OBJECT t63.
          t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t63->oval = t64.
        ENDIF.
      ENDIF.
    ENDIF.
    t36->load( ).
    APPEND t63 TO t36->items.
    t36->save( ).
    t24 = zcl_lnt_st_combi_module=>seq( i_first = t26 i_second = t31 i_rest = t36 ).
    IF t24 IS BOUND.
      DATA t72 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t73 TYPE REF TO object.
      t73 = t24.
      TRY.
          t23 ?= t73.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t23 IS NOT BOUND.
        TRY.
            t72 ?= t24.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t72 IS BOUND.
          t23 = t72->source( ).
        ENDIF.
        IF t23 IS NOT BOUND.
          CREATE OBJECT t23.
          t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t23->oval = t24.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t74 TYPE REF TO zcl_lnt_iver_options.
    result = zcl_lnt_st_combi_module=>ver( i_version_or_release = t16 i_first = t23 i_opts = t74 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d326_f861243d7542.
  ENDMETHOD.
ENDCLASS.
