* TS: src/abap/2_statements/expressions/sql_mapping_from_entity.ts:5:1 SQLMappingFromEntity
CLASS zcl_lnt_sql_mppng_frm_entty DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_mppng_frm_entty IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
  ENDMETHOD.
  METHOD get_runnable.
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
    DATA(t6) = |v789|.
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
    DATA(t9) = |MAPPING FROM ENTITY|.
    CREATE OBJECT t8.
    t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t8->sval = t9.
    DATA t10 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t10.
    t1 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t2 i_first = t8 i_opts = t10 ).
    result = t1.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d321_17502cdda795.
  ENDMETHOD.
ENDCLASS.
