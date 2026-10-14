* TS: src/abap/2_statements/expressions/inlinefs.ts:7:1 InlineFS
CLASS zcl_lnt_st_inline_fs DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_inline_fs IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.
  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t3) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d29_f2ed5131cb71b6 ).
    t2 = zcl_lnt_st_combi_module=>tok( i_t = t3 ).
    t1 = t2.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d26_2fd73418f07736 ).
    t5 = zcl_lnt_st_combi_module=>tok( i_t = t6 ).
    t4 = t5.
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t11) = |FIELD-SYMBOL|.
    CREATE OBJECT t10.
    t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t10->sval = t11.
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA(t14) = CAST zif_lnt_statement_runnable( t4 ).
    IF t14 IS BOUND.
      CREATE OBJECT t13.
      t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t15 TYPE REF TO object.
      t15 = t14.
      t13->oval = t15.
    ENDIF.
    t12 = t13.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t17.
    t16 = t17.
    DATA(t18) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA(t20) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d184_78321de353a4 ).
    IF t20 IS BOUND.
      CREATE OBJECT t19.
      t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t19->cval = t20.
    ENDIF.
    APPEND t19 TO t18->items.
    DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA(t23) = CAST zif_lnt_statement_runnable( t1 ).
    IF t23 IS BOUND.
      CREATE OBJECT t22.
      t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t24 TYPE REF TO object.
      t24 = t23.
      t22->oval = t24.
    ENDIF.
    APPEND t22 TO t21->items.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t26) = CAST zlnt_runtime_dyna_a429568d5be8( t9 ).
    DATA(t27) = CAST zlnt_runtime_dyna_a429568d5be8( t12 ).
    DATA(t28) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
    t25 = zcl_lnt_st_combi_module=>seq( i_first = t26 i_second = t27 i_rest = t28 ).
    t8 = t25.
    t7 = t8.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA t31 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t31.
    DATA t32 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t33.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t33 = zcl_lnt_version_module=>release_b8cd.
    DATA(t34) = |v740sp02|.
    t32 = t33->get( p0 = t34 ).
    t31 = t32.
    IF t31 IS BOUND.
      CREATE OBJECT t30.
      t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t35 TYPE REF TO object.
      t35 = t31.
      t30->oval = t35.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    DATA(t37) = CAST zif_lnt_statement_runnable( t7 ).
    IF t37 IS BOUND.
      CREATE OBJECT t36.
      t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t38 TYPE REF TO object.
      t38 = t37.
      t36->oval = t38.
    ENDIF.
    DATA t39 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t39.
    DATA(t40) = abap_true.
    IF t40 = abap_true.
      DATA t41 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t41.
      DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t42.
      DATA(t43) = abap_true.
      IF t43 = abap_true.
        DATA(t44) = |OpenABAP|.
        DATA(t45) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t45->has = abap_true.
        t45->value = t44.
        t42 = t45.
      ELSE.
        DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t46.
        t42 = t46.
      ENDIF.
      t41 = NEW zcl_lnt_iver_options( i_also = t42 ).
      t39 = t41.
    ELSE.
      DATA t47 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t47.
      t39 = t47.
    ENDIF.
    t29 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t30 i_first = t36 i_opts = t39 ).
    result = t29.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d183_78b4c050195c.
  ENDMETHOD.
ENDCLASS.
