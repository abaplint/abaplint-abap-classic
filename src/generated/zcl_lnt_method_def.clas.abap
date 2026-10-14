* TS: src/abap/2_statements/statements/method_def.ts:9:1 MethodDef
CLASS zcl_lnt_method_def DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_method_def IMPLEMENTATION.
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
    DATA(t7) = |v740sp08|.
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
    DATA(t13) = |DEFAULT|.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = t13.
    t11 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = |FAIL|.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = |IGNORE|.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = t22.
    t20 = t21.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    t23 = t24.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t26) = CAST zlnt_runtime_dyna_a429568d5be8( t17 ).
    DATA(t27) = CAST zlnt_runtime_dyna_a429568d5be8( t20 ).
    DATA(t28) = CAST zlnt_runtime_arra_c22708faf2e3( t23 ).
    t25 = zcl_lnt_st_combi_module=>alt_prio( i_first = t26 i_second = t27 i_rest = t28 ).
    t16 = t25.
    IF t16 IS BOUND.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t29 TYPE REF TO object.
      t29 = t16.
      t15->oval = t29.
    ENDIF.
    t14 = t15.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t31.
    t30 = t31.
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t33) = CAST zlnt_runtime_dyna_a429568d5be8( t11 ).
    DATA(t34) = CAST zlnt_runtime_dyna_a429568d5be8( t14 ).
    DATA(t35) = CAST zlnt_runtime_arra_c22708faf2e3( t30 ).
    t32 = zcl_lnt_st_combi_module=>seq( i_first = t33 i_second = t34 i_rest = t35 ).
    t10 = t32.
    IF t10 IS BOUND.
      CREATE OBJECT t9.
      t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t36 TYPE REF TO object.
      t36 = t10.
      t9->oval = t36.
    ENDIF.
    DATA t37 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t37.
    DATA(t38) = abap_true.
    IF t38 = abap_true.
      DATA t39 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t39.
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t40.
      DATA(t41) = abap_true.
      IF t41 = abap_true.
        DATA(t42) = |OpenABAP|.
        DATA(t43) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t43->has = abap_true.
        t43->value = t42.
        t40 = t43.
      ELSE.
        DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t44.
        t40 = t44.
      ENDIF.
      t39 = NEW zcl_lnt_iver_options( i_also = t40 ).
      t37 = t39.
    ELSE.
      DATA t45 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t45.
      t37 = t45.
    ENDIF.
    t2 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t3 i_first = t9 i_opts = t37 ).
    t1 = t2.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t46.
    DATA t47 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t55) = |FINAL|.
    CREATE OBJECT t54.
    t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t54->sval = t55.
    t53 = t54.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA(t58) = CAST zif_lnt_statement_runnable( t1 ).
    IF t58 IS BOUND.
      CREATE OBJECT t57.
      t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t59 TYPE REF TO object.
      t59 = t58.
      t57->oval = t59.
    ENDIF.
    t56 = t57.
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t61.
    t60 = t61.
    DATA(t62) = CAST zlnt_runtime_arra_c22708faf2e3( t60 ).
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA(t64) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d85_7546e7dce3c106 ).
    IF t64 IS BOUND.
      CREATE OBJECT t63.
      t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t63->cval = t64.
    ENDIF.
    APPEND t63 TO t62->items.
    DATA t65 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t66) = CAST zlnt_runtime_dyna_a429568d5be8( t53 ).
    DATA(t67) = CAST zlnt_runtime_dyna_a429568d5be8( t56 ).
    DATA(t68) = CAST zlnt_runtime_arra_c22708faf2e3( t60 ).
    t65 = zcl_lnt_st_combi_module=>alt_prio( i_first = t66 i_second = t67 i_rest = t68 ).
    t52 = t65.
    IF t52 IS BOUND.
      CREATE OBJECT t51.
      t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t69 TYPE REF TO object.
      t69 = t52.
      t51->oval = t69.
    ENDIF.
    t50 = zcl_lnt_st_combi_module=>opt_prio( i_first = t51 ).
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t70 TYPE REF TO object.
      t70 = t50.
      t49->oval = t70.
    ENDIF.
    t48 = t49.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA t73 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA(t75) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d226_08d3e6bb8e97 ).
    IF t75 IS BOUND.
      CREATE OBJECT t74.
      t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t74->cval = t75.
    ENDIF.
    t73 = zcl_lnt_st_combi_module=>opt_prio( i_first = t74 ).
    IF t73 IS BOUND.
      CREATE OBJECT t72.
      t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t76 TYPE REF TO object.
      t76 = t73.
      t72->oval = t76.
    ENDIF.
    t71 = t72.
    DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t78.
    t77 = t78.
    DATA(t79) = CAST zlnt_runtime_arra_c22708faf2e3( t77 ).
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    DATA t81 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t81.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA(t83) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a ).
    IF t83 IS BOUND.
      CREATE OBJECT t82.
      t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t82->cval = t83.
    ENDIF.
    t81 = zcl_lnt_st_combi_module=>opt_prio( i_first = t82 ).
    IF t81 IS BOUND.
      CREATE OBJECT t80.
      t80->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t84 TYPE REF TO object.
      t84 = t81.
      t80->oval = t84.
    ENDIF.
    APPEND t80 TO t79->items.
    DATA(t85) = CAST zlnt_runtime_arra_c22708faf2e3( t77 ).
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA(t89) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d221_0c54ed92df99 ).
    IF t89 IS BOUND.
      CREATE OBJECT t88.
      t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t88->cval = t89.
    ENDIF.
    t87 = zcl_lnt_st_combi_module=>opt_prio( i_first = t88 ).
    IF t87 IS BOUND.
      CREATE OBJECT t86.
      t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t90 TYPE REF TO object.
      t90 = t87.
      t86->oval = t90.
    ENDIF.
    APPEND t86 TO t85->items.
    DATA(t91) = CAST zlnt_runtime_arra_c22708faf2e3( t77 ).
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t93.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA(t95) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d229_3a5c1215c384 ).
    IF t95 IS BOUND.
      CREATE OBJECT t94.
      t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t94->cval = t95.
    ENDIF.
    t93 = zcl_lnt_st_combi_module=>opt_prio( i_first = t94 ).
    IF t93 IS BOUND.
      CREATE OBJECT t92.
      t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t96 TYPE REF TO object.
      t96 = t93.
      t92->oval = t96.
    ENDIF.
    APPEND t92 TO t91->items.
    DATA(t97) = CAST zlnt_runtime_arra_c22708faf2e3( t77 ).
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA(t104) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d227_3477e061b4c4 ).
    IF t104 IS BOUND.
      CREATE OBJECT t103.
      t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t103->cval = t104.
    ENDIF.
    t102 = t103.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA t107 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t107.
    DATA(t108) = |KeyUser|.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA(t110) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d223_6da5f452a761 ).
    IF t110 IS BOUND.
      CREATE OBJECT t109.
      t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t109->cval = t110.
    ENDIF.
    t107 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t108 i_first = t109 ).
    IF t107 IS BOUND.
      CREATE OBJECT t106.
      t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t111 TYPE REF TO object.
      t111 = t107.
      t106->oval = t111.
    ENDIF.
    t105 = t106.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t113.
    t112 = t113.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t115) = CAST zlnt_runtime_dyna_a429568d5be8( t102 ).
    DATA(t116) = CAST zlnt_runtime_dyna_a429568d5be8( t105 ).
    DATA(t117) = CAST zlnt_runtime_arra_c22708faf2e3( t112 ).
    t114 = zcl_lnt_st_combi_module=>alt_prio( i_first = t115 i_second = t116 i_rest = t117 ).
    t101 = t114.
    IF t101 IS BOUND.
      CREATE OBJECT t100.
      t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t118 TYPE REF TO object.
      t118 = t101.
      t100->oval = t118.
    ENDIF.
    t99 = zcl_lnt_st_combi_module=>opt_prio( i_first = t100 ).
    IF t99 IS BOUND.
      CREATE OBJECT t98.
      t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t119 TYPE REF TO object.
      t119 = t99.
      t98->oval = t119.
    ENDIF.
    APPEND t98 TO t97->items.
    DATA t120 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t121) = CAST zlnt_runtime_dyna_a429568d5be8( t48 ).
    DATA(t122) = CAST zlnt_runtime_dyna_a429568d5be8( t71 ).
    DATA(t123) = CAST zlnt_runtime_arra_c22708faf2e3( t77 ).
    t120 = zcl_lnt_st_combi_module=>seq( i_first = t121 i_second = t122 i_rest = t123 ).
    t47 = t120.
    t46 = t47.
    DATA t124 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t124.
    DATA t125 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t125.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t127.
    DATA t128 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t128.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t129.
    DATA(t130) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d85_7546e7dce3c106 ).
    IF t130 IS BOUND.
      CREATE OBJECT t129.
      t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t129->cval = t130.
    ENDIF.
    t128 = zcl_lnt_st_combi_module=>opt_prio( i_first = t129 ).
    IF t128 IS BOUND.
      CREATE OBJECT t127.
      t127->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t131 TYPE REF TO object.
      t131 = t128.
      t127->oval = t131.
    ENDIF.
    t126 = t127.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t134) = |FOR TESTING|.
    CREATE OBJECT t133.
    t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t133->sval = t134.
    t132 = t133.
    DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t136 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t136.
    t135 = t136.
    DATA(t137) = CAST zlnt_runtime_arra_c22708faf2e3( t135 ).
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    DATA t139 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t139.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t140.
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t141.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    DATA(t144) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d227_3477e061b4c4 ).
    IF t144 IS BOUND.
      CREATE OBJECT t143.
      t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t143->cval = t144.
    ENDIF.
    t142 = t143.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t145.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA t147 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t147.
    DATA(t148) = |KeyUser|.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    DATA(t150) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d223_6da5f452a761 ).
    IF t150 IS BOUND.
      CREATE OBJECT t149.
      t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t149->cval = t150.
    ENDIF.
    t147 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t148 i_first = t149 ).
    IF t147 IS BOUND.
      CREATE OBJECT t146.
      t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t151 TYPE REF TO object.
      t151 = t147.
      t146->oval = t151.
    ENDIF.
    t145 = t146.
    DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t153.
    t152 = t153.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t155) = CAST zlnt_runtime_dyna_a429568d5be8( t142 ).
    DATA(t156) = CAST zlnt_runtime_dyna_a429568d5be8( t145 ).
    DATA(t157) = CAST zlnt_runtime_arra_c22708faf2e3( t152 ).
    t154 = zcl_lnt_st_combi_module=>alt_prio( i_first = t155 i_second = t156 i_rest = t157 ).
    t141 = t154.
    IF t141 IS BOUND.
      CREATE OBJECT t140.
      t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t158 TYPE REF TO object.
      t158 = t141.
      t140->oval = t158.
    ENDIF.
    t139 = zcl_lnt_st_combi_module=>opt_prio( i_first = t140 ).
    IF t139 IS BOUND.
      CREATE OBJECT t138.
      t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t159 TYPE REF TO object.
      t159 = t139.
      t138->oval = t159.
    ENDIF.
    APPEND t138 TO t137->items.
    DATA t160 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t161) = CAST zlnt_runtime_dyna_a429568d5be8( t126 ).
    DATA(t162) = CAST zlnt_runtime_dyna_a429568d5be8( t132 ).
    DATA(t163) = CAST zlnt_runtime_arra_c22708faf2e3( t135 ).
    t160 = zcl_lnt_st_combi_module=>seq( i_first = t161 i_second = t162 i_rest = t163 ).
    t125 = t160.
    t124 = t125.
    DATA t164 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t164.
    DATA t165 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t165.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t168) = |RESULT|.
    CREATE OBJECT t167.
    t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t167->sval = t168.
    t166 = t167.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t169.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t170.
    DATA(t171) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835 ).
    IF t171 IS BOUND.
      CREATE OBJECT t170.
      t170->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t170->cval = t171.
    ENDIF.
    t169 = t170.
    DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t173.
    t172 = t173.
    DATA t174 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t175) = CAST zlnt_runtime_dyna_a429568d5be8( t166 ).
    DATA(t176) = CAST zlnt_runtime_dyna_a429568d5be8( t169 ).
    DATA(t177) = CAST zlnt_runtime_arra_c22708faf2e3( t172 ).
    t174 = zcl_lnt_st_combi_module=>seq( i_first = t175 i_second = t176 i_rest = t177 ).
    t165 = t174.
    t164 = t165.
    DATA t178 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t178.
    DATA t179 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t179.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t182) = |LINK|.
    CREATE OBJECT t181.
    t181->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t181->sval = t182.
    t180 = t181.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t184.
    DATA(t185) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835 ).
    IF t185 IS BOUND.
      CREATE OBJECT t184.
      t184->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t184->cval = t185.
    ENDIF.
    t183 = t184.
    DATA t186 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t187.
    t186 = t187.
    DATA t188 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t189) = CAST zlnt_runtime_dyna_a429568d5be8( t180 ).
    DATA(t190) = CAST zlnt_runtime_dyna_a429568d5be8( t183 ).
    DATA(t191) = CAST zlnt_runtime_arra_c22708faf2e3( t186 ).
    t188 = zcl_lnt_st_combi_module=>seq( i_first = t189 i_second = t190 i_rest = t191 ).
    t179 = t188.
    t178 = t179.
    DATA t192 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t192.
    DATA t193 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t193.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t196) = |FULL|.
    CREATE OBJECT t195.
    t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t195->sval = t196.
    t194 = t195.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t197.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t198.
    DATA(t199) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835 ).
    IF t199 IS BOUND.
      CREATE OBJECT t198.
      t198->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t198->cval = t199.
    ENDIF.
    t197 = t198.
    DATA t200 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t201 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t201.
    t200 = t201.
    DATA t202 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t203) = CAST zlnt_runtime_dyna_a429568d5be8( t194 ).
    DATA(t204) = CAST zlnt_runtime_dyna_a429568d5be8( t197 ).
    DATA(t205) = CAST zlnt_runtime_arra_c22708faf2e3( t200 ).
    t202 = zcl_lnt_st_combi_module=>seq( i_first = t203 i_second = t204 i_rest = t205 ).
    t193 = t202.
    t192 = t193.
    DATA t206 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t206.
    DATA t207 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t207.
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t208.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t209.
    DATA t210 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t210.
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t213) = |FOR ACTION|.
    CREATE OBJECT t212.
    t212->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t212->sval = t213.
    t211 = t212.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t214.
    DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t215.
    DATA(t216) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t216 IS BOUND.
      CREATE OBJECT t215.
      t215->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t215->cval = t216.
    ENDIF.
    t214 = t215.
    DATA t217 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t218 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t218.
    t217 = t218.
    DATA(t219) = CAST zlnt_runtime_arra_c22708faf2e3( t217 ).
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t220.
    DATA t221 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t221.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t222.
    DATA(t223) = CAST zif_lnt_statement_runnable( t164 ).
    IF t223 IS BOUND.
      CREATE OBJECT t222.
      t222->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t224 TYPE REF TO object.
      t224 = t223.
      t222->oval = t224.
    ENDIF.
    t221 = zcl_lnt_st_combi_module=>opt_prio( i_first = t222 ).
    IF t221 IS BOUND.
      CREATE OBJECT t220.
      t220->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t225 TYPE REF TO object.
      t225 = t221.
      t220->oval = t225.
    ENDIF.
    APPEND t220 TO t219->items.
    DATA t226 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t227) = CAST zlnt_runtime_dyna_a429568d5be8( t211 ).
    DATA(t228) = CAST zlnt_runtime_dyna_a429568d5be8( t214 ).
    DATA(t229) = CAST zlnt_runtime_arra_c22708faf2e3( t217 ).
    t226 = zcl_lnt_st_combi_module=>seq( i_first = t227 i_second = t228 i_rest = t229 ).
    t210 = t226.
    IF t210 IS BOUND.
      CREATE OBJECT t209.
      t209->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t230 TYPE REF TO object.
      t230 = t210.
      t209->oval = t230.
    ENDIF.
    t208 = t209.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t231.
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t232.
    DATA t233 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t233.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t236) = |FOR CREATE|.
    CREATE OBJECT t235.
    t235->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t235->sval = t236.
    t234 = t235.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t237.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t238.
    DATA t239 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t239.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t240.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t241.
    DATA(t242) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t242 IS BOUND.
      CREATE OBJECT t241.
      t241->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t241->cval = t242.
    ENDIF.
    t240 = t241.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t243.
    DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t244.
    DATA(t245) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f ).
    IF t245 IS BOUND.
      CREATE OBJECT t244.
      t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t244->cval = t245.
    ENDIF.
    t243 = t244.
    DATA t246 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t247 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t247.
    t246 = t247.
    DATA t248 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t249) = CAST zlnt_runtime_dyna_a429568d5be8( t240 ).
    DATA(t250) = CAST zlnt_runtime_dyna_a429568d5be8( t243 ).
    DATA(t251) = CAST zlnt_runtime_arra_c22708faf2e3( t246 ).
    t248 = zcl_lnt_st_combi_module=>alt( i_first = t249 i_second = t250 i_rest = t251 ).
    t239 = t248.
    IF t239 IS BOUND.
      CREATE OBJECT t238.
      t238->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t252 TYPE REF TO object.
      t252 = t239.
      t238->oval = t252.
    ENDIF.
    t237 = t238.
    DATA t253 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t254 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t254.
    t253 = t254.
    DATA t255 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t256) = CAST zlnt_runtime_dyna_a429568d5be8( t234 ).
    DATA(t257) = CAST zlnt_runtime_dyna_a429568d5be8( t237 ).
    DATA(t258) = CAST zlnt_runtime_arra_c22708faf2e3( t253 ).
    t255 = zcl_lnt_st_combi_module=>seq( i_first = t256 i_second = t257 i_rest = t258 ).
    t233 = t255.
    IF t233 IS BOUND.
      CREATE OBJECT t232.
      t232->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t259 TYPE REF TO object.
      t259 = t233.
      t232->oval = t259.
    ENDIF.
    t231 = t232.
    DATA t260 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t261 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t261.
    t260 = t261.
    DATA(t262) = CAST zlnt_runtime_arra_c22708faf2e3( t260 ).
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t263.
    DATA t264 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t264.
    DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t267) = |FOR DELETE|.
    CREATE OBJECT t266.
    t266->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t266->sval = t267.
    t265 = t266.
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t268.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t269.
    DATA(t270) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t270 IS BOUND.
      CREATE OBJECT t269.
      t269->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t269->cval = t270.
    ENDIF.
    t268 = t269.
    DATA t271 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t272 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t272.
    t271 = t272.
    DATA t273 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t274) = CAST zlnt_runtime_dyna_a429568d5be8( t265 ).
    DATA(t275) = CAST zlnt_runtime_dyna_a429568d5be8( t268 ).
    DATA(t276) = CAST zlnt_runtime_arra_c22708faf2e3( t271 ).
    t273 = zcl_lnt_st_combi_module=>seq( i_first = t274 i_second = t275 i_rest = t276 ).
    t264 = t273.
    IF t264 IS BOUND.
      CREATE OBJECT t263.
      t263->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t277 TYPE REF TO object.
      t277 = t264.
      t263->oval = t277.
    ENDIF.
    APPEND t263 TO t262->items.
    DATA(t278) = CAST zlnt_runtime_arra_c22708faf2e3( t260 ).
    DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t279.
    DATA t280 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t280.
    DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t283) = |FOR UPDATE|.
    CREATE OBJECT t282.
    t282->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t282->sval = t283.
    t281 = t282.
    DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t284.
    DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t285.
    DATA(t286) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t286 IS BOUND.
      CREATE OBJECT t285.
      t285->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t285->cval = t286.
    ENDIF.
    t284 = t285.
    DATA t287 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t288 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t288.
    t287 = t288.
    DATA t289 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t290) = CAST zlnt_runtime_dyna_a429568d5be8( t281 ).
    DATA(t291) = CAST zlnt_runtime_dyna_a429568d5be8( t284 ).
    DATA(t292) = CAST zlnt_runtime_arra_c22708faf2e3( t287 ).
    t289 = zcl_lnt_st_combi_module=>seq( i_first = t290 i_second = t291 i_rest = t292 ).
    t280 = t289.
    IF t280 IS BOUND.
      CREATE OBJECT t279.
      t279->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t293 TYPE REF TO object.
      t293 = t280.
      t279->oval = t293.
    ENDIF.
    APPEND t279 TO t278->items.
    DATA t294 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t295) = CAST zlnt_runtime_dyna_a429568d5be8( t208 ).
    DATA(t296) = CAST zlnt_runtime_dyna_a429568d5be8( t231 ).
    DATA(t297) = CAST zlnt_runtime_arra_c22708faf2e3( t260 ).
    t294 = zcl_lnt_st_combi_module=>alt( i_first = t295 i_second = t296 i_rest = t297 ).
    t207 = t294.
    t206 = t207.
    DATA t298 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t298.
    DATA t299 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t299.
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t302) = |FOR READ|.
    CREATE OBJECT t301.
    t301->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t301->sval = t302.
    t300 = t301.
    DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t303.
    DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t304.
    DATA t305 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t305.
    DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t306.
    DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t307.
    DATA(t308) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t308 IS BOUND.
      CREATE OBJECT t307.
      t307->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t307->cval = t308.
    ENDIF.
    t306 = t307.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t309.
    DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t310.
    DATA(t311) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f ).
    IF t311 IS BOUND.
      CREATE OBJECT t310.
      t310->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t310->cval = t311.
    ENDIF.
    t309 = t310.
    DATA t312 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t313 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t313.
    t312 = t313.
    DATA t314 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t315) = CAST zlnt_runtime_dyna_a429568d5be8( t306 ).
    DATA(t316) = CAST zlnt_runtime_dyna_a429568d5be8( t309 ).
    DATA(t317) = CAST zlnt_runtime_arra_c22708faf2e3( t312 ).
    t314 = zcl_lnt_st_combi_module=>alt( i_first = t315 i_second = t316 i_rest = t317 ).
    t305 = t314.
    IF t305 IS BOUND.
      CREATE OBJECT t304.
      t304->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t318 TYPE REF TO object.
      t318 = t305.
      t304->oval = t318.
    ENDIF.
    t303 = t304.
    DATA t319 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t320 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t320.
    t319 = t320.
    DATA(t321) = CAST zlnt_runtime_arra_c22708faf2e3( t319 ).
    DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t322.
    DATA t323 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t323.
    DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t324.
    DATA(t325) = CAST zif_lnt_statement_runnable( t192 ).
    IF t325 IS BOUND.
      CREATE OBJECT t324.
      t324->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t326 TYPE REF TO object.
      t326 = t325.
      t324->oval = t326.
    ENDIF.
    t323 = zcl_lnt_st_combi_module=>opt_prio( i_first = t324 ).
    IF t323 IS BOUND.
      CREATE OBJECT t322.
      t322->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t327 TYPE REF TO object.
      t327 = t323.
      t322->oval = t327.
    ENDIF.
    APPEND t322 TO t321->items.
    DATA(t328) = CAST zlnt_runtime_arra_c22708faf2e3( t319 ).
    DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t329.
    DATA(t330) = CAST zif_lnt_statement_runnable( t164 ).
    IF t330 IS BOUND.
      CREATE OBJECT t329.
      t329->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t331 TYPE REF TO object.
      t331 = t330.
      t329->oval = t331.
    ENDIF.
    APPEND t329 TO t328->items.
    DATA(t332) = CAST zlnt_runtime_arra_c22708faf2e3( t319 ).
    DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t333.
    DATA t334 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t334.
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t335.
    DATA(t336) = CAST zif_lnt_statement_runnable( t178 ).
    IF t336 IS BOUND.
      CREATE OBJECT t335.
      t335->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t337 TYPE REF TO object.
      t337 = t336.
      t335->oval = t337.
    ENDIF.
    t334 = zcl_lnt_st_combi_module=>opt_prio( i_first = t335 ).
    IF t334 IS BOUND.
      CREATE OBJECT t333.
      t333->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t338 TYPE REF TO object.
      t338 = t334.
      t333->oval = t338.
    ENDIF.
    APPEND t333 TO t332->items.
    DATA t339 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t340) = CAST zlnt_runtime_dyna_a429568d5be8( t300 ).
    DATA(t341) = CAST zlnt_runtime_dyna_a429568d5be8( t303 ).
    DATA(t342) = CAST zlnt_runtime_arra_c22708faf2e3( t319 ).
    t339 = zcl_lnt_st_combi_module=>seq( i_first = t340 i_second = t341 i_rest = t342 ).
    t299 = t339.
    t298 = t299.
    DATA t343 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t343.
    DATA t344 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t344.
    DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t347) = |FOR FUNCTION|.
    CREATE OBJECT t346.
    t346->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t346->sval = t347.
    t345 = t346.
    DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t348.
    DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t349.
    DATA(t350) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t350 IS BOUND.
      CREATE OBJECT t349.
      t349->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t349->cval = t350.
    ENDIF.
    t348 = t349.
    DATA t351 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t352 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t352.
    t351 = t352.
    DATA(t353) = CAST zlnt_runtime_arra_c22708faf2e3( t351 ).
    DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t354.
    DATA(t355) = CAST zif_lnt_statement_runnable( t164 ).
    IF t355 IS BOUND.
      CREATE OBJECT t354.
      t354->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t356 TYPE REF TO object.
      t356 = t355.
      t354->oval = t356.
    ENDIF.
    APPEND t354 TO t353->items.
    DATA t357 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t358) = CAST zlnt_runtime_dyna_a429568d5be8( t345 ).
    DATA(t359) = CAST zlnt_runtime_dyna_a429568d5be8( t348 ).
    DATA(t360) = CAST zlnt_runtime_arra_c22708faf2e3( t351 ).
    t357 = zcl_lnt_st_combi_module=>seq( i_first = t358 i_second = t359 i_rest = t360 ).
    t344 = t357.
    t343 = t344.
    DATA t361 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t361.
    DATA t362 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t362.
    DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t365) = |REFERENCE|.
    CREATE OBJECT t364.
    t364->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t364->sval = t365.
    t363 = t364.
    DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t366.
    DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t367.
    DATA t368 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t369) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d26_2fd73418f07736 ).
    t368 = zcl_lnt_st_combi_module=>tok( i_t = t369 ).
    IF t368 IS BOUND.
      CREATE OBJECT t367.
      t367->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t370 TYPE REF TO object.
      t370 = t368.
      t367->oval = t370.
    ENDIF.
    t366 = t367.
    DATA t371 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t372 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t372.
    t371 = t372.
    DATA(t373) = CAST zlnt_runtime_arra_c22708faf2e3( t371 ).
    DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t374.
    DATA(t375) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835 ).
    IF t375 IS BOUND.
      CREATE OBJECT t374.
      t374->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t374->cval = t375.
    ENDIF.
    APPEND t374 TO t373->items.
    DATA(t376) = CAST zlnt_runtime_arra_c22708faf2e3( t371 ).
    DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t377.
    DATA t378 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t379) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d29_f2ed5131cb71b6 ).
    t378 = zcl_lnt_st_combi_module=>tok( i_t = t379 ).
    IF t378 IS BOUND.
      CREATE OBJECT t377.
      t377->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t380 TYPE REF TO object.
      t380 = t378.
      t377->oval = t380.
    ENDIF.
    APPEND t377 TO t376->items.
    DATA t381 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t382) = CAST zlnt_runtime_dyna_a429568d5be8( t363 ).
    DATA(t383) = CAST zlnt_runtime_dyna_a429568d5be8( t366 ).
    DATA(t384) = CAST zlnt_runtime_arra_c22708faf2e3( t371 ).
    t381 = zcl_lnt_st_combi_module=>seq( i_first = t382 i_second = t383 i_rest = t384 ).
    t362 = t381.
    t361 = t362.
    DATA t385 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t385.
    DATA t386 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t386.
    DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t387.
    DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t388.
    DATA t389 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t389.
    DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t390.
    DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t391.
    DATA(t392) = CAST zif_lnt_statement_runnable( t361 ).
    IF t392 IS BOUND.
      CREATE OBJECT t391.
      t391->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t393 TYPE REF TO object.
      t393 = t392.
      t391->oval = t393.
    ENDIF.
    t390 = t391.
    DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t394.
    DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t395.
    DATA(t396) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835 ).
    IF t396 IS BOUND.
      CREATE OBJECT t395.
      t395->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t395->cval = t396.
    ENDIF.
    t394 = t395.
    DATA t397 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t398 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t398.
    t397 = t398.
    DATA t399 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t400) = CAST zlnt_runtime_dyna_a429568d5be8( t390 ).
    DATA(t401) = CAST zlnt_runtime_dyna_a429568d5be8( t394 ).
    DATA(t402) = CAST zlnt_runtime_arra_c22708faf2e3( t397 ).
    t399 = zcl_lnt_st_combi_module=>alt_prio( i_first = t400 i_second = t401 i_rest = t402 ).
    t389 = t399.
    IF t389 IS BOUND.
      CREATE OBJECT t388.
      t388->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t403 TYPE REF TO object.
      t403 = t389.
      t388->oval = t403.
    ENDIF.
    t387 = t388.
    DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t406) = |FOR|.
    CREATE OBJECT t405.
    t405->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t405->sval = t406.
    t404 = t405.
    DATA t407 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t408 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t408.
    t407 = t408.
    DATA(t409) = CAST zlnt_runtime_arra_c22708faf2e3( t407 ).
    DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t410.
    DATA(t411) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t411 IS BOUND.
      CREATE OBJECT t410.
      t410->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t410->cval = t411.
    ENDIF.
    APPEND t410 TO t409->items.
    DATA t412 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t413) = CAST zlnt_runtime_dyna_a429568d5be8( t387 ).
    DATA(t414) = CAST zlnt_runtime_dyna_a429568d5be8( t404 ).
    DATA(t415) = CAST zlnt_runtime_arra_c22708faf2e3( t407 ).
    t412 = zcl_lnt_st_combi_module=>seq( i_first = t413 i_second = t414 i_rest = t415 ).
    t386 = t412.
    t385 = t386.
    DATA t416 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t416.
    DATA t417 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t417.
    DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t418.
    DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t419.
    DATA t420 TYPE REF TO zif_lnt_statement_runnable.
    DATA t421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t422) = |FINAL|.
    CREATE OBJECT t421.
    t421->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t421->sval = t422.
    t420 = zcl_lnt_st_combi_module=>opt_prio( i_first = t421 ).
    IF t420 IS BOUND.
      CREATE OBJECT t419.
      t419->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t423 TYPE REF TO object.
      t423 = t420.
      t419->oval = t423.
    ENDIF.
    t418 = t419.
    DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t426) = |FOR ENTITY EVENT|.
    CREATE OBJECT t425.
    t425->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t425->sval = t426.
    t424 = t425.
    DATA t427 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t428 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t428.
    t427 = t428.
    DATA(t429) = CAST zlnt_runtime_arra_c22708faf2e3( t427 ).
    DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t430.
    DATA t431 TYPE REF TO zif_lnt_statement_runnable.
    DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t433) = |IMPORTING|.
    CREATE OBJECT t432.
    t432->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t432->sval = t433.
    t431 = zcl_lnt_st_combi_module=>opt_prio( i_first = t432 ).
    IF t431 IS BOUND.
      CREATE OBJECT t430.
      t430->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t434 TYPE REF TO object.
      t434 = t431.
      t430->oval = t434.
    ENDIF.
    APPEND t430 TO t429->items.
    DATA(t435) = CAST zlnt_runtime_arra_c22708faf2e3( t427 ).
    DATA t436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t436.
    DATA t437 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t437.
    DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t438.
    DATA(t439) = CAST zif_lnt_statement_runnable( t385 ).
    IF t439 IS BOUND.
      CREATE OBJECT t438.
      t438->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t440 TYPE REF TO object.
      t440 = t439.
      t438->oval = t440.
    ENDIF.
    t437 = zcl_lnt_st_combi_module=>plus( i_first = t438 ).
    IF t437 IS BOUND.
      CREATE OBJECT t436.
      t436->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t441 TYPE REF TO object.
      t441 = t437.
      t436->oval = t441.
    ENDIF.
    APPEND t436 TO t435->items.
    DATA t442 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t443) = CAST zlnt_runtime_dyna_a429568d5be8( t418 ).
    DATA(t444) = CAST zlnt_runtime_dyna_a429568d5be8( t424 ).
    DATA(t445) = CAST zlnt_runtime_arra_c22708faf2e3( t427 ).
    t442 = zcl_lnt_st_combi_module=>seq( i_first = t443 i_second = t444 i_rest = t445 ).
    t417 = t442.
    t416 = t417.
    DATA t446 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t446.
    DATA t447 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t447.
    DATA t448 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t449 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t450) = |DDL OBJECT OPTIONS CDS SESSION CLIENT REQUIRED|.
    CREATE OBJECT t449.
    t449->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t449->sval = t450.
    t448 = t449.
    DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t451.
    DATA t452 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t452.
    DATA t453 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t453.
    DATA t454 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t455 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t456) = |TABLE FUNCTION|.
    CREATE OBJECT t455.
    t455->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t455->sval = t456.
    t454 = t455.
    DATA t457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t457.
    DATA t458 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t458.
    DATA(t459) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
    IF t459 IS BOUND.
      CREATE OBJECT t458.
      t458->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t458->cval = t459.
    ENDIF.
    t457 = t458.
    DATA t460 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t461 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t461.
    t460 = t461.
    DATA t462 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t463) = CAST zlnt_runtime_dyna_a429568d5be8( t454 ).
    DATA(t464) = CAST zlnt_runtime_dyna_a429568d5be8( t457 ).
    DATA(t465) = CAST zlnt_runtime_arra_c22708faf2e3( t460 ).
    t462 = zcl_lnt_st_combi_module=>seq( i_first = t463 i_second = t464 i_rest = t465 ).
    t453 = t462.
    IF t453 IS BOUND.
      CREATE OBJECT t452.
      t452->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t466 TYPE REF TO object.
      t466 = t453.
      t452->oval = t466.
    ENDIF.
    t451 = t452.
    DATA t467 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t468 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t468.
    t467 = t468.
    DATA(t469) = CAST zlnt_runtime_arra_c22708faf2e3( t467 ).
    DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t470.
    DATA t471 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t471.
    DATA t472 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t474) = |VALIDATE ON SAVE IMPORTING|.
    CREATE OBJECT t473.
    t473->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t473->sval = t474.
    t472 = t473.
    DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t475.
    DATA t476 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t476.
    DATA(t477) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835 ).
    IF t477 IS BOUND.
      CREATE OBJECT t476.
      t476->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t476->cval = t477.
    ENDIF.
    t475 = t476.
    DATA t478 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t479 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t479.
    t478 = t479.
    DATA(t480) = CAST zlnt_runtime_arra_c22708faf2e3( t478 ).
    DATA t481 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t482) = |FOR|.
    CREATE OBJECT t481.
    t481->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t481->sval = t482.
    APPEND t481 TO t480->items.
    DATA(t483) = CAST zlnt_runtime_arra_c22708faf2e3( t478 ).
    DATA t484 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t484.
    DATA(t485) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t485 IS BOUND.
      CREATE OBJECT t484.
      t484->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t484->cval = t485.
    ENDIF.
    APPEND t484 TO t483->items.
    DATA t486 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t487) = CAST zlnt_runtime_dyna_a429568d5be8( t472 ).
    DATA(t488) = CAST zlnt_runtime_dyna_a429568d5be8( t475 ).
    DATA(t489) = CAST zlnt_runtime_arra_c22708faf2e3( t478 ).
    t486 = zcl_lnt_st_combi_module=>seq( i_first = t487 i_second = t488 i_rest = t489 ).
    t471 = t486.
    IF t471 IS BOUND.
      CREATE OBJECT t470.
      t470->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t490 TYPE REF TO object.
      t490 = t471.
      t470->oval = t490.
    ENDIF.
    APPEND t470 TO t469->items.
    DATA(t491) = CAST zlnt_runtime_arra_c22708faf2e3( t467 ).
    DATA t492 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t492.
    DATA t493 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t493.
    DATA t494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t496) = |MODIFY|.
    CREATE OBJECT t495.
    t495->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t495->sval = t496.
    t494 = t495.
    DATA t497 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t497.
    DATA t498 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t498.
    DATA t499 TYPE REF TO zif_lnt_statement_runnable.
    DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t501) = |IMPORTING|.
    CREATE OBJECT t500.
    t500->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t500->sval = t501.
    t499 = zcl_lnt_st_combi_module=>opt( i_first = t500 ).
    IF t499 IS BOUND.
      CREATE OBJECT t498.
      t498->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t502 TYPE REF TO object.
      t502 = t499.
      t498->oval = t502.
    ENDIF.
    t497 = t498.
    DATA t503 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t504 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t504.
    t503 = t504.
    DATA(t505) = CAST zlnt_runtime_arra_c22708faf2e3( t503 ).
    DATA t506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t506.
    DATA t507 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t507.
    DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t508.
    DATA t509 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t509.
    DATA t510 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t510.
    DATA t511 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t511.
    DATA(t512) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835 ).
    IF t512 IS BOUND.
      CREATE OBJECT t511.
      t511->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t511->cval = t512.
    ENDIF.
    t510 = t511.
    DATA t513 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t513.
    DATA t514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t514.
    DATA(t515) = CAST zif_lnt_statement_runnable( t206 ).
    IF t515 IS BOUND.
      CREATE OBJECT t514.
      t514->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t516 TYPE REF TO object.
      t516 = t515.
      t514->oval = t516.
    ENDIF.
    t513 = t514.
    DATA t517 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t518 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t518.
    t517 = t518.
    DATA t519 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t520) = CAST zlnt_runtime_dyna_a429568d5be8( t510 ).
    DATA(t521) = CAST zlnt_runtime_dyna_a429568d5be8( t513 ).
    DATA(t522) = CAST zlnt_runtime_arra_c22708faf2e3( t517 ).
    t519 = zcl_lnt_st_combi_module=>seq( i_first = t520 i_second = t521 i_rest = t522 ).
    t509 = t519.
    IF t509 IS BOUND.
      CREATE OBJECT t508.
      t508->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t523 TYPE REF TO object.
      t523 = t509.
      t508->oval = t523.
    ENDIF.
    t507 = zcl_lnt_st_combi_module=>plus( i_first = t508 ).
    IF t507 IS BOUND.
      CREATE OBJECT t506.
      t506->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t524 TYPE REF TO object.
      t524 = t507.
      t506->oval = t524.
    ENDIF.
    APPEND t506 TO t505->items.
    DATA t525 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t526) = CAST zlnt_runtime_dyna_a429568d5be8( t494 ).
    DATA(t527) = CAST zlnt_runtime_dyna_a429568d5be8( t497 ).
    DATA(t528) = CAST zlnt_runtime_arra_c22708faf2e3( t503 ).
    t525 = zcl_lnt_st_combi_module=>seq( i_first = t526 i_second = t527 i_rest = t528 ).
    t493 = t525.
    IF t493 IS BOUND.
      CREATE OBJECT t492.
      t492->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t529 TYPE REF TO object.
      t529 = t493.
      t492->oval = t529.
    ENDIF.
    APPEND t492 TO t491->items.
    DATA(t530) = CAST zlnt_runtime_arra_c22708faf2e3( t467 ).
    DATA t531 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t531.
    DATA t532 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t532.
    DATA t533 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t534 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t535) = |PRECHECK IMPORTING|.
    CREATE OBJECT t534.
    t534->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t534->sval = t535.
    t533 = t534.
    DATA t536 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t536.
    DATA t537 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t537.
    DATA(t538) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835 ).
    IF t538 IS BOUND.
      CREATE OBJECT t537.
      t537->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t537->cval = t538.
    ENDIF.
    t536 = t537.
    DATA t539 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t540 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t540.
    t539 = t540.
    DATA(t541) = CAST zlnt_runtime_arra_c22708faf2e3( t539 ).
    DATA t542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t542.
    DATA(t543) = CAST zif_lnt_statement_runnable( t206 ).
    IF t543 IS BOUND.
      CREATE OBJECT t542.
      t542->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t544 TYPE REF TO object.
      t544 = t543.
      t542->oval = t544.
    ENDIF.
    APPEND t542 TO t541->items.
    DATA t545 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t546) = CAST zlnt_runtime_dyna_a429568d5be8( t533 ).
    DATA(t547) = CAST zlnt_runtime_dyna_a429568d5be8( t536 ).
    DATA(t548) = CAST zlnt_runtime_arra_c22708faf2e3( t539 ).
    t545 = zcl_lnt_st_combi_module=>seq( i_first = t546 i_second = t547 i_rest = t548 ).
    t532 = t545.
    IF t532 IS BOUND.
      CREATE OBJECT t531.
      t531->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t549 TYPE REF TO object.
      t549 = t532.
      t531->oval = t549.
    ENDIF.
    APPEND t531 TO t530->items.
    DATA(t550) = CAST zlnt_runtime_arra_c22708faf2e3( t467 ).
    DATA t551 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t551.
    DATA t552 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t552.
    DATA t553 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t554 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t555) = |DETERMINATION|.
    CREATE OBJECT t554.
    t554->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t554->sval = t555.
    t553 = t554.
    DATA t556 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t556.
    DATA t557 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t557.
    DATA(t558) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t558 IS BOUND.
      CREATE OBJECT t557.
      t557->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t557->cval = t558.
    ENDIF.
    t556 = t557.
    DATA t559 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t560 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t560.
    t559 = t560.
    DATA(t561) = CAST zlnt_runtime_arra_c22708faf2e3( t559 ).
    DATA t562 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t563) = |IMPORTING|.
    CREATE OBJECT t562.
    t562->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t562->sval = t563.
    APPEND t562 TO t561->items.
    DATA(t564) = CAST zlnt_runtime_arra_c22708faf2e3( t559 ).
    DATA t565 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t565.
    DATA(t566) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835 ).
    IF t566 IS BOUND.
      CREATE OBJECT t565.
      t565->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t565->cval = t566.
    ENDIF.
    APPEND t565 TO t564->items.
    DATA(t567) = CAST zlnt_runtime_arra_c22708faf2e3( t559 ).
    DATA t568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t569) = |FOR|.
    CREATE OBJECT t568.
    t568->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t568->sval = t569.
    APPEND t568 TO t567->items.
    DATA(t570) = CAST zlnt_runtime_arra_c22708faf2e3( t559 ).
    DATA t571 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t571.
    DATA(t572) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t572 IS BOUND.
      CREATE OBJECT t571.
      t571->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t571->cval = t572.
    ENDIF.
    APPEND t571 TO t570->items.
    DATA t573 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t574) = CAST zlnt_runtime_dyna_a429568d5be8( t553 ).
    DATA(t575) = CAST zlnt_runtime_dyna_a429568d5be8( t556 ).
    DATA(t576) = CAST zlnt_runtime_arra_c22708faf2e3( t559 ).
    t573 = zcl_lnt_st_combi_module=>seq( i_first = t574 i_second = t575 i_rest = t576 ).
    t552 = t573.
    IF t552 IS BOUND.
      CREATE OBJECT t551.
      t551->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t577 TYPE REF TO object.
      t577 = t552.
      t551->oval = t577.
    ENDIF.
    APPEND t551 TO t550->items.
    DATA(t578) = CAST zlnt_runtime_arra_c22708faf2e3( t467 ).
    DATA t579 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t579.
    DATA t580 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t580.
    DATA t581 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t583) = |VALIDATION|.
    CREATE OBJECT t582.
    t582->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t582->sval = t583.
    t581 = t582.
    DATA t584 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t584.
    DATA t585 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t585.
    DATA(t586) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t586 IS BOUND.
      CREATE OBJECT t585.
      t585->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t585->cval = t586.
    ENDIF.
    t584 = t585.
    DATA t587 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t588 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t588.
    t587 = t588.
    DATA(t589) = CAST zlnt_runtime_arra_c22708faf2e3( t587 ).
    DATA t590 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t591) = |IMPORTING|.
    CREATE OBJECT t590.
    t590->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t590->sval = t591.
    APPEND t590 TO t589->items.
    DATA(t592) = CAST zlnt_runtime_arra_c22708faf2e3( t587 ).
    DATA t593 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t593.
    DATA(t594) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835 ).
    IF t594 IS BOUND.
      CREATE OBJECT t593.
      t593->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t593->cval = t594.
    ENDIF.
    APPEND t593 TO t592->items.
    DATA(t595) = CAST zlnt_runtime_arra_c22708faf2e3( t587 ).
    DATA t596 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t597) = |FOR|.
    CREATE OBJECT t596.
    t596->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t596->sval = t597.
    APPEND t596 TO t595->items.
    DATA(t598) = CAST zlnt_runtime_arra_c22708faf2e3( t587 ).
    DATA t599 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t599.
    DATA(t600) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t600 IS BOUND.
      CREATE OBJECT t599.
      t599->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t599->cval = t600.
    ENDIF.
    APPEND t599 TO t598->items.
    DATA t601 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t602) = CAST zlnt_runtime_dyna_a429568d5be8( t581 ).
    DATA(t603) = CAST zlnt_runtime_dyna_a429568d5be8( t584 ).
    DATA(t604) = CAST zlnt_runtime_arra_c22708faf2e3( t587 ).
    t601 = zcl_lnt_st_combi_module=>seq( i_first = t602 i_second = t603 i_rest = t604 ).
    t580 = t601.
    IF t580 IS BOUND.
      CREATE OBJECT t579.
      t579->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t605 TYPE REF TO object.
      t605 = t580.
      t579->oval = t605.
    ENDIF.
    APPEND t579 TO t578->items.
    DATA(t606) = CAST zlnt_runtime_arra_c22708faf2e3( t467 ).
    DATA t607 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t607.
    DATA t608 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t608.
    DATA t609 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t610 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t611) = |NUMBERING IMPORTING|.
    CREATE OBJECT t610.
    t610->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t610->sval = t611.
    t609 = t610.
    DATA t612 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t612.
    DATA t613 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t613.
    DATA(t614) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835 ).
    IF t614 IS BOUND.
      CREATE OBJECT t613.
      t613->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t613->cval = t614.
    ENDIF.
    t612 = t613.
    DATA t615 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t616 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t616.
    t615 = t616.
    DATA(t617) = CAST zlnt_runtime_arra_c22708faf2e3( t615 ).
    DATA t618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t618.
    DATA(t619) = CAST zif_lnt_statement_runnable( t206 ).
    IF t619 IS BOUND.
      CREATE OBJECT t618.
      t618->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t620 TYPE REF TO object.
      t620 = t619.
      t618->oval = t620.
    ENDIF.
    APPEND t618 TO t617->items.
    DATA t621 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t622) = CAST zlnt_runtime_dyna_a429568d5be8( t609 ).
    DATA(t623) = CAST zlnt_runtime_dyna_a429568d5be8( t612 ).
    DATA(t624) = CAST zlnt_runtime_arra_c22708faf2e3( t615 ).
    t621 = zcl_lnt_st_combi_module=>seq( i_first = t622 i_second = t623 i_rest = t624 ).
    t608 = t621.
    IF t608 IS BOUND.
      CREATE OBJECT t607.
      t607->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t625 TYPE REF TO object.
      t625 = t608.
      t607->oval = t625.
    ENDIF.
    APPEND t607 TO t606->items.
    DATA(t626) = CAST zlnt_runtime_arra_c22708faf2e3( t467 ).
    DATA t627 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t627.
    DATA t628 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t628.
    DATA t629 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t630 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t631) = |READ IMPORTING|.
    CREATE OBJECT t630.
    t630->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t630->sval = t631.
    t629 = t630.
    DATA t632 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t632.
    DATA t633 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t633.
    DATA(t634) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835 ).
    IF t634 IS BOUND.
      CREATE OBJECT t633.
      t633->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t633->cval = t634.
    ENDIF.
    t632 = t633.
    DATA t635 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t636 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t636.
    t635 = t636.
    DATA(t637) = CAST zlnt_runtime_arra_c22708faf2e3( t635 ).
    DATA t638 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t638.
    DATA t639 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t639.
    DATA t640 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t640.
    DATA t641 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t641.
    DATA(t642) = CAST zif_lnt_statement_runnable( t298 ).
    IF t642 IS BOUND.
      CREATE OBJECT t641.
      t641->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t643 TYPE REF TO object.
      t643 = t642.
      t641->oval = t643.
    ENDIF.
    t640 = t641.
    DATA t644 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t644.
    DATA t645 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t645.
    DATA(t646) = CAST zif_lnt_statement_runnable( t343 ).
    IF t646 IS BOUND.
      CREATE OBJECT t645.
      t645->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t647 TYPE REF TO object.
      t647 = t646.
      t645->oval = t647.
    ENDIF.
    t644 = t645.
    DATA t648 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t649 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t649.
    t648 = t649.
    DATA t650 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t651) = CAST zlnt_runtime_dyna_a429568d5be8( t640 ).
    DATA(t652) = CAST zlnt_runtime_dyna_a429568d5be8( t644 ).
    DATA(t653) = CAST zlnt_runtime_arra_c22708faf2e3( t648 ).
    t650 = zcl_lnt_st_combi_module=>alt_prio( i_first = t651 i_second = t652 i_rest = t653 ).
    t639 = t650.
    IF t639 IS BOUND.
      CREATE OBJECT t638.
      t638->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t654 TYPE REF TO object.
      t654 = t639.
      t638->oval = t654.
    ENDIF.
    APPEND t638 TO t637->items.
    DATA t655 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t656) = CAST zlnt_runtime_dyna_a429568d5be8( t629 ).
    DATA(t657) = CAST zlnt_runtime_dyna_a429568d5be8( t632 ).
    DATA(t658) = CAST zlnt_runtime_arra_c22708faf2e3( t635 ).
    t655 = zcl_lnt_st_combi_module=>seq( i_first = t656 i_second = t657 i_rest = t658 ).
    t628 = t655.
    IF t628 IS BOUND.
      CREATE OBJECT t627.
      t627->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t659 TYPE REF TO object.
      t659 = t628.
      t627->oval = t659.
    ENDIF.
    APPEND t627 TO t626->items.
    DATA(t660) = CAST zlnt_runtime_arra_c22708faf2e3( t467 ).
    DATA t661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t661.
    DATA t662 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t662.
    DATA t663 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t664 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t665) = |FEATURES IMPORTING|.
    CREATE OBJECT t664.
    t664->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t664->sval = t665.
    t663 = t664.
    DATA t666 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t666.
    DATA t667 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t667.
    DATA(t668) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835 ).
    IF t668 IS BOUND.
      CREATE OBJECT t667.
      t667->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t667->cval = t668.
    ENDIF.
    t666 = t667.
    DATA t669 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t670 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t670.
    t669 = t670.
    DATA(t671) = CAST zlnt_runtime_arra_c22708faf2e3( t669 ).
    DATA t672 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t673) = |REQUEST|.
    CREATE OBJECT t672.
    t672->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t672->sval = t673.
    APPEND t672 TO t671->items.
    DATA(t674) = CAST zlnt_runtime_arra_c22708faf2e3( t669 ).
    DATA t675 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t675.
    DATA(t676) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
    IF t676 IS BOUND.
      CREATE OBJECT t675.
      t675->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t675->cval = t676.
    ENDIF.
    APPEND t675 TO t674->items.
    DATA(t677) = CAST zlnt_runtime_arra_c22708faf2e3( t669 ).
    DATA t678 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t679) = |FOR|.
    CREATE OBJECT t678.
    t678->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t678->sval = t679.
    APPEND t678 TO t677->items.
    DATA(t680) = CAST zlnt_runtime_arra_c22708faf2e3( t669 ).
    DATA t681 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t681.
    DATA(t682) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
    IF t682 IS BOUND.
      CREATE OBJECT t681.
      t681->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t681->cval = t682.
    ENDIF.
    APPEND t681 TO t680->items.
    DATA(t683) = CAST zlnt_runtime_arra_c22708faf2e3( t669 ).
    DATA t684 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t684.
    DATA(t685) = CAST zif_lnt_statement_runnable( t164 ).
    IF t685 IS BOUND.
      CREATE OBJECT t684.
      t684->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t686 TYPE REF TO object.
      t686 = t685.
      t684->oval = t686.
    ENDIF.
    APPEND t684 TO t683->items.
    DATA t687 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t688) = CAST zlnt_runtime_dyna_a429568d5be8( t663 ).
    DATA(t689) = CAST zlnt_runtime_dyna_a429568d5be8( t666 ).
    DATA(t690) = CAST zlnt_runtime_arra_c22708faf2e3( t669 ).
    t687 = zcl_lnt_st_combi_module=>seq( i_first = t688 i_second = t689 i_rest = t690 ).
    t662 = t687.
    IF t662 IS BOUND.
      CREATE OBJECT t661.
      t661->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t691 TYPE REF TO object.
      t691 = t662.
      t661->oval = t691.
    ENDIF.
    APPEND t661 TO t660->items.
    DATA(t692) = CAST zlnt_runtime_arra_c22708faf2e3( t467 ).
    DATA t693 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t693.
    DATA t694 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t694.
    DATA t695 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t696 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t697) = |BEHAVIOR IMPORTING|.
    CREATE OBJECT t696.
    t696->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t696->sval = t697.
    t695 = t696.
    DATA t698 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t698.
    DATA t699 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t699.
    DATA(t700) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835 ).
    IF t700 IS BOUND.
      CREATE OBJECT t699.
      t699->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t699->cval = t700.
    ENDIF.
    t698 = t699.
    DATA t701 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t702 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t702.
    t701 = t702.
    DATA(t703) = CAST zlnt_runtime_arra_c22708faf2e3( t701 ).
    DATA t704 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t705) = |FOR CREATE|.
    CREATE OBJECT t704.
    t704->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t704->sval = t705.
    APPEND t704 TO t703->items.
    DATA(t706) = CAST zlnt_runtime_arra_c22708faf2e3( t701 ).
    DATA t707 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t707.
    DATA(t708) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t708 IS BOUND.
      CREATE OBJECT t707.
      t707->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t707->cval = t708.
    ENDIF.
    APPEND t707 TO t706->items.
    DATA(t709) = CAST zlnt_runtime_arra_c22708faf2e3( t701 ).
    DATA t710 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t710.
    DATA(t711) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835 ).
    IF t711 IS BOUND.
      CREATE OBJECT t710.
      t710->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t710->cval = t711.
    ENDIF.
    APPEND t710 TO t709->items.
    DATA(t712) = CAST zlnt_runtime_arra_c22708faf2e3( t701 ).
    DATA t713 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t714) = |FOR UPDATE|.
    CREATE OBJECT t713.
    t713->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t713->sval = t714.
    APPEND t713 TO t712->items.
    DATA(t715) = CAST zlnt_runtime_arra_c22708faf2e3( t701 ).
    DATA t716 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t716.
    DATA(t717) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t717 IS BOUND.
      CREATE OBJECT t716.
      t716->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t716->cval = t717.
    ENDIF.
    APPEND t716 TO t715->items.
    DATA(t718) = CAST zlnt_runtime_arra_c22708faf2e3( t701 ).
    DATA t719 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t719.
    DATA(t720) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835 ).
    IF t720 IS BOUND.
      CREATE OBJECT t719.
      t719->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t719->cval = t720.
    ENDIF.
    APPEND t719 TO t718->items.
    DATA(t721) = CAST zlnt_runtime_arra_c22708faf2e3( t701 ).
    DATA t722 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t723) = |FOR DELETE|.
    CREATE OBJECT t722.
    t722->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t722->sval = t723.
    APPEND t722 TO t721->items.
    DATA(t724) = CAST zlnt_runtime_arra_c22708faf2e3( t701 ).
    DATA t725 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t725.
    DATA(t726) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t726 IS BOUND.
      CREATE OBJECT t725.
      t725->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t725->cval = t726.
    ENDIF.
    APPEND t725 TO t724->items.
    DATA t727 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t728) = CAST zlnt_runtime_dyna_a429568d5be8( t695 ).
    DATA(t729) = CAST zlnt_runtime_dyna_a429568d5be8( t698 ).
    DATA(t730) = CAST zlnt_runtime_arra_c22708faf2e3( t701 ).
    t727 = zcl_lnt_st_combi_module=>seq( i_first = t728 i_second = t729 i_rest = t730 ).
    t694 = t727.
    IF t694 IS BOUND.
      CREATE OBJECT t693.
      t693->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t731 TYPE REF TO object.
      t731 = t694.
      t693->oval = t731.
    ENDIF.
    APPEND t693 TO t692->items.
    DATA(t732) = CAST zlnt_runtime_arra_c22708faf2e3( t467 ).
    DATA t733 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t733.
    DATA t734 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t734.
    DATA t735 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t736 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t737) = |BEHAVIOR IMPORTING|.
    CREATE OBJECT t736.
    t736->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t736->sval = t737.
    t735 = t736.
    DATA t738 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t738.
    DATA t739 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t739.
    DATA(t740) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835 ).
    IF t740 IS BOUND.
      CREATE OBJECT t739.
      t739->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t739->cval = t740.
    ENDIF.
    t738 = t739.
    DATA t741 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t742 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t742.
    t741 = t742.
    DATA(t743) = CAST zlnt_runtime_arra_c22708faf2e3( t741 ).
    DATA t744 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t745) = |FOR READ|.
    CREATE OBJECT t744.
    t744->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t744->sval = t745.
    APPEND t744 TO t743->items.
    DATA(t746) = CAST zlnt_runtime_arra_c22708faf2e3( t741 ).
    DATA t747 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t747.
    DATA(t748) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t748 IS BOUND.
      CREATE OBJECT t747.
      t747->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t747->cval = t748.
    ENDIF.
    APPEND t747 TO t746->items.
    DATA(t749) = CAST zlnt_runtime_arra_c22708faf2e3( t741 ).
    DATA t750 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t750.
    DATA(t751) = CAST zif_lnt_statement_runnable( t164 ).
    IF t751 IS BOUND.
      CREATE OBJECT t750.
      t750->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t752 TYPE REF TO object.
      t752 = t751.
      t750->oval = t752.
    ENDIF.
    APPEND t750 TO t749->items.
    DATA t753 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t754) = CAST zlnt_runtime_dyna_a429568d5be8( t735 ).
    DATA(t755) = CAST zlnt_runtime_dyna_a429568d5be8( t738 ).
    DATA(t756) = CAST zlnt_runtime_arra_c22708faf2e3( t741 ).
    t753 = zcl_lnt_st_combi_module=>seq( i_first = t754 i_second = t755 i_rest = t756 ).
    t734 = t753.
    IF t734 IS BOUND.
      CREATE OBJECT t733.
      t733->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t757 TYPE REF TO object.
      t757 = t734.
      t733->oval = t757.
    ENDIF.
    APPEND t733 TO t732->items.
    DATA(t758) = CAST zlnt_runtime_arra_c22708faf2e3( t467 ).
    DATA t759 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t759.
    DATA t760 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t760.
    DATA t761 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t762 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t763) = |BEHAVIOR IMPORTING|.
    CREATE OBJECT t762.
    t762->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t762->sval = t763.
    t761 = t762.
    DATA t764 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t764.
    DATA t765 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t765.
    DATA(t766) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835 ).
    IF t766 IS BOUND.
      CREATE OBJECT t765.
      t765->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t765->cval = t766.
    ENDIF.
    t764 = t765.
    DATA t767 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t768 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t768.
    t767 = t768.
    DATA(t769) = CAST zlnt_runtime_arra_c22708faf2e3( t767 ).
    DATA t770 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t771) = |FOR UPDATE|.
    CREATE OBJECT t770.
    t770->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t770->sval = t771.
    APPEND t770 TO t769->items.
    DATA(t772) = CAST zlnt_runtime_arra_c22708faf2e3( t767 ).
    DATA t773 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t773.
    DATA(t774) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t774 IS BOUND.
      CREATE OBJECT t773.
      t773->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t773->cval = t774.
    ENDIF.
    APPEND t773 TO t772->items.
    DATA t775 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t776) = CAST zlnt_runtime_dyna_a429568d5be8( t761 ).
    DATA(t777) = CAST zlnt_runtime_dyna_a429568d5be8( t764 ).
    DATA(t778) = CAST zlnt_runtime_arra_c22708faf2e3( t767 ).
    t775 = zcl_lnt_st_combi_module=>seq( i_first = t776 i_second = t777 i_rest = t778 ).
    t760 = t775.
    IF t760 IS BOUND.
      CREATE OBJECT t759.
      t759->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t779 TYPE REF TO object.
      t779 = t760.
      t759->oval = t779.
    ENDIF.
    APPEND t759 TO t758->items.
    DATA(t780) = CAST zlnt_runtime_arra_c22708faf2e3( t467 ).
    DATA t781 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t781.
    DATA t782 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t782.
    DATA t783 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t783.
    DATA t784 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t784.
    DATA t785 TYPE REF TO zif_lnt_statement_runnable.
    DATA t786 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t787 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t788) = |BEHAVIOR|.
    CREATE OBJECT t787.
    t787->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t787->sval = t788.
    t786 = t787.
    DATA t789 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t790 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t791) = |LOCK|.
    CREATE OBJECT t790.
    t790->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t790->sval = t791.
    t789 = t790.
    DATA t792 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t793 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t793.
    t792 = t793.
    DATA t794 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t795) = CAST zlnt_runtime_dyna_a429568d5be8( t786 ).
    DATA(t796) = CAST zlnt_runtime_dyna_a429568d5be8( t789 ).
    DATA(t797) = CAST zlnt_runtime_arra_c22708faf2e3( t792 ).
    t794 = zcl_lnt_st_combi_module=>alt( i_first = t795 i_second = t796 i_rest = t797 ).
    t785 = t794.
    IF t785 IS BOUND.
      CREATE OBJECT t784.
      t784->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t798 TYPE REF TO object.
      t798 = t785.
      t784->oval = t798.
    ENDIF.
    t783 = t784.
    DATA t799 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t800 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t801) = |IMPORTING|.
    CREATE OBJECT t800.
    t800->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t800->sval = t801.
    t799 = t800.
    DATA t802 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t803 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t803.
    t802 = t803.
    DATA(t804) = CAST zlnt_runtime_arra_c22708faf2e3( t802 ).
    DATA t805 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t805.
    DATA(t806) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835 ).
    IF t806 IS BOUND.
      CREATE OBJECT t805.
      t805->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t805->cval = t806.
    ENDIF.
    APPEND t805 TO t804->items.
    DATA(t807) = CAST zlnt_runtime_arra_c22708faf2e3( t802 ).
    DATA t808 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t809) = |FOR LOCK|.
    CREATE OBJECT t808.
    t808->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t808->sval = t809.
    APPEND t808 TO t807->items.
    DATA(t810) = CAST zlnt_runtime_arra_c22708faf2e3( t802 ).
    DATA t811 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t811.
    DATA(t812) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t812 IS BOUND.
      CREATE OBJECT t811.
      t811->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t811->cval = t812.
    ENDIF.
    APPEND t811 TO t810->items.
    DATA t813 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t814) = CAST zlnt_runtime_dyna_a429568d5be8( t783 ).
    DATA(t815) = CAST zlnt_runtime_dyna_a429568d5be8( t799 ).
    DATA(t816) = CAST zlnt_runtime_arra_c22708faf2e3( t802 ).
    t813 = zcl_lnt_st_combi_module=>seq( i_first = t814 i_second = t815 i_rest = t816 ).
    t782 = t813.
    IF t782 IS BOUND.
      CREATE OBJECT t781.
      t781->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t817 TYPE REF TO object.
      t817 = t782.
      t781->oval = t817.
    ENDIF.
    APPEND t781 TO t780->items.
    DATA(t818) = CAST zlnt_runtime_arra_c22708faf2e3( t467 ).
    DATA t819 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t819.
    DATA t820 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t820.
    DATA t821 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t822 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t823) = |DETERMINE|.
    CREATE OBJECT t822.
    t822->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t822->sval = t823.
    t821 = t822.
    DATA t824 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t824.
    DATA t825 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t825.
    DATA t826 TYPE REF TO zif_lnt_statement_runnable.
    DATA t827 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t828 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t829) = |ON MODIFY|.
    CREATE OBJECT t828.
    t828->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t828->sval = t829.
    t827 = t828.
    DATA t830 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t831 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t832) = |ON SAVE|.
    CREATE OBJECT t831.
    t831->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t831->sval = t832.
    t830 = t831.
    DATA t833 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t834 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t834.
    t833 = t834.
    DATA t835 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t836) = CAST zlnt_runtime_dyna_a429568d5be8( t827 ).
    DATA(t837) = CAST zlnt_runtime_dyna_a429568d5be8( t830 ).
    DATA(t838) = CAST zlnt_runtime_arra_c22708faf2e3( t833 ).
    t835 = zcl_lnt_st_combi_module=>alt( i_first = t836 i_second = t837 i_rest = t838 ).
    t826 = t835.
    IF t826 IS BOUND.
      CREATE OBJECT t825.
      t825->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t839 TYPE REF TO object.
      t839 = t826.
      t825->oval = t839.
    ENDIF.
    t824 = t825.
    DATA t840 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t841 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t841.
    t840 = t841.
    DATA(t842) = CAST zlnt_runtime_arra_c22708faf2e3( t840 ).
    DATA t843 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t844) = |IMPORTING|.
    CREATE OBJECT t843.
    t843->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t843->sval = t844.
    APPEND t843 TO t842->items.
    DATA(t845) = CAST zlnt_runtime_arra_c22708faf2e3( t840 ).
    DATA t846 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t846.
    DATA(t847) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835 ).
    IF t847 IS BOUND.
      CREATE OBJECT t846.
      t846->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t846->cval = t847.
    ENDIF.
    APPEND t846 TO t845->items.
    DATA(t848) = CAST zlnt_runtime_arra_c22708faf2e3( t840 ).
    DATA t849 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t850) = |FOR|.
    CREATE OBJECT t849.
    t849->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t849->sval = t850.
    APPEND t849 TO t848->items.
    DATA(t851) = CAST zlnt_runtime_arra_c22708faf2e3( t840 ).
    DATA t852 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t852.
    DATA(t853) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t853 IS BOUND.
      CREATE OBJECT t852.
      t852->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t852->cval = t853.
    ENDIF.
    APPEND t852 TO t851->items.
    DATA t854 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t855) = CAST zlnt_runtime_dyna_a429568d5be8( t821 ).
    DATA(t856) = CAST zlnt_runtime_dyna_a429568d5be8( t824 ).
    DATA(t857) = CAST zlnt_runtime_arra_c22708faf2e3( t840 ).
    t854 = zcl_lnt_st_combi_module=>seq( i_first = t855 i_second = t856 i_rest = t857 ).
    t820 = t854.
    IF t820 IS BOUND.
      CREATE OBJECT t819.
      t819->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t858 TYPE REF TO object.
      t858 = t820.
      t819->oval = t858.
    ENDIF.
    APPEND t819 TO t818->items.
    DATA(t859) = CAST zlnt_runtime_arra_c22708faf2e3( t467 ).
    DATA t860 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t860.
    DATA t861 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t861.
    DATA t862 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t863 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t864) = |GLOBAL AUTHORIZATION IMPORTING REQUEST|.
    CREATE OBJECT t863.
    t863->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t863->sval = t864.
    t862 = t863.
    DATA t865 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t865.
    DATA t866 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t866.
    DATA(t867) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835 ).
    IF t867 IS BOUND.
      CREATE OBJECT t866.
      t866->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t866->cval = t867.
    ENDIF.
    t865 = t866.
    DATA t868 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t869 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t869.
    t868 = t869.
    DATA(t870) = CAST zlnt_runtime_arra_c22708faf2e3( t868 ).
    DATA t871 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t872) = |FOR|.
    CREATE OBJECT t871.
    t871->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t871->sval = t872.
    APPEND t871 TO t870->items.
    DATA(t873) = CAST zlnt_runtime_arra_c22708faf2e3( t868 ).
    DATA t874 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t874.
    DATA(t875) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t875 IS BOUND.
      CREATE OBJECT t874.
      t874->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t874->cval = t875.
    ENDIF.
    APPEND t874 TO t873->items.
    DATA(t876) = CAST zlnt_runtime_arra_c22708faf2e3( t868 ).
    DATA t877 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t877.
    DATA(t878) = CAST zif_lnt_statement_runnable( t164 ).
    IF t878 IS BOUND.
      CREATE OBJECT t877.
      t877->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t879 TYPE REF TO object.
      t879 = t878.
      t877->oval = t879.
    ENDIF.
    APPEND t877 TO t876->items.
    DATA t880 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t881) = CAST zlnt_runtime_dyna_a429568d5be8( t862 ).
    DATA(t882) = CAST zlnt_runtime_dyna_a429568d5be8( t865 ).
    DATA(t883) = CAST zlnt_runtime_arra_c22708faf2e3( t868 ).
    t880 = zcl_lnt_st_combi_module=>seq( i_first = t881 i_second = t882 i_rest = t883 ).
    t861 = t880.
    IF t861 IS BOUND.
      CREATE OBJECT t860.
      t860->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t884 TYPE REF TO object.
      t884 = t861.
      t860->oval = t884.
    ENDIF.
    APPEND t860 TO t859->items.
    DATA(t885) = CAST zlnt_runtime_arra_c22708faf2e3( t467 ).
    DATA t886 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t886.
    DATA t887 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t887.
    DATA t888 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t889 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t890) = |GLOBAL FEATURES IMPORTING REQUEST|.
    CREATE OBJECT t889.
    t889->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t889->sval = t890.
    t888 = t889.
    DATA t891 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t891.
    DATA t892 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t892.
    DATA(t893) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835 ).
    IF t893 IS BOUND.
      CREATE OBJECT t892.
      t892->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t892->cval = t893.
    ENDIF.
    t891 = t892.
    DATA t894 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t895 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t895.
    t894 = t895.
    DATA(t896) = CAST zlnt_runtime_arra_c22708faf2e3( t894 ).
    DATA t897 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t898) = |FOR|.
    CREATE OBJECT t897.
    t897->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t897->sval = t898.
    APPEND t897 TO t896->items.
    DATA(t899) = CAST zlnt_runtime_arra_c22708faf2e3( t894 ).
    DATA t900 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t900.
    DATA(t901) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t901 IS BOUND.
      CREATE OBJECT t900.
      t900->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t900->cval = t901.
    ENDIF.
    APPEND t900 TO t899->items.
    DATA(t902) = CAST zlnt_runtime_arra_c22708faf2e3( t894 ).
    DATA t903 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t903.
    DATA(t904) = CAST zif_lnt_statement_runnable( t164 ).
    IF t904 IS BOUND.
      CREATE OBJECT t903.
      t903->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t905 TYPE REF TO object.
      t905 = t904.
      t903->oval = t905.
    ENDIF.
    APPEND t903 TO t902->items.
    DATA t906 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t907) = CAST zlnt_runtime_dyna_a429568d5be8( t888 ).
    DATA(t908) = CAST zlnt_runtime_dyna_a429568d5be8( t891 ).
    DATA(t909) = CAST zlnt_runtime_arra_c22708faf2e3( t894 ).
    t906 = zcl_lnt_st_combi_module=>seq( i_first = t907 i_second = t908 i_rest = t909 ).
    t887 = t906.
    IF t887 IS BOUND.
      CREATE OBJECT t886.
      t886->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t910 TYPE REF TO object.
      t910 = t887.
      t886->oval = t910.
    ENDIF.
    APPEND t886 TO t885->items.
    DATA(t911) = CAST zlnt_runtime_arra_c22708faf2e3( t467 ).
    DATA t912 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t912.
    DATA t913 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t913.
    DATA t914 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t914.
    DATA t915 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t915.
    DATA t916 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t916.
    DATA t917 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t917.
    DATA t918 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t918.
    DATA t919 TYPE REF TO zif_lnt_statement_runnable.
    DATA t920 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t921) = |INSTANCE|.
    CREATE OBJECT t920.
    t920->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t920->sval = t921.
    t919 = zcl_lnt_st_combi_module=>opt( i_first = t920 ).
    IF t919 IS BOUND.
      CREATE OBJECT t918.
      t918->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t922 TYPE REF TO object.
      t922 = t919.
      t918->oval = t922.
    ENDIF.
    t917 = t918.
    DATA t923 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t924 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t925) = |AUTHORIZATION IMPORTING|.
    CREATE OBJECT t924.
    t924->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t924->sval = t925.
    t923 = t924.
    DATA t926 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t927 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t927.
    t926 = t927.
    DATA t928 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t929) = CAST zlnt_runtime_dyna_a429568d5be8( t917 ).
    DATA(t930) = CAST zlnt_runtime_dyna_a429568d5be8( t923 ).
    DATA(t931) = CAST zlnt_runtime_arra_c22708faf2e3( t926 ).
    t928 = zcl_lnt_st_combi_module=>seq( i_first = t929 i_second = t930 i_rest = t931 ).
    t916 = t928.
    IF t916 IS BOUND.
      CREATE OBJECT t915.
      t915->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t932 TYPE REF TO object.
      t932 = t916.
      t915->oval = t932.
    ENDIF.
    t914 = t915.
    DATA t933 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t933.
    DATA t934 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t934.
    DATA(t935) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835 ).
    IF t935 IS BOUND.
      CREATE OBJECT t934.
      t934->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t934->cval = t935.
    ENDIF.
    t933 = t934.
    DATA t936 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t937 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t937.
    t936 = t937.
    DATA(t938) = CAST zlnt_runtime_arra_c22708faf2e3( t936 ).
    DATA t939 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t940) = |REQUEST|.
    CREATE OBJECT t939.
    t939->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t939->sval = t940.
    APPEND t939 TO t938->items.
    DATA(t941) = CAST zlnt_runtime_arra_c22708faf2e3( t936 ).
    DATA t942 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t942.
    DATA(t943) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835 ).
    IF t943 IS BOUND.
      CREATE OBJECT t942.
      t942->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t942->cval = t943.
    ENDIF.
    APPEND t942 TO t941->items.
    DATA(t944) = CAST zlnt_runtime_arra_c22708faf2e3( t936 ).
    DATA t945 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t946) = |FOR|.
    CREATE OBJECT t945.
    t945->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t945->sval = t946.
    APPEND t945 TO t944->items.
    DATA(t947) = CAST zlnt_runtime_arra_c22708faf2e3( t936 ).
    DATA t948 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t948.
    DATA(t949) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t949 IS BOUND.
      CREATE OBJECT t948.
      t948->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t948->cval = t949.
    ENDIF.
    APPEND t948 TO t947->items.
    DATA(t950) = CAST zlnt_runtime_arra_c22708faf2e3( t936 ).
    DATA t951 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t951.
    DATA(t952) = CAST zif_lnt_statement_runnable( t164 ).
    IF t952 IS BOUND.
      CREATE OBJECT t951.
      t951->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t953 TYPE REF TO object.
      t953 = t952.
      t951->oval = t953.
    ENDIF.
    APPEND t951 TO t950->items.
    DATA t954 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t955) = CAST zlnt_runtime_dyna_a429568d5be8( t914 ).
    DATA(t956) = CAST zlnt_runtime_dyna_a429568d5be8( t933 ).
    DATA(t957) = CAST zlnt_runtime_arra_c22708faf2e3( t936 ).
    t954 = zcl_lnt_st_combi_module=>seq( i_first = t955 i_second = t956 i_rest = t957 ).
    t913 = t954.
    IF t913 IS BOUND.
      CREATE OBJECT t912.
      t912->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t958 TYPE REF TO object.
      t958 = t913.
      t912->oval = t958.
    ENDIF.
    APPEND t912 TO t911->items.
    DATA(t959) = CAST zlnt_runtime_arra_c22708faf2e3( t467 ).
    DATA t960 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t960.
    DATA t961 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t961.
    DATA t962 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t963 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t964) = |INSTANCE FEATURES IMPORTING|.
    CREATE OBJECT t963.
    t963->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t963->sval = t964.
    t962 = t963.
    DATA t965 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t965.
    DATA t966 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t966.
    DATA(t967) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835 ).
    IF t967 IS BOUND.
      CREATE OBJECT t966.
      t966->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t966->cval = t967.
    ENDIF.
    t965 = t966.
    DATA t968 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t969 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t969.
    t968 = t969.
    DATA(t970) = CAST zlnt_runtime_arra_c22708faf2e3( t968 ).
    DATA t971 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t972) = |REQUEST|.
    CREATE OBJECT t971.
    t971->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t971->sval = t972.
    APPEND t971 TO t970->items.
    DATA(t973) = CAST zlnt_runtime_arra_c22708faf2e3( t968 ).
    DATA t974 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t974.
    DATA(t975) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835 ).
    IF t975 IS BOUND.
      CREATE OBJECT t974.
      t974->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t974->cval = t975.
    ENDIF.
    APPEND t974 TO t973->items.
    DATA(t976) = CAST zlnt_runtime_arra_c22708faf2e3( t968 ).
    DATA t977 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t978) = |FOR|.
    CREATE OBJECT t977.
    t977->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t977->sval = t978.
    APPEND t977 TO t976->items.
    DATA(t979) = CAST zlnt_runtime_arra_c22708faf2e3( t968 ).
    DATA t980 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t980.
    DATA(t981) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t981 IS BOUND.
      CREATE OBJECT t980.
      t980->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t980->cval = t981.
    ENDIF.
    APPEND t980 TO t979->items.
    DATA(t982) = CAST zlnt_runtime_arra_c22708faf2e3( t968 ).
    DATA t983 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t983.
    DATA(t984) = CAST zif_lnt_statement_runnable( t164 ).
    IF t984 IS BOUND.
      CREATE OBJECT t983.
      t983->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t985 TYPE REF TO object.
      t985 = t984.
      t983->oval = t985.
    ENDIF.
    APPEND t983 TO t982->items.
    DATA t986 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t987) = CAST zlnt_runtime_dyna_a429568d5be8( t962 ).
    DATA(t988) = CAST zlnt_runtime_dyna_a429568d5be8( t965 ).
    DATA(t989) = CAST zlnt_runtime_arra_c22708faf2e3( t968 ).
    t986 = zcl_lnt_st_combi_module=>seq( i_first = t987 i_second = t988 i_rest = t989 ).
    t961 = t986.
    IF t961 IS BOUND.
      CREATE OBJECT t960.
      t960->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t990 TYPE REF TO object.
      t990 = t961.
      t960->oval = t990.
    ENDIF.
    APPEND t960 TO t959->items.
    DATA t991 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t992) = CAST zlnt_runtime_dyna_a429568d5be8( t448 ).
    DATA(t993) = CAST zlnt_runtime_dyna_a429568d5be8( t451 ).
    DATA(t994) = CAST zlnt_runtime_arra_c22708faf2e3( t467 ).
    t991 = zcl_lnt_st_combi_module=>alt_prio( i_first = t992 i_second = t993 i_rest = t994 ).
    t447 = t991.
    t446 = t447.
    DATA t995 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t995.
    DATA t996 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t996.
    DATA(t997) = |KeyUser|.
    DATA t998 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t998.
    DATA t999 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t999.
    DATA t1000 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1001 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1002) = |AMDP OPTIONS|.
    CREATE OBJECT t1001.
    t1001->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1001->sval = t1002.
    t1000 = t1001.
    DATA t1003 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1003.
    DATA t1004 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1004.
    DATA t1005 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1006 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1007) = |READ-ONLY|.
    CREATE OBJECT t1006.
    t1006->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1006->sval = t1007.
    t1005 = zcl_lnt_st_combi_module=>opt_prio( i_first = t1006 ).
    IF t1005 IS BOUND.
      CREATE OBJECT t1004.
      t1004->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t1008 TYPE REF TO object.
      t1008 = t1005.
      t1004->oval = t1008.
    ENDIF.
    t1003 = t1004.
    DATA t1009 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1010 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1010.
    t1009 = t1010.
    DATA(t1011) = CAST zlnt_runtime_arra_c22708faf2e3( t1009 ).
    DATA t1012 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1013) = |CDS SESSION CLIENT|.
    CREATE OBJECT t1012.
    t1012->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1012->sval = t1013.
    APPEND t1012 TO t1011->items.
    DATA(t1014) = CAST zlnt_runtime_arra_c22708faf2e3( t1009 ).
    DATA t1015 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1015.
    DATA t1016 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1017 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1018 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1019) = |CURRENT|.
    CREATE OBJECT t1018.
    t1018->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1018->sval = t1019.
    t1017 = t1018.
    DATA t1020 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1021 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1022) = |DEPENDENT|.
    CREATE OBJECT t1021.
    t1021->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1021->sval = t1022.
    t1020 = t1021.
    DATA t1023 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1024 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1024.
    t1023 = t1024.
    DATA t1025 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t1026) = CAST zlnt_runtime_dyna_a429568d5be8( t1017 ).
    DATA(t1027) = CAST zlnt_runtime_dyna_a429568d5be8( t1020 ).
    DATA(t1028) = CAST zlnt_runtime_arra_c22708faf2e3( t1023 ).
    t1025 = zcl_lnt_st_combi_module=>alt( i_first = t1026 i_second = t1027 i_rest = t1028 ).
    t1016 = t1025.
    IF t1016 IS BOUND.
      CREATE OBJECT t1015.
      t1015->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t1029 TYPE REF TO object.
      t1029 = t1016.
      t1015->oval = t1029.
    ENDIF.
    APPEND t1015 TO t1014->items.
    DATA(t1030) = CAST zlnt_runtime_arra_c22708faf2e3( t1009 ).
    DATA t1031 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1031.
    DATA t1032 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1032.
    DATA t1033 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1033.
    DATA(t1034) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d226_08d3e6bb8e97 ).
    IF t1034 IS BOUND.
      CREATE OBJECT t1033.
      t1033->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t1033->cval = t1034.
    ENDIF.
    t1032 = zcl_lnt_st_combi_module=>opt_prio( i_first = t1033 ).
    IF t1032 IS BOUND.
      CREATE OBJECT t1031.
      t1031->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t1035 TYPE REF TO object.
      t1035 = t1032.
      t1031->oval = t1035.
    ENDIF.
    APPEND t1031 TO t1030->items.
    DATA(t1036) = CAST zlnt_runtime_arra_c22708faf2e3( t1009 ).
    DATA t1037 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1037.
    DATA t1038 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1038.
    DATA t1039 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1039.
    DATA(t1040) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a ).
    IF t1040 IS BOUND.
      CREATE OBJECT t1039.
      t1039->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t1039->cval = t1040.
    ENDIF.
    t1038 = zcl_lnt_st_combi_module=>opt_prio( i_first = t1039 ).
    IF t1038 IS BOUND.
      CREATE OBJECT t1037.
      t1037->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t1041 TYPE REF TO object.
      t1041 = t1038.
      t1037->oval = t1041.
    ENDIF.
    APPEND t1037 TO t1036->items.
    DATA(t1042) = CAST zlnt_runtime_arra_c22708faf2e3( t1009 ).
    DATA t1043 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1043.
    DATA t1044 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1044.
    DATA t1045 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1045.
    DATA(t1046) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d227_3477e061b4c4 ).
    IF t1046 IS BOUND.
      CREATE OBJECT t1045.
      t1045->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t1045->cval = t1046.
    ENDIF.
    t1044 = zcl_lnt_st_combi_module=>opt_prio( i_first = t1045 ).
    IF t1044 IS BOUND.
      CREATE OBJECT t1043.
      t1043->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t1047 TYPE REF TO object.
      t1047 = t1044.
      t1043->oval = t1047.
    ENDIF.
    APPEND t1043 TO t1042->items.
    DATA t1048 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t1049) = CAST zlnt_runtime_dyna_a429568d5be8( t1000 ).
    DATA(t1050) = CAST zlnt_runtime_dyna_a429568d5be8( t1003 ).
    DATA(t1051) = CAST zlnt_runtime_arra_c22708faf2e3( t1009 ).
    t1048 = zcl_lnt_st_combi_module=>seq( i_first = t1049 i_second = t1050 i_rest = t1051 ).
    t999 = t1048.
    IF t999 IS BOUND.
      CREATE OBJECT t998.
      t998->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t1052 TYPE REF TO object.
      t1052 = t999.
      t998->oval = t1052.
    ENDIF.
    t996 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t997 i_first = t998 ).
    t995 = t996.
    DATA t1053 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1053.
    DATA t1054 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1054.
    DATA t1055 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1055.
    DATA t1056 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1056.
    DATA t1057 TYPE REF TO zif_lnt_statement_runnable.
    DATA t1058 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1059 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1060) = |CLASS-METHODS|.
    CREATE OBJECT t1059.
    t1059->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1059->sval = t1060.
    t1058 = t1059.
    DATA t1061 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1062 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1063) = |METHODS|.
    CREATE OBJECT t1062.
    t1062->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1062->sval = t1063.
    t1061 = t1062.
    DATA t1064 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1065 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1065.
    t1064 = t1065.
    DATA t1066 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t1067) = CAST zlnt_runtime_dyna_a429568d5be8( t1058 ).
    DATA(t1068) = CAST zlnt_runtime_dyna_a429568d5be8( t1061 ).
    DATA(t1069) = CAST zlnt_runtime_arra_c22708faf2e3( t1064 ).
    t1066 = zcl_lnt_st_combi_module=>alt_prio( i_first = t1067 i_second = t1068 i_rest = t1069 ).
    t1057 = t1066.
    IF t1057 IS BOUND.
      CREATE OBJECT t1056.
      t1056->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t1070 TYPE REF TO object.
      t1070 = t1057.
      t1056->oval = t1070.
    ENDIF.
    t1055 = t1056.
    DATA t1071 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1071.
    DATA t1072 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1072.
    DATA(t1073) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d86_5c0b7073356207 ).
    IF t1073 IS BOUND.
      CREATE OBJECT t1072.
      t1072->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t1072->cval = t1073.
    ENDIF.
    t1071 = t1072.
    DATA t1074 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1075 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1075.
    t1074 = t1075.
    DATA(t1076) = CAST zlnt_runtime_arra_c22708faf2e3( t1074 ).
    DATA t1077 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1077.
    DATA t1078 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1078.
    DATA t1079 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1079.
    DATA t1080 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1080.
    DATA t1081 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1081.
    DATA t1082 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1082.
    DATA t1083 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1083.
    DATA t1084 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1084.
    DATA t1085 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1085.
    DATA(t1086) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d85_7546e7dce3c106 ).
    IF t1086 IS BOUND.
      CREATE OBJECT t1085.
      t1085->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t1085->cval = t1086.
    ENDIF.
    t1084 = zcl_lnt_st_combi_module=>opt_prio( i_first = t1085 ).
    IF t1084 IS BOUND.
      CREATE OBJECT t1083.
      t1083->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t1087 TYPE REF TO object.
      t1087 = t1084.
      t1083->oval = t1087.
    ENDIF.
    t1082 = t1083.
    DATA t1088 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1088.
    DATA t1089 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1089.
    DATA t1090 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1090.
    DATA t1091 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1091.
    DATA(t1092) = CAST zif_lnt_statement_runnable( t1 ).
    IF t1092 IS BOUND.
      CREATE OBJECT t1091.
      t1091->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t1093 TYPE REF TO object.
      t1093 = t1092.
      t1091->oval = t1093.
    ENDIF.
    t1090 = zcl_lnt_st_combi_module=>opt_prio( i_first = t1091 ).
    IF t1090 IS BOUND.
      CREATE OBJECT t1089.
      t1089->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t1094 TYPE REF TO object.
      t1094 = t1090.
      t1089->oval = t1094.
    ENDIF.
    t1088 = t1089.
    DATA t1095 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1096 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1096.
    t1095 = t1096.
    DATA(t1097) = CAST zlnt_runtime_arra_c22708faf2e3( t1095 ).
    DATA t1098 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1098.
    DATA(t1099) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d161_a1a721da0257 ).
    IF t1099 IS BOUND.
      CREATE OBJECT t1098.
      t1098->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t1098->cval = t1099.
    ENDIF.
    APPEND t1098 TO t1097->items.
    DATA t1100 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t1101) = CAST zlnt_runtime_dyna_a429568d5be8( t1082 ).
    DATA(t1102) = CAST zlnt_runtime_dyna_a429568d5be8( t1088 ).
    DATA(t1103) = CAST zlnt_runtime_arra_c22708faf2e3( t1095 ).
    t1100 = zcl_lnt_st_combi_module=>seq( i_first = t1101 i_second = t1102 i_rest = t1103 ).
    t1081 = t1100.
    IF t1081 IS BOUND.
      CREATE OBJECT t1080.
      t1080->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t1104 TYPE REF TO object.
      t1104 = t1081.
      t1080->oval = t1104.
    ENDIF.
    t1079 = t1080.
    DATA t1105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1105.
    DATA t1106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1106.
    DATA(t1107) = CAST zif_lnt_statement_runnable( t46 ).
    IF t1107 IS BOUND.
      CREATE OBJECT t1106.
      t1106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t1108 TYPE REF TO object.
      t1108 = t1107.
      t1106->oval = t1108.
    ENDIF.
    t1105 = t1106.
    DATA t1109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1110.
    t1109 = t1110.
    DATA(t1111) = CAST zlnt_runtime_arra_c22708faf2e3( t1109 ).
    DATA t1112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1112.
    DATA(t1113) = CAST zif_lnt_statement_runnable( t124 ).
    IF t1113 IS BOUND.
      CREATE OBJECT t1112.
      t1112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t1114 TYPE REF TO object.
      t1114 = t1113.
      t1112->oval = t1114.
    ENDIF.
    APPEND t1112 TO t1111->items.
    DATA(t1115) = CAST zlnt_runtime_arra_c22708faf2e3( t1109 ).
    DATA t1116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1116.
    DATA t1117 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1117.
    DATA(t1118) = |KeyUser|.
    DATA t1119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1119.
    DATA t1120 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1120.
    DATA t1121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1123) = |FOR|.
    CREATE OBJECT t1122.
    t1122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1122->sval = t1123.
    t1121 = t1122.
    DATA t1124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1124.
    DATA t1125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1125.
    DATA(t1126) = CAST zif_lnt_statement_runnable( t446 ).
    IF t1126 IS BOUND.
      CREATE OBJECT t1125.
      t1125->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t1127 TYPE REF TO object.
      t1127 = t1126.
      t1125->oval = t1127.
    ENDIF.
    t1124 = t1125.
    DATA t1128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1129 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1129.
    t1128 = t1129.
    DATA t1130 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t1131) = CAST zlnt_runtime_dyna_a429568d5be8( t1121 ).
    DATA(t1132) = CAST zlnt_runtime_dyna_a429568d5be8( t1124 ).
    DATA(t1133) = CAST zlnt_runtime_arra_c22708faf2e3( t1128 ).
    t1130 = zcl_lnt_st_combi_module=>seq( i_first = t1131 i_second = t1132 i_rest = t1133 ).
    t1120 = t1130.
    IF t1120 IS BOUND.
      CREATE OBJECT t1119.
      t1119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t1134 TYPE REF TO object.
      t1134 = t1120.
      t1119->oval = t1134.
    ENDIF.
    t1117 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t1118 i_first = t1119 ).
    IF t1117 IS BOUND.
      CREATE OBJECT t1116.
      t1116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t1135 TYPE REF TO object.
      t1135 = t1117.
      t1116->oval = t1135.
    ENDIF.
    APPEND t1116 TO t1115->items.
    DATA(t1136) = CAST zlnt_runtime_arra_c22708faf2e3( t1109 ).
    DATA t1137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1137.
    DATA(t1138) = CAST zif_lnt_statement_runnable( t995 ).
    IF t1138 IS BOUND.
      CREATE OBJECT t1137.
      t1137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t1139 TYPE REF TO object.
      t1139 = t1138.
      t1137->oval = t1139.
    ENDIF.
    APPEND t1137 TO t1136->items.
    DATA(t1140) = CAST zlnt_runtime_arra_c22708faf2e3( t1109 ).
    DATA t1141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1142) = |NOT AT END OF MODE|.
    CREATE OBJECT t1141.
    t1141->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1141->sval = t1142.
    APPEND t1141 TO t1140->items.
    DATA(t1143) = CAST zlnt_runtime_arra_c22708faf2e3( t1109 ).
    DATA t1144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1144.
    DATA t1145 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1145.
    DATA t1146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1146.
    DATA(t1147) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d245_8da77b7903ad ).
    IF t1147 IS BOUND.
      CREATE OBJECT t1146.
      t1146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t1146->cval = t1147.
    ENDIF.
    t1145 = zcl_lnt_st_combi_module=>opt_prio( i_first = t1146 ).
    IF t1145 IS BOUND.
      CREATE OBJECT t1144.
      t1144->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t1148 TYPE REF TO object.
      t1148 = t1145.
      t1144->oval = t1148.
    ENDIF.
    APPEND t1144 TO t1143->items.
    DATA t1149 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t1150) = CAST zlnt_runtime_dyna_a429568d5be8( t1079 ).
    DATA(t1151) = CAST zlnt_runtime_dyna_a429568d5be8( t1105 ).
    DATA(t1152) = CAST zlnt_runtime_arra_c22708faf2e3( t1109 ).
    t1149 = zcl_lnt_st_combi_module=>alt( i_first = t1150 i_second = t1151 i_rest = t1152 ).
    t1078 = t1149.
    IF t1078 IS BOUND.
      CREATE OBJECT t1077.
      t1077->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t1153 TYPE REF TO object.
      t1153 = t1078.
      t1077->oval = t1153.
    ENDIF.
    APPEND t1077 TO t1076->items.
    DATA t1154 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t1155) = CAST zlnt_runtime_dyna_a429568d5be8( t1055 ).
    DATA(t1156) = CAST zlnt_runtime_dyna_a429568d5be8( t1071 ).
    DATA(t1157) = CAST zlnt_runtime_arra_c22708faf2e3( t1074 ).
    t1154 = zcl_lnt_st_combi_module=>seq( i_first = t1155 i_second = t1156 i_rest = t1157 ).
    t1054 = t1154.
    t1053 = t1054.
    DATA t1158 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1158.
    DATA t1159 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1159.
    DATA t1160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1160.
    DATA t1161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1161.
    DATA t1162 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1162.
    DATA t1163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t1164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t1165) = |METHODS|.
    CREATE OBJECT t1164.
    t1164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t1164->sval = t1165.
    t1163 = t1164.
    DATA t1166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1166.
    DATA t1167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1167.
    DATA(t1168) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d86_5c0b7073356207 ).
    IF t1168 IS BOUND.
      CREATE OBJECT t1167.
      t1167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t1167->cval = t1168.
    ENDIF.
    t1166 = t1167.
    DATA t1169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1170.
    t1169 = t1170.
    DATA(t1171) = CAST zlnt_runtime_arra_c22708faf2e3( t1169 ).
    DATA t1172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1172.
    DATA t1173 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1173.
    DATA(t1174) = |KeyUser|.
    DATA t1175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1175.
    DATA(t1176) = CAST zif_lnt_statement_runnable( t416 ).
    IF t1176 IS BOUND.
      CREATE OBJECT t1175.
      t1175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t1177 TYPE REF TO object.
      t1177 = t1176.
      t1175->oval = t1177.
    ENDIF.
    t1173 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t1174 i_first = t1175 ).
    IF t1173 IS BOUND.
      CREATE OBJECT t1172.
      t1172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t1178 TYPE REF TO object.
      t1178 = t1173.
      t1172->oval = t1178.
    ENDIF.
    APPEND t1172 TO t1171->items.
    DATA t1179 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t1180) = CAST zlnt_runtime_dyna_a429568d5be8( t1163 ).
    DATA(t1181) = CAST zlnt_runtime_dyna_a429568d5be8( t1166 ).
    DATA(t1182) = CAST zlnt_runtime_arra_c22708faf2e3( t1169 ).
    t1179 = zcl_lnt_st_combi_module=>seq( i_first = t1180 i_second = t1181 i_rest = t1182 ).
    t1162 = t1179.
    IF t1162 IS BOUND.
      CREATE OBJECT t1161.
      t1161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t1183 TYPE REF TO object.
      t1183 = t1162.
      t1161->oval = t1183.
    ENDIF.
    t1160 = t1161.
    DATA t1184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1184.
    DATA t1185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1185.
    DATA(t1186) = CAST zif_lnt_statement_runnable( t1053 ).
    IF t1186 IS BOUND.
      CREATE OBJECT t1185.
      t1185->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t1187 TYPE REF TO object.
      t1187 = t1186.
      t1185->oval = t1187.
    ENDIF.
    t1184 = t1185.
    DATA t1188 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t1189 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1189.
    t1188 = t1189.
    DATA t1190 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t1191) = CAST zlnt_runtime_dyna_a429568d5be8( t1160 ).
    DATA(t1192) = CAST zlnt_runtime_dyna_a429568d5be8( t1184 ).
    DATA(t1193) = CAST zlnt_runtime_arra_c22708faf2e3( t1188 ).
    t1190 = zcl_lnt_st_combi_module=>alt( i_first = t1191 i_second = t1192 i_rest = t1193 ).
    t1159 = t1190.
    t1158 = t1159.
    DATA(t1194) = CAST zif_lnt_statement_runnable( t1158 ).
    result = t1194.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d536_087fe30efad2.
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
