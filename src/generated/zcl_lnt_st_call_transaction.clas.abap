* TS: src/abap/2_statements/statements/call_transaction.ts:7:1 CallTransaction
CLASS zcl_lnt_st_call_transaction DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_call_transaction IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |OPTIONS FROM|.
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
    DATA(t19) = |MESSAGES INTO|.
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
    CLEAR t31.
    DATA t32 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t32.
    DATA t33 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t33.
    DATA t34 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t34.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t34 = zcl_lnt_version_module=>release_b8cd.
    DATA(t35) = |v740sp02|.
    t33 = t34->get( p0 = t35 ).
    t32 = t33.
    IF t32 IS BOUND.
      CREATE OBJECT t31.
      t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t36 TYPE REF TO object.
      t36 = t32.
      t31->oval = t36.
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    DATA t38 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t44) = |WITH|.
    CREATE OBJECT t43.
    t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t43->sval = t44.
    t42 = t43.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t47) = |WITHOUT|.
    CREATE OBJECT t46.
    t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t46->sval = t47.
    t45 = t46.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t49.
    t48 = t49.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t51) = CAST zlnt_runtime_dyna_a429568d5be8( t42 ).
    DATA(t52) = CAST zlnt_runtime_dyna_a429568d5be8( t45 ).
    DATA(t53) = CAST zlnt_runtime_arra_c22708faf2e3( t48 ).
    t50 = zcl_lnt_st_combi_module=>alt_prio( i_first = t51 i_second = t52 i_rest = t53 ).
    t41 = t50.
    IF t41 IS BOUND.
      CREATE OBJECT t40.
      t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t54 TYPE REF TO object.
      t54 = t41.
      t40->oval = t54.
    ENDIF.
    t39 = t40.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t57) = |AUTHORITY-CHECK|.
    CREATE OBJECT t56.
    t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t56->sval = t57.
    t55 = t56.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t59.
    t58 = t59.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t61) = CAST zlnt_runtime_dyna_a429568d5be8( t39 ).
    DATA(t62) = CAST zlnt_runtime_dyna_a429568d5be8( t55 ).
    DATA(t63) = CAST zlnt_runtime_arra_c22708faf2e3( t58 ).
    t60 = zcl_lnt_st_combi_module=>seq( i_first = t61 i_second = t62 i_rest = t63 ).
    t38 = t60.
    IF t38 IS BOUND.
      CREATE OBJECT t37.
      t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t64 TYPE REF TO object.
      t64 = t38.
      t37->oval = t64.
    ENDIF.
    DATA t65 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t65.
    DATA(t66) = abap_true.
    IF t66 = abap_true.
      DATA t67 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t67.
      DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t68.
      DATA(t69) = abap_true.
      IF t69 = abap_true.
        DATA(t70) = |OpenABAP|.
        DATA(t71) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t71->has = abap_true.
        t71->value = t70.
        t68 = t71.
      ELSE.
        DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t72.
        t68 = t72.
      ENDIF.
      t67 = NEW zcl_lnt_iver_options( i_also = t68 ).
      t65 = t67.
    ELSE.
      DATA t73 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t73.
      t65 = t73.
    ENDIF.
    t30 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t31 i_first = t37 i_opts = t65 ).
    t29 = t30.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t74.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA t78 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t81) = |UPDATE|.
    CREATE OBJECT t80.
    t80->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t80->sval = t81.
    t79 = t80.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    DATA(t84) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t84 IS BOUND.
      CREATE OBJECT t83.
      t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t83->cval = t84.
    ENDIF.
    t82 = t83.
    DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t86.
    t85 = t86.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t88) = CAST zlnt_runtime_dyna_a429568d5be8( t79 ).
    DATA(t89) = CAST zlnt_runtime_dyna_a429568d5be8( t82 ).
    DATA(t90) = CAST zlnt_runtime_arra_c22708faf2e3( t85 ).
    t87 = zcl_lnt_st_combi_module=>seq( i_first = t88 i_second = t89 i_rest = t90 ).
    t78 = t87.
    IF t78 IS BOUND.
      CREATE OBJECT t77.
      t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t91 TYPE REF TO object.
      t91 = t78.
      t77->oval = t91.
    ENDIF.
    t76 = t77.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t94) = |AND SKIP FIRST SCREEN|.
    CREATE OBJECT t93.
    t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t93->sval = t94.
    t92 = t93.
    DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t96.
    t95 = t96.
    DATA(t97) = CAST zlnt_runtime_arra_c22708faf2e3( t95 ).
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA(t99) = CAST zif_lnt_statement_runnable( t1 ).
    IF t99 IS BOUND.
      CREATE OBJECT t98.
      t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t100 TYPE REF TO object.
      t100 = t99.
      t98->oval = t100.
    ENDIF.
    APPEND t98 TO t97->items.
    DATA(t101) = CAST zlnt_runtime_arra_c22708faf2e3( t95 ).
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA(t103) = CAST zif_lnt_statement_runnable( t15 ).
    IF t103 IS BOUND.
      CREATE OBJECT t102.
      t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t104 TYPE REF TO object.
      t104 = t103.
      t102->oval = t104.
    ENDIF.
    APPEND t102 TO t101->items.
    DATA(t105) = CAST zlnt_runtime_arra_c22708faf2e3( t95 ).
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA t107 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t107.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t110) = |MODE|.
    CREATE OBJECT t109.
    t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t109->sval = t110.
    t108 = t109.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t112.
    DATA(t113) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t113 IS BOUND.
      CREATE OBJECT t112.
      t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t112->cval = t113.
    ENDIF.
    t111 = t112.
    DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t115.
    t114 = t115.
    DATA t116 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t117) = CAST zlnt_runtime_dyna_a429568d5be8( t108 ).
    DATA(t118) = CAST zlnt_runtime_dyna_a429568d5be8( t111 ).
    DATA(t119) = CAST zlnt_runtime_arra_c22708faf2e3( t114 ).
    t116 = zcl_lnt_st_combi_module=>seq( i_first = t117 i_second = t118 i_rest = t119 ).
    t107 = t116.
    IF t107 IS BOUND.
      CREATE OBJECT t106.
      t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t120 TYPE REF TO object.
      t120 = t107.
      t106->oval = t120.
    ENDIF.
    APPEND t106 TO t105->items.
    DATA t121 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t122) = CAST zlnt_runtime_dyna_a429568d5be8( t76 ).
    DATA(t123) = CAST zlnt_runtime_dyna_a429568d5be8( t92 ).
    DATA(t124) = CAST zlnt_runtime_arra_c22708faf2e3( t95 ).
    t121 = zcl_lnt_st_combi_module=>per( i_first = t122 i_second = t123 i_rest = t124 ).
    t75 = t121.
    t74 = t75.
    DATA t125 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t125.
    DATA t126 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t126.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t129) = |CALL TRANSACTION|.
    CREATE OBJECT t128.
    t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t128->sval = t129.
    t127 = t128.
    DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA(t132) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t132 IS BOUND.
      CREATE OBJECT t131.
      t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t131->cval = t132.
    ENDIF.
    t130 = t131.
    DATA t133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t134.
    t133 = t134.
    DATA(t135) = CAST zlnt_runtime_arra_c22708faf2e3( t133 ).
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t136.
    DATA t137 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t137.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    DATA(t139) = CAST zif_lnt_statement_runnable( t29 ).
    IF t139 IS BOUND.
      CREATE OBJECT t138.
      t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t140 TYPE REF TO object.
      t140 = t139.
      t138->oval = t140.
    ENDIF.
    t137 = zcl_lnt_st_combi_module=>opt_prio( i_first = t138 ).
    IF t137 IS BOUND.
      CREATE OBJECT t136.
      t136->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t141 TYPE REF TO object.
      t141 = t137.
      t136->oval = t141.
    ENDIF.
    APPEND t136 TO t135->items.
    DATA(t142) = CAST zlnt_runtime_arra_c22708faf2e3( t133 ).
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    DATA t144 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t144.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t145.
    DATA t146 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t146.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t149) = |USING|.
    CREATE OBJECT t148.
    t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t148->sval = t149.
    t147 = t148.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t150.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t151.
    DATA(t152) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t152 IS BOUND.
      CREATE OBJECT t151.
      t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t151->cval = t152.
    ENDIF.
    t150 = t151.
    DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t154.
    t153 = t154.
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t156) = CAST zlnt_runtime_dyna_a429568d5be8( t147 ).
    DATA(t157) = CAST zlnt_runtime_dyna_a429568d5be8( t150 ).
    DATA(t158) = CAST zlnt_runtime_arra_c22708faf2e3( t153 ).
    t155 = zcl_lnt_st_combi_module=>seq( i_first = t156 i_second = t157 i_rest = t158 ).
    t146 = t155.
    IF t146 IS BOUND.
      CREATE OBJECT t145.
      t145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t159 TYPE REF TO object.
      t159 = t146.
      t145->oval = t159.
    ENDIF.
    t144 = zcl_lnt_st_combi_module=>opt_prio( i_first = t145 ).
    IF t144 IS BOUND.
      CREATE OBJECT t143.
      t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t160 TYPE REF TO object.
      t160 = t144.
      t143->oval = t160.
    ENDIF.
    APPEND t143 TO t142->items.
    DATA(t161) = CAST zlnt_runtime_arra_c22708faf2e3( t133 ).
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t162.
    DATA t163 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t163.
    DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t164.
    DATA(t165) = CAST zif_lnt_statement_runnable( t74 ).
    IF t165 IS BOUND.
      CREATE OBJECT t164.
      t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t166 TYPE REF TO object.
      t166 = t165.
      t164->oval = t166.
    ENDIF.
    t163 = zcl_lnt_st_combi_module=>opt( i_first = t164 ).
    IF t163 IS BOUND.
      CREATE OBJECT t162.
      t162->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t167 TYPE REF TO object.
      t167 = t163.
      t162->oval = t167.
    ENDIF.
    APPEND t162 TO t161->items.
    DATA t168 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t169) = CAST zlnt_runtime_dyna_a429568d5be8( t127 ).
    DATA(t170) = CAST zlnt_runtime_dyna_a429568d5be8( t130 ).
    DATA(t171) = CAST zlnt_runtime_arra_c22708faf2e3( t133 ).
    t168 = zcl_lnt_st_combi_module=>seq( i_first = t169 i_second = t170 i_rest = t171 ).
    t126 = t168.
    t125 = t126.
    DATA t172 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t172.
    DATA(t173) = |Cloud|.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t174.
    DATA(t175) = CAST zif_lnt_statement_runnable( t125 ).
    IF t175 IS BOUND.
      CREATE OBJECT t174.
      t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t176 TYPE REF TO object.
      t176 = t175.
      t174->oval = t176.
    ENDIF.
    t172 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t173 i_first = t174 ).
    result = t172.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d381_567a5bf1103b.
  ENDMETHOD.
  METHOD zif_lnt_statement~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement~get_matcher.
    result = me->get_matcher( ).
  ENDMETHOD.
  METHOD zif_lnt_union_dc0fb493~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
