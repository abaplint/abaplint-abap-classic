* TS: src/abap/2_statements/statements/open_cursor.ts:7:1 OpenCursor
CLASS zcl_lnt_st_open_cursor DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_open_cursor IMPLEMENTATION.
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
    DATA(t7) = |v752|.
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
    CLEAR t9.
    DATA t10 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t13) = |WITH|.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = t13.
    t11 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA(t16) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d286_cf5169b94e53 ).
    IF t16 IS BOUND.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t15->cval = t16.
    ENDIF.
    t14 = t15.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t18.
    t17 = t18.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t20) = CAST zlnt_runtime_dyna_a429568d5be8( t11 ).
    DATA(t21) = CAST zlnt_runtime_dyna_a429568d5be8( t14 ).
    DATA(t22) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
    t19 = zcl_lnt_st_combi_module=>seq( i_first = t20 i_second = t21 i_rest = t22 ).
    t10 = t19.
    IF t10 IS BOUND.
      CREATE OBJECT t9.
      t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t23 TYPE REF TO object.
      t23 = t10.
      t9->oval = t23.
    ENDIF.
    DATA t24 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t24.
    t2 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t3 i_first = t9 i_opts = t24 ).
    t1 = t2.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t25.
    DATA t26 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t29) = |OPEN CURSOR|.
    CREATE OBJECT t28.
    t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t28->sval = t29.
    t27 = t28.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t34) = |WITH HOLD|.
    CREATE OBJECT t33.
    t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t33->sval = t34.
    t32 = zcl_lnt_st_combi_module=>opt_prio( i_first = t33 ).
    IF t32 IS BOUND.
      CREATE OBJECT t31.
      t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t35 TYPE REF TO object.
      t35 = t32.
      t31->oval = t35.
    ENDIF.
    t30 = t31.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t37.
    t36 = t37.
    DATA(t38) = CAST zlnt_runtime_arra_c22708faf2e3( t36 ).
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA(t40) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d315_136d5faf95cc ).
    IF t40 IS BOUND.
      CREATE OBJECT t39.
      t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t39->cval = t40.
    ENDIF.
    APPEND t39 TO t38->items.
    DATA(t41) = CAST zlnt_runtime_arra_c22708faf2e3( t36 ).
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t43) = |FOR|.
    CREATE OBJECT t42.
    t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t42->sval = t43.
    APPEND t42 TO t41->items.
    DATA(t44) = CAST zlnt_runtime_arra_c22708faf2e3( t36 ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA(t46) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d254_c290c4a7bfe3 ).
    IF t46 IS BOUND.
      CREATE OBJECT t45.
      t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t45->cval = t46.
    ENDIF.
    APPEND t45 TO t44->items.
    DATA(t47) = CAST zlnt_runtime_arra_c22708faf2e3( t36 ).
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA(t51) = CAST zif_lnt_statement_runnable( t1 ).
    IF t51 IS BOUND.
      CREATE OBJECT t50.
      t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t52 TYPE REF TO object.
      t52 = t51.
      t50->oval = t52.
    ENDIF.
    t49 = zcl_lnt_st_combi_module=>opt_prio( i_first = t50 ).
    IF t49 IS BOUND.
      CREATE OBJECT t48.
      t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t53 TYPE REF TO object.
      t53 = t49.
      t48->oval = t53.
    ENDIF.
    APPEND t48 TO t47->items.
    DATA(t54) = CAST zlnt_runtime_arra_c22708faf2e3( t36 ).
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA(t58) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d323_2cd6e0020229 ).
    IF t58 IS BOUND.
      CREATE OBJECT t57.
      t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t57->cval = t58.
    ENDIF.
    t56 = zcl_lnt_st_combi_module=>opt_prio( i_first = t57 ).
    IF t56 IS BOUND.
      CREATE OBJECT t55.
      t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t59 TYPE REF TO object.
      t59 = t56.
      t55->oval = t59.
    ENDIF.
    APPEND t55 TO t54->items.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t61) = CAST zlnt_runtime_dyna_a429568d5be8( t27 ).
    DATA(t62) = CAST zlnt_runtime_dyna_a429568d5be8( t30 ).
    DATA(t63) = CAST zlnt_runtime_arra_c22708faf2e3( t36 ).
    t60 = zcl_lnt_st_combi_module=>seq( i_first = t61 i_second = t62 i_rest = t63 ).
    t26 = t60.
    t25 = t26.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t64.
    DATA(t65) = |Cloud|.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA(t67) = CAST zif_lnt_statement_runnable( t25 ).
    IF t67 IS BOUND.
      CREATE OBJECT t66.
      t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t68 TYPE REF TO object.
      t68 = t67.
      t66->oval = t68.
    ENDIF.
    t64 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t65 i_first = t66 ).
    result = t64.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d551_3a0a4b6f5142.
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
