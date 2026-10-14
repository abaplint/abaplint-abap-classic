* TS: src/abap/2_statements/statements/end_test_seam.ts:6:1 EndTestSeam
CLASS zcl_lnt_end_test_seam DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_end_test_seam IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t5.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t5 = zcl_lnt_version_module=>release_b8cd.
    DATA(t6) = |v750|.
    t4 = t5->get( p0 = t6 ).
    t3 = t4.
    IF t3 IS BOUND.
      CREATE OBJECT t2.
      t2->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t7 TYPE REF TO object.
      t7 = t3.
      t2->oval = t7.
    ENDIF.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t10) = |END-TEST-SEAM|.
    t9 = zcl_lnt_st_combi_module=>str( i_s = t10 ).
    IF t9 IS BOUND.
      CREATE OBJECT t8.
      t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t11 TYPE REF TO object.
      t11 = t9.
      t8->oval = t11.
    ENDIF.
    DATA t12 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t12.
    DATA(t13) = abap_true.
    IF t13 = abap_true.
      DATA t14 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t14.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t15.
      DATA(t16) = abap_true.
      IF t16 = abap_true.
        DATA(t17) = |OpenABAP|.
        DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t18->has = abap_true.
        t18->value = t17.
        t15 = t18.
      ELSE.
        DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t19.
        t15 = t19.
      ENDIF.
      t14 = NEW zcl_lnt_iver_options( i_also = t15 ).
      t12 = t14.
    ELSE.
      DATA t20 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t20.
      t12 = t20.
    ENDIF.
    t1 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t2 i_first = t8 i_opts = t12 ).
    result = t1.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d447_ef4f6941eb64.
  ENDMETHOD.
  METHOD zif_lnt_statement~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement~get_matcher.
    result = me->get_matcher(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_dc0fb493~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
