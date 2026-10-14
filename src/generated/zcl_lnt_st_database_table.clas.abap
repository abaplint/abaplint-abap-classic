* TS: src/abap/2_statements/expressions/database_table.ts:6:1 DatabaseTable
CLASS zcl_lnt_st_database_table DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    DATA no_dynamic TYPE abap_bool.
    METHODS constructor IMPORTING i_no_dynamic TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_database_table IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_opti_7f2541396f43( i_no_dynamic ).
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = CAST zlnt_runtime_opti_7f2541396f43( t1 ).
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
    DATA t9 TYPE abap_bool.
    DATA(t10) = CAST zlnt_runtime_opti_7f2541396f43( t1 ).
    t9 = t10->value.
    me->no_dynamic = t9.
  ENDMETHOD.

  METHOD get_runnable.
    DATA(t1) = CONV abap_bool( me->no_dynamic ).
    IF t1 = abap_true.
      DATA t2 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t2.
      DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t3.
      DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t4.
      DATA t5 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t5.
      DATA(t6) = |KeyUser|.
      DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t7.
      DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
      IF t8 IS BOUND.
        CREATE OBJECT t7.
        t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
        t7->cval = t8.
      ENDIF.
      t5 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t6 i_first = t7 ).
      IF t5 IS BOUND.
        CREATE OBJECT t4.
        t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t9 TYPE REF TO object.
        t9 = t5.
        t4->oval = t9.
      ENDIF.
      t3 = t4.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      DATA t12 TYPE REF TO zif_lnt_statement_runnable.
      DATA t13 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t13.
      DATA(t14) = `^\*?(\/\w+\/)?\w+$`.
      DATA(t15) = `^\*?(\/[A-Za-z0-9_]+\/)?[A-Za-z0-9_]+$`.
      DATA(t16) = ||.
      CREATE OBJECT t13 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t15 flags = t16.
      t13->source = t14.
      t12 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t13 ).
      IF t12 IS BOUND.
        CREATE OBJECT t11.
        t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t17 TYPE REF TO object.
        t17 = t12.
        t11->oval = t17.
      ENDIF.
      t10 = t11.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t19.
      t18 = t19.
      DATA t20 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t21) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
      DATA(t22) = CAST zlnt_runtime_dyna_a429568d5be8( t10 ).
      DATA(t23) = CAST zlnt_runtime_arra_c22708faf2e3( t18 ).
      t20 = zcl_lnt_st_combi_module=>alt_prio( i_first = t21 i_second = t22 i_rest = t23 ).
      t2 = t20.
      result = t2.
      RETURN.
    ENDIF.
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA(t27) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d94_8a2bfacd888428 ).
    IF t27 IS BOUND.
      CREATE OBJECT t26.
      t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t26->cval = t27.
    ENDIF.
    t25 = t26.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA t30 TYPE REF TO zif_lnt_statement_runnable.
    DATA t31 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t31.
    DATA(t32) = `^\*?(\/\w+\/)?\w+$`.
    DATA(t33) = `^\*?(\/[A-Za-z0-9_]+\/)?[A-Za-z0-9_]+$`.
    DATA(t34) = ||.
    CREATE OBJECT t31 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t33 flags = t34.
    t31->source = t32.
    t30 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t31 ).
    IF t30 IS BOUND.
      CREATE OBJECT t29.
      t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t35 TYPE REF TO object.
      t35 = t30.
      t29->oval = t35.
    ENDIF.
    t28 = t29.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t37.
    t36 = t37.
    DATA t38 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t39) = CAST zlnt_runtime_dyna_a429568d5be8( t25 ).
    DATA(t40) = CAST zlnt_runtime_dyna_a429568d5be8( t28 ).
    DATA(t41) = CAST zlnt_runtime_arra_c22708faf2e3( t36 ).
    t38 = zcl_lnt_st_combi_module=>alt_prio( i_first = t39 i_second = t40 i_rest = t41 ).
    t24 = t38.
    result = t24.

  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
  ENDMETHOD.
ENDCLASS.
