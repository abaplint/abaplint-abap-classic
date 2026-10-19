* TS: src/ddl/expressions/ddl_where.ts:6:1 DDLWhere
CLASS zcl_lnt_ddl_where DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ddl_where IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1142_33cc0a7d89cd.
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t4->cval = t5.
    ENDIF.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1141_65d0e12620dc.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t1 = zcl_lnt_st_combi_module=>alt( i_first = t4 i_second = t7 i_rest = t10 ).
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1142_33cc0a7d89cd.
    IF t19 IS BOUND.
      CREATE OBJECT t18.
      t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t18->cval = t19.
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = |=|.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t23.
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
    t23->load( ).
    APPEND t26 TO t23->items.
    t23->save( ).
    t15 = zcl_lnt_st_combi_module=>seq( i_first = t18 i_second = t21 i_rest = t23 ).
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t36.
    t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t36->sval = |WHERE|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t41 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t42 TYPE REF TO object.
      t42 = t15.
      TRY.
          t39 ?= t42.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t39 IS NOT BOUND.
        TRY.
            t41 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t41 IS BOUND.
          t39 = t41->source( ).
        ENDIF.
        IF t39 IS NOT BOUND.
          CREATE OBJECT t39.
          t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t39->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t43.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t51.
    t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t51->sval = |AND|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t56 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t57 TYPE REF TO object.
      t57 = t15.
      TRY.
          t54 ?= t57.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t54 IS NOT BOUND.
        TRY.
            t56 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t56 IS BOUND.
          t54 = t56->source( ).
        ENDIF.
        IF t54 IS NOT BOUND.
          CREATE OBJECT t54.
          t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t54->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t59.
    t49 = zcl_lnt_st_combi_module=>seq( i_first = t51 i_second = t54 i_rest = t59 ).
    IF t49 IS BOUND.
      DATA t64 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t65 TYPE REF TO object.
      t65 = t49.
      TRY.
          t48 ?= t65.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t48 IS NOT BOUND.
        TRY.
            t64 ?= t49.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t64 IS BOUND.
          t48 = t64->source( ).
        ENDIF.
        IF t48 IS NOT BOUND.
          CREATE OBJECT t48.
          t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t48->oval = t49.
        ENDIF.
      ENDIF.
    ENDIF.
    t47 = zcl_lnt_st_combi_module=>star( i_first = t48 ).
    IF t47 IS BOUND.
      DATA t66 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t67 TYPE REF TO object.
      t67 = t47.
      TRY.
          t46 ?= t67.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t46 IS NOT BOUND.
        TRY.
            t66 ?= t47.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t66 IS BOUND.
          t46 = t66->source( ).
        ENDIF.
        IF t46 IS NOT BOUND.
          CREATE OBJECT t46.
          t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t46->oval = t47.
        ENDIF.
      ENDIF.
    ENDIF.
    t43->load( ).
    APPEND t46 TO t43->items.
    t43->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t36 i_second = t39 i_rest = t43 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1135_9e2f4194a4cc.
  ENDMETHOD.
ENDCLASS.
