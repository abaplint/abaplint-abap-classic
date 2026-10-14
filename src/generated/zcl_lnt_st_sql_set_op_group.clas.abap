* TS: src/abap/2_statements/expressions/sql_set_op_group.ts:7:1 SQLSetOpGroup
CLASS zcl_lnt_st_sql_set_op_group DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_sql_set_op_group IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
  ENDMETHOD.
  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d277_c16b515a2f49 ).
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t4->cval = t5.
    ENDIF.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t11) = |SELECT|.
    CREATE OBJECT t10.
    t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t10->sval = t11.
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA(t17) = abap_false.
      DATA(t18) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t18->has = abap_true.
      t18->value = t17.
      t15 = t18.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t19.
      t15 = t19.
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t20.
    DATA(t21) = abap_true.
    IF t21 = abap_true.
      DATA(t22) = abap_false.
      DATA(t23) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t23->has = abap_true.
      t23->value = t22.
      t20 = t23.
    ELSE.
      DATA t24 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t24.
      t20 = t24.
    ENDIF.
    t14 = zcl_lnt_select_core_module=>build_select_core( i_allow_into = t15 i_allow_order_by = t20 ).
    IF t14 IS BOUND.
      CREATE OBJECT t13.
      t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t25 TYPE REF TO object.
      t25 = t14.
      t13->oval = t25.
    ENDIF.
    t12 = t13.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t27.
    t26 = t27.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t29) = CAST zlnt_runtime_dyna_a429568d5be8( t9 ).
    DATA(t30) = CAST zlnt_runtime_dyna_a429568d5be8( t12 ).
    DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t26 ).
    t28 = zcl_lnt_st_combi_module=>seq( i_first = t29 i_second = t30 i_rest = t31 ).
    t8 = t28.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t32 TYPE REF TO object.
      t32 = t8.
      t7->oval = t32.
    ENDIF.
    t6 = t7.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t34.
    t33 = t34.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t36) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t37) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t38) = CAST zlnt_runtime_arra_c22708faf2e3( t33 ).
    t35 = zcl_lnt_st_combi_module=>alt_prio( i_first = t36 i_second = t37 i_rest = t38 ).
    t2 = t35.
    t1 = t2.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t39.
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA(t43) = CAST zif_lnt_statement_runnable( t1 ).
    IF t43 IS BOUND.
      CREATE OBJECT t42.
      t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t44 TYPE REF TO object.
      t44 = t43.
      t42->oval = t44.
    ENDIF.
    t41 = t42.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA t54 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t54.
    DATA t55 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t56.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t56 = zcl_lnt_version_module=>release_b8cd.
    DATA(t57) = |v750|.
    t55 = t56->get( p0 = t57 ).
    t54 = t55.
    IF t54 IS BOUND.
      CREATE OBJECT t53.
      t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t58 TYPE REF TO object.
      t58 = t54.
      t53->oval = t58.
    ENDIF.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA(t62) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d252_17c445ac4167 ).
    IF t62 IS BOUND.
      CREATE OBJECT t61.
      t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t61->cval = t62.
    ENDIF.
    t60 = zcl_lnt_st_combi_module=>plus_prio( i_first = t61 ).
    IF t60 IS BOUND.
      CREATE OBJECT t59.
      t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t63 TYPE REF TO object.
      t63 = t60.
      t59->oval = t63.
    ENDIF.
    DATA t64 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t64.
    DATA(t65) = abap_true.
    IF t65 = abap_true.
      DATA t66 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t66.
      DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t67.
      DATA(t68) = abap_true.
      IF t68 = abap_true.
        DATA(t69) = |OpenABAP|.
        DATA(t70) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t70->has = abap_true.
        t70->value = t69.
        t67 = t70.
      ELSE.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t71.
        t67 = t71.
      ENDIF.
      t66 = NEW zcl_lnt_iver_options( i_also = t67 ).
      t64 = t66.
    ELSE.
      DATA t72 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t72.
      t64 = t72.
    ENDIF.
    t52 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t53 i_first = t59 i_opts = t64 ).
    IF t52 IS BOUND.
      CREATE OBJECT t51.
      t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t73 TYPE REF TO object.
      t73 = t52.
      t51->oval = t73.
    ENDIF.
    t50 = t51.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA(t78) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d253_daaebfcb0814 ).
    IF t78 IS BOUND.
      CREATE OBJECT t77.
      t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t77->cval = t78.
    ENDIF.
    t76 = zcl_lnt_st_combi_module=>opt_prio( i_first = t77 ).
    IF t76 IS BOUND.
      CREATE OBJECT t75.
      t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t79 TYPE REF TO object.
      t79 = t76.
      t75->oval = t79.
    ENDIF.
    t74 = t75.
    DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t81.
    t80 = t81.
    DATA t82 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t83) = CAST zlnt_runtime_dyna_a429568d5be8( t50 ).
    DATA(t84) = CAST zlnt_runtime_dyna_a429568d5be8( t74 ).
    DATA(t85) = CAST zlnt_runtime_arra_c22708faf2e3( t80 ).
    t82 = zcl_lnt_st_combi_module=>seq( i_first = t83 i_second = t84 i_rest = t85 ).
    t49 = t82.
    IF t49 IS BOUND.
      CREATE OBJECT t48.
      t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t86 TYPE REF TO object.
      t86 = t49.
      t48->oval = t86.
    ENDIF.
    t47 = zcl_lnt_st_combi_module=>opt_prio( i_first = t48 ).
    IF t47 IS BOUND.
      CREATE OBJECT t46.
      t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t87 TYPE REF TO object.
      t87 = t47.
      t46->oval = t87.
    ENDIF.
    t45 = t46.
    DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t89.
    t88 = t89.
    DATA t90 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t91) = CAST zlnt_runtime_dyna_a429568d5be8( t41 ).
    DATA(t92) = CAST zlnt_runtime_dyna_a429568d5be8( t45 ).
    DATA(t93) = CAST zlnt_runtime_arra_c22708faf2e3( t88 ).
    t90 = zcl_lnt_st_combi_module=>seq( i_first = t91 i_second = t92 i_rest = t93 ).
    t40 = t90.
    t39 = t40.
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA t96 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t96.
    DATA t97 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t97.
    DATA t98 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t98.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t98 = zcl_lnt_version_module=>release_b8cd.
    DATA(t99) = |v750|.
    t97 = t98->get( p0 = t99 ).
    t96 = t97.
    IF t96 IS BOUND.
      CREATE OBJECT t95.
      t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t100 TYPE REF TO object.
      t100 = t96.
      t95->oval = t100.
    ENDIF.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA t102 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t105) = |(|.
    CREATE OBJECT t104.
    t104->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t104->sval = t105.
    t103 = t104.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA(t108) = CAST zif_lnt_statement_runnable( t39 ).
    IF t108 IS BOUND.
      CREATE OBJECT t107.
      t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t109 TYPE REF TO object.
      t109 = t108.
      t107->oval = t109.
    ENDIF.
    t106 = t107.
    DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t111.
    t110 = t111.
    DATA(t112) = CAST zlnt_runtime_arra_c22708faf2e3( t110 ).
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t114) = |)|.
    CREATE OBJECT t113.
    t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t113->sval = t114.
    APPEND t113 TO t112->items.
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t116) = CAST zlnt_runtime_dyna_a429568d5be8( t103 ).
    DATA(t117) = CAST zlnt_runtime_dyna_a429568d5be8( t106 ).
    DATA(t118) = CAST zlnt_runtime_arra_c22708faf2e3( t110 ).
    t115 = zcl_lnt_st_combi_module=>seq( i_first = t116 i_second = t117 i_rest = t118 ).
    t102 = t115.
    IF t102 IS BOUND.
      CREATE OBJECT t101.
      t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t119 TYPE REF TO object.
      t119 = t102.
      t101->oval = t119.
    ENDIF.
    DATA t120 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t120.
    DATA(t121) = abap_true.
    IF t121 = abap_true.
      DATA t122 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t122.
      DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t123.
      DATA(t124) = abap_true.
      IF t124 = abap_true.
        DATA(t125) = |OpenABAP|.
        DATA(t126) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t126->has = abap_true.
        t126->value = t125.
        t123 = t126.
      ELSE.
        DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t127.
        t123 = t127.
      ENDIF.
      t122 = NEW zcl_lnt_iver_options( i_also = t123 ).
      t120 = t122.
    ELSE.
      DATA t128 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t128.
      t120 = t128.
    ENDIF.
    t94 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t95 i_first = t101 i_opts = t120 ).
    result = t94.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d277_c16b515a2f49.
  ENDMETHOD.
ENDCLASS.
