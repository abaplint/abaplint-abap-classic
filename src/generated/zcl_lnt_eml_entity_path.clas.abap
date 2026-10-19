* TS: src/abap/2_statements/expressions/eml_entity_path.ts:5:1 EMLEntityPath
CLASS zcl_lnt_eml_entity_path DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_eml_entity_path IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t3 TYPE REF TO zif_lnt_statement_runnable.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d13_724b547adff3ae.
    t6 = zcl_lnt_st_combi_module=>tok( i_t = t7 ).
    IF t6 IS BOUND.
      DATA t8 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t9 TYPE REF TO object.
      t9 = t6.
      TRY.
          t5 ?= t9.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t5 IS NOT BOUND.
        TRY.
            t8 ?= t6.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t8 IS BOUND.
          t5 = t8->source( ).
        ENDIF.
        IF t5 IS NOT BOUND.
          CREATE OBJECT t5.
          t5->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t5->oval = t6.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zif_lnt_statement_runnable.
    DATA t13 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t13 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = `^\\[A-Za-z0-9_]+$` flags = ||.
    t13->source = `^\\[\w]+$`.
    t12 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t13 ).
    IF t12 IS BOUND.
      DATA t17 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t18 TYPE REF TO object.
      t18 = t12.
      TRY.
          t11 ?= t18.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t11 IS NOT BOUND.
        TRY.
            t17 ?= t12.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t17 IS BOUND.
          t11 = t17->source( ).
        ENDIF.
        IF t11 IS NOT BOUND.
          CREATE OBJECT t11.
          t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t11->oval = t12.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t20.
    t3 = zcl_lnt_st_combi_module=>alt_prio( i_first = t5 i_second = t11 i_rest = t20 ).
    IF t3 IS BOUND.
      DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t26 TYPE REF TO object.
      t26 = t3.
      TRY.
          t2 ?= t26.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t2 IS NOT BOUND.
        TRY.
            t25 ?= t3.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t25 IS BOUND.
          t2 = t25->source( ).
        ENDIF.
        IF t2 IS NOT BOUND.
          CREATE OBJECT t2.
          t2->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t2->oval = t3.
        ENDIF.
      ENDIF.
    ENDIF.
    result = zcl_lnt_st_combi_module=>plus_prio( i_first = t2 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d161_a1a721da0257.
  ENDMETHOD.
ENDCLASS.
