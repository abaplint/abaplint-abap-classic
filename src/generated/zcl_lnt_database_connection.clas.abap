* TS: src/abap/2_statements/expressions/database_connection.ts:5:1 DatabaseConnection
CLASS zcl_lnt_database_connection DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_database_connection IMPLEMENTATION.
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
    DATA(t4) = `[\w\/]+`.
    DATA(t5) = `[A-Za-z0-9_\/]+`.
    DATA(t6) = ||.
    CREATE OBJECT t3 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t5 flags = t6.
    t3->source = t4.
    t2 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t3 ).
    t1 = t2.
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA(t10) = |CONNECTION|.
    CLEAR t9.
    CREATE OBJECT t9.
    t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t9->sval = t10.
    t8 = t9.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA(t16) = t1.
    CLEAR t15.
    IF t16 IS BOUND.
      DATA t17 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t17.
      DATA t18 TYPE REF TO object.
      CLEAR t18.
      CLEAR t17.
      t18 = t16.
      TRY.
          t15 ?= t18.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t15 IS NOT BOUND.
        TRY.
            t17 ?= t16.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t17 IS BOUND.
          t15 = t17->source( ).
        ENDIF.
        IF t15 IS NOT BOUND.
          CREATE OBJECT t15.
          t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t15->oval = t16.
        ENDIF.
      ENDIF.
    ENDIF.
    t14 = t15.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d140_ecb7e995244f.
    CLEAR t20.
    IF t21 IS BOUND.
      CREATE OBJECT t20.
      t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t20->cval = t21.
    ENDIF.
    t19 = t20.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t23.
    CREATE OBJECT t23.
    t22 = t23.
    DATA(t24) = t22.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA(t26) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    CLEAR t25.
    IF t26 IS BOUND.
      CREATE OBJECT t25.
      t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t25->cval = t26.
    ENDIF.
    t24->load( ).
    APPEND t25 TO t24->items.
    t24->save( ).
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t27.
    DATA(t28) = t14.
    DATA(t29) = t19.
    DATA(t30) = t22.
    t27 = zcl_lnt_st_combi_module=>alt_prio( i_first = t28 i_second = t29 i_rest = t30 ).
    t13 = t27.
    CLEAR t12.
    IF t13 IS BOUND.
      DATA t31 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t31.
      DATA t32 TYPE REF TO object.
      CLEAR t32.
      CLEAR t31.
      t32 = t13.
      TRY.
          t12 ?= t32.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t12 IS NOT BOUND.
        TRY.
            t31 ?= t13.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t31 IS BOUND.
          t12 = t31->source( ).
        ENDIF.
        IF t12 IS NOT BOUND.
          CREATE OBJECT t12.
          t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t12->oval = t13.
        ENDIF.
      ENDIF.
    ENDIF.
    t11 = t12.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t34.
    CREATE OBJECT t34.
    t33 = t34.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t35.
    DATA(t36) = t8.
    DATA(t37) = t11.
    DATA(t38) = t33.
    t35 = zcl_lnt_st_combi_module=>seq( i_first = t36 i_second = t37 i_rest = t38 ).
    t7 = t35.
    result = t7.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d155_5eb73ae6c401.
  ENDMETHOD.
ENDCLASS.
