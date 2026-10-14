* TS: src/abap/2_statements/statements/wait.ts:8:1 Wait
CLASS zcl_lnt_st_wait DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_wait IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |UP TO|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
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
    DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t13) = |SECONDS|.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = t13.
    APPEND t12 TO t11->items.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t15) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t16) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    t14 = zcl_lnt_st_combi_module=>seq( i_first = t15 i_second = t16 i_rest = t17 ).
    t2 = t14.
    t1 = t2.
    DATA t18 TYPE string.
    DATA(t19) = |MESSAGING CHANNELS|.
    t18 = t19.
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
    DATA(t26) = |v750|.
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
    DATA(t29) = |PUSH CHANNELS|.
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
    DATA t39 TYPE string.
    DATA(t40) = |ASYNCHRONOUS TASKS|.
    t39 = t40.
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t41.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t42.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t45) = |FOR|.
    CREATE OBJECT t44.
    t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t44->sval = t45.
    t43 = t44.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t51) = t18.
    CREATE OBJECT t50.
    t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t50->sval = t51.
    t49 = t50.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA(t54) = CAST zif_lnt_statement_runnable( t20 ).
    IF t54 IS BOUND.
      CREATE OBJECT t53.
      t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t55 TYPE REF TO object.
      t55 = t54.
      t53->oval = t55.
    ENDIF.
    t52 = t53.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t57.
    t56 = t57.
    DATA(t58) = CAST zlnt_runtime_arra_c22708faf2e3( t56 ).
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t60) = t39.
    CREATE OBJECT t59.
    t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t59->sval = t60.
    APPEND t59 TO t58->items.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t62) = CAST zlnt_runtime_dyna_a429568d5be8( t49 ).
    DATA(t63) = CAST zlnt_runtime_dyna_a429568d5be8( t52 ).
    DATA(t64) = CAST zlnt_runtime_arra_c22708faf2e3( t56 ).
    t61 = zcl_lnt_st_combi_module=>per( i_first = t62 i_second = t63 i_rest = t64 ).
    t48 = t61.
    IF t48 IS BOUND.
      CREATE OBJECT t47.
      t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t65 TYPE REF TO object.
      t65 = t48.
      t47->oval = t65.
    ENDIF.
    t46 = t47.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t67.
    t66 = t67.
    DATA t68 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t69) = CAST zlnt_runtime_dyna_a429568d5be8( t43 ).
    DATA(t70) = CAST zlnt_runtime_dyna_a429568d5be8( t46 ).
    DATA(t71) = CAST zlnt_runtime_arra_c22708faf2e3( t66 ).
    t68 = zcl_lnt_st_combi_module=>seq( i_first = t69 i_second = t70 i_rest = t71 ).
    t42 = t68.
    t41 = t42.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t72.
    DATA t73 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA(t78) = CAST zif_lnt_statement_runnable( t41 ).
    IF t78 IS BOUND.
      CREATE OBJECT t77.
      t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t79 TYPE REF TO object.
      t79 = t78.
      t77->oval = t79.
    ENDIF.
    t76 = zcl_lnt_st_combi_module=>opt( i_first = t77 ).
    IF t76 IS BOUND.
      CREATE OBJECT t75.
      t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t80 TYPE REF TO object.
      t80 = t76.
      t75->oval = t80.
    ENDIF.
    t74 = t75.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t83) = |UNTIL|.
    CREATE OBJECT t82.
    t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t82->sval = t83.
    t81 = t82.
    DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t85.
    t84 = t85.
    DATA(t86) = CAST zlnt_runtime_arra_c22708faf2e3( t84 ).
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA(t88) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d134_34bac62ef421 ).
    IF t88 IS BOUND.
      CREATE OBJECT t87.
      t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t87->cval = t88.
    ENDIF.
    APPEND t87 TO t86->items.
    DATA(t89) = CAST zlnt_runtime_arra_c22708faf2e3( t84 ).
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA(t93) = CAST zif_lnt_statement_runnable( t1 ).
    IF t93 IS BOUND.
      CREATE OBJECT t92.
      t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t94 TYPE REF TO object.
      t94 = t93.
      t92->oval = t94.
    ENDIF.
    t91 = zcl_lnt_st_combi_module=>opt( i_first = t92 ).
    IF t91 IS BOUND.
      CREATE OBJECT t90.
      t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t95 TYPE REF TO object.
      t95 = t91.
      t90->oval = t95.
    ENDIF.
    APPEND t90 TO t89->items.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t97) = CAST zlnt_runtime_dyna_a429568d5be8( t74 ).
    DATA(t98) = CAST zlnt_runtime_dyna_a429568d5be8( t81 ).
    DATA(t99) = CAST zlnt_runtime_arra_c22708faf2e3( t84 ).
    t96 = zcl_lnt_st_combi_module=>seq( i_first = t97 i_second = t98 i_rest = t99 ).
    t73 = t96.
    t72 = t73.
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t100.
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t104) = |WAIT|.
    CREATE OBJECT t103.
    t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t103->sval = t104.
    t102 = t103.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA t107 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t107.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t108.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA(t110) = CAST zif_lnt_statement_runnable( t72 ).
    IF t110 IS BOUND.
      CREATE OBJECT t109.
      t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t111 TYPE REF TO object.
      t111 = t110.
      t109->oval = t111.
    ENDIF.
    t108 = t109.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t112.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA(t114) = CAST zif_lnt_statement_runnable( t1 ).
    IF t114 IS BOUND.
      CREATE OBJECT t113.
      t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t115 TYPE REF TO object.
      t115 = t114.
      t113->oval = t115.
    ENDIF.
    t112 = t113.
    DATA t116 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t117.
    t116 = t117.
    DATA t118 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t119) = CAST zlnt_runtime_dyna_a429568d5be8( t108 ).
    DATA(t120) = CAST zlnt_runtime_dyna_a429568d5be8( t112 ).
    DATA(t121) = CAST zlnt_runtime_arra_c22708faf2e3( t116 ).
    t118 = zcl_lnt_st_combi_module=>alt( i_first = t119 i_second = t120 i_rest = t121 ).
    t107 = t118.
    IF t107 IS BOUND.
      CREATE OBJECT t106.
      t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t122 TYPE REF TO object.
      t122 = t107.
      t106->oval = t122.
    ENDIF.
    t105 = t106.
    DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t124.
    t123 = t124.
    DATA t125 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t126) = CAST zlnt_runtime_dyna_a429568d5be8( t102 ).
    DATA(t127) = CAST zlnt_runtime_dyna_a429568d5be8( t105 ).
    DATA(t128) = CAST zlnt_runtime_arra_c22708faf2e3( t123 ).
    t125 = zcl_lnt_st_combi_module=>seq( i_first = t126 i_second = t127 i_rest = t128 ).
    t101 = t125.
    t100 = t101.
    DATA t129 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t129.
    DATA(t130) = |KeyUser|.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA(t132) = CAST zif_lnt_statement_runnable( t100 ).
    IF t132 IS BOUND.
      CREATE OBJECT t131.
      t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t133 TYPE REF TO object.
      t133 = t132.
      t131->oval = t133.
    ENDIF.
    t129 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t130 i_first = t131 ).
    result = t129.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d661_9aa538820044.
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
