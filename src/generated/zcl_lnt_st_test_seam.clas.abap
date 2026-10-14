* TS: src/abap/2_statements/statements/test_seam.ts:7:1 TestSeam
CLASS zcl_lnt_st_test_seam DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_test_seam IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA(t2) = |KeyUser|.
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
    DATA(t9) = |v750|.
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
    DATA t12 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t15) = |TEST-SEAM|.
    CREATE OBJECT t14.
    t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t14->sval = t15.
    t13 = t14.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA(t18) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d332_d01031496384 ).
    IF t18 IS BOUND.
      CREATE OBJECT t17.
      t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t17->cval = t18.
    ENDIF.
    t16 = t17.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t20.
    t19 = t20.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t22) = CAST zlnt_runtime_dyna_a429568d5be8( t13 ).
    DATA(t23) = CAST zlnt_runtime_dyna_a429568d5be8( t16 ).
    DATA(t24) = CAST zlnt_runtime_arra_c22708faf2e3( t19 ).
    t21 = zcl_lnt_st_combi_module=>seq( i_first = t22 i_second = t23 i_rest = t24 ).
    t12 = t21.
    IF t12 IS BOUND.
      CREATE OBJECT t11.
      t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t25 TYPE REF TO object.
      t25 = t12.
      t11->oval = t25.
    ENDIF.
    DATA t26 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t26.
    DATA(t27) = abap_true.
    IF t27 = abap_true.
      DATA t28 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t28.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      DATA(t30) = abap_true.
      IF t30 = abap_true.
        DATA(t31) = |OpenABAP|.
        DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t32->has = abap_true.
        t32->value = t31.
        t29 = t32.
      ELSE.
        DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t33.
        t29 = t33.
      ENDIF.
      t28 = NEW zcl_lnt_iver_options( i_also = t29 ).
      t26 = t28.
    ELSE.
      DATA t34 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t34.
      t26 = t34.
    ENDIF.
    t4 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t5 i_first = t11 i_opts = t26 ).
    IF t4 IS BOUND.
      CREATE OBJECT t3.
      t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t35 TYPE REF TO object.
      t35 = t4.
      t3->oval = t35.
    ENDIF.
    t1 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t2 i_first = t3 ).
    result = t1.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d639_4ef4c34a3896.
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
