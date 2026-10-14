* TS: src/abap/2_statements/statements/endwith.ts:6:1 EndWith
CLASS zcl_lnt_end_with DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_end_with IMPLEMENTATION.
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
    DATA(t9) = |v751|.
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
    DATA(t12) = |ENDWITH|.
    CREATE OBJECT t11.
    t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t11->sval = t12.
    DATA t13 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t13.
    t4 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t5 i_first = t11 i_opts = t13 ).
    IF t4 IS BOUND.
      CREATE OBJECT t3.
      t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t14 TYPE REF TO object.
      t14 = t4.
      t3->oval = t14.
    ENDIF.
    t1 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t2 i_first = t3 ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d467_d222bcd2ec28.
  ENDMETHOD.
  METHOD zif_lnt_statement~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement~get_matcher.
    result = me->get_matcher( ).
  ENDMETHOD.
  METHOD zif_lnt_union_dc0fb493~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
