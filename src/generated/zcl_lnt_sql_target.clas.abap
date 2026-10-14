* TS: src/abap/2_statements/expressions/sql_target.ts:7:1 SQLTarget
CLASS zcl_lnt_sql_target DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_target IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.
  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t6.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t6 = zcl_lnt_version_module=>release_b8cd.
    DATA(t7) = |v754|.
    t5 = t6->get( p0 = t7 ).
    t4 = t5.
    IF t4 IS BOUND.
      CREATE OBJECT t3.
      t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t8 TYPE REF TO object.
      t8 = t4.
      t3->oval = t8.
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t10) = |NEW|.
    CREATE OBJECT t9.
    t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t9->sval = t10.
    DATA t11 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t11.
    t2 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t3 i_first = t9 i_opts = t11 ).
    t1 = t2.
    DATA t12 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t12.
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t15.
    DATA t16 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t17.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t17 = zcl_lnt_version_module=>release_b8cd.
    DATA(t18) = |v740sp05|.
    t16 = t17->get( p0 = t18 ).
    t15 = t16.
    IF t15 IS BOUND.
      CREATE OBJECT t14.
      t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t19 TYPE REF TO object.
      t19 = t15.
      t14->oval = t19.
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA(t26) = CAST zif_lnt_statement_runnable( t1 ).
    IF t26 IS BOUND.
      CREATE OBJECT t25.
      t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t27 TYPE REF TO object.
      t27 = t26.
      t25->oval = t27.
    ENDIF.
    t24 = zcl_lnt_st_combi_module=>opt( i_first = t25 ).
    IF t24 IS BOUND.
      CREATE OBJECT t23.
      t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t28 TYPE REF TO object.
      t28 = t24.
      t23->oval = t28.
    ENDIF.
    t22 = t23.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t35) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d41_e53da77a9517f4 ).
    t34 = zcl_lnt_st_combi_module=>tok( i_t = t35 ).
    IF t34 IS BOUND.
      CREATE OBJECT t33.
      t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t36 TYPE REF TO object.
      t36 = t34.
      t33->oval = t36.
    ENDIF.
    t32 = t33.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t40) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d14_ce741d8560b489 ).
    t39 = zcl_lnt_st_combi_module=>tok( i_t = t40 ).
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t41 TYPE REF TO object.
      t41 = t39.
      t38->oval = t41.
    ENDIF.
    t37 = t38.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t43.
    t42 = t43.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t45) = CAST zlnt_runtime_dyna_a429568d5be8( t32 ).
    DATA(t46) = CAST zlnt_runtime_dyna_a429568d5be8( t37 ).
    DATA(t47) = CAST zlnt_runtime_arra_c22708faf2e3( t42 ).
    t44 = zcl_lnt_st_combi_module=>alt_prio( i_first = t45 i_second = t46 i_rest = t47 ).
    t31 = t44.
    IF t31 IS BOUND.
      CREATE OBJECT t30.
      t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t48 TYPE REF TO object.
      t48 = t31.
      t30->oval = t48.
    ENDIF.
    t29 = t30.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t50.
    t49 = t50.
    DATA(t51) = CAST zlnt_runtime_arra_c22708faf2e3( t49 ).
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA(t53) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t53 IS BOUND.
      CREATE OBJECT t52.
      t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t52->cval = t53.
    ENDIF.
    APPEND t52 TO t51->items.
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t55) = CAST zlnt_runtime_dyna_a429568d5be8( t22 ).
    DATA(t56) = CAST zlnt_runtime_dyna_a429568d5be8( t29 ).
    DATA(t57) = CAST zlnt_runtime_arra_c22708faf2e3( t49 ).
    t54 = zcl_lnt_st_combi_module=>seq( i_first = t55 i_second = t56 i_rest = t57 ).
    t21 = t54.
    IF t21 IS BOUND.
      CREATE OBJECT t20.
      t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t58 TYPE REF TO object.
      t58 = t21.
      t20->oval = t58.
    ENDIF.
    DATA t59 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t59.
    DATA(t60) = abap_true.
    IF t60 = abap_true.
      DATA t61 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t61.
      DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t62.
      DATA(t63) = abap_true.
      IF t63 = abap_true.
        DATA(t64) = |OpenABAP|.
        DATA(t65) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t65->has = abap_true.
        t65->value = t64.
        t62 = t65.
      ELSE.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t66.
        t62 = t66.
      ENDIF.
      t61 = NEW zcl_lnt_iver_options( i_also = t62 ).
      t59 = t61.
    ELSE.
      DATA t67 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t67.
      t59 = t67.
    ENDIF.
    t13 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t14 i_first = t20 i_opts = t59 ).
    t12 = t13.
    DATA t68 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t68.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA(t71) = CAST zif_lnt_statement_runnable( t12 ).
    IF t71 IS BOUND.
      CREATE OBJECT t70.
      t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t72 TYPE REF TO object.
      t72 = t71.
      t70->oval = t72.
    ENDIF.
    t69 = t70.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA(t75) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t75 IS BOUND.
      CREATE OBJECT t74.
      t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t74->cval = t75.
    ENDIF.
    t73 = t74.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t77.
    t76 = t77.
    DATA t78 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t79) = CAST zlnt_runtime_dyna_a429568d5be8( t69 ).
    DATA(t80) = CAST zlnt_runtime_dyna_a429568d5be8( t73 ).
    DATA(t81) = CAST zlnt_runtime_arra_c22708faf2e3( t76 ).
    t78 = zcl_lnt_st_combi_module=>alt_prio( i_first = t79 i_second = t80 i_rest = t81 ).
    t68 = t78.
    result = t68.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d315_136d5faf95cc.
  ENDMETHOD.
ENDCLASS.
