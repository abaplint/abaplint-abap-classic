* TS: src/abap/2_statements/expressions/sql_typed_literal.ts:14:1 SQLTypedLiteral
CLASS zcl_lnt_sql_typed_literal DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_typed_literal IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t3.
    DATA(t4) = VALUE string( ).
    DATA(t5) = VALUE string( ).
    DATA(t6) = |^(|.
    DATA(t7) = VALUE string( ).
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    IF zcl_lnt_sql_typd_ltrl_mdl=>zlnt_builtin_init_e2b55c8dcc51 = abap_false.
      zcl_lnt_sql_typd_ltrl_mdl=>zlnt_builtin_init_527ecce2c635( ).
    ENDIF.
    t8 = zcl_lnt_sql_typd_ltrl_mdl=>typed_literal_types.
    DATA(t9) = |\||.
    DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t10->has = abap_true.
    t10->value = t9.
    t7 = t8->join( p0 = t10 ).
    DATA(t11) = strlen( t6 ).
    t5 = |{ t6 }{ t7 }|.
    DATA(t12) = |)$|.
    DATA(t13) = strlen( t5 ).
    t4 = |{ t5 }{ t12 }|.
    DATA(t14) = |i|.
    CREATE OBJECT t3 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t4 flags = t14.
    t2 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t3 ).
    t1 = t2.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA(t18) = t1.
    CLEAR t17.
    IF t18 IS BOUND.
      DATA t19 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t19.
      DATA t20 TYPE REF TO object.
      CLEAR t20.
      CLEAR t19.
      t20 = t18.
      TRY.
          t17 ?= t20.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t17 IS NOT BOUND.
        TRY.
            t19 ?= t18.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t19 IS BOUND.
          t17 = t19->source( ).
        ENDIF.
        IF t17 IS NOT BOUND.
          CREATE OBJECT t17.
          t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t17->oval = t18.
        ENDIF.
      ENDIF.
    ENDIF.
    t16 = t17.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA t23 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t24.
    DATA(t25) = |^`.*`$|.
    DATA(t26) = |^`[^\n\r|.
    DATA t27 TYPE c LENGTH 1.
    CLEAR t27.
    t27 = cl_abap_conv_in_ce=>uccpi( 8232 ).
    CONCATENATE t26 t27 INTO t26 RESPECTING BLANKS.
    DATA t28 TYPE c LENGTH 1.
    CLEAR t28.
    t28 = cl_abap_conv_in_ce=>uccpi( 8233 ).
    CONCATENATE t26 t28 INTO t26 RESPECTING BLANKS.
    t26 = t26 && |]*`$|.
    DATA(t29) = ||.
    CREATE OBJECT t24 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t26 flags = t29.
    t24->source = t25.
    t23 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t24 ).
    CLEAR t22.
    IF t23 IS BOUND.
      DATA t30 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t30.
      DATA t31 TYPE REF TO object.
      CLEAR t31.
      CLEAR t30.
      t31 = t23.
      TRY.
          t22 ?= t31.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t22 IS NOT BOUND.
        TRY.
            t30 ?= t23.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t30 IS BOUND.
          t22 = t30->source( ).
        ENDIF.
        IF t22 IS NOT BOUND.
          CREATE OBJECT t22.
          t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t22->oval = t23.
        ENDIF.
      ENDIF.
    ENDIF.
    t21 = t22.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t33.
    CREATE OBJECT t33.
    t32 = t33.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t34.
    DATA(t35) = t16.
    DATA(t36) = t21.
    DATA(t37) = t32.
    t34 = zcl_lnt_st_combi_module=>seq( i_first = t35 i_second = t36 i_rest = t37 ).
    t15 = t34.
    result = t15.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d314_757c7fdfaec1.
  ENDMETHOD.
ENDCLASS.
