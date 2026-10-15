* TS: src/abap/2_statements/expressions/database_table.ts:6:1 DatabaseTable
CLASS zcl_lnt_st_database_table DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    DATA no_dynamic TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS constructor IMPORTING i_no_dynamic TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_database_table IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_no_dynamic.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = t1.
    IF t3 IS INITIAL.
      t2 = abap_true.
    ELSEIF t3->has = abap_false.
      t2 = abap_true.
    ENDIF.
    IF t2 = abap_true.
      DATA t4 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t4.
      DATA(t5) = abap_true.
      IF t5 = abap_true.
        DATA(t6) = abap_false.
        DATA(t7) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t7->has = abap_true.
        t7->value = t6.
        t4 = t7.
      ELSE.
        DATA t8 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t8.
        t4 = t8.
      ENDIF.
      t1 = t4.
    ENDIF.
    super->constructor( ).
    DATA(t9) = t1.
    me->no_dynamic = t9.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `noDynamic`.
  ENDMETHOD.

  METHOD get_runnable.
    DATA(t1) = VALUE abap_bool( ).
    DATA(t2) = me->no_dynamic.
    IF t2 IS BOUND.
      IF t2->has = abap_true.
        t1 = xsdbool( t2->value IS NOT INITIAL ).
      ENDIF.
    ENDIF.
    IF t1 = abap_true.
      DATA t3 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t3.
      DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t4.
      DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t5.
      DATA t6 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t6.
      DATA(t7) = |KeyUser|.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
      CLEAR t8.
      IF t9 IS BOUND.
        CREATE OBJECT t8.
        t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
        t8->cval = t9.
      ENDIF.
      t6 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t7 i_first = t8 ).
      CLEAR t5.
      IF t6 IS BOUND.
        DATA t10 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t10.
        DATA t11 TYPE REF TO object.
        CLEAR t11.
        CLEAR t10.
        t11 = t6.
        TRY.
            t5 ?= t11.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t5 IS NOT BOUND.
          TRY.
              t10 ?= t6.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t10 IS BOUND.
            t5 = t10->source( ).
          ENDIF.
          IF t5 IS NOT BOUND.
            CREATE OBJECT t5.
            t5->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t5->oval = t6.
          ENDIF.
        ENDIF.
      ENDIF.
      t4 = t5.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      DATA t14 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t14.
      DATA t15 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t15.
      DATA(t16) = `^\*?(\/\w+\/)?\w+$`.
      DATA(t17) = `^\*?(\/[A-Za-z0-9_]+\/)?[A-Za-z0-9_]+$`.
      DATA(t18) = ||.
      CREATE OBJECT t15 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t17 flags = t18.
      t15->source = t16.
      t14 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t15 ).
      CLEAR t13.
      IF t14 IS BOUND.
        DATA t19 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t19.
        DATA t20 TYPE REF TO object.
        CLEAR t20.
        CLEAR t19.
        t20 = t14.
        TRY.
            t13 ?= t20.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t13 IS NOT BOUND.
          TRY.
              t19 ?= t14.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t19 IS BOUND.
            t13 = t19->source( ).
          ENDIF.
          IF t13 IS NOT BOUND.
            CREATE OBJECT t13.
            t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t13->oval = t14.
          ENDIF.
        ENDIF.
      ENDIF.
      t12 = t13.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t21.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t22.
      CREATE OBJECT t22.
      t21 = t22.
      DATA t23 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t23.
      DATA(t24) = t4.
      DATA(t25) = t12.
      DATA(t26) = t21.
      t23 = zcl_lnt_st_combi_module=>alt_prio( i_first = t24 i_second = t25 i_rest = t26 ).
      t3 = t23.
      result = t3.
      RETURN.
    ENDIF.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    CLEAR t29.
    IF t30 IS BOUND.
      CREATE OBJECT t29.
      t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t29->cval = t30.
    ENDIF.
    t28 = t29.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t34.
    DATA(t35) = `^\*?(\/\w+\/)?\w+$`.
    DATA(t36) = `^\*?(\/[A-Za-z0-9_]+\/)?[A-Za-z0-9_]+$`.
    DATA(t37) = ||.
    CREATE OBJECT t34 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t36 flags = t37.
    t34->source = t35.
    t33 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t34 ).
    CLEAR t32.
    IF t33 IS BOUND.
      DATA t38 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t38.
      DATA t39 TYPE REF TO object.
      CLEAR t39.
      CLEAR t38.
      t39 = t33.
      TRY.
          t32 ?= t39.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t32 IS NOT BOUND.
        TRY.
            t38 ?= t33.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t38 IS BOUND.
          t32 = t38->source( ).
        ENDIF.
        IF t32 IS NOT BOUND.
          CREATE OBJECT t32.
          t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t32->oval = t33.
        ENDIF.
      ENDIF.
    ENDIF.
    t31 = t32.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t41.
    CREATE OBJECT t41.
    t40 = t41.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t42.
    DATA(t43) = t28.
    DATA(t44) = t31.
    DATA(t45) = t40.
    t42 = zcl_lnt_st_combi_module=>alt_prio( i_first = t43 i_second = t44 i_rest = t45 ).
    t27 = t42.
    result = t27.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d156_2545376961ff.
  ENDMETHOD.
ENDCLASS.
