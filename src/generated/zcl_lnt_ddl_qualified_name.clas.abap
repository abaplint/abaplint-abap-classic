* TS: src/ddl/expressions/ddl_qualified_name.ts:5:1 DDLQualifiedName
CLASS zcl_lnt_ddl_qualified_name DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ddl_qualified_name IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t4) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1125_a1255dd94435.
    IF t4 IS BOUND.
      CREATE OBJECT t3.
      t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t3->cval = t4.
    ENDIF.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t9 TYPE REF TO zif_lnt_statement_runnable.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t11.
    t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t11->sval = |.|.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t15) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1125_a1255dd94435.
    IF t15 IS BOUND.
      CREATE OBJECT t14.
      t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t14->cval = t15.
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t17.
    t9 = zcl_lnt_st_combi_module=>seq( i_first = t11 i_second = t14 i_rest = t17 ).
    IF t9 IS BOUND.
      DATA t22 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t23 TYPE REF TO object.
      t23 = t9.
      TRY.
          t8 ?= t23.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t8 IS NOT BOUND.
        TRY.
            t22 ?= t9.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t22 IS BOUND.
          t8 = t22->source( ).
        ENDIF.
        IF t8 IS NOT BOUND.
          CREATE OBJECT t8.
          t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t8->oval = t9.
        ENDIF.
      ENDIF.
    ENDIF.
    t7 = zcl_lnt_st_combi_module=>opt_prio( i_first = t8 ).
    IF t7 IS BOUND.
      DATA t24 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t25 TYPE REF TO object.
      t25 = t7.
      TRY.
          t6 ?= t25.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t6 IS NOT BOUND.
        TRY.
            t24 ?= t7.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t24 IS BOUND.
          t6 = t24->source( ).
        ENDIF.
        IF t6 IS NOT BOUND.
          CREATE OBJECT t6.
          t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t6->oval = t7.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t27.
    result = zcl_lnt_st_combi_module=>seq( i_first = t3 i_second = t6 i_rest = t27 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1142_33cc0a7d89cd.
  ENDMETHOD.
ENDCLASS.
