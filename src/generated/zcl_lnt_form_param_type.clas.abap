* TS: src/abap/2_statements/expressions/form_param_type.ts:6:1 FormParamType
CLASS zcl_lnt_form_param_type DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_form_param_type IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
  ENDMETHOD.
  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |DEFAULT|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA(t11) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d119_f7714013c01c ).
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t10->cval = t11.
    ENDIF.
    t9 = t10.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA(t14) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
    IF t14 IS BOUND.
      CREATE OBJECT t13.
      t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t13->cval = t14.
    ENDIF.
    t12 = t13.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t16.
    t15 = t16.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t18) = CAST zlnt_runtime_dyna_a429568d5be8( t9 ).
    DATA(t19) = CAST zlnt_runtime_dyna_a429568d5be8( t12 ).
    DATA(t20) = CAST zlnt_runtime_arra_c22708faf2e3( t15 ).
    t17 = zcl_lnt_st_combi_module=>alt( i_first = t18 i_second = t19 i_rest = t20 ).
    t8 = t17.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t21 TYPE REF TO object.
      t21 = t8.
      t7->oval = t21.
    ENDIF.
    t6 = t7.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t23.
    t22 = t23.
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t25) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t26) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t27) = CAST zlnt_runtime_arra_c22708faf2e3( t22 ).
    t24 = zcl_lnt_st_combi_module=>seq( i_first = t25 i_second = t26 i_rest = t27 ).
    t2 = t24.
    t1 = t2.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t28.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t29.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t35) = |STANDARD|.
    CREATE OBJECT t34.
    t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t34->sval = t35.
    t33 = t34.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t38) = |HASHED|.
    CREATE OBJECT t37.
    t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t37->sval = t38.
    t36 = t37.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t40.
    t39 = t40.
    DATA(t41) = CAST zlnt_runtime_arra_c22708faf2e3( t39 ).
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t43) = |INDEX|.
    CREATE OBJECT t42.
    t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t42->sval = t43.
    APPEND t42 TO t41->items.
    DATA(t44) = CAST zlnt_runtime_arra_c22708faf2e3( t39 ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t46) = |SORTED|.
    CREATE OBJECT t45.
    t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t45->sval = t46.
    APPEND t45 TO t44->items.
    DATA(t47) = CAST zlnt_runtime_arra_c22708faf2e3( t39 ).
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t49) = |ANY|.
    CREATE OBJECT t48.
    t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t48->sval = t49.
    APPEND t48 TO t47->items.
    DATA t50 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t51) = CAST zlnt_runtime_dyna_a429568d5be8( t33 ).
    DATA(t52) = CAST zlnt_runtime_dyna_a429568d5be8( t36 ).
    DATA(t53) = CAST zlnt_runtime_arra_c22708faf2e3( t39 ).
    t50 = zcl_lnt_st_combi_module=>alt( i_first = t51 i_second = t52 i_rest = t53 ).
    t32 = t50.
    IF t32 IS BOUND.
      CREATE OBJECT t31.
      t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t54 TYPE REF TO object.
      t54 = t32.
      t31->oval = t54.
    ENDIF.
    t30 = t31.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t57) = |TABLE|.
    CREATE OBJECT t56.
    t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t56->sval = t57.
    t55 = t56.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t59.
    t58 = t59.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t61) = CAST zlnt_runtime_dyna_a429568d5be8( t30 ).
    DATA(t62) = CAST zlnt_runtime_dyna_a429568d5be8( t55 ).
    DATA(t63) = CAST zlnt_runtime_arra_c22708faf2e3( t58 ).
    t60 = zcl_lnt_st_combi_module=>seq( i_first = t61 i_second = t62 i_rest = t63 ).
    t29 = t60.
    t28 = t29.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t64.
    DATA t65 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t65.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA(t68) = CAST zif_lnt_statement_runnable( t28 ).
    IF t68 IS BOUND.
      CREATE OBJECT t67.
      t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t69 TYPE REF TO object.
      t69 = t68.
      t67->oval = t69.
    ENDIF.
    t66 = t67.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t77) = |OF|.
    CREATE OBJECT t76.
    t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t76->sval = t77.
    t75 = t76.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA(t80) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t80 IS BOUND.
      CREATE OBJECT t79.
      t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t79->cval = t80.
    ENDIF.
    t78 = t79.
    DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t82.
    t81 = t82.
    DATA t83 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t84) = CAST zlnt_runtime_dyna_a429568d5be8( t75 ).
    DATA(t85) = CAST zlnt_runtime_dyna_a429568d5be8( t78 ).
    DATA(t86) = CAST zlnt_runtime_arra_c22708faf2e3( t81 ).
    t83 = zcl_lnt_st_combi_module=>seq( i_first = t84 i_second = t85 i_rest = t86 ).
    t74 = t83.
    IF t74 IS BOUND.
      CREATE OBJECT t73.
      t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t87 TYPE REF TO object.
      t87 = t74.
      t73->oval = t87.
    ENDIF.
    t72 = zcl_lnt_st_combi_module=>opt_prio( i_first = t73 ).
    IF t72 IS BOUND.
      CREATE OBJECT t71.
      t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t88 TYPE REF TO object.
      t88 = t72.
      t71->oval = t88.
    ENDIF.
    t70 = t71.
    DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t90.
    t89 = t90.
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t92) = CAST zlnt_runtime_dyna_a429568d5be8( t66 ).
    DATA(t93) = CAST zlnt_runtime_dyna_a429568d5be8( t70 ).
    DATA(t94) = CAST zlnt_runtime_arra_c22708faf2e3( t89 ).
    t91 = zcl_lnt_st_combi_module=>seq( i_first = t92 i_second = t93 i_rest = t94 ).
    t65 = t91.
    t64 = t65.
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t95.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t96.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t104) = |REF TO|.
    CREATE OBJECT t103.
    t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t103->sval = t104.
    t102 = t103.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t107) = |LINE OF|.
    CREATE OBJECT t106.
    t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t106->sval = t107.
    t105 = t106.
    DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t109.
    t108 = t109.
    DATA t110 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t111) = CAST zlnt_runtime_dyna_a429568d5be8( t102 ).
    DATA(t112) = CAST zlnt_runtime_dyna_a429568d5be8( t105 ).
    DATA(t113) = CAST zlnt_runtime_arra_c22708faf2e3( t108 ).
    t110 = zcl_lnt_st_combi_module=>alt( i_first = t111 i_second = t112 i_rest = t113 ).
    t101 = t110.
    IF t101 IS BOUND.
      CREATE OBJECT t100.
      t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t114 TYPE REF TO object.
      t114 = t101.
      t100->oval = t114.
    ENDIF.
    t99 = zcl_lnt_st_combi_module=>opt_prio( i_first = t100 ).
    IF t99 IS BOUND.
      CREATE OBJECT t98.
      t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t115 TYPE REF TO object.
      t115 = t99.
      t98->oval = t115.
    ENDIF.
    t97 = t98.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA(t118) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931 ).
    IF t118 IS BOUND.
      CREATE OBJECT t117.
      t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t117->cval = t118.
    ENDIF.
    t116 = t117.
    DATA t119 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t120 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t120.
    t119 = t120.
    DATA(t121) = CAST zlnt_runtime_arra_c22708faf2e3( t119 ).
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    DATA t123 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t123.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    DATA(t125) = CAST zif_lnt_statement_runnable( t1 ).
    IF t125 IS BOUND.
      CREATE OBJECT t124.
      t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t126 TYPE REF TO object.
      t126 = t125.
      t124->oval = t126.
    ENDIF.
    t123 = zcl_lnt_st_combi_module=>opt( i_first = t124 ).
    IF t123 IS BOUND.
      CREATE OBJECT t122.
      t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t127 TYPE REF TO object.
      t127 = t123.
      t122->oval = t127.
    ENDIF.
    APPEND t122 TO t121->items.
    DATA t128 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t129) = CAST zlnt_runtime_dyna_a429568d5be8( t97 ).
    DATA(t130) = CAST zlnt_runtime_dyna_a429568d5be8( t116 ).
    DATA(t131) = CAST zlnt_runtime_arra_c22708faf2e3( t119 ).
    t128 = zcl_lnt_st_combi_module=>seq( i_first = t129 i_second = t130 i_rest = t131 ).
    t96 = t128.
    t95 = t96.
    DATA t132 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t132.
    DATA t133 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t133.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t136) = |LIKE|.
    CREATE OBJECT t135.
    t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t135->sval = t136.
    t134 = t135.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t137.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    DATA t139 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t139.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t140.
    DATA t141 TYPE REF TO zif_lnt_statement_runnable.
    DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t144) = |REF TO|.
    CREATE OBJECT t143.
    t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t143->sval = t144.
    t142 = t143.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t147) = |LINE OF|.
    CREATE OBJECT t146.
    t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t146->sval = t147.
    t145 = t146.
    DATA t148 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t149.
    t148 = t149.
    DATA t150 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t151) = CAST zlnt_runtime_dyna_a429568d5be8( t142 ).
    DATA(t152) = CAST zlnt_runtime_dyna_a429568d5be8( t145 ).
    DATA(t153) = CAST zlnt_runtime_arra_c22708faf2e3( t148 ).
    t150 = zcl_lnt_st_combi_module=>alt( i_first = t151 i_second = t152 i_rest = t153 ).
    t141 = t150.
    IF t141 IS BOUND.
      CREATE OBJECT t140.
      t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t154 TYPE REF TO object.
      t154 = t141.
      t140->oval = t154.
    ENDIF.
    t139 = zcl_lnt_st_combi_module=>opt_prio( i_first = t140 ).
    IF t139 IS BOUND.
      CREATE OBJECT t138.
      t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t155 TYPE REF TO object.
      t155 = t139.
      t138->oval = t155.
    ENDIF.
    t137 = t138.
    DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t157 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t157.
    t156 = t157.
    DATA(t158) = CAST zlnt_runtime_arra_c22708faf2e3( t156 ).
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    DATA(t160) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d154_aaa60b9d16df ).
    IF t160 IS BOUND.
      CREATE OBJECT t159.
      t159->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t159->cval = t160.
    ENDIF.
    APPEND t159 TO t158->items.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t162) = CAST zlnt_runtime_dyna_a429568d5be8( t134 ).
    DATA(t163) = CAST zlnt_runtime_dyna_a429568d5be8( t137 ).
    DATA(t164) = CAST zlnt_runtime_arra_c22708faf2e3( t156 ).
    t161 = zcl_lnt_st_combi_module=>seq( i_first = t162 i_second = t163 i_rest = t164 ).
    t133 = t161.
    t132 = t133.
    DATA t165 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t165.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t166.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t167.
    DATA t168 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t168.
    DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t171) = |TYPE|.
    CREATE OBJECT t170.
    t170->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t170->sval = t171.
    t169 = t170.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t172.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    DATA t174 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t174.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t175.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t176.
    DATA(t177) = CAST zif_lnt_statement_runnable( t64 ).
    IF t177 IS BOUND.
      CREATE OBJECT t176.
      t176->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t178 TYPE REF TO object.
      t178 = t177.
      t176->oval = t178.
    ENDIF.
    t175 = t176.
    DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t179.
    DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t180.
    DATA t181 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t181.
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t182.
    DATA t183 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t183.
    DATA t184 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t184.
    DATA t185 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t185.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t185 = zcl_lnt_version_module=>release_b8cd.
    DATA(t186) = |v916|.
    t184 = t185->get( p0 = t186 ).
    t183 = t184.
    IF t183 IS BOUND.
      CREATE OBJECT t182.
      t182->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t187 TYPE REF TO object.
      t187 = t183.
      t182->oval = t187.
    ENDIF.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t188.
    DATA t189 TYPE REF TO zif_lnt_statement_runnable.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t192) = |ANY|.
    CREATE OBJECT t191.
    t191->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t191->sval = t192.
    t190 = t191.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t195) = |STRUCTURE|.
    CREATE OBJECT t194.
    t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t194->sval = t195.
    t193 = t194.
    DATA t196 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t197 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t197.
    t196 = t197.
    DATA t198 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t199) = CAST zlnt_runtime_dyna_a429568d5be8( t190 ).
    DATA(t200) = CAST zlnt_runtime_dyna_a429568d5be8( t193 ).
    DATA(t201) = CAST zlnt_runtime_arra_c22708faf2e3( t196 ).
    t198 = zcl_lnt_st_combi_module=>seq( i_first = t199 i_second = t200 i_rest = t201 ).
    t189 = t198.
    IF t189 IS BOUND.
      CREATE OBJECT t188.
      t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t202 TYPE REF TO object.
      t202 = t189.
      t188->oval = t202.
    ENDIF.
    DATA t203 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t203.
    t181 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t182 i_first = t188 i_opts = t203 ).
    IF t181 IS BOUND.
      CREATE OBJECT t180.
      t180->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t204 TYPE REF TO object.
      t204 = t181.
      t180->oval = t204.
    ENDIF.
    t179 = t180.
    DATA t205 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t206 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t206.
    t205 = t206.
    DATA(t207) = CAST zlnt_runtime_arra_c22708faf2e3( t205 ).
    DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t208.
    DATA(t209) = CAST zif_lnt_statement_runnable( t95 ).
    IF t209 IS BOUND.
      CREATE OBJECT t208.
      t208->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t210 TYPE REF TO object.
      t210 = t209.
      t208->oval = t210.
    ENDIF.
    APPEND t208 TO t207->items.
    DATA t211 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t212) = CAST zlnt_runtime_dyna_a429568d5be8( t175 ).
    DATA(t213) = CAST zlnt_runtime_dyna_a429568d5be8( t179 ).
    DATA(t214) = CAST zlnt_runtime_arra_c22708faf2e3( t205 ).
    t211 = zcl_lnt_st_combi_module=>alt_prio( i_first = t212 i_second = t213 i_rest = t214 ).
    t174 = t211.
    IF t174 IS BOUND.
      CREATE OBJECT t173.
      t173->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t215 TYPE REF TO object.
      t215 = t174.
      t173->oval = t215.
    ENDIF.
    t172 = t173.
    DATA t216 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t217 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t217.
    t216 = t217.
    DATA t218 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t219) = CAST zlnt_runtime_dyna_a429568d5be8( t169 ).
    DATA(t220) = CAST zlnt_runtime_dyna_a429568d5be8( t172 ).
    DATA(t221) = CAST zlnt_runtime_arra_c22708faf2e3( t216 ).
    t218 = zcl_lnt_st_combi_module=>seq( i_first = t219 i_second = t220 i_rest = t221 ).
    t168 = t218.
    IF t168 IS BOUND.
      CREATE OBJECT t167.
      t167->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t222 TYPE REF TO object.
      t222 = t168.
      t167->oval = t222.
    ENDIF.
    t166 = t167.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t223.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t224.
    DATA(t225) = CAST zif_lnt_statement_runnable( t132 ).
    IF t225 IS BOUND.
      CREATE OBJECT t224.
      t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t226 TYPE REF TO object.
      t226 = t225.
      t224->oval = t226.
    ENDIF.
    t223 = t224.
    DATA t227 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t228 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t228.
    t227 = t228.
    DATA t229 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t230) = CAST zlnt_runtime_dyna_a429568d5be8( t166 ).
    DATA(t231) = CAST zlnt_runtime_dyna_a429568d5be8( t223 ).
    DATA(t232) = CAST zlnt_runtime_arra_c22708faf2e3( t227 ).
    t229 = zcl_lnt_st_combi_module=>alt( i_first = t230 i_second = t231 i_rest = t232 ).
    t165 = t229.
    result = t165.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d178_47418e3f231b.
  ENDMETHOD.
ENDCLASS.
