* TS: src/abap/2_statements/statements/field.ts:8:1 Field
CLASS zcl_lnt_st_statem_field DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_statem_field IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |ON INPUT|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = |ON REQUEST|.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = t8.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t9 = t10.
    DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t13) = |ON CHAIN-REQUEST|.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = t13.
    APPEND t12 TO t11->items.
    DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t16) = |ON CHAIN-INPUT|.
    CREATE OBJECT t15.
    t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t15->sval = t16.
    APPEND t15 TO t14->items.
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = |AT CURSOR-SELECTION|.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = t19.
    APPEND t18 TO t17->items.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t21) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t22) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t23) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    t20 = zcl_lnt_st_combi_module=>alt( i_first = t21 i_second = t22 i_rest = t23 ).
    t2 = t20.
    t1 = t2.
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t24.
    DATA t25 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t28) = |MODULE|.
    CREATE OBJECT t27.
    t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t27->sval = t28.
    t26 = t27.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA(t31) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d175_344bc5837b82 ).
    IF t31 IS BOUND.
      CREATE OBJECT t30.
      t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t30->cval = t31.
    ENDIF.
    t29 = t30.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t33.
    t32 = t33.
    DATA(t34) = CAST zlnt_runtime_arra_c22708faf2e3( t32 ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t36.
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
    t36 = zcl_lnt_st_combi_module=>opt( i_first = t37 ).
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t40 TYPE REF TO object.
      t40 = t36.
      t35->oval = t40.
    ENDIF.
    APPEND t35 TO t34->items.
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t42) = CAST zlnt_runtime_dyna_a429568d5be8( t26 ).
    DATA(t43) = CAST zlnt_runtime_dyna_a429568d5be8( t29 ).
    DATA(t44) = CAST zlnt_runtime_arra_c22708faf2e3( t32 ).
    t41 = zcl_lnt_st_combi_module=>seq( i_first = t42 i_second = t43 i_rest = t44 ).
    t25 = t41.
    t24 = t25.
    DATA t45 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t45.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    DATA(t49) = CAST zif_lnt_statement_runnable( t1 ).
    IF t49 IS BOUND.
      CREATE OBJECT t48.
      t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t50 TYPE REF TO object.
      t50 = t49.
      t48->oval = t50.
    ENDIF.
    t47 = t48.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t53) = |MODULE|.
    CREATE OBJECT t52.
    t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t52->sval = t53.
    t51 = t52.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t55.
    t54 = t55.
    DATA(t56) = CAST zlnt_runtime_arra_c22708faf2e3( t54 ).
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA(t58) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d175_344bc5837b82 ).
    IF t58 IS BOUND.
      CREATE OBJECT t57.
      t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t57->cval = t58.
    ENDIF.
    APPEND t57 TO t56->items.
    DATA t59 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t60) = CAST zlnt_runtime_dyna_a429568d5be8( t47 ).
    DATA(t61) = CAST zlnt_runtime_dyna_a429568d5be8( t51 ).
    DATA(t62) = CAST zlnt_runtime_arra_c22708faf2e3( t54 ).
    t59 = zcl_lnt_st_combi_module=>seq( i_first = t60 i_second = t61 i_rest = t62 ).
    t46 = t59.
    t45 = t46.
    DATA t63 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t63.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t64.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t67) = |VALUES|.
    CREATE OBJECT t66.
    t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t66->sval = t67.
    t65 = t66.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t68.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t71) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d51_977bdd21674215 ).
    t70 = zcl_lnt_st_combi_module=>tok( i_t = t71 ).
    IF t70 IS BOUND.
      CREATE OBJECT t69.
      t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t72 TYPE REF TO object.
      t72 = t70.
      t69->oval = t72.
    ENDIF.
    t68 = t69.
    DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t74.
    t73 = t74.
    DATA(t75) = CAST zlnt_runtime_arra_c22708faf2e3( t73 ).
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t77) = |BETWEEN|.
    CREATE OBJECT t76.
    t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t76->sval = t77.
    APPEND t76 TO t75->items.
    DATA(t78) = CAST zlnt_runtime_arra_c22708faf2e3( t73 ).
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA(t80) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d119_f7714013c01c ).
    IF t80 IS BOUND.
      CREATE OBJECT t79.
      t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t79->cval = t80.
    ENDIF.
    APPEND t79 TO t78->items.
    DATA(t81) = CAST zlnt_runtime_arra_c22708faf2e3( t73 ).
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t83) = |AND|.
    CREATE OBJECT t82.
    t82->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t82->sval = t83.
    APPEND t82 TO t81->items.
    DATA(t84) = CAST zlnt_runtime_arra_c22708faf2e3( t73 ).
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    DATA(t86) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d119_f7714013c01c ).
    IF t86 IS BOUND.
      CREATE OBJECT t85.
      t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t85->cval = t86.
    ENDIF.
    APPEND t85 TO t84->items.
    DATA(t87) = CAST zlnt_runtime_arra_c22708faf2e3( t73 ).
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t88.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t90) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d29_f2ed5131cb71b6 ).
    t89 = zcl_lnt_st_combi_module=>tok( i_t = t90 ).
    IF t89 IS BOUND.
      CREATE OBJECT t88.
      t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t91 TYPE REF TO object.
      t91 = t89.
      t88->oval = t91.
    ENDIF.
    APPEND t88 TO t87->items.
    DATA t92 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t93) = CAST zlnt_runtime_dyna_a429568d5be8( t65 ).
    DATA(t94) = CAST zlnt_runtime_dyna_a429568d5be8( t68 ).
    DATA(t95) = CAST zlnt_runtime_arra_c22708faf2e3( t73 ).
    t92 = zcl_lnt_st_combi_module=>seq( i_first = t93 i_second = t94 i_rest = t95 ).
    t64 = t92.
    t63 = t64.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t96.
    DATA t97 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t97.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t100) = |WITH|.
    CREATE OBJECT t99.
    t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t99->sval = t100.
    t98 = t99.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t103.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA(t106) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
    IF t106 IS BOUND.
      CREATE OBJECT t105.
      t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t105->cval = t106.
    ENDIF.
    t104 = t105.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t108.
    DATA(t109) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d119_f7714013c01c ).
    IF t109 IS BOUND.
      CREATE OBJECT t108.
      t108->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t108->cval = t109.
    ENDIF.
    t107 = t108.
    DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t111.
    t110 = t111.
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t113) = CAST zlnt_runtime_dyna_a429568d5be8( t104 ).
    DATA(t114) = CAST zlnt_runtime_dyna_a429568d5be8( t107 ).
    DATA(t115) = CAST zlnt_runtime_arra_c22708faf2e3( t110 ).
    t112 = zcl_lnt_st_combi_module=>alt_prio( i_first = t113 i_second = t114 i_rest = t115 ).
    t103 = t112.
    IF t103 IS BOUND.
      CREATE OBJECT t102.
      t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t116 TYPE REF TO object.
      t116 = t103.
      t102->oval = t116.
    ENDIF.
    t101 = t102.
    DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t118 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t118.
    t117 = t118.
    DATA t119 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t120) = CAST zlnt_runtime_dyna_a429568d5be8( t98 ).
    DATA(t121) = CAST zlnt_runtime_dyna_a429568d5be8( t101 ).
    DATA(t122) = CAST zlnt_runtime_arra_c22708faf2e3( t117 ).
    t119 = zcl_lnt_st_combi_module=>seq( i_first = t120 i_second = t121 i_rest = t122 ).
    t97 = t119.
    t96 = t97.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t123.
    DATA t124 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t124.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    DATA(t127) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
    IF t127 IS BOUND.
      CREATE OBJECT t126.
      t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t126->cval = t127.
    ENDIF.
    t125 = t126.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t130) = |=|.
    CREATE OBJECT t129.
    t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t129->sval = t130.
    t128 = t129.
    DATA t131 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t132.
    t131 = t132.
    DATA(t133) = CAST zlnt_runtime_arra_c22708faf2e3( t131 ).
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    DATA(t135) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
    IF t135 IS BOUND.
      CREATE OBJECT t134.
      t134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t134->cval = t135.
    ENDIF.
    APPEND t134 TO t133->items.
    DATA t136 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t137) = CAST zlnt_runtime_dyna_a429568d5be8( t125 ).
    DATA(t138) = CAST zlnt_runtime_dyna_a429568d5be8( t128 ).
    DATA(t139) = CAST zlnt_runtime_arra_c22708faf2e3( t131 ).
    t136 = zcl_lnt_st_combi_module=>seq( i_first = t137 i_second = t138 i_rest = t139 ).
    t124 = t136.
    t123 = t124.
    DATA t140 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t140.
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t141.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    DATA(t144) = CAST zif_lnt_statement_runnable( t123 ).
    IF t144 IS BOUND.
      CREATE OBJECT t143.
      t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t145 TYPE REF TO object.
      t145 = t144.
      t143->oval = t145.
    ENDIF.
    t142 = t143.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t147.
    DATA t148 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t148.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    DATA t150 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t150.
    DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t153) = |AND|.
    CREATE OBJECT t152.
    t152->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t152->sval = t153.
    t151 = t152.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t154.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t155.
    DATA(t156) = CAST zif_lnt_statement_runnable( t123 ).
    IF t156 IS BOUND.
      CREATE OBJECT t155.
      t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t157 TYPE REF TO object.
      t157 = t156.
      t155->oval = t157.
    ENDIF.
    t154 = t155.
    DATA t158 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t159.
    t158 = t159.
    DATA t160 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t161) = CAST zlnt_runtime_dyna_a429568d5be8( t151 ).
    DATA(t162) = CAST zlnt_runtime_dyna_a429568d5be8( t154 ).
    DATA(t163) = CAST zlnt_runtime_arra_c22708faf2e3( t158 ).
    t160 = zcl_lnt_st_combi_module=>seq( i_first = t161 i_second = t162 i_rest = t163 ).
    t150 = t160.
    IF t150 IS BOUND.
      CREATE OBJECT t149.
      t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t164 TYPE REF TO object.
      t164 = t150.
      t149->oval = t164.
    ENDIF.
    t148 = zcl_lnt_st_combi_module=>star_prio( i_first = t149 ).
    IF t148 IS BOUND.
      CREATE OBJECT t147.
      t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t165 TYPE REF TO object.
      t165 = t148.
      t147->oval = t165.
    ENDIF.
    t146 = t147.
    DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t167.
    t166 = t167.
    DATA t168 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t169) = CAST zlnt_runtime_dyna_a429568d5be8( t142 ).
    DATA(t170) = CAST zlnt_runtime_dyna_a429568d5be8( t146 ).
    DATA(t171) = CAST zlnt_runtime_arra_c22708faf2e3( t166 ).
    t168 = zcl_lnt_st_combi_module=>seq( i_first = t169 i_second = t170 i_rest = t171 ).
    t141 = t168.
    t140 = t141.
    DATA t172 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t172.
    DATA t173 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t173.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t176) = |INTO|.
    CREATE OBJECT t175.
    t175->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t175->sval = t176.
    t174 = t175.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t177.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t178.
    DATA(t179) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
    IF t179 IS BOUND.
      CREATE OBJECT t178.
      t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t178->cval = t179.
    ENDIF.
    t177 = t178.
    DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t181 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t181.
    t180 = t181.
    DATA t182 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t183) = CAST zlnt_runtime_dyna_a429568d5be8( t174 ).
    DATA(t184) = CAST zlnt_runtime_dyna_a429568d5be8( t177 ).
    DATA(t185) = CAST zlnt_runtime_arra_c22708faf2e3( t180 ).
    t182 = zcl_lnt_st_combi_module=>seq( i_first = t183 i_second = t184 i_rest = t185 ).
    t173 = t182.
    t172 = t173.
    DATA t186 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t186.
    DATA t187 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t187.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t190) = |SELECT * FROM|.
    CREATE OBJECT t189.
    t189->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t189->sval = t190.
    t188 = t189.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t191.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t192.
    DATA(t193) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
    IF t193 IS BOUND.
      CREATE OBJECT t192.
      t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t192->cval = t193.
    ENDIF.
    t191 = t192.
    DATA t194 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t195 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t195.
    t194 = t195.
    DATA(t196) = CAST zlnt_runtime_arra_c22708faf2e3( t194 ).
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t198) = |WHERE|.
    CREATE OBJECT t197.
    t197->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t197->sval = t198.
    APPEND t197 TO t196->items.
    DATA(t199) = CAST zlnt_runtime_arra_c22708faf2e3( t194 ).
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t200.
    DATA(t201) = CAST zif_lnt_statement_runnable( t140 ).
    IF t201 IS BOUND.
      CREATE OBJECT t200.
      t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t202 TYPE REF TO object.
      t202 = t201.
      t200->oval = t202.
    ENDIF.
    APPEND t200 TO t199->items.
    DATA(t203) = CAST zlnt_runtime_arra_c22708faf2e3( t194 ).
    DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t204.
    DATA t205 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t205.
    DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t206.
    DATA(t207) = CAST zif_lnt_statement_runnable( t172 ).
    IF t207 IS BOUND.
      CREATE OBJECT t206.
      t206->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t208 TYPE REF TO object.
      t208 = t207.
      t206->oval = t208.
    ENDIF.
    t205 = zcl_lnt_st_combi_module=>opt( i_first = t206 ).
    IF t205 IS BOUND.
      CREATE OBJECT t204.
      t204->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t209 TYPE REF TO object.
      t209 = t205.
      t204->oval = t209.
    ENDIF.
    APPEND t204 TO t203->items.
    DATA(t210) = CAST zlnt_runtime_arra_c22708faf2e3( t194 ).
    DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t211.
    DATA t212 TYPE REF TO zif_lnt_statement_runnable.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t214) = |WHENEVER NOT FOUND SEND ERRORMESSAGE|.
    CREATE OBJECT t213.
    t213->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t213->sval = t214.
    t212 = zcl_lnt_st_combi_module=>opt( i_first = t213 ).
    IF t212 IS BOUND.
      CREATE OBJECT t211.
      t211->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t215 TYPE REF TO object.
      t215 = t212.
      t211->oval = t215.
    ENDIF.
    APPEND t211 TO t210->items.
    DATA t216 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t217) = CAST zlnt_runtime_dyna_a429568d5be8( t188 ).
    DATA(t218) = CAST zlnt_runtime_dyna_a429568d5be8( t191 ).
    DATA(t219) = CAST zlnt_runtime_arra_c22708faf2e3( t194 ).
    t216 = zcl_lnt_st_combi_module=>seq( i_first = t217 i_second = t218 i_rest = t219 ).
    t187 = t216.
    t186 = t187.
    DATA t220 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t220.
    DATA t221 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t221.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t224) = |FIELD|.
    CREATE OBJECT t223.
    t223->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t223->sval = t224.
    t222 = t223.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t225.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t226.
    DATA(t227) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
    IF t227 IS BOUND.
      CREATE OBJECT t226.
      t226->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t226->cval = t227.
    ENDIF.
    t225 = t226.
    DATA t228 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t229 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t229.
    t228 = t229.
    DATA(t230) = CAST zlnt_runtime_arra_c22708faf2e3( t228 ).
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t231.
    DATA t232 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t232.
    DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t233.
    DATA t234 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t234.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t235.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t236.
    DATA(t237) = CAST zif_lnt_statement_runnable( t24 ).
    IF t237 IS BOUND.
      CREATE OBJECT t236.
      t236->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t238 TYPE REF TO object.
      t238 = t237.
      t236->oval = t238.
    ENDIF.
    t235 = t236.
    DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t239.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t240.
    DATA(t241) = CAST zif_lnt_statement_runnable( t45 ).
    IF t241 IS BOUND.
      CREATE OBJECT t240.
      t240->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t242 TYPE REF TO object.
      t242 = t241.
      t240->oval = t242.
    ENDIF.
    t239 = t240.
    DATA t243 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t244 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t244.
    t243 = t244.
    DATA(t245) = CAST zlnt_runtime_arra_c22708faf2e3( t243 ).
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t246.
    DATA(t247) = CAST zif_lnt_statement_runnable( t63 ).
    IF t247 IS BOUND.
      CREATE OBJECT t246.
      t246->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t248 TYPE REF TO object.
      t248 = t247.
      t246->oval = t248.
    ENDIF.
    APPEND t246 TO t245->items.
    DATA(t249) = CAST zlnt_runtime_arra_c22708faf2e3( t243 ).
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t250.
    DATA(t251) = CAST zif_lnt_statement_runnable( t96 ).
    IF t251 IS BOUND.
      CREATE OBJECT t250.
      t250->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t252 TYPE REF TO object.
      t252 = t251.
      t250->oval = t252.
    ENDIF.
    APPEND t250 TO t249->items.
    DATA(t253) = CAST zlnt_runtime_arra_c22708faf2e3( t243 ).
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t254.
    DATA(t255) = CAST zif_lnt_statement_runnable( t186 ).
    IF t255 IS BOUND.
      CREATE OBJECT t254.
      t254->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t256 TYPE REF TO object.
      t256 = t255.
      t254->oval = t256.
    ENDIF.
    APPEND t254 TO t253->items.
    DATA t257 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t258) = CAST zlnt_runtime_dyna_a429568d5be8( t235 ).
    DATA(t259) = CAST zlnt_runtime_dyna_a429568d5be8( t239 ).
    DATA(t260) = CAST zlnt_runtime_arra_c22708faf2e3( t243 ).
    t257 = zcl_lnt_st_combi_module=>alt_prio( i_first = t258 i_second = t259 i_rest = t260 ).
    t234 = t257.
    IF t234 IS BOUND.
      CREATE OBJECT t233.
      t233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t261 TYPE REF TO object.
      t261 = t234.
      t233->oval = t261.
    ENDIF.
    t232 = zcl_lnt_st_combi_module=>opt( i_first = t233 ).
    IF t232 IS BOUND.
      CREATE OBJECT t231.
      t231->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t262 TYPE REF TO object.
      t262 = t232.
      t231->oval = t262.
    ENDIF.
    APPEND t231 TO t230->items.
    DATA t263 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t264) = CAST zlnt_runtime_dyna_a429568d5be8( t222 ).
    DATA(t265) = CAST zlnt_runtime_dyna_a429568d5be8( t225 ).
    DATA(t266) = CAST zlnt_runtime_arra_c22708faf2e3( t228 ).
    t263 = zcl_lnt_st_combi_module=>seq( i_first = t264 i_second = t265 i_rest = t266 ).
    t221 = t263.
    t220 = t221.
    DATA t267 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t267.
    DATA(t268) = |Cloud|.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t269.
    DATA(t270) = CAST zif_lnt_statement_runnable( t220 ).
    IF t270 IS BOUND.
      CREATE OBJECT t269.
      t269->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t271 TYPE REF TO object.
      t271 = t270.
      t269->oval = t271.
    ENDIF.
    t267 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t268 i_first = t269 ).
    result = t267.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d478_fdbc54999e83.
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
