* TS: src/abap/2_statements/statements/type.ts:8:1 Type
CLASS zcl_lnt_st_statem_type DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_statem_type IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA(t5) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d143_3ba838dd8924 ).
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
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d145_fbc450f30e9d ).
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
    CLEAR t12.
    DATA(t13) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d144_e73838d999aa ).
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t12->cval = t13.
    ENDIF.
    APPEND t12 TO t11->items.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t15) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t16) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    t14 = zcl_lnt_st_combi_module=>per( i_first = t15 i_second = t16 i_rest = t17 ).
    t2 = t14.
    t1 = t2.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t21.
    DATA t22 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t23.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t23 = zcl_lnt_version_module=>release_b8cd.
    DATA(t24) = |v760|.
    t22 = t23->get( p0 = t24 ).
    t21 = t22.
    IF t21 IS BOUND.
      CREATE OBJECT t20.
      t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t25 TYPE REF TO object.
      t25 = t21.
      t20->oval = t25.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t30) = |TYPE|.
    CREATE OBJECT t29.
    t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t29->sval = t30.
    t28 = t29.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA(t33) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t33 IS BOUND.
      CREATE OBJECT t32.
      t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t32->cval = t33.
    ENDIF.
    t31 = t32.
    DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t35.
    t34 = t35.
    DATA(t36) = CAST zlnt_runtime_arra_c22708faf2e3( t34 ).
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t38) = |CLIENT|.
    CREATE OBJECT t37.
    t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t37->sval = t38.
    APPEND t37 TO t36->items.
    DATA(t39) = CAST zlnt_runtime_arra_c22708faf2e3( t34 ).
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t41) = |SPECIFIED|.
    CREATE OBJECT t40.
    t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t40->sval = t41.
    APPEND t40 TO t39->items.
    DATA(t42) = CAST zlnt_runtime_arra_c22708faf2e3( t34 ).
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA(t44) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
    IF t44 IS BOUND.
      CREATE OBJECT t43.
      t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t43->cval = t44.
    ENDIF.
    APPEND t43 TO t42->items.
    DATA(t45) = CAST zlnt_runtime_arra_c22708faf2e3( t34 ).
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
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t51.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA(t54) = CAST zif_lnt_statement_runnable( zcl_lnt_lob_handle_type_module=>lob_kind( ) ).
    IF t54 IS BOUND.
      CREATE OBJECT t53.
      t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t55 TYPE REF TO object.
      t55 = t54.
      t53->oval = t55.
    ENDIF.
    t52 = t53.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    DATA(t58) = CAST zif_lnt_statement_runnable( zcl_lnt_lob_handle_type_module=>lob_columns( ) ).
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
    DATA t62 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t63) = CAST zlnt_runtime_dyna_a429568d5be8( t52 ).
    DATA(t64) = CAST zlnt_runtime_dyna_a429568d5be8( t56 ).
    DATA(t65) = CAST zlnt_runtime_arra_c22708faf2e3( t60 ).
    t62 = zcl_lnt_st_combi_module=>seq( i_first = t63 i_second = t64 i_rest = t65 ).
    t51 = t62.
    IF t51 IS BOUND.
      CREATE OBJECT t50.
      t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t66 TYPE REF TO object.
      t66 = t51.
      t50->oval = t66.
    ENDIF.
    t49 = zcl_lnt_st_combi_module=>plus( i_first = t50 ).
    IF t49 IS BOUND.
      CREATE OBJECT t48.
      t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t67 TYPE REF TO object.
      t67 = t49.
      t48->oval = t67.
    ENDIF.
    t47 = zcl_lnt_st_combi_module=>opt( i_first = t48 ).
    IF t47 IS BOUND.
      CREATE OBJECT t46.
      t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t68 TYPE REF TO object.
      t68 = t47.
      t46->oval = t68.
    ENDIF.
    APPEND t46 TO t45->items.
    DATA t69 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t70) = CAST zlnt_runtime_dyna_a429568d5be8( t28 ).
    DATA(t71) = CAST zlnt_runtime_dyna_a429568d5be8( t31 ).
    DATA(t72) = CAST zlnt_runtime_arra_c22708faf2e3( t34 ).
    t69 = zcl_lnt_st_combi_module=>seq( i_first = t70 i_second = t71 i_rest = t72 ).
    t27 = t69.
    IF t27 IS BOUND.
      CREATE OBJECT t26.
      t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t73 TYPE REF TO object.
      t73 = t27.
      t26->oval = t73.
    ENDIF.
    DATA t74 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t74.
    t19 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t20 i_first = t26 i_opts = t74 ).
    t18 = t19.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t75.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t76.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    DATA t78 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t78.
    DATA t79 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t79.
    DATA t80 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t80.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t80 = zcl_lnt_version_module=>release_b8cd.
    DATA(t81) = |v916|.
    t79 = t80->get( p0 = t81 ).
    t78 = t79.
    IF t78 IS BOUND.
      CREATE OBJECT t77.
      t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t82 TYPE REF TO object.
      t82 = t78.
      t77->oval = t82.
    ENDIF.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t83.
    DATA t84 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t84.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t87) = |TYPE|.
    CREATE OBJECT t86.
    t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t86->sval = t87.
    t85 = t86.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t90) = |ANY|.
    CREATE OBJECT t89.
    t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t89->sval = t90.
    t88 = t89.
    DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t92.
    t91 = t92.
    DATA(t93) = CAST zlnt_runtime_arra_c22708faf2e3( t91 ).
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t95) = |STRUCTURE|.
    CREATE OBJECT t94.
    t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t94->sval = t95.
    APPEND t94 TO t93->items.
    DATA(t96) = CAST zlnt_runtime_arra_c22708faf2e3( t91 ).
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t103) = |CONTAINING|.
    CREATE OBJECT t102.
    t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t102->sval = t103.
    t101 = t102.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA t106 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t108.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t110.
    DATA(t111) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d148_212592b80f97 ).
    IF t111 IS BOUND.
      CREATE OBJECT t110.
      t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t110->cval = t111.
    ENDIF.
    t109 = t110.
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t114) = |TYPE|.
    CREATE OBJECT t113.
    t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t113->sval = t114.
    t112 = t113.
    DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t116 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t116.
    t115 = t116.
    DATA(t117) = CAST zlnt_runtime_arra_c22708faf2e3( t115 ).
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t118.
    DATA(t119) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d335_fce3d394071e ).
    IF t119 IS BOUND.
      CREATE OBJECT t118.
      t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t118->cval = t119.
    ENDIF.
    APPEND t118 TO t117->items.
    DATA t120 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t121) = CAST zlnt_runtime_dyna_a429568d5be8( t109 ).
    DATA(t122) = CAST zlnt_runtime_dyna_a429568d5be8( t112 ).
    DATA(t123) = CAST zlnt_runtime_arra_c22708faf2e3( t115 ).
    t120 = zcl_lnt_st_combi_module=>seq( i_first = t121 i_second = t122 i_rest = t123 ).
    t108 = t120.
    IF t108 IS BOUND.
      CREATE OBJECT t107.
      t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t124 TYPE REF TO object.
      t124 = t108.
      t107->oval = t124.
    ENDIF.
    t106 = zcl_lnt_st_combi_module=>plus( i_first = t107 ).
    IF t106 IS BOUND.
      CREATE OBJECT t105.
      t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t125 TYPE REF TO object.
      t125 = t106.
      t105->oval = t125.
    ENDIF.
    t104 = t105.
    DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t127.
    t126 = t127.
    DATA t128 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t129) = CAST zlnt_runtime_dyna_a429568d5be8( t101 ).
    DATA(t130) = CAST zlnt_runtime_dyna_a429568d5be8( t104 ).
    DATA(t131) = CAST zlnt_runtime_arra_c22708faf2e3( t126 ).
    t128 = zcl_lnt_st_combi_module=>seq( i_first = t129 i_second = t130 i_rest = t131 ).
    t100 = t128.
    IF t100 IS BOUND.
      CREATE OBJECT t99.
      t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t132 TYPE REF TO object.
      t132 = t100.
      t99->oval = t132.
    ENDIF.
    t98 = zcl_lnt_st_combi_module=>opt( i_first = t99 ).
    IF t98 IS BOUND.
      CREATE OBJECT t97.
      t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t133 TYPE REF TO object.
      t133 = t98.
      t97->oval = t133.
    ENDIF.
    APPEND t97 TO t96->items.
    DATA t134 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t135) = CAST zlnt_runtime_dyna_a429568d5be8( t85 ).
    DATA(t136) = CAST zlnt_runtime_dyna_a429568d5be8( t88 ).
    DATA(t137) = CAST zlnt_runtime_arra_c22708faf2e3( t91 ).
    t134 = zcl_lnt_st_combi_module=>seq( i_first = t135 i_second = t136 i_rest = t137 ).
    t84 = t134.
    IF t84 IS BOUND.
      CREATE OBJECT t83.
      t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t138 TYPE REF TO object.
      t138 = t84.
      t83->oval = t138.
    ENDIF.
    DATA t139 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t139.
    t76 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t77 i_first = t83 i_opts = t139 ).
    t75 = t76.
    DATA t140 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t140.
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t141.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    DATA(t144) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470 ).
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
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    DATA(t149) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d139_249fe3e5ef12 ).
    IF t149 IS BOUND.
      CREATE OBJECT t148.
      t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t148->cval = t149.
    ENDIF.
    t147 = zcl_lnt_st_combi_module=>opt( i_first = t148 ).
    IF t147 IS BOUND.
      CREATE OBJECT t146.
      t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t150 TYPE REF TO object.
      t150 = t147.
      t146->oval = t150.
    ENDIF.
    t145 = t146.
    DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t152.
    t151 = t152.
    DATA(t153) = CAST zlnt_runtime_arra_c22708faf2e3( t151 ).
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t154.
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t155.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t156.
    DATA t157 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t157.
    DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t158.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    DATA t160 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t160.
    DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t161.
    DATA t162 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t162.
    DATA t163 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t163.
    DATA t164 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t164.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t164 = zcl_lnt_version_module=>release_b8cd.
    DATA(t165) = |v731|.
    t163 = t164->get( p0 = t165 ).
    t162 = t163.
    IF t162 IS BOUND.
      CREATE OBJECT t161.
      t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t166 TYPE REF TO object.
      t166 = t162.
      t161->oval = t166.
    ENDIF.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t167.
    DATA(t168) = CAST zif_lnt_statement_runnable( zcl_lnt_lob_handle_type_module=>lob_handle_type( ) ).
    IF t168 IS BOUND.
      CREATE OBJECT t167.
      t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t169 TYPE REF TO object.
      t169 = t168.
      t167->oval = t169.
    ENDIF.
    DATA t170 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t170.
    t160 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t161 i_first = t167 i_opts = t170 ).
    IF t160 IS BOUND.
      CREATE OBJECT t159.
      t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t171 TYPE REF TO object.
      t171 = t160.
      t159->oval = t171.
    ENDIF.
    t158 = t159.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t172.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    DATA(t174) = CAST zif_lnt_statement_runnable( t18 ).
    IF t174 IS BOUND.
      CREATE OBJECT t173.
      t173->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t175 TYPE REF TO object.
      t175 = t174.
      t173->oval = t175.
    ENDIF.
    t172 = t173.
    DATA t176 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t177.
    t176 = t177.
    DATA(t178) = CAST zlnt_runtime_arra_c22708faf2e3( t176 ).
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t179.
    DATA(t180) = CAST zif_lnt_statement_runnable( t75 ).
    IF t180 IS BOUND.
      CREATE OBJECT t179.
      t179->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t181 TYPE REF TO object.
      t181 = t180.
      t179->oval = t181.
    ENDIF.
    APPEND t179 TO t178->items.
    DATA(t182) = CAST zlnt_runtime_arra_c22708faf2e3( t176 ).
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    DATA t184 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t184.
    DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t185.
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t186.
    DATA(t187) = CAST zif_lnt_statement_runnable( t1 ).
    IF t187 IS BOUND.
      CREATE OBJECT t186.
      t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t188 TYPE REF TO object.
      t188 = t187.
      t186->oval = t188.
    ENDIF.
    t185 = t186.
    DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t189.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t190.
    DATA(t191) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396 ).
    IF t191 IS BOUND.
      CREATE OBJECT t190.
      t190->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t190->cval = t191.
    ENDIF.
    t189 = t190.
    DATA t192 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t193 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t193.
    t192 = t193.
    DATA(t194) = CAST zlnt_runtime_arra_c22708faf2e3( t192 ).
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t195.
    DATA(t196) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d149_69f1f4358f03 ).
    IF t196 IS BOUND.
      CREATE OBJECT t195.
      t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t195->cval = t196.
    ENDIF.
    APPEND t195 TO t194->items.
    DATA t197 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t198) = CAST zlnt_runtime_dyna_a429568d5be8( t185 ).
    DATA(t199) = CAST zlnt_runtime_dyna_a429568d5be8( t189 ).
    DATA(t200) = CAST zlnt_runtime_arra_c22708faf2e3( t192 ).
    t197 = zcl_lnt_st_combi_module=>alt( i_first = t198 i_second = t199 i_rest = t200 ).
    t184 = t197.
    IF t184 IS BOUND.
      CREATE OBJECT t183.
      t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t201 TYPE REF TO object.
      t201 = t184.
      t183->oval = t201.
    ENDIF.
    APPEND t183 TO t182->items.
    DATA t202 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t203) = CAST zlnt_runtime_dyna_a429568d5be8( t158 ).
    DATA(t204) = CAST zlnt_runtime_dyna_a429568d5be8( t172 ).
    DATA(t205) = CAST zlnt_runtime_arra_c22708faf2e3( t176 ).
    t202 = zcl_lnt_st_combi_module=>alt_prio( i_first = t203 i_second = t204 i_rest = t205 ).
    t157 = t202.
    IF t157 IS BOUND.
      CREATE OBJECT t156.
      t156->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t206 TYPE REF TO object.
      t206 = t157.
      t156->oval = t206.
    ENDIF.
    t155 = zcl_lnt_st_combi_module=>opt( i_first = t156 ).
    IF t155 IS BOUND.
      CREATE OBJECT t154.
      t154->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t207 TYPE REF TO object.
      t207 = t155.
      t154->oval = t207.
    ENDIF.
    APPEND t154 TO t153->items.
    DATA t208 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t209) = CAST zlnt_runtime_dyna_a429568d5be8( t142 ).
    DATA(t210) = CAST zlnt_runtime_dyna_a429568d5be8( t145 ).
    DATA(t211) = CAST zlnt_runtime_arra_c22708faf2e3( t151 ).
    t208 = zcl_lnt_st_combi_module=>seq( i_first = t209 i_second = t210 i_rest = t211 ).
    t141 = t208.
    t140 = t141.
    DATA t212 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t212.
    DATA t213 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t213.
    DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t214.
    DATA t215 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t215.
    DATA t216 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t216.
    DATA t217 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t217.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t217 = zcl_lnt_version_module=>release_b8cd.
    DATA(t218) = |v702|.
    t216 = t217->get( p0 = t218 ).
    t215 = t216.
    IF t215 IS BOUND.
      CREATE OBJECT t214.
      t214->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t219 TYPE REF TO object.
      t219 = t215.
      t214->oval = t219.
    ENDIF.
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t221) = |BOXED|.
    CREATE OBJECT t220.
    t220->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t220->sval = t221.
    DATA t222 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t222.
    t213 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t214 i_first = t220 i_opts = t222 ).
    t212 = t213.
    DATA t223 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t223.
    DATA t224 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t224.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t227) = |TYPES|.
    CREATE OBJECT t226.
    t226->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t226->sval = t227.
    t225 = t226.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t228.
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t229.
    DATA(t230) = CAST zif_lnt_statement_runnable( t140 ).
    IF t230 IS BOUND.
      CREATE OBJECT t229.
      t229->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t231 TYPE REF TO object.
      t231 = t230.
      t229->oval = t231.
    ENDIF.
    t228 = t229.
    DATA t232 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t233 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t233.
    t232 = t233.
    DATA(t234) = CAST zlnt_runtime_arra_c22708faf2e3( t232 ).
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t235.
    DATA t236 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t236.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t237.
    DATA(t238) = CAST zif_lnt_statement_runnable( t212 ).
    IF t238 IS BOUND.
      CREATE OBJECT t237.
      t237->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t239 TYPE REF TO object.
      t239 = t238.
      t237->oval = t239.
    ENDIF.
    t236 = zcl_lnt_st_combi_module=>opt( i_first = t237 ).
    IF t236 IS BOUND.
      CREATE OBJECT t235.
      t235->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t240 TYPE REF TO object.
      t240 = t236.
      t235->oval = t240.
    ENDIF.
    APPEND t235 TO t234->items.
    DATA t241 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t242) = CAST zlnt_runtime_dyna_a429568d5be8( t225 ).
    DATA(t243) = CAST zlnt_runtime_dyna_a429568d5be8( t228 ).
    DATA(t244) = CAST zlnt_runtime_arra_c22708faf2e3( t232 ).
    t241 = zcl_lnt_st_combi_module=>seq( i_first = t242 i_second = t243 i_rest = t244 ).
    t224 = t241.
    t223 = t224.
    DATA(t245) = CAST zif_lnt_statement_runnable( t223 ).
    result = t245.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d645_168d2de480b7.
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
