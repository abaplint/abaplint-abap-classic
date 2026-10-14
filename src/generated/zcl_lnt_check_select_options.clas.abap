* TS: src/abap/2_statements/statements/check_select_options.ts:6:1 CheckSelectOptions
CLASS zcl_lnt_check_select_options DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_check_select_options IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE string.
    DATA(t2) = |CHECK SELECT-OPTIONS|.
    t1 = t2.
    DATA t3 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t4) = |Cloud|.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t6) = t1.
    CREATE OBJECT t5.
    t5->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t5->sval = t6.
    t3 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t4 i_first = t5 ).
    result = t3.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d389_a00a56ae51c8.
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
