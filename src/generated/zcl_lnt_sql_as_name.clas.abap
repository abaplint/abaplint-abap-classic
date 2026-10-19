* TS: src/abap/2_statements/expressions/sql_as_name.ts:5:1 SQLAsName
CLASS zcl_lnt_sql_as_name DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_as_name IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t5) = `^[&_!]?\*?[A-Za-z0-9_]*(\/[A-Za-z0-9_]+\/)?[0-9]*[a-zA-Z_%\$`.
    t5 = t5 && `][A-Za-z0-9_\*%\$\?]*(~[A-Za-z0-9_]+)?$`.
    CREATE OBJECT t3 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t5 flags = ||.
    t3->source = `^[&_!]?\*?\w*(\/\w+\/)?\d*[a-zA-Z_%\$][\w\*%\$\?]*(~\w+)?$`.
    t1 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t3 ).
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t11 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t12 TYPE REF TO object.
      t12 = t1.
      TRY.
          t9 ?= t12.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t9 IS NOT BOUND.
        TRY.
            t11 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t11 IS BOUND.
          t9 = t11->source( ).
        ENDIF.
        IF t9 IS NOT BOUND.
          CREATE OBJECT t9.
          t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t9->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d22_cfdc313f209817.
    t20 = zcl_lnt_st_combi_module=>tok( i_t = t21 ).
    IF t20 IS BOUND.
      DATA t22 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t23 TYPE REF TO object.
      t23 = t20.
      TRY.
          t19 ?= t23.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t19 IS NOT BOUND.
        TRY.
            t22 ?= t20.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t22 IS BOUND.
          t19 = t22->source( ).
        ENDIF.
        IF t19 IS NOT BOUND.
          CREATE OBJECT t19.
          t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t19->oval = t20.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t27 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t28 TYPE REF TO object.
      t28 = t1.
      TRY.
          t25 ?= t28.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t25 IS NOT BOUND.
        TRY.
            t27 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t27 IS BOUND.
          t25 = t27->source( ).
        ENDIF.
        IF t25 IS NOT BOUND.
          CREATE OBJECT t25.
          t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t25->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t30.
    t17 = zcl_lnt_st_combi_module=>seq( i_first = t19 i_second = t25 i_rest = t30 ).
    IF t17 IS BOUND.
      DATA t35 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t36 TYPE REF TO object.
      t36 = t17.
      TRY.
          t16 ?= t36.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t16 IS NOT BOUND.
        TRY.
            t35 ?= t17.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t35 IS BOUND.
          t16 = t35->source( ).
        ENDIF.
        IF t16 IS NOT BOUND.
          CREATE OBJECT t16.
          t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t16->oval = t17.
        ENDIF.
      ENDIF.
    ENDIF.
    t15 = zcl_lnt_st_combi_module=>star_prio( i_first = t16 ).
    IF t15 IS BOUND.
      DATA t37 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t38 TYPE REF TO object.
      t38 = t15.
      TRY.
          t14 ?= t38.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t14 IS NOT BOUND.
        TRY.
            t37 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t37 IS BOUND.
          t14 = t37->source( ).
        ENDIF.
        IF t14 IS NOT BOUND.
          CREATE OBJECT t14.
          t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t14->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t40.
    result = zcl_lnt_st_combi_module=>seq( i_first = t9 i_second = t14 i_rest = t40 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d289_f424b1178837.
  ENDMETHOD.
ENDCLASS.
