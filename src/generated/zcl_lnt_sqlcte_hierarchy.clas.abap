* TS: src/abap/2_statements/expressions/sql_cte_hierarchy.ts:7:1 SQLCTEHierarchy
CLASS zcl_lnt_sqlcte_hierarchy DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sqlcte_hierarchy IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t3 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v751| ).
    IF t3 IS BOUND.
      DATA t7 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t8 TYPE REF TO object.
      t8 = t3.
      TRY.
          t2 ?= t8.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t2 IS NOT BOUND.
        TRY.
            t7 ?= t3.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t7 IS BOUND.
          t2 = t7->source( ).
        ENDIF.
        IF t2 IS NOT BOUND.
          CREATE OBJECT t2.
          t2->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t2->oval = t3.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zif_lnt_statement_runnable.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = |HIERARCHY|.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d289_f424b1178837.
    IF t16 IS BOUND.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t15->cval = t16.
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t17.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t23 TYPE REF TO zif_lnt_statement_runnable.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t25.
    t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t25->sval = |WITH|.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d306_9aee0313349c.
    IF t29 IS BOUND.
      CREATE OBJECT t28.
      t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t28->cval = t29.
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t31.
    t23 = zcl_lnt_st_combi_module=>seq( i_first = t25 i_second = t28 i_rest = t31 ).
    IF t23 IS BOUND.
      DATA t36 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t37 TYPE REF TO object.
      t37 = t23.
      TRY.
          t22 ?= t37.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t22 IS NOT BOUND.
        TRY.
            t36 ?= t23.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t36 IS BOUND.
          t22 = t36->source( ).
        ENDIF.
        IF t22 IS NOT BOUND.
          CREATE OBJECT t22.
          t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t22->oval = t23.
        ENDIF.
      ENDIF.
    ENDIF.
    t21 = zcl_lnt_st_combi_module=>opt_prio( i_first = t22 ).
    IF t21 IS BOUND.
      DATA t38 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t39 TYPE REF TO object.
      t39 = t21.
      TRY.
          t20 ?= t39.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t20 IS NOT BOUND.
        TRY.
            t38 ?= t21.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t38 IS BOUND.
          t20 = t38->source( ).
        ENDIF.
        IF t20 IS NOT BOUND.
          CREATE OBJECT t20.
          t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t20->oval = t21.
        ENDIF.
      ENDIF.
    ENDIF.
    t17->load( ).
    APPEND t20 TO t17->items.
    t17->save( ).
    t10 = zcl_lnt_st_combi_module=>seq( i_first = t12 i_second = t15 i_rest = t17 ).
    IF t10 IS BOUND.
      DATA t44 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t45 TYPE REF TO object.
      t45 = t10.
      TRY.
          t9 ?= t45.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t9 IS NOT BOUND.
        TRY.
            t44 ?= t10.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t44 IS BOUND.
          t9 = t44->source( ).
        ENDIF.
        IF t9 IS NOT BOUND.
          CREATE OBJECT t9.
          t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t9->oval = t10.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t46 TYPE REF TO zcl_lnt_iver_options.
    result = zcl_lnt_st_combi_module=>ver( i_version_or_release = t2 i_first = t9 i_opts = t46 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d307_fbcde215a988.
  ENDMETHOD.
ENDCLASS.
