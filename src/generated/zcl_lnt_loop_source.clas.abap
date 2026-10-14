* TS: src/abap/2_statements/expressions/loop_source.ts:6:1 LoopSource
CLASS zcl_lnt_loop_source DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_loop_source IMPLEMENTATION.
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
    DATA(t4) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d204_9c49dd4bb1b2 ).
    IF t4 IS BOUND.
      CREATE OBJECT t3.
      t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t3->cval = t4.
    ENDIF.
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t11.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t11 = zcl_lnt_version_module=>release_b8cd.
    DATA(t12) = |v740sp02|.
    t10 = t11->get( p0 = t12 ).
    t9 = t10.
    IF t9 IS BOUND.
      CREATE OBJECT t8.
      t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t13 TYPE REF TO object.
      t13 = t9.
      t8->oval = t13.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA(t15) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t15 IS BOUND.
      CREATE OBJECT t14.
      t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t14->cval = t15.
    ENDIF.
    DATA t16 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t16.
    DATA(t17) = abap_true.
    IF t17 = abap_true.
      DATA t18 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      DATA(t20) = abap_true.
      IF t20 = abap_true.
        DATA(t21) = |OpenABAP|.
        DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t22->has = abap_true.
        t22->value = t21.
        t19 = t22.
      ELSE.
        DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t23.
        t19 = t23.
      ENDIF.
      t18 = NEW zcl_lnt_iver_options( i_also = t19 ).
      t16 = t18.
    ELSE.
      DATA t24 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t24.
      t16 = t24.
    ENDIF.
    t7 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t8 i_first = t14 i_opts = t16 ).
    IF t7 IS BOUND.
      CREATE OBJECT t6.
      t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t25 TYPE REF TO object.
      t25 = t7.
      t6->oval = t25.
    ENDIF.
    t5 = t6.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t27.
    t26 = t27.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t29) = CAST zlnt_runtime_dyna_a429568d5be8( t2 ).
    DATA(t30) = CAST zlnt_runtime_dyna_a429568d5be8( t5 ).
    DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t26 ).
    t28 = zcl_lnt_st_combi_module=>alt( i_first = t29 i_second = t30 i_rest = t31 ).
    t1 = t28.
    result = t1.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d205_211e28be3777.
  ENDMETHOD.
ENDCLASS.
