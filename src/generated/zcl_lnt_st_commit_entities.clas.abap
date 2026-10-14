* TS: src/abap/2_statements/statements/commit_entities.ts:7:1 CommitEntities
CLASS zcl_lnt_st_commit_entities DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_commit_entities IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |FAILED|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t9 = t10.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t12) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t13) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    t11 = zcl_lnt_st_combi_module=>seq( i_first = t12 i_second = t13 i_rest = t14 ).
    t2 = t11.
    t1 = t2.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = |REPORTED|.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    DATA(t22) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d206_6fcb20c2de74 ).
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t21->cval = t22.
    ENDIF.
    t20 = t21.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    t23 = t24.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t26) = CAST zlnt_runtime_dyna_a429568d5be8( t17 ).
    DATA(t27) = CAST zlnt_runtime_dyna_a429568d5be8( t20 ).
    DATA(t28) = CAST zlnt_runtime_arra_c22708faf2e3( t23 ).
    t25 = zcl_lnt_st_combi_module=>seq( i_first = t26 i_second = t27 i_rest = t28 ).
    t16 = t25.
    t15 = t16.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t29.
    DATA t30 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t33) = |RESPONSES|.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = t33.
    t31 = t32.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA(t36) = CAST zif_lnt_statement_runnable( t1 ).
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t37 TYPE REF TO object.
      t37 = t36.
      t35->oval = t37.
    ENDIF.
    t34 = t35.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t39.
    t38 = t39.
    DATA(t40) = CAST zlnt_runtime_arra_c22708faf2e3( t38 ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA(t42) = CAST zif_lnt_statement_runnable( t15 ).
    IF t42 IS BOUND.
      CREATE OBJECT t41.
      t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t43 TYPE REF TO object.
      t43 = t42.
      t41->oval = t43.
    ENDIF.
    APPEND t41 TO t40->items.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t45) = CAST zlnt_runtime_dyna_a429568d5be8( t31 ).
    DATA(t46) = CAST zlnt_runtime_dyna_a429568d5be8( t34 ).
    DATA(t47) = CAST zlnt_runtime_arra_c22708faf2e3( t38 ).
    t44 = zcl_lnt_st_combi_module=>seq( i_first = t45 i_second = t46 i_rest = t47 ).
    t30 = t44.
    t29 = t30.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t48.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t52) = |COMMIT ENTITIES|.
    CREATE OBJECT t51.
    t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t51->sval = t52.
    t50 = t51.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t57) = |IN SIMULATION MODE|.
    CREATE OBJECT t56.
    t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t56->sval = t57.
    t55 = zcl_lnt_st_combi_module=>opt_prio( i_first = t56 ).
    IF t55 IS BOUND.
      CREATE OBJECT t54.
      t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t58 TYPE REF TO object.
      t58 = t55.
      t54->oval = t58.
    ENDIF.
    t53 = t54.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t60.
    t59 = t60.
    DATA(t61) = CAST zlnt_runtime_arra_c22708faf2e3( t59 ).
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA t63 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    DATA(t65) = CAST zif_lnt_statement_runnable( t29 ).
    IF t65 IS BOUND.
      CREATE OBJECT t64.
      t64->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t66 TYPE REF TO object.
      t66 = t65.
      t64->oval = t66.
    ENDIF.
    t63 = zcl_lnt_st_combi_module=>opt( i_first = t64 ).
    IF t63 IS BOUND.
      CREATE OBJECT t62.
      t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t67 TYPE REF TO object.
      t67 = t63.
      t62->oval = t67.
    ENDIF.
    APPEND t62 TO t61->items.
    DATA(t68) = CAST zlnt_runtime_arra_c22708faf2e3( t59 ).
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t75) = |RESPONSE OF|.
    CREATE OBJECT t74.
    t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t74->sval = t75.
    t73 = t74.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA(t78) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
    IF t78 IS BOUND.
      CREATE OBJECT t77.
      t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t77->cval = t78.
    ENDIF.
    t76 = t77.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t80.
    t79 = t80.
    DATA(t81) = CAST zlnt_runtime_arra_c22708faf2e3( t79 ).
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA t83 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t83.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA(t86) = CAST zif_lnt_statement_runnable( t1 ).
    IF t86 IS BOUND.
      CREATE OBJECT t85.
      t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t87 TYPE REF TO object.
      t87 = t86.
      t85->oval = t87.
    ENDIF.
    t84 = t85.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA(t90) = CAST zif_lnt_statement_runnable( t15 ).
    IF t90 IS BOUND.
      CREATE OBJECT t89.
      t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t91 TYPE REF TO object.
      t91 = t90.
      t89->oval = t91.
    ENDIF.
    t88 = t89.
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t93.
    t92 = t93.
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t95) = CAST zlnt_runtime_dyna_a429568d5be8( t84 ).
    DATA(t96) = CAST zlnt_runtime_dyna_a429568d5be8( t88 ).
    DATA(t97) = CAST zlnt_runtime_arra_c22708faf2e3( t92 ).
    t94 = zcl_lnt_st_combi_module=>per( i_first = t95 i_second = t96 i_rest = t97 ).
    t83 = t94.
    IF t83 IS BOUND.
      CREATE OBJECT t82.
      t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t98 TYPE REF TO object.
      t98 = t83.
      t82->oval = t98.
    ENDIF.
    APPEND t82 TO t81->items.
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t100) = CAST zlnt_runtime_dyna_a429568d5be8( t73 ).
    DATA(t101) = CAST zlnt_runtime_dyna_a429568d5be8( t76 ).
    DATA(t102) = CAST zlnt_runtime_arra_c22708faf2e3( t79 ).
    t99 = zcl_lnt_st_combi_module=>seq( i_first = t100 i_second = t101 i_rest = t102 ).
    t72 = t99.
    IF t72 IS BOUND.
      CREATE OBJECT t71.
      t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t103 TYPE REF TO object.
      t103 = t72.
      t71->oval = t103.
    ENDIF.
    t70 = zcl_lnt_st_combi_module=>opt( i_first = t71 ).
    IF t70 IS BOUND.
      CREATE OBJECT t69.
      t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t104 TYPE REF TO object.
      t104 = t70.
      t69->oval = t104.
    ENDIF.
    APPEND t69 TO t68->items.
    DATA t105 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t106) = CAST zlnt_runtime_dyna_a429568d5be8( t50 ).
    DATA(t107) = CAST zlnt_runtime_dyna_a429568d5be8( t53 ).
    DATA(t108) = CAST zlnt_runtime_arra_c22708faf2e3( t59 ).
    t105 = zcl_lnt_st_combi_module=>seq( i_first = t106 i_second = t107 i_rest = t108 ).
    t49 = t105.
    t48 = t49.
    DATA t109 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t109.
    DATA(t110) = |KeyUser|.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t112.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA t114 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t114.
    DATA t115 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t115.
    DATA t116 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t116.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t116 = zcl_lnt_version_module=>release_b8cd.
    DATA(t117) = |v754|.
    t115 = t116->get( p0 = t117 ).
    t114 = t115.
    IF t114 IS BOUND.
      CREATE OBJECT t113.
      t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t118 TYPE REF TO object.
      t118 = t114.
      t113->oval = t118.
    ENDIF.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t119.
    DATA(t120) = CAST zif_lnt_statement_runnable( t48 ).
    IF t120 IS BOUND.
      CREATE OBJECT t119.
      t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t121 TYPE REF TO object.
      t121 = t120.
      t119->oval = t121.
    ENDIF.
    DATA t122 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t122.
    DATA(t123) = abap_true.
    IF t123 = abap_true.
      DATA t124 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t124.
      DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t125.
      DATA(t126) = abap_true.
      IF t126 = abap_true.
        DATA(t127) = |OpenABAP|.
        DATA(t128) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t128->has = abap_true.
        t128->value = t127.
        t125 = t128.
      ELSE.
        DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t129.
        t125 = t129.
      ENDIF.
      t124 = NEW zcl_lnt_iver_options( i_also = t125 ).
      t122 = t124.
    ELSE.
      DATA t130 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t130.
      t122 = t130.
    ENDIF.
    t112 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t113 i_first = t119 i_opts = t122 ).
    IF t112 IS BOUND.
      CREATE OBJECT t111.
      t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t131 TYPE REF TO object.
      t131 = t112.
      t111->oval = t131.
    ENDIF.
    t109 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t110 i_first = t111 ).
    result = t109.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d404_f5b3694ad544.
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
