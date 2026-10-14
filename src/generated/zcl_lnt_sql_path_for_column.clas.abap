* TS: src/abap/2_statements/expressions/sql_path_for_column.ts:8:1 SQLPathForColumn
CLASS zcl_lnt_sql_path_for_column DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_path_for_column IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.
  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t3.
    DATA(t4) = `^(\/\w+\/)?\w+~$`.
    DATA(t5) = `^(\/[A-Za-z0-9_]+\/)?[A-Za-z0-9_]+~$`.
    DATA(t6) = ||.
    CREATE OBJECT t3 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t5 flags = t6.
    t3->source = t4.
    t2 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t3 ).
    t1 = t2.
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA(t11) = CAST zif_lnt_statement_runnable( t1 ).
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t12 TYPE REF TO object.
      t12 = t11.
      t10->oval = t12.
    ENDIF.
    t9 = t10.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    DATA t17 TYPE REF TO zcl_lnt_sql_path_segment.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t18.
    DATA(t19) = abap_true.
    IF t19 = abap_true.
      DATA(t20) = abap_true.
      DATA(t21) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t21->has = abap_true.
      t21->value = t20.
      t18 = t21.
    ELSE.
      DATA t22 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t22.
      t18 = t22.
    ENDIF.
    t17 = NEW zcl_lnt_sql_path_segment( i_nws = t18 ).
    IF t17 IS BOUND.
      CREATE OBJECT t16.
      t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t23 TYPE REF TO object.
      t23 = t17.
      t16->oval = t23.
    ENDIF.
    t15 = zcl_lnt_st_combi_module=>plus( i_first = t16 ).
    IF t15 IS BOUND.
      CREATE OBJECT t14.
      t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t24 TYPE REF TO object.
      t24 = t15.
      t14->oval = t24.
    ENDIF.
    t13 = t14.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t26.
    t25 = t26.
    DATA(t27) = CAST zlnt_runtime_arra_c22708faf2e3( t25 ).
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t30) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d21_8a5d933c5dc37e ).
    t29 = zcl_lnt_st_combi_module=>tok( i_t = t30 ).
    IF t29 IS BOUND.
      CREATE OBJECT t28.
      t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t31 TYPE REF TO object.
      t31 = t29.
      t28->oval = t31.
    ENDIF.
    APPEND t28 TO t27->items.
    DATA(t32) = CAST zlnt_runtime_arra_c22708faf2e3( t25 ).
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA(t34) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185 ).
    IF t34 IS BOUND.
      CREATE OBJECT t33.
      t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t33->cval = t34.
    ENDIF.
    APPEND t33 TO t32->items.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t36) = CAST zlnt_runtime_dyna_a429568d5be8( t9 ).
    DATA(t37) = CAST zlnt_runtime_dyna_a429568d5be8( t13 ).
    DATA(t38) = CAST zlnt_runtime_arra_c22708faf2e3( t25 ).
    t35 = zcl_lnt_st_combi_module=>seq( i_first = t36 i_second = t37 i_rest = t38 ).
    t8 = t35.
    t7 = t8.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t39.
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA t45 TYPE REF TO zcl_lnt_sql_path_segment.
    DATA t46 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t46.
    t45 = NEW zcl_lnt_sql_path_segment( i_nws = t46 ).
    IF t45 IS BOUND.
      CREATE OBJECT t44.
      t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t47 TYPE REF TO object.
      t47 = t45.
      t44->oval = t47.
    ENDIF.
    t43 = zcl_lnt_st_combi_module=>plus( i_first = t44 ).
    IF t43 IS BOUND.
      CREATE OBJECT t42.
      t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t48 TYPE REF TO object.
      t48 = t43.
      t42->oval = t48.
    ENDIF.
    t41 = t42.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t52) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d21_8a5d933c5dc37e ).
    t51 = zcl_lnt_st_combi_module=>tok( i_t = t52 ).
    IF t51 IS BOUND.
      CREATE OBJECT t50.
      t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t53 TYPE REF TO object.
      t53 = t51.
      t50->oval = t53.
    ENDIF.
    t49 = t50.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t55.
    t54 = t55.
    DATA(t56) = CAST zlnt_runtime_arra_c22708faf2e3( t54 ).
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA(t58) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185 ).
    IF t58 IS BOUND.
      CREATE OBJECT t57.
      t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t57->cval = t58.
    ENDIF.
    APPEND t57 TO t56->items.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t60) = CAST zlnt_runtime_dyna_a429568d5be8( t41 ).
    DATA(t61) = CAST zlnt_runtime_dyna_a429568d5be8( t49 ).
    DATA(t62) = CAST zlnt_runtime_arra_c22708faf2e3( t54 ).
    t59 = zcl_lnt_st_combi_module=>seq( i_first = t60 i_second = t61 i_rest = t62 ).
    t40 = t59.
    t39 = t40.
    DATA t63 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA t65 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t65.
    DATA t66 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t67.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t67 = zcl_lnt_version_module=>release_b8cd.
    DATA(t68) = |v740sp05|.
    t66 = t67->get( p0 = t68 ).
    t65 = t66.
    IF t65 IS BOUND.
      CREATE OBJECT t64.
      t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t69 TYPE REF TO object.
      t69 = t65.
      t64->oval = t69.
    ENDIF.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA(t74) = CAST zif_lnt_statement_runnable( t7 ).
    IF t74 IS BOUND.
      CREATE OBJECT t73.
      t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t75 TYPE REF TO object.
      t75 = t74.
      t73->oval = t75.
    ENDIF.
    t72 = t73.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA(t78) = CAST zif_lnt_statement_runnable( t39 ).
    IF t78 IS BOUND.
      CREATE OBJECT t77.
      t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t79 TYPE REF TO object.
      t79 = t78.
      t77->oval = t79.
    ENDIF.
    t76 = t77.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t81.
    t80 = t81.
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t83) = CAST zlnt_runtime_dyna_a429568d5be8( t72 ).
    DATA(t84) = CAST zlnt_runtime_dyna_a429568d5be8( t76 ).
    DATA(t85) = CAST zlnt_runtime_arra_c22708faf2e3( t80 ).
    t82 = zcl_lnt_st_combi_module=>alt_prio( i_first = t83 i_second = t84 i_rest = t85 ).
    t71 = t82.
    IF t71 IS BOUND.
      CREATE OBJECT t70.
      t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t86 TYPE REF TO object.
      t86 = t71.
      t70->oval = t86.
    ENDIF.
    DATA t87 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t87.
    t63 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t64 i_first = t70 i_opts = t87 ).
    result = t63.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d271_46df92fbd079.
  ENDMETHOD.
ENDCLASS.
