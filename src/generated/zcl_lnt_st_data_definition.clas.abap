* TS: src/abap/2_statements/expressions/data_definition.ts:7:1 DataDefinition
CLASS zcl_lnt_st_data_definition DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_data_definition IMPLEMENTATION.
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
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = |READ-ONLY|.
    CREATE OBJECT t6.
    t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t6->sval = t7.
    t5 = t6.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA(t10) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d143_3ba838dd8924 ).
    IF t10 IS BOUND.
      CREATE OBJECT t9.
      t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t9->cval = t10.
    ENDIF.
    t8 = t9.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t12.
    t11 = t12.
    DATA(t13) = CAST zlnt_runtime_arra_c22708faf2e3( t11 ).
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA(t15) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d144_e73838d999aa ).
    IF t15 IS BOUND.
      CREATE OBJECT t14.
      t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t14->cval = t15.
    ENDIF.
    APPEND t14 TO t13->items.
    DATA(t16) = CAST zlnt_runtime_arra_c22708faf2e3( t11 ).
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA(t18) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d145_fbc450f30e9d ).
    IF t18 IS BOUND.
      CREATE OBJECT t17.
      t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t17->cval = t18.
    ENDIF.
    APPEND t17 TO t16->items.
    DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t11 ).
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA(t21) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d146_4e7b86c7b080 ).
    IF t21 IS BOUND.
      CREATE OBJECT t20.
      t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t20->cval = t21.
    ENDIF.
    APPEND t20 TO t19->items.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t23) = CAST zlnt_runtime_dyna_a429568d5be8( t5 ).
    DATA(t24) = CAST zlnt_runtime_dyna_a429568d5be8( t8 ).
    DATA(t25) = CAST zlnt_runtime_arra_c22708faf2e3( t11 ).
    t22 = zcl_lnt_st_combi_module=>per( i_first = t23 i_second = t24 i_rest = t25 ).
    t4 = t22.
    IF t4 IS BOUND.
      CREATE OBJECT t3.
      t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t26 TYPE REF TO object.
      t26 = t4.
      t3->oval = t26.
    ENDIF.
    t2 = zcl_lnt_st_combi_module=>opt( i_first = t3 ).
    t1 = t2.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t27.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA(t31) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396 ).
    IF t31 IS BOUND.
      CREATE OBJECT t30.
      t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t30->cval = t31.
    ENDIF.
    t29 = t30.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t36) = |READ-ONLY|.
    CREATE OBJECT t35.
    t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t35->sval = t36.
    t34 = zcl_lnt_st_combi_module=>opt_prio( i_first = t35 ).
    IF t34 IS BOUND.
      CREATE OBJECT t33.
      t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t37 TYPE REF TO object.
      t37 = t34.
      t33->oval = t37.
    ENDIF.
    t32 = t33.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t39.
    t38 = t39.
    DATA t40 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t41) = CAST zlnt_runtime_dyna_a429568d5be8( t29 ).
    DATA(t42) = CAST zlnt_runtime_dyna_a429568d5be8( t32 ).
    DATA(t43) = CAST zlnt_runtime_arra_c22708faf2e3( t38 ).
    t40 = zcl_lnt_st_combi_module=>seq( i_first = t41 i_second = t42 i_rest = t43 ).
    t28 = t40.
    t27 = t28.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t44.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t45.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    DATA t47 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t47.
    DATA t48 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t49.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t49 = zcl_lnt_version_module=>release_b8cd.
    DATA(t50) = |v702|.
    t48 = t49->get( p0 = t50 ).
    t47 = t48.
    IF t47 IS BOUND.
      CREATE OBJECT t46.
      t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t51 TYPE REF TO object.
      t51 = t47.
      t46->oval = t51.
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t53) = |BOXED|.
    CREATE OBJECT t52.
    t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t52->sval = t53.
    DATA t54 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t54.
    t45 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t46 i_first = t52 i_opts = t54 ).
    t44 = t45.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA(t58) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d148_212592b80f97 ).
    IF t58 IS BOUND.
      CREATE OBJECT t57.
      t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t57->cval = t58.
    ENDIF.
    t56 = t57.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    DATA(t63) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d139_249fe3e5ef12 ).
    IF t63 IS BOUND.
      CREATE OBJECT t62.
      t62->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t62->cval = t63.
    ENDIF.
    t61 = zcl_lnt_st_combi_module=>opt_prio( i_first = t62 ).
    IF t61 IS BOUND.
      CREATE OBJECT t60.
      t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t64 TYPE REF TO object.
      t64 = t61.
      t60->oval = t64.
    ENDIF.
    t59 = t60.
    DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t66.
    t65 = t66.
    DATA(t67) = CAST zlnt_runtime_arra_c22708faf2e3( t65 ).
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA t69 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t69.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA t74 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t74.
    DATA t75 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t76.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t76 = zcl_lnt_version_module=>release_b8cd.
    DATA(t77) = |v731|.
    t75 = t76->get( p0 = t77 ).
    t74 = t75.
    IF t74 IS BOUND.
      CREATE OBJECT t73.
      t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t78 TYPE REF TO object.
      t78 = t74.
      t73->oval = t78.
    ENDIF.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA(t80) = CAST zif_lnt_statement_runnable( zcl_lnt_lob_handle_type_module=>lob_handle_type(  ) ).
    IF t80 IS BOUND.
      CREATE OBJECT t79.
      t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t81 TYPE REF TO object.
      t81 = t80.
      t79->oval = t81.
    ENDIF.
    DATA t82 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t82.
    t72 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t73 i_first = t79 i_opts = t82 ).
    IF t72 IS BOUND.
      CREATE OBJECT t71.
      t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t83 TYPE REF TO object.
      t83 = t72.
      t71->oval = t83.
    ENDIF.
    t70 = t71.
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t84.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA(t89) = CAST zif_lnt_statement_runnable( t1 ).
    IF t89 IS BOUND.
      CREATE OBJECT t88.
      t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t90 TYPE REF TO object.
      t90 = t89.
      t88->oval = t90.
    ENDIF.
    t87 = t88.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA(t93) = CAST zif_lnt_statement_runnable( t27 ).
    IF t93 IS BOUND.
      CREATE OBJECT t92.
      t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t94 TYPE REF TO object.
      t94 = t93.
      t92->oval = t94.
    ENDIF.
    t91 = t92.
    DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t96.
    t95 = t96.
    DATA(t97) = CAST zlnt_runtime_arra_c22708faf2e3( t95 ).
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA(t99) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d149_69f1f4358f03 ).
    IF t99 IS BOUND.
      CREATE OBJECT t98.
      t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t98->cval = t99.
    ENDIF.
    APPEND t98 TO t97->items.
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t101) = CAST zlnt_runtime_dyna_a429568d5be8( t87 ).
    DATA(t102) = CAST zlnt_runtime_dyna_a429568d5be8( t91 ).
    DATA(t103) = CAST zlnt_runtime_arra_c22708faf2e3( t95 ).
    t100 = zcl_lnt_st_combi_module=>alt( i_first = t101 i_second = t102 i_rest = t103 ).
    t86 = t100.
    IF t86 IS BOUND.
      CREATE OBJECT t85.
      t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t104 TYPE REF TO object.
      t104 = t86.
      t85->oval = t104.
    ENDIF.
    t84 = t85.
    DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t106.
    t105 = t106.
    DATA t107 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t108) = CAST zlnt_runtime_dyna_a429568d5be8( t70 ).
    DATA(t109) = CAST zlnt_runtime_dyna_a429568d5be8( t84 ).
    DATA(t110) = CAST zlnt_runtime_arra_c22708faf2e3( t105 ).
    t107 = zcl_lnt_st_combi_module=>alt_prio( i_first = t108 i_second = t109 i_rest = t110 ).
    t69 = t107.
    IF t69 IS BOUND.
      CREATE OBJECT t68.
      t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t111 TYPE REF TO object.
      t111 = t69.
      t68->oval = t111.
    ENDIF.
    APPEND t68 TO t67->items.
    DATA(t112) = CAST zlnt_runtime_arra_c22708faf2e3( t65 ).
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA(t116) = CAST zif_lnt_statement_runnable( t44 ).
    IF t116 IS BOUND.
      CREATE OBJECT t115.
      t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t117 TYPE REF TO object.
      t117 = t116.
      t115->oval = t117.
    ENDIF.
    t114 = zcl_lnt_st_combi_module=>opt_prio( i_first = t115 ).
    IF t114 IS BOUND.
      CREATE OBJECT t113.
      t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t118 TYPE REF TO object.
      t118 = t114.
      t113->oval = t118.
    ENDIF.
    APPEND t113 TO t112->items.
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t120) = CAST zlnt_runtime_dyna_a429568d5be8( t56 ).
    DATA(t121) = CAST zlnt_runtime_dyna_a429568d5be8( t59 ).
    DATA(t122) = CAST zlnt_runtime_arra_c22708faf2e3( t65 ).
    t119 = zcl_lnt_st_combi_module=>seq( i_first = t120 i_second = t121 i_rest = t122 ).
    t55 = t119.
    result = t55.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d150_582536089a5b.
  ENDMETHOD.
ENDCLASS.
