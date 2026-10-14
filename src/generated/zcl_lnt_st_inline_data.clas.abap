* TS: src/abap/2_statements/expressions/inlinedata.ts:7:1 InlineData
CLASS zcl_lnt_st_inline_data DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_inline_data IMPLEMENTATION.
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
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d29_f2ed5131cb71b6 ).
    t5 = zcl_lnt_st_combi_module=>tok( i_t = t6 ).
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t7 TYPE REF TO object.
      t7 = t5.
      t4->oval = t7.
    ENDIF.
    t3 = t4.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t11) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44 ).
    t10 = zcl_lnt_st_combi_module=>tok( i_t = t11 ).
    IF t10 IS BOUND.
      CREATE OBJECT t9.
      t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t12 TYPE REF TO object.
      t12 = t10.
      t9->oval = t12.
    ENDIF.
    t8 = t9.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t14.
    t13 = t14.
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t16) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t17) = CAST zlnt_runtime_dyna_a429568d5be8( t8 ).
    DATA(t18) = CAST zlnt_runtime_arra_c22708faf2e3( t13 ).
    t15 = zcl_lnt_st_combi_module=>alt_prio( i_first = t16 i_second = t17 i_rest = t18 ).
    t2 = t15.
    t1 = t2.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t21) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d26_2fd73418f07736 ).
    t20 = zcl_lnt_st_combi_module=>tok( i_t = t21 ).
    t19 = t20.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t22.
    DATA t23 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t26) = |DATA|.
    CREATE OBJECT t25.
    t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t25->sval = t26.
    t24 = t25.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    DATA(t29) = CAST zif_lnt_statement_runnable( t19 ).
    IF t29 IS BOUND.
      CREATE OBJECT t28.
      t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t30 TYPE REF TO object.
      t30 = t29.
      t28->oval = t30.
    ENDIF.
    t27 = t28.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t32.
    t31 = t32.
    DATA(t33) = CAST zlnt_runtime_arra_c22708faf2e3( t31 ).
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    DATA(t35) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d196_75035ca40b78 ).
    IF t35 IS BOUND.
      CREATE OBJECT t34.
      t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t34->cval = t35.
    ENDIF.
    APPEND t34 TO t33->items.
    DATA(t36) = CAST zlnt_runtime_arra_c22708faf2e3( t31 ).
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    DATA(t38) = CAST zif_lnt_statement_runnable( t1 ).
    IF t38 IS BOUND.
      CREATE OBJECT t37.
      t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t39 TYPE REF TO object.
      t39 = t38.
      t37->oval = t39.
    ENDIF.
    APPEND t37 TO t36->items.
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t41) = CAST zlnt_runtime_dyna_a429568d5be8( t24 ).
    DATA(t42) = CAST zlnt_runtime_dyna_a429568d5be8( t27 ).
    DATA(t43) = CAST zlnt_runtime_arra_c22708faf2e3( t31 ).
    t40 = zcl_lnt_st_combi_module=>seq( i_first = t41 i_second = t42 i_rest = t43 ).
    t23 = t40.
    t22 = t23.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t44.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t48) = |FINAL|.
    CREATE OBJECT t47.
    t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t47->sval = t48.
    t46 = t47.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA(t51) = CAST zif_lnt_statement_runnable( t19 ).
    IF t51 IS BOUND.
      CREATE OBJECT t50.
      t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t52 TYPE REF TO object.
      t52 = t51.
      t50->oval = t52.
    ENDIF.
    t49 = t50.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t54.
    t53 = t54.
    DATA(t55) = CAST zlnt_runtime_arra_c22708faf2e3( t53 ).
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    DATA(t57) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d196_75035ca40b78 ).
    IF t57 IS BOUND.
      CREATE OBJECT t56.
      t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t56->cval = t57.
    ENDIF.
    APPEND t56 TO t55->items.
    DATA(t58) = CAST zlnt_runtime_arra_c22708faf2e3( t53 ).
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA(t60) = CAST zif_lnt_statement_runnable( t1 ).
    IF t60 IS BOUND.
      CREATE OBJECT t59.
      t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t61 TYPE REF TO object.
      t61 = t60.
      t59->oval = t61.
    ENDIF.
    APPEND t59 TO t58->items.
    DATA t62 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t63) = CAST zlnt_runtime_dyna_a429568d5be8( t46 ).
    DATA(t64) = CAST zlnt_runtime_dyna_a429568d5be8( t49 ).
    DATA(t65) = CAST zlnt_runtime_arra_c22708faf2e3( t53 ).
    t62 = zcl_lnt_st_combi_module=>seq( i_first = t63 i_second = t64 i_rest = t65 ).
    t45 = t62.
    t44 = t45.
    DATA t66 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA t69 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t69.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA t71 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t71.
    DATA t72 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t73.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t73 = zcl_lnt_version_module=>release_b8cd.
    DATA(t74) = |v740sp02|.
    t72 = t73->get( p0 = t74 ).
    t71 = t72.
    IF t71 IS BOUND.
      CREATE OBJECT t70.
      t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t75 TYPE REF TO object.
      t75 = t71.
      t70->oval = t75.
    ENDIF.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA(t77) = CAST zif_lnt_statement_runnable( t22 ).
    IF t77 IS BOUND.
      CREATE OBJECT t76.
      t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t78 TYPE REF TO object.
      t78 = t77.
      t76->oval = t78.
    ENDIF.
    DATA t79 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t79.
    DATA(t80) = abap_true.
    IF t80 = abap_true.
      DATA t81 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t81.
      DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t82.
      DATA(t83) = abap_true.
      IF t83 = abap_true.
        DATA(t84) = |OpenABAP|.
        DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t85->has = abap_true.
        t85->value = t84.
        t82 = t85.
      ELSE.
        DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t86.
        t82 = t86.
      ENDIF.
      t81 = NEW zcl_lnt_iver_options( i_also = t82 ).
      t79 = t81.
    ELSE.
      DATA t87 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t87.
      t79 = t87.
    ENDIF.
    t69 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t70 i_first = t76 i_opts = t79 ).
    IF t69 IS BOUND.
      CREATE OBJECT t68.
      t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t88 TYPE REF TO object.
      t88 = t69.
      t68->oval = t88.
    ENDIF.
    t67 = t68.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t89.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA t93 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t93.
    DATA t94 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t95.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t95 = zcl_lnt_version_module=>release_b8cd.
    DATA(t96) = |v757|.
    t94 = t95->get( p0 = t96 ).
    t93 = t94.
    IF t93 IS BOUND.
      CREATE OBJECT t92.
      t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t97 TYPE REF TO object.
      t97 = t93.
      t92->oval = t97.
    ENDIF.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA(t99) = CAST zif_lnt_statement_runnable( t44 ).
    IF t99 IS BOUND.
      CREATE OBJECT t98.
      t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t100 TYPE REF TO object.
      t100 = t99.
      t98->oval = t100.
    ENDIF.
    DATA t101 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t101.
    DATA(t102) = abap_true.
    IF t102 = abap_true.
      DATA t103 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t103.
      DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t104.
      DATA(t105) = abap_true.
      IF t105 = abap_true.
        DATA(t106) = |OpenABAP|.
        DATA(t107) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t107->has = abap_true.
        t107->value = t106.
        t104 = t107.
      ELSE.
        DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t108.
        t104 = t108.
      ENDIF.
      t103 = NEW zcl_lnt_iver_options( i_also = t104 ).
      t101 = t103.
    ELSE.
      DATA t109 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t109.
      t101 = t109.
    ENDIF.
    t91 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t92 i_first = t98 i_opts = t101 ).
    IF t91 IS BOUND.
      CREATE OBJECT t90.
      t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t110 TYPE REF TO object.
      t110 = t91.
      t90->oval = t110.
    ENDIF.
    t89 = t90.
    DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t112.
    t111 = t112.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t114) = CAST zlnt_runtime_dyna_a429568d5be8( t67 ).
    DATA(t115) = CAST zlnt_runtime_dyna_a429568d5be8( t89 ).
    DATA(t116) = CAST zlnt_runtime_arra_c22708faf2e3( t111 ).
    t113 = zcl_lnt_st_combi_module=>alt_prio( i_first = t114 i_second = t115 i_rest = t116 ).
    t66 = t113.
    result = t66.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a.
  ENDMETHOD.
ENDCLASS.
