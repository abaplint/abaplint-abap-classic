* TS: src/abap/2_statements/statements/insert_report.ts:7:1 InsertReport
CLASS zcl_lnt_st_insert_report DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_insert_report IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = |STATE|.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = t8.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA(t11) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t10->cval = t11.
    ENDIF.
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t13.
    t12 = t13.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t15) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t16) = CAST zlnt_runtime_dyna_a429568d5be8( t9 ).
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t12 ).
    t14 = zcl_lnt_st_combi_module=>seq( i_first = t15 i_second = t16 i_rest = t17 ).
    t5 = t14.
    IF t5 IS BOUND.
      CREATE OBJECT t4.
      t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t18 TYPE REF TO object.
      t18 = t5.
      t4->oval = t18.
    ENDIF.
    t3 = t4.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t24) = |EXTENSION TYPE|.
    CREATE OBJECT t23.
    t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t23->sval = t24.
    t22 = t23.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA(t27) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t27 IS BOUND.
      CREATE OBJECT t26.
      t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t26->cval = t27.
    ENDIF.
    t25 = t26.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t29.
    t28 = t29.
    DATA t30 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t31) = CAST zlnt_runtime_dyna_a429568d5be8( t22 ).
    DATA(t32) = CAST zlnt_runtime_dyna_a429568d5be8( t25 ).
    DATA(t33) = CAST zlnt_runtime_arra_c22708faf2e3( t28 ).
    t30 = zcl_lnt_st_combi_module=>seq( i_first = t31 i_second = t32 i_rest = t33 ).
    t21 = t30.
    IF t21 IS BOUND.
      CREATE OBJECT t20.
      t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t34 TYPE REF TO object.
      t34 = t21.
      t20->oval = t34.
    ENDIF.
    t19 = t20.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t36.
    t35 = t36.
    DATA(t37) = CAST zlnt_runtime_arra_c22708faf2e3( t35 ).
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t42) = |DIRECTORY ENTRY|.
    CREATE OBJECT t41.
    t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t41->sval = t42.
    t40 = t41.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA(t45) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t45 IS BOUND.
      CREATE OBJECT t44.
      t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t44->cval = t45.
    ENDIF.
    t43 = t44.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t47.
    t46 = t47.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t49) = CAST zlnt_runtime_dyna_a429568d5be8( t40 ).
    DATA(t50) = CAST zlnt_runtime_dyna_a429568d5be8( t43 ).
    DATA(t51) = CAST zlnt_runtime_arra_c22708faf2e3( t46 ).
    t48 = zcl_lnt_st_combi_module=>seq( i_first = t49 i_second = t50 i_rest = t51 ).
    t39 = t48.
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t52 TYPE REF TO object.
      t52 = t39.
      t38->oval = t52.
    ENDIF.
    APPEND t38 TO t37->items.
    DATA(t53) = CAST zlnt_runtime_arra_c22708faf2e3( t35 ).
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA t55 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t58) = |UNICODE ENABLING|.
    CREATE OBJECT t57.
    t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t57->sval = t58.
    t56 = t57.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    DATA(t61) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t61 IS BOUND.
      CREATE OBJECT t60.
      t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t60->cval = t61.
    ENDIF.
    t59 = t60.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t63.
    t62 = t63.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t65) = CAST zlnt_runtime_dyna_a429568d5be8( t56 ).
    DATA(t66) = CAST zlnt_runtime_dyna_a429568d5be8( t59 ).
    DATA(t67) = CAST zlnt_runtime_arra_c22708faf2e3( t62 ).
    t64 = zcl_lnt_st_combi_module=>seq( i_first = t65 i_second = t66 i_rest = t67 ).
    t55 = t64.
    IF t55 IS BOUND.
      CREATE OBJECT t54.
      t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t68 TYPE REF TO object.
      t68 = t55.
      t54->oval = t68.
    ENDIF.
    APPEND t54 TO t53->items.
    DATA(t69) = CAST zlnt_runtime_arra_c22708faf2e3( t35 ).
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t74) = |PROGRAM TYPE|.
    CREATE OBJECT t73.
    t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t73->sval = t74.
    t72 = t73.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA(t77) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t77 IS BOUND.
      CREATE OBJECT t76.
      t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t76->cval = t77.
    ENDIF.
    t75 = t76.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t79.
    t78 = t79.
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t81) = CAST zlnt_runtime_dyna_a429568d5be8( t72 ).
    DATA(t82) = CAST zlnt_runtime_dyna_a429568d5be8( t75 ).
    DATA(t83) = CAST zlnt_runtime_arra_c22708faf2e3( t78 ).
    t80 = zcl_lnt_st_combi_module=>seq( i_first = t81 i_second = t82 i_rest = t83 ).
    t71 = t80.
    IF t71 IS BOUND.
      CREATE OBJECT t70.
      t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t84 TYPE REF TO object.
      t84 = t71.
      t70->oval = t84.
    ENDIF.
    APPEND t70 TO t69->items.
    DATA(t85) = CAST zlnt_runtime_arra_c22708faf2e3( t35 ).
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t87.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA t89 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t89.
    DATA t90 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t91.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t91 = zcl_lnt_version_module=>release_b8cd.
    DATA(t92) = |v750|.
    t90 = t91->get( p0 = t92 ).
    t89 = t90.
    IF t89 IS BOUND.
      CREATE OBJECT t88.
      t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t93 TYPE REF TO object.
      t93 = t89.
      t88->oval = t93.
    ENDIF.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t95.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t98) = |VERSION|.
    CREATE OBJECT t97.
    t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t97->sval = t98.
    t96 = t97.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA(t101) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t101 IS BOUND.
      CREATE OBJECT t100.
      t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t100->cval = t101.
    ENDIF.
    t99 = t100.
    DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t103 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t103.
    t102 = t103.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t105) = CAST zlnt_runtime_dyna_a429568d5be8( t96 ).
    DATA(t106) = CAST zlnt_runtime_dyna_a429568d5be8( t99 ).
    DATA(t107) = CAST zlnt_runtime_arra_c22708faf2e3( t102 ).
    t104 = zcl_lnt_st_combi_module=>seq( i_first = t105 i_second = t106 i_rest = t107 ).
    t95 = t104.
    IF t95 IS BOUND.
      CREATE OBJECT t94.
      t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t108 TYPE REF TO object.
      t108 = t95.
      t94->oval = t108.
    ENDIF.
    DATA t109 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t109.
    t87 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t88 i_first = t94 i_opts = t109 ).
    IF t87 IS BOUND.
      CREATE OBJECT t86.
      t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t110 TYPE REF TO object.
      t110 = t87.
      t86->oval = t110.
    ENDIF.
    APPEND t86 TO t85->items.
    DATA(t111) = CAST zlnt_runtime_arra_c22708faf2e3( t35 ).
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t112.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t113.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t116) = |FIXED-POINT ARITHMETIC|.
    CREATE OBJECT t115.
    t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t115->sval = t116.
    t114 = t115.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA(t119) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t119 IS BOUND.
      CREATE OBJECT t118.
      t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t118->cval = t119.
    ENDIF.
    t117 = t118.
    DATA t120 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t121.
    t120 = t121.
    DATA t122 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t123) = CAST zlnt_runtime_dyna_a429568d5be8( t114 ).
    DATA(t124) = CAST zlnt_runtime_dyna_a429568d5be8( t117 ).
    DATA(t125) = CAST zlnt_runtime_arra_c22708faf2e3( t120 ).
    t122 = zcl_lnt_st_combi_module=>seq( i_first = t123 i_second = t124 i_rest = t125 ).
    t113 = t122.
    IF t113 IS BOUND.
      CREATE OBJECT t112.
      t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t126 TYPE REF TO object.
      t126 = t113.
      t112->oval = t126.
    ENDIF.
    APPEND t112 TO t111->items.
    DATA(t127) = CAST zlnt_runtime_arra_c22708faf2e3( t35 ).
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t129) = |KEEPING DIRECTORY ENTRY|.
    CREATE OBJECT t128.
    t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t128->sval = t129.
    APPEND t128 TO t127->items.
    DATA t130 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t131) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t132) = CAST zlnt_runtime_dyna_a429568d5be8( t19 ).
    DATA(t133) = CAST zlnt_runtime_arra_c22708faf2e3( t35 ).
    t130 = zcl_lnt_st_combi_module=>per( i_first = t131 i_second = t132 i_rest = t133 ).
    t2 = t130.
    t1 = t2.
    DATA t134 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t134.
    DATA t135 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t135.
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t138) = |INSERT REPORT|.
    CREATE OBJECT t137.
    t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t137->sval = t138.
    t136 = t137.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t139.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t140.
    DATA(t141) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t141 IS BOUND.
      CREATE OBJECT t140.
      t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t140->cval = t141.
    ENDIF.
    t139 = t140.
    DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t143 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t143.
    t142 = t143.
    DATA(t144) = CAST zlnt_runtime_arra_c22708faf2e3( t142 ).
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t146) = |FROM|.
    CREATE OBJECT t145.
    t145->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t145->sval = t146.
    APPEND t145 TO t144->items.
    DATA(t147) = CAST zlnt_runtime_arra_c22708faf2e3( t142 ).
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    DATA(t149) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d93_8213d1edad7f74 ).
    IF t149 IS BOUND.
      CREATE OBJECT t148.
      t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t148->cval = t149.
    ENDIF.
    APPEND t148 TO t147->items.
    DATA(t150) = CAST zlnt_runtime_arra_c22708faf2e3( t142 ).
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t151.
    DATA t152 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t152.
    DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t153.
    DATA(t154) = CAST zif_lnt_statement_runnable( t1 ).
    IF t154 IS BOUND.
      CREATE OBJECT t153.
      t153->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t155 TYPE REF TO object.
      t155 = t154.
      t153->oval = t155.
    ENDIF.
    t152 = zcl_lnt_st_combi_module=>opt( i_first = t153 ).
    IF t152 IS BOUND.
      CREATE OBJECT t151.
      t151->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t156 TYPE REF TO object.
      t156 = t152.
      t151->oval = t156.
    ENDIF.
    APPEND t151 TO t150->items.
    DATA t157 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t158) = CAST zlnt_runtime_dyna_a429568d5be8( t136 ).
    DATA(t159) = CAST zlnt_runtime_dyna_a429568d5be8( t139 ).
    DATA(t160) = CAST zlnt_runtime_arra_c22708faf2e3( t142 ).
    t157 = zcl_lnt_st_combi_module=>seq( i_first = t158 i_second = t159 i_rest = t160 ).
    t135 = t157.
    t134 = t135.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t161.
    DATA(t162) = |Cloud|.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t163.
    DATA(t164) = CAST zif_lnt_statement_runnable( t134 ).
    IF t164 IS BOUND.
      CREATE OBJECT t163.
      t163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t165 TYPE REF TO object.
      t165 = t164.
      t163->oval = t165.
    ENDIF.
    t161 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t162 i_first = t163 ).
    result = t161.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d520_18c2b55bcee8.
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
