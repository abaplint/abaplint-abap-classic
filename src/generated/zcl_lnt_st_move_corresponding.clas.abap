* TS: src/abap/2_statements/statements/move_corresponding.ts:7:1 MoveCorresponding
CLASS zcl_lnt_st_move_corresponding DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_move_corresponding IMPLEMENTATION.
  METHOD get_matcher.
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
    DATA(t7) = |v740sp05|.
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
    DATA(t10) = |KEEPING TARGET LINES|.
    CREATE OBJECT t9.
    t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t9->sval = t10.
    DATA t11 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t11.
    DATA(t12) = abap_true.
    IF t12 = abap_true.
      DATA t13 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t13.
      DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t14.
      DATA(t15) = abap_true.
      IF t15 = abap_true.
        DATA(t16) = |OpenABAP|.
        DATA(t17) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t17->has = abap_true.
        t17->value = t16.
        t14 = t17.
      ELSE.
        DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t18.
        t14 = t18.
      ENDIF.
      t13 = NEW zcl_lnt_iver_options( i_also = t14 ).
      t11 = t13.
    ELSE.
      DATA t19 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t19.
      t11 = t19.
    ENDIF.
    t2 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t3 i_first = t9 i_opts = t11 ).
    t1 = t2.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t20.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA t23 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t23.
    DATA t24 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t25.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t25 = zcl_lnt_version_module=>release_b8cd.
    DATA(t26) = |v740sp05|.
    t24 = t25->get( p0 = t26 ).
    t23 = t24.
    IF t23 IS BOUND.
      CREATE OBJECT t22.
      t22->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t27 TYPE REF TO object.
      t27 = t23.
      t22->oval = t27.
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t29) = |EXPANDING NESTED TABLES|.
    CREATE OBJECT t28.
    t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t28->sval = t29.
    DATA t30 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t30.
    DATA(t31) = abap_true.
    IF t31 = abap_true.
      DATA t32 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t32.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      DATA(t34) = abap_true.
      IF t34 = abap_true.
        DATA(t35) = |OpenABAP|.
        DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t36->has = abap_true.
        t36->value = t35.
        t33 = t36.
      ELSE.
        DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t37.
        t33 = t37.
      ENDIF.
      t32 = NEW zcl_lnt_iver_options( i_also = t33 ).
      t30 = t32.
    ELSE.
      DATA t38 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t38.
      t30 = t38.
    ENDIF.
    t21 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t22 i_first = t28 i_opts = t30 ).
    t20 = t21.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t39.
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t43) = |MOVE-CORRESPONDING|.
    CREATE OBJECT t42.
    t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t42->sval = t43.
    t41 = t42.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t48) = |EXACT|.
    CREATE OBJECT t47.
    t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t47->sval = t48.
    t46 = zcl_lnt_st_combi_module=>opt_prio( i_first = t47 ).
    IF t46 IS BOUND.
      CREATE OBJECT t45.
      t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t49 TYPE REF TO object.
      t49 = t46.
      t45->oval = t49.
    ENDIF.
    t44 = t45.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t51.
    t50 = t51.
    DATA(t52) = CAST zlnt_runtime_arra_c22708faf2e3( t50 ).
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA(t54) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t54 IS BOUND.
      CREATE OBJECT t53.
      t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t53->cval = t54.
    ENDIF.
    APPEND t53 TO t52->items.
    DATA(t55) = CAST zlnt_runtime_arra_c22708faf2e3( t50 ).
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t57) = |TO|.
    CREATE OBJECT t56.
    t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t56->sval = t57.
    APPEND t56 TO t55->items.
    DATA(t58) = CAST zlnt_runtime_arra_c22708faf2e3( t50 ).
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA(t60) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d259_29e6bae3a66c ).
    IF t60 IS BOUND.
      CREATE OBJECT t59.
      t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t59->cval = t60.
    ENDIF.
    APPEND t59 TO t58->items.
    DATA(t61) = CAST zlnt_runtime_arra_c22708faf2e3( t50 ).
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA t63 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA(t65) = CAST zif_lnt_statement_runnable( t20 ).
    IF t65 IS BOUND.
      CREATE OBJECT t64.
      t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t66 TYPE REF TO object.
      t66 = t65.
      t64->oval = t66.
    ENDIF.
    t63 = zcl_lnt_st_combi_module=>opt_prio( i_first = t64 ).
    IF t63 IS BOUND.
      CREATE OBJECT t62.
      t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t67 TYPE REF TO object.
      t67 = t63.
      t62->oval = t67.
    ENDIF.
    APPEND t62 TO t61->items.
    DATA(t68) = CAST zlnt_runtime_arra_c22708faf2e3( t50 ).
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA(t72) = CAST zif_lnt_statement_runnable( t1 ).
    IF t72 IS BOUND.
      CREATE OBJECT t71.
      t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t73 TYPE REF TO object.
      t73 = t72.
      t71->oval = t73.
    ENDIF.
    t70 = zcl_lnt_st_combi_module=>opt_prio( i_first = t71 ).
    IF t70 IS BOUND.
      CREATE OBJECT t69.
      t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t74 TYPE REF TO object.
      t74 = t70.
      t69->oval = t74.
    ENDIF.
    APPEND t69 TO t68->items.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t76) = CAST zlnt_runtime_dyna_a429568d5be8( t41 ).
    DATA(t77) = CAST zlnt_runtime_dyna_a429568d5be8( t44 ).
    DATA(t78) = CAST zlnt_runtime_arra_c22708faf2e3( t50 ).
    t75 = zcl_lnt_st_combi_module=>seq( i_first = t76 i_second = t77 i_rest = t78 ).
    t40 = t75.
    t39 = t40.
    DATA(t79) = CAST zif_lnt_statement_runnable( t39 ).
    result = t79.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d545_31612fd2296c.
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
