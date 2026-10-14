* TS: src/abap/2_statements/expressions/find_type.ts:5:1 FindType
CLASS zcl_lnt_find_type DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_find_type IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
  ENDMETHOD.
  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2.
    DATA t3 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t6) = |REGEX|.
    CREATE OBJECT t5.
    t5->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t5->sval = t6.
    t4 = t5.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t9) = |SUBSTRING|.
    CREATE OBJECT t8.
    t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t8->sval = t9.
    t7 = t8.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t11.
    t10 = t11.
    DATA(t12) = CAST zlnt_runtime_arra_c22708faf2e3( t10 ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA t16 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t16.
    DATA t17 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t18.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t18 = zcl_lnt_version_module=>release_b8cd.
    DATA(t19) = |v755|.
    t17 = t18->get( p0 = t19 ).
    t16 = t17.
    IF t16 IS BOUND.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t20 TYPE REF TO object.
      t20 = t16.
      t15->oval = t20.
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = |PCRE|.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = t22.
    DATA t23 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t23.
    DATA(t24) = abap_true.
    IF t24 = abap_true.
      DATA t25 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t25.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t26.
      DATA(t27) = abap_true.
      IF t27 = abap_true.
        DATA(t28) = |OpenABAP|.
        DATA(t29) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t29->has = abap_true.
        t29->value = t28.
        t26 = t29.
      ELSE.
        DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t30.
        t26 = t30.
      ENDIF.
      t25 = NEW zcl_lnt_iver_options( i_also = t26 ).
      t23 = t25.
    ELSE.
      DATA t31 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t31.
      t23 = t31.
    ENDIF.
    t14 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t15 i_first = t21 i_opts = t23 ).
    IF t14 IS BOUND.
      CREATE OBJECT t13.
      t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t32 TYPE REF TO object.
      t32 = t14.
      t13->oval = t32.
    ENDIF.
    APPEND t13 TO t12->items.
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t34) = CAST zlnt_runtime_dyna_a429568d5be8( t4 ).
    DATA(t35) = CAST zlnt_runtime_dyna_a429568d5be8( t7 ).
    DATA(t36) = CAST zlnt_runtime_arra_c22708faf2e3( t10 ).
    t33 = zcl_lnt_st_combi_module=>alt( i_first = t34 i_second = t35 i_rest = t36 ).
    t3 = t33.
    IF t3 IS BOUND.
      CREATE OBJECT t2.
      t2->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t37 TYPE REF TO object.
      t37 = t3.
      t2->oval = t37.
    ENDIF.
    t1 = zcl_lnt_st_combi_module=>opt( i_first = t2 ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d171_8a7e3c79c08f.
  ENDMETHOD.
ENDCLASS.
