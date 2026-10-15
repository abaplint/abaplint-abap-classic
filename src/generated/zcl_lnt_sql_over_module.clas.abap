* TS: src/abap/2_statements/expressions/sql_over.ts.module module
CLASS zcl_lnt_sql_over_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA lparen TYPE REF TO zif_lnt_statement_runnable.
    CLASS-DATA rparen TYPE REF TO zif_lnt_statement_runnable.
    CLASS-DATA zlnt_builtin_init_7e5747627b9e TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_8db5e9302d91.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_over_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_8db5e9302d91.
    IF zlnt_builtin_init_7e5747627b9e = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_7e5747627b9e = abap_true.
    IF zcl_lnt_sql_over_module=>zlnt_builtin_init_7e5747627b9e = abap_false.
      zcl_lnt_sql_over_module=>zlnt_builtin_init_8db5e9302d91( ).
    ENDIF.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA(t2) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t1 = zcl_lnt_st_combi_module=>tok( i_t = t2 ).
    zcl_lnt_sql_over_module=>lparen = t1.
    IF zcl_lnt_sql_over_module=>zlnt_builtin_init_7e5747627b9e = abap_false.
      zcl_lnt_sql_over_module=>zlnt_builtin_init_8db5e9302d91( ).
    ENDIF.
    DATA t3 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA t6 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t6.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t6 = zcl_lnt_st_combi_module=>tok( i_t = t7 ).
    CLEAR t5.
    IF t6 IS BOUND.
      DATA t8 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t8.
      DATA t9 TYPE REF TO object.
      CLEAR t9.
      CLEAR t8.
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
    t4 = t5.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t12.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de.
    t12 = zcl_lnt_st_combi_module=>tok( i_t = t13 ).
    CLEAR t11.
    IF t12 IS BOUND.
      DATA t14 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t14.
      DATA t15 TYPE REF TO object.
      CLEAR t15.
      CLEAR t14.
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
    t10 = t11.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t17.
    CREATE OBJECT t17.
    t16 = t17.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA(t19) = t4.
    DATA(t20) = t10.
    DATA(t21) = t16.
    t18 = zcl_lnt_st_combi_module=>alt_prio( i_first = t19 i_second = t20 i_rest = t21 ).
    t3 = t18.
    zcl_lnt_sql_over_module=>rparen = t3.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1942_56032975b096.
  ENDMETHOD.
ENDCLASS.
