* TS: src/abap/2_statements/statements/with.ts:8:1 With
CLASS zcl_lnt_st_with DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_with IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = |WITH|.
    CREATE OBJECT t6.
    t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t6->sval = t7.
    t5 = t6.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA(t13) = NEW zcl_lnt_sqlcte_hierarchy(  ).
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t14 TYPE REF TO object.
      t14 = t13.
      t12->oval = t14.
    ENDIF.
    t11 = t12.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    DATA(t17) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d283_6d1de0562006 ).
    IF t17 IS BOUND.
      CREATE OBJECT t16.
      t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t16->cval = t17.
    ENDIF.
    t15 = t16.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t19.
    t18 = t19.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t21) = CAST zlnt_runtime_dyna_a429568d5be8( t11 ).
    DATA(t22) = CAST zlnt_runtime_dyna_a429568d5be8( t15 ).
    DATA(t23) = CAST zlnt_runtime_arra_c22708faf2e3( t18 ).
    t20 = zcl_lnt_st_combi_module=>alt_prio( i_first = t21 i_second = t22 i_rest = t23 ).
    t10 = t20.
    IF t10 IS BOUND.
      CREATE OBJECT t9.
      t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t24 TYPE REF TO object.
      t24 = t10.
      t9->oval = t24.
    ENDIF.
    t8 = t9.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t26.
    t25 = t26.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t28) = CAST zlnt_runtime_dyna_a429568d5be8( t5 ).
    DATA(t29) = CAST zlnt_runtime_dyna_a429568d5be8( t8 ).
    DATA(t30) = CAST zlnt_runtime_arra_c22708faf2e3( t25 ).
    t27 = zcl_lnt_st_combi_module=>seq( i_first = t28 i_second = t29 i_rest = t30 ).
    t4 = t27.
    IF t4 IS BOUND.
      CREATE OBJECT t3.
      t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t31 TYPE REF TO object.
      t31 = t4.
      t3->oval = t31.
    ENDIF.
    t2 = zcl_lnt_st_combi_module=>opt_prio( i_first = t3 ).
    t1 = t2.
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t32.
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA(t36) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d302_ef2b4b46983a ).
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t35->cval = t36.
    ENDIF.
    t34 = t35.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t39) = |AS|.
    CREATE OBJECT t38.
    t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t38->sval = t39.
    t37 = t38.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t41.
    t40 = t41.
    DATA(t42) = CAST zlnt_runtime_arra_c22708faf2e3( t40 ).
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t45) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d52_2e425786555090 ).
    t44 = zcl_lnt_st_combi_module=>tok( i_t = t45 ).
    IF t44 IS BOUND.
      CREATE OBJECT t43.
      t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t46 TYPE REF TO object.
      t46 = t44.
      t43->oval = t46.
    ENDIF.
    APPEND t43 TO t42->items.
    DATA(t47) = CAST zlnt_runtime_arra_c22708faf2e3( t40 ).
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA(t49) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d255_88331b4186a0 ).
    IF t49 IS BOUND.
      CREATE OBJECT t48.
      t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t48->cval = t49.
    ENDIF.
    APPEND t48 TO t47->items.
    DATA(t50) = CAST zlnt_runtime_arra_c22708faf2e3( t40 ).
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t53) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t52 = zcl_lnt_st_combi_module=>tok( i_t = t53 ).
    IF t52 IS BOUND.
      CREATE OBJECT t51.
      t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t54 TYPE REF TO object.
      t54 = t52.
      t51->oval = t54.
    ENDIF.
    APPEND t51 TO t50->items.
    DATA(t55) = CAST zlnt_runtime_arra_c22708faf2e3( t40 ).
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    DATA(t57) = CAST zif_lnt_statement_runnable( t1 ).
    IF t57 IS BOUND.
      CREATE OBJECT t56.
      t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t58 TYPE REF TO object.
      t58 = t57.
      t56->oval = t58.
    ENDIF.
    APPEND t56 TO t55->items.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t60) = CAST zlnt_runtime_dyna_a429568d5be8( t34 ).
    DATA(t61) = CAST zlnt_runtime_dyna_a429568d5be8( t37 ).
    DATA(t62) = CAST zlnt_runtime_arra_c22708faf2e3( t40 ).
    t59 = zcl_lnt_st_combi_module=>seq( i_first = t60 i_second = t61 i_rest = t62 ).
    t33 = t59.
    t32 = t33.
    DATA t63 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t63.
    DATA(t64) = |KeyUser|.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    DATA t66 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA t68 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t68.
    DATA t69 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t69.
    DATA t70 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t70.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t70 = zcl_lnt_version_module=>release_b8cd.
    DATA(t71) = |v751|.
    t69 = t70->get( p0 = t71 ).
    t68 = t69.
    IF t68 IS BOUND.
      CREATE OBJECT t67.
      t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t72 TYPE REF TO object.
      t72 = t68.
      t67->oval = t72.
    ENDIF.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t77) = |WITH|.
    CREATE OBJECT t76.
    t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t76->sval = t77.
    t75 = t76.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA(t80) = CAST zif_lnt_statement_runnable( t32 ).
    IF t80 IS BOUND.
      CREATE OBJECT t79.
      t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t81 TYPE REF TO object.
      t81 = t80.
      t79->oval = t81.
    ENDIF.
    t78 = t79.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t83.
    t82 = t83.
    DATA(t84) = CAST zlnt_runtime_arra_c22708faf2e3( t82 ).
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA t88 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t88.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t91) = |,|.
    CREATE OBJECT t90.
    t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t90->sval = t91.
    t89 = t90.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    DATA(t94) = CAST zif_lnt_statement_runnable( t32 ).
    IF t94 IS BOUND.
      CREATE OBJECT t93.
      t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t95 TYPE REF TO object.
      t95 = t94.
      t93->oval = t95.
    ENDIF.
    t92 = t93.
    DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t97.
    t96 = t97.
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t99) = CAST zlnt_runtime_dyna_a429568d5be8( t89 ).
    DATA(t100) = CAST zlnt_runtime_dyna_a429568d5be8( t92 ).
    DATA(t101) = CAST zlnt_runtime_arra_c22708faf2e3( t96 ).
    t98 = zcl_lnt_st_combi_module=>seq( i_first = t99 i_second = t100 i_rest = t101 ).
    t88 = t98.
    IF t88 IS BOUND.
      CREATE OBJECT t87.
      t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t102 TYPE REF TO object.
      t102 = t88.
      t87->oval = t102.
    ENDIF.
    t86 = zcl_lnt_st_combi_module=>star( i_first = t87 ).
    IF t86 IS BOUND.
      CREATE OBJECT t85.
      t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t103 TYPE REF TO object.
      t103 = t86.
      t85->oval = t103.
    ENDIF.
    APPEND t85 TO t84->items.
    DATA(t104) = CAST zlnt_runtime_arra_c22708faf2e3( t82 ).
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA(t106) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d254_c290c4a7bfe3 ).
    IF t106 IS BOUND.
      CREATE OBJECT t105.
      t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t105->cval = t106.
    ENDIF.
    APPEND t105 TO t104->items.
    DATA t107 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t108) = CAST zlnt_runtime_dyna_a429568d5be8( t75 ).
    DATA(t109) = CAST zlnt_runtime_dyna_a429568d5be8( t78 ).
    DATA(t110) = CAST zlnt_runtime_arra_c22708faf2e3( t82 ).
    t107 = zcl_lnt_st_combi_module=>seq( i_first = t108 i_second = t109 i_rest = t110 ).
    t74 = t107.
    IF t74 IS BOUND.
      CREATE OBJECT t73.
      t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t111 TYPE REF TO object.
      t111 = t74.
      t73->oval = t111.
    ENDIF.
    DATA t112 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t112.
    t66 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t67 i_first = t73 i_opts = t112 ).
    IF t66 IS BOUND.
      CREATE OBJECT t65.
      t65->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t113 TYPE REF TO object.
      t113 = t66.
      t65->oval = t113.
    ENDIF.
    t63 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t64 i_first = t65 ).
    result = t63.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d667_b42297f33700.
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
