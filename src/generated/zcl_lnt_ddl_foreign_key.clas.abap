* TS: src/ddl/expressions/ddl_clauses.ts:17:1 DDLForeignKey
CLASS zcl_lnt_ddl_foreign_key DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ddl_foreign_key IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t3.
    t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t3->sval = |WITH|.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t6.
    t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t6->sval = |FOREIGN|.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t8.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t11.
    t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t11->sval = |KEY|.
    t8->load( ).
    APPEND t11 TO t8->items.
    t8->save( ).
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t15) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1134_731934654bc5.
    IF t15 IS BOUND.
      CREATE OBJECT t14.
      t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t14->cval = t15.
    ENDIF.
    t8->load( ).
    APPEND t14 TO t8->items.
    t8->save( ).
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1135_9e2f4194a4cc.
    IF t20 IS BOUND.
      CREATE OBJECT t19.
      t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t19->cval = t20.
    ENDIF.
    t18 = zcl_lnt_st_combi_module=>opt_prio( i_first = t19 ).
    IF t18 IS BOUND.
      DATA t21 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t22 TYPE REF TO object.
      t22 = t18.
      TRY.
          t17 ?= t22.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t17 IS NOT BOUND.
        TRY.
            t21 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t21 IS BOUND.
          t17 = t21->source( ).
        ENDIF.
        IF t17 IS NOT BOUND.
          CREATE OBJECT t17.
          t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t17->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    t8->load( ).
    APPEND t17 TO t8->items.
    t8->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t3 i_second = t6 i_rest = t8 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1136_0f20aa1247bc.
  ENDMETHOD.
ENDCLASS.
