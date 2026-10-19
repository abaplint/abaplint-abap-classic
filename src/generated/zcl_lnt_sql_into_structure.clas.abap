* TS: src/abap/2_statements/expressions/sql_into_structure.ts:6:1 SQLIntoStructure
CLASS zcl_lnt_sql_into_structure DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_into_structure IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t6.
    t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t6->sval = |CORRESPONDING FIELDS OF|.
    t5 = zcl_lnt_st_combi_module=>opt_prio( i_first = t6 ).
    IF t5 IS BOUND.
      DATA t8 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t9 TYPE REF TO object.
      t9 = t5.
      TRY.
          t4 ?= t9.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t8 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t8 IS BOUND.
          t4 = t8->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d333_b60636864266.
    IF t12 IS BOUND.
      CREATE OBJECT t11.
      t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t11->cval = t12.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t14.
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t11 i_rest = t14 ).
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t24 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t24 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v915| ).
    IF t24 IS BOUND.
      DATA t28 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t29 TYPE REF TO object.
      t29 = t24.
      TRY.
          t23 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t23 IS NOT BOUND.
        TRY.
            t28 ?= t24.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t28 IS BOUND.
          t23 = t28->source( ).
        ENDIF.
        IF t23 IS NOT BOUND.
          CREATE OBJECT t23.
          t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t23->oval = t24.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d332_d01031496384.
    IF t31 IS BOUND.
      CREATE OBJECT t30.
      t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t30->cval = t31.
    ENDIF.
    DATA t32 TYPE REF TO zcl_lnt_iver_options.
    t22 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t23 i_first = t30 i_opts = t32 ).
    IF t22 IS BOUND.
      DATA t33 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t34 TYPE REF TO object.
      t34 = t22.
      TRY.
          t21 ?= t34.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t21 IS NOT BOUND.
        TRY.
            t33 ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t33 IS BOUND.
          t21 = t33->source( ).
        ENDIF.
        IF t21 IS NOT BOUND.
          CREATE OBJECT t21.
          t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t21->oval = t22.
        ENDIF.
      ENDIF.
    ENDIF.
    t19 = zcl_lnt_st_combi_module=>opt_prio( i_first = t21 ).
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t37.
    t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t37->sval = |INTO|.
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
    IF t19 IS BOUND.
      DATA t49 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t50 TYPE REF TO object.
      t50 = t19.
      TRY.
          t47 ?= t50.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t47 IS NOT BOUND.
        TRY.
            t49 ?= t19.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t49 IS BOUND.
          t47 = t49->source( ).
        ENDIF.
        IF t47 IS NOT BOUND.
          CREATE OBJECT t47.
          t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t47->oval = t19.
        ENDIF.
      ENDIF.
    ENDIF.
    t44->load( ).
    APPEND t47 TO t44->items.
    t44->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t37 i_second = t40 i_rest = t44 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d258_47daac7ded2f.
  ENDMETHOD.
ENDCLASS.
