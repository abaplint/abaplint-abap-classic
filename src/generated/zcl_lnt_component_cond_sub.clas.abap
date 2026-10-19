* TS: src/abap/2_statements/expressions/component_cond_sub.ts:6:1 ComponentCondSub
CLASS zcl_lnt_component_cond_sub DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_component_cond_sub IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t6.
    t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t6->sval = |NOT|.
    t5 = zcl_lnt_st_combi_module=>opt( i_first = t6 ).
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
    DATA t12 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77.
    t12 = zcl_lnt_st_combi_module=>tok( i_t = t13 ).
    IF t12 IS BOUND.
      DATA t14 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t15 TYPE REF TO object.
      t15 = t12.
      TRY.
          t11 ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t11 IS NOT BOUND.
        TRY.
            t14 ?= t12.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t14 IS BOUND.
          t11 = t14->source( ).
        ENDIF.
        IF t11 IS NOT BOUND.
          CREATE OBJECT t11.
          t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t11->oval = t12.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t16.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d133_716522bf3a6a.
    IF t20 IS BOUND.
      CREATE OBJECT t19.
      t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t19->cval = t20.
    ENDIF.
    t16->load( ).
    APPEND t19 TO t16->items.
    t16->save( ).
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t23 TYPE REF TO zif_lnt_statement_runnable.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t26 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t26 = zcl_lnt_st_combi_module=>tok( i_t = t27 ).
    IF t26 IS BOUND.
      DATA t28 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t29 TYPE REF TO object.
      t29 = t26.
      TRY.
          t25 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t25 IS NOT BOUND.
        TRY.
            t28 ?= t26.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t28 IS BOUND.
          t25 = t28->source( ).
        ENDIF.
        IF t25 IS NOT BOUND.
          CREATE OBJECT t25.
          t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t25->oval = t26.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t33) = zlnt_runtime_desc_78196487750d=>zlnt_member_d30_2f4abb22e3612e.
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
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t37.
    t23 = zcl_lnt_st_combi_module=>alt_prio( i_first = t25 i_second = t31 i_rest = t37 ).
    IF t23 IS BOUND.
      DATA t42 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t43 TYPE REF TO object.
      t43 = t23.
      TRY.
          t22 ?= t43.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t22 IS NOT BOUND.
        TRY.
            t42 ?= t23.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t42 IS BOUND.
          t22 = t42->source( ).
        ENDIF.
        IF t22 IS NOT BOUND.
          CREATE OBJECT t22.
          t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t22->oval = t23.
        ENDIF.
      ENDIF.
    ENDIF.
    t16->load( ).
    APPEND t22 TO t16->items.
    t16->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t11 i_rest = t16 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d132_568147cc297b.
  ENDMETHOD.
ENDCLASS.
