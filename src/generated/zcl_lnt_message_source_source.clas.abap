* TS: src/abap/2_statements/expressions/message_source_source.ts:6:1 MessageSourceSource
CLASS zcl_lnt_message_source_source DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_message_source_source IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
  ENDMETHOD.
  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t8.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t8 = zcl_lnt_version_module=>release_b8cd.
    DATA(t9) = |v740sp02|.
    t7 = t8->get( p0 = t9 ).
    t6 = t7.
    IF t6 IS BOUND.
      CREATE OBJECT t5.
      t5->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t10 TYPE REF TO object.
      t10 = t6.
      t5->oval = t10.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA(t12) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t12 IS BOUND.
      CREATE OBJECT t11.
      t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t11->cval = t12.
    ENDIF.
    DATA t13 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t13.
    DATA(t14) = abap_true.
    IF t14 = abap_true.
      DATA t15 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t15.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t16.
      DATA(t17) = abap_true.
      IF t17 = abap_true.
        DATA(t18) = |OpenABAP|.
        DATA(t19) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t19->has = abap_true.
        t19->value = t18.
        t16 = t19.
      ELSE.
        DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t20.
        t16 = t20.
      ENDIF.
      t15 = NEW zcl_lnt_iver_options( i_also = t16 ).
      t13 = t15.
    ELSE.
      DATA t21 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t21.
      t13 = t21.
    ENDIF.
    t4 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t5 i_first = t11 i_opts = t13 ).
    IF t4 IS BOUND.
      CREATE OBJECT t3.
      t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t22 TYPE REF TO object.
      t22 = t4.
      t3->oval = t22.
    ENDIF.
    t2 = t3.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA(t25) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d92_9ef7e4968cfbeb ).
    IF t25 IS BOUND.
      CREATE OBJECT t24.
      t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t24->cval = t25.
    ENDIF.
    t23 = t24.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t27.
    t26 = t27.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t29) = CAST zlnt_runtime_dyna_a429568d5be8( t2 ).
    DATA(t30) = CAST zlnt_runtime_dyna_a429568d5be8( t23 ).
    DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t26 ).
    t28 = zcl_lnt_st_combi_module=>alt( i_first = t29 i_second = t30 i_rest = t31 ).
    t1 = t28.
    result = t1.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d213_62076b901fdc.
  ENDMETHOD.
ENDCLASS.
