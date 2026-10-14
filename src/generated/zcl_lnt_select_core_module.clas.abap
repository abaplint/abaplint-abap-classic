* TS: src/abap/2_statements/expressions/_select_core.ts.module module
CLASS zcl_lnt_select_core_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS build_select_single_core IMPORTING i_allow_into TYPE REF TO zlnt_runtime_opti_7f2541396f43 RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-METHODS build_select_core IMPORTING i_allow_into TYPE REF TO zlnt_runtime_opti_7f2541396f43 i_allow_order_by TYPE REF TO zlnt_runtime_opti_7f2541396f43 RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-DATA zlnt_builtin_init_f39435c81d86 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_6677a9ff777e.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_select_core_module IMPLEMENTATION.
  METHOD build_select_single_core.
    DATA(t1) = CAST zlnt_runtime_opti_7f2541396f43( i_allow_into ).
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = CAST zlnt_runtime_opti_7f2541396f43( t1 ).
    IF t3 IS INITIAL.
      t2 = abap_true.
    ELSEIF t3->has = abap_false.
      t2 = abap_true.
    ENDIF.
    IF t2 = abap_true.
      DATA t4 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t4.
      DATA(t5) = abap_true.
      IF t5 = abap_true.
        DATA(t6) = abap_false.
        DATA(t7) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t7->has = abap_true.
        t7->value = t6.
        t4 = t7.
      ELSE.
        DATA t8 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t8.
        t4 = t8.
      ENDIF.
      t1 = t4.
    ENDIF.
    DATA t9 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t9.
    DATA t10 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t13) = |WHERE|.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = t13.
    t11 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA(t16) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d273_c3e7a9098543 ).
    IF t16 IS BOUND.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t15->cval = t16.
    ENDIF.
    t14 = t15.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t18.
    t17 = t18.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t20) = CAST zlnt_runtime_dyna_a429568d5be8( t11 ).
    DATA(t21) = CAST zlnt_runtime_dyna_a429568d5be8( t14 ).
    DATA(t22) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
    t19 = zcl_lnt_st_combi_module=>seq( i_first = t20 i_second = t21 i_rest = t22 ).
    t10 = t19.
    t9 = t10.
    DATA t23 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t23.
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA t26 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t26.
    DATA t27 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t28.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t28 = zcl_lnt_version_module=>release_b8cd.
    DATA(t29) = |v750|.
    t27 = t28->get( p0 = t29 ).
    t26 = t27.
    IF t26 IS BOUND.
      CREATE OBJECT t25.
      t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t30 TYPE REF TO object.
      t30 = t26.
      t25->oval = t30.
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    DATA(t32) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d295_c8c13651616a ).
    IF t32 IS BOUND.
      CREATE OBJECT t31.
      t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t31->cval = t32.
    ENDIF.
    DATA t33 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t33.
    DATA(t34) = abap_true.
    IF t34 = abap_true.
      DATA t35 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t35.
      DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t36.
      DATA(t37) = abap_true.
      IF t37 = abap_true.
        DATA(t38) = |OpenABAP|.
        DATA(t39) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t39->has = abap_true.
        t39->value = t38.
        t36 = t39.
      ELSE.
        DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t40.
        t36 = t40.
      ENDIF.
      t35 = NEW zcl_lnt_iver_options( i_also = t36 ).
      t33 = t35.
    ELSE.
      DATA t41 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t41.
      t33 = t41.
    ENDIF.
    t24 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t25 i_first = t31 i_opts = t33 ).
    t23 = t24.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t42.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA t45 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t45.
    DATA t46 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t47.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t47 = zcl_lnt_version_module=>release_b8cd.
    DATA(t48) = |v758|.
    t46 = t47->get( p0 = t48 ).
    t45 = t46.
    IF t45 IS BOUND.
      CREATE OBJECT t44.
      t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t49 TYPE REF TO object.
      t49 = t45.
      t44->oval = t49.
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA(t51) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d286_cf5169b94e53 ).
    IF t51 IS BOUND.
      CREATE OBJECT t50.
      t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t50->cval = t51.
    ENDIF.
    DATA t52 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t52.
    t43 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t44 i_first = t50 i_opts = t52 ).
    t42 = t43.
    DATA t53 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t53.
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    DATA(t56) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d293_8f762dd42d06 ).
    IF t56 IS BOUND.
      CREATE OBJECT t55.
      t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t55->cval = t56.
    ENDIF.
    t54 = zcl_lnt_st_combi_module=>opt_prio( i_first = t55 ).
    t53 = t54.
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t57.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t60.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t61.
    DATA t62 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t62.
    DATA t63 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t63.
    DATA t64 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t64.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t64 = zcl_lnt_version_module=>release_b8cd.
    DATA(t65) = |v766|.
    t63 = t64->get( p0 = t65 ).
    t62 = t63.
    IF t62 IS BOUND.
      CREATE OBJECT t61.
      t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t66 TYPE REF TO object.
      t66 = t62.
      t61->oval = t66.
    ENDIF.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    DATA(t68) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d289_f424b1178837 ).
    IF t68 IS BOUND.
      CREATE OBJECT t67.
      t67->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t67->cval = t68.
    ENDIF.
    DATA t69 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t69.
    t60 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t61 i_first = t67 i_opts = t69 ).
    IF t60 IS BOUND.
      CREATE OBJECT t59.
      t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t70 TYPE REF TO object.
      t70 = t60.
      t59->oval = t70.
    ENDIF.
    t58 = zcl_lnt_st_combi_module=>opt_prio( i_first = t59 ).
    t57 = t58.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t71.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t74.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA t76 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t76.
    DATA t77 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t78.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t78 = zcl_lnt_version_module=>release_b8cd.
    DATA(t79) = |v750|.
    t77 = t78->get( p0 = t79 ).
    t76 = t77.
    IF t76 IS BOUND.
      CREATE OBJECT t75.
      t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t80 TYPE REF TO object.
      t80 = t76.
      t75->oval = t80.
    ENDIF.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t81.
    DATA(t82) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26 ).
    IF t82 IS BOUND.
      CREATE OBJECT t81.
      t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t81->cval = t82.
    ENDIF.
    DATA t83 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t83.
    t74 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t75 i_first = t81 i_opts = t83 ).
    IF t74 IS BOUND.
      CREATE OBJECT t73.
      t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t84 TYPE REF TO object.
      t84 = t74.
      t73->oval = t84.
    ENDIF.
    t72 = zcl_lnt_st_combi_module=>opt_prio( i_first = t73 ).
    t71 = t72.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t85.
    DATA t86 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA(t88) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d276_d6ee8049769d ).
    IF t88 IS BOUND.
      CREATE OBJECT t87.
      t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t87->cval = t88.
    ENDIF.
    t86 = zcl_lnt_st_combi_module=>opt_prio( i_first = t87 ).
    t85 = t86.
    DATA t89 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t89.
    DATA t90 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t90.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA(t92) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d268_bc2d6eaf7263 ).
    IF t92 IS BOUND.
      CREATE OBJECT t91.
      t91->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t91->cval = t92.
    ENDIF.
    t90 = zcl_lnt_st_combi_module=>opt_prio( i_first = t91 ).
    t89 = t90.
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t93.
    DATA t94 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t94.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    DATA t96 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t96.
    DATA(t97) = |KeyUser|.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    DATA(t99) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057 ).
    IF t99 IS BOUND.
      CREATE OBJECT t98.
      t98->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t98->cval = t99.
    ENDIF.
    t96 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t97 i_first = t98 ).
    IF t96 IS BOUND.
      CREATE OBJECT t95.
      t95->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t100 TYPE REF TO object.
      t100 = t96.
      t95->oval = t100.
    ENDIF.
    t94 = zcl_lnt_st_combi_module=>opt_prio( i_first = t95 ).
    t93 = t94.
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t101.
    DATA t102 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA(t104) = CAST zif_lnt_statement_runnable( t9 ).
    IF t104 IS BOUND.
      CREATE OBJECT t103.
      t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t105 TYPE REF TO object.
      t105 = t104.
      t103->oval = t105.
    ENDIF.
    t102 = zcl_lnt_st_combi_module=>opt_prio( i_first = t103 ).
    t101 = t102.
    DATA t106 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t106.
    DATA t107 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t107.
    DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t108.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    DATA t110 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t110.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    DATA(t112) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d308_c2d6db3f5bbf ).
    IF t112 IS BOUND.
      CREATE OBJECT t111.
      t111->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t111->cval = t112.
    ENDIF.
    t110 = zcl_lnt_st_combi_module=>opt_prio( i_first = t111 ).
    IF t110 IS BOUND.
      CREATE OBJECT t109.
      t109->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t113 TYPE REF TO object.
      t113 = t110.
      t109->oval = t113.
    ENDIF.
    t108 = t109.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA t116 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t116.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA(t118) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d309_e095d3fe668e ).
    IF t118 IS BOUND.
      CREATE OBJECT t117.
      t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t117->cval = t118.
    ENDIF.
    t116 = zcl_lnt_st_combi_module=>opt_prio( i_first = t117 ).
    IF t116 IS BOUND.
      CREATE OBJECT t115.
      t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t119 TYPE REF TO object.
      t119 = t116.
      t115->oval = t119.
    ENDIF.
    t114 = t115.
    DATA t120 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t121.
    t120 = t121.
    DATA t122 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t123) = CAST zlnt_runtime_dyna_a429568d5be8( t108 ).
    DATA(t124) = CAST zlnt_runtime_dyna_a429568d5be8( t114 ).
    DATA(t125) = CAST zlnt_runtime_arra_c22708faf2e3( t120 ).
    t122 = zcl_lnt_st_combi_module=>seq( i_first = t123 i_second = t124 i_rest = t125 ).
    t107 = t122.
    t106 = t107.
    DATA t126 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t126.
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t127.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t129.
    DATA(t130) = CAST zif_lnt_statement_runnable( t93 ).
    IF t130 IS BOUND.
      CREATE OBJECT t129.
      t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t131 TYPE REF TO object.
      t131 = t130.
      t129->oval = t131.
    ENDIF.
    t128 = t129.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t133.
    DATA t134 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t134.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t135.
    DATA(t136) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d313_63087fa9e019 ).
    IF t136 IS BOUND.
      CREATE OBJECT t135.
      t135->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t135->cval = t136.
    ENDIF.
    t134 = zcl_lnt_st_combi_module=>opt_prio( i_first = t135 ).
    IF t134 IS BOUND.
      CREATE OBJECT t133.
      t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t137 TYPE REF TO object.
      t137 = t134.
      t133->oval = t137.
    ENDIF.
    t132 = t133.
    DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t139.
    t138 = t139.
    DATA(t140) = CAST zlnt_runtime_arra_c22708faf2e3( t138 ).
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t141.
    DATA t142 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    DATA(t144) = CAST zif_lnt_statement_runnable( t42 ).
    IF t144 IS BOUND.
      CREATE OBJECT t143.
      t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t145 TYPE REF TO object.
      t145 = t144.
      t143->oval = t145.
    ENDIF.
    t142 = zcl_lnt_st_combi_module=>opt_prio( i_first = t143 ).
    IF t142 IS BOUND.
      CREATE OBJECT t141.
      t141->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t146 TYPE REF TO object.
      t146 = t142.
      t141->oval = t146.
    ENDIF.
    APPEND t141 TO t140->items.
    DATA(t147) = CAST zlnt_runtime_arra_c22708faf2e3( t138 ).
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t148.
    DATA t149 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t149.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t150.
    DATA(t151) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d323_2cd6e0020229 ).
    IF t151 IS BOUND.
      CREATE OBJECT t150.
      t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t150->cval = t151.
    ENDIF.
    t149 = zcl_lnt_st_combi_module=>opt_prio( i_first = t150 ).
    IF t149 IS BOUND.
      CREATE OBJECT t148.
      t148->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t152 TYPE REF TO object.
      t152 = t149.
      t148->oval = t152.
    ENDIF.
    APPEND t148 TO t147->items.
    DATA t153 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t154) = CAST zlnt_runtime_dyna_a429568d5be8( t128 ).
    DATA(t155) = CAST zlnt_runtime_dyna_a429568d5be8( t132 ).
    DATA(t156) = CAST zlnt_runtime_arra_c22708faf2e3( t138 ).
    t153 = zcl_lnt_st_combi_module=>seq( i_first = t154 i_second = t155 i_rest = t156 ).
    t127 = t153.
    t126 = t127.
    DATA t157 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t157.
    DATA t158 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t158.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t161.
    DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t162.
    DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t163.
    DATA(t164) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d250_08c3abeac258 ).
    IF t164 IS BOUND.
      CREATE OBJECT t163.
      t163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t163->cval = t164.
    ENDIF.
    t162 = t163.
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t165.
    DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t166.
    DATA(t167) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d251_f36ca3dcb3e0 ).
    IF t167 IS BOUND.
      CREATE OBJECT t166.
      t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t166->cval = t167.
    ENDIF.
    t165 = t166.
    DATA t168 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t169.
    t168 = t169.
    DATA t170 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t171) = CAST zlnt_runtime_dyna_a429568d5be8( t162 ).
    DATA(t172) = CAST zlnt_runtime_dyna_a429568d5be8( t165 ).
    DATA(t173) = CAST zlnt_runtime_arra_c22708faf2e3( t168 ).
    t170 = zcl_lnt_st_combi_module=>alt_prio( i_first = t171 i_second = t172 i_rest = t173 ).
    t161 = t170.
    IF t161 IS BOUND.
      CREATE OBJECT t160.
      t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t174 TYPE REF TO object.
      t174 = t161.
      t160->oval = t174.
    ENDIF.
    t159 = t160.
    DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t175.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t176.
    DATA(t177) = CAST zif_lnt_statement_runnable( t57 ).
    IF t177 IS BOUND.
      CREATE OBJECT t176.
      t176->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t178 TYPE REF TO object.
      t178 = t177.
      t176->oval = t178.
    ENDIF.
    t175 = t176.
    DATA t179 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t180.
    t179 = t180.
    DATA(t181) = CAST zlnt_runtime_arra_c22708faf2e3( t179 ).
    DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t182.
    DATA(t183) = CAST zif_lnt_statement_runnable( t71 ).
    IF t183 IS BOUND.
      CREATE OBJECT t182.
      t182->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t184 TYPE REF TO object.
      t184 = t183.
      t182->oval = t184.
    ENDIF.
    APPEND t182 TO t181->items.
    DATA t185 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t186) = CAST zlnt_runtime_dyna_a429568d5be8( t159 ).
    DATA(t187) = CAST zlnt_runtime_dyna_a429568d5be8( t175 ).
    DATA(t188) = CAST zlnt_runtime_arra_c22708faf2e3( t179 ).
    t185 = zcl_lnt_st_combi_module=>seq( i_first = t186 i_second = t187 i_rest = t188 ).
    t158 = t185.
    t157 = t158.
    DATA t189 TYPE abap_bool.
    DATA t190 TYPE abap_bool.
    DATA(t191) = CAST zlnt_runtime_opti_7f2541396f43( t1 ).
    t190 = t191->value.
    t189 = xsdbool( t190 = abap_false ).
    IF t189 = abap_true.
      DATA t192 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t192.
      DATA t193 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t193.
      DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t194.
      DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t195.
      DATA(t196) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d297_8dd76b8d3d10 ).
      IF t196 IS BOUND.
        CREATE OBJECT t195.
        t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
        t195->cval = t196.
      ENDIF.
      t194 = t195.
      DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t197.
      DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t198.
      DATA(t199) = CAST zif_lnt_statement_runnable( t85 ).
      IF t199 IS BOUND.
        CREATE OBJECT t198.
        t198->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t200 TYPE REF TO object.
        t200 = t199.
        t198->oval = t200.
      ENDIF.
      t197 = t198.
      DATA t201 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t202 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t202.
      t201 = t202.
      DATA(t203) = CAST zlnt_runtime_arra_c22708faf2e3( t201 ).
      DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t204.
      DATA(t205) = CAST zif_lnt_statement_runnable( t89 ).
      IF t205 IS BOUND.
        CREATE OBJECT t204.
        t204->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t206 TYPE REF TO object.
        t206 = t205.
        t204->oval = t206.
      ENDIF.
      APPEND t204 TO t203->items.
      DATA(t207) = CAST zlnt_runtime_arra_c22708faf2e3( t201 ).
      DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t208.
      DATA(t209) = CAST zif_lnt_statement_runnable( t101 ).
      IF t209 IS BOUND.
        CREATE OBJECT t208.
        t208->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t210 TYPE REF TO object.
        t210 = t209.
        t208->oval = t210.
      ENDIF.
      APPEND t208 TO t207->items.
      DATA(t211) = CAST zlnt_runtime_arra_c22708faf2e3( t201 ).
      DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t212.
      DATA(t213) = CAST zif_lnt_statement_runnable( t106 ).
      IF t213 IS BOUND.
        CREATE OBJECT t212.
        t212->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t214 TYPE REF TO object.
        t214 = t213.
        t212->oval = t214.
      ENDIF.
      APPEND t212 TO t211->items.
      DATA(t215) = CAST zlnt_runtime_arra_c22708faf2e3( t201 ).
      DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t216.
      DATA(t217) = CAST zif_lnt_statement_runnable( t126 ).
      IF t217 IS BOUND.
        CREATE OBJECT t216.
        t216->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t218 TYPE REF TO object.
        t218 = t217.
        t216->oval = t218.
      ENDIF.
      APPEND t216 TO t215->items.
      DATA t219 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t220) = CAST zlnt_runtime_dyna_a429568d5be8( t194 ).
      DATA(t221) = CAST zlnt_runtime_dyna_a429568d5be8( t197 ).
      DATA(t222) = CAST zlnt_runtime_arra_c22708faf2e3( t201 ).
      t219 = zcl_lnt_st_combi_module=>seq( i_first = t220 i_second = t221 i_rest = t222 ).
      t193 = t219.
      t192 = t193.
      DATA t223 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t223.
      DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t224.
      DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t225.
      DATA(t226) = CAST zif_lnt_statement_runnable( t53 ).
      IF t226 IS BOUND.
        CREATE OBJECT t225.
        t225->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t227 TYPE REF TO object.
        t227 = t226.
        t225->oval = t227.
      ENDIF.
      t224 = t225.
      DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t228.
      DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t229.
      DATA(t230) = CAST zif_lnt_statement_runnable( t192 ).
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
      DATA t234 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t235) = CAST zlnt_runtime_dyna_a429568d5be8( t224 ).
      DATA(t236) = CAST zlnt_runtime_dyna_a429568d5be8( t228 ).
      DATA(t237) = CAST zlnt_runtime_arra_c22708faf2e3( t232 ).
      t234 = zcl_lnt_st_combi_module=>seq( i_first = t235 i_second = t236 i_rest = t237 ).
      t223 = t234.
      result = t223.
      RETURN.
    ENDIF.
    DATA t238 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t238.
    DATA t239 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t239.
    DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t240.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t241.
    DATA(t242) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d297_8dd76b8d3d10 ).
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
    DATA(t245) = CAST zif_lnt_statement_runnable( t85 ).
    IF t245 IS BOUND.
      CREATE OBJECT t244.
      t244->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t246 TYPE REF TO object.
      t246 = t245.
      t244->oval = t246.
    ENDIF.
    t243 = t244.
    DATA t247 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t248 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t248.
    t247 = t248.
    DATA(t249) = CAST zlnt_runtime_arra_c22708faf2e3( t247 ).
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t250.
    DATA(t251) = CAST zif_lnt_statement_runnable( t89 ).
    IF t251 IS BOUND.
      CREATE OBJECT t250.
      t250->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t252 TYPE REF TO object.
      t252 = t251.
      t250->oval = t252.
    ENDIF.
    APPEND t250 TO t249->items.
    DATA(t253) = CAST zlnt_runtime_arra_c22708faf2e3( t247 ).
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t254.
    DATA(t255) = CAST zif_lnt_statement_runnable( t93 ).
    IF t255 IS BOUND.
      CREATE OBJECT t254.
      t254->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t256 TYPE REF TO object.
      t256 = t255.
      t254->oval = t256.
    ENDIF.
    APPEND t254 TO t253->items.
    DATA(t257) = CAST zlnt_runtime_arra_c22708faf2e3( t247 ).
    DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t258.
    DATA t259 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t259.
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t260.
    DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t261.
    DATA t262 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t262.
    DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t263.
    DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t264.
    DATA(t265) = CAST zif_lnt_statement_runnable( t157 ).
    IF t265 IS BOUND.
      CREATE OBJECT t264.
      t264->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t266 TYPE REF TO object.
      t266 = t265.
      t264->oval = t266.
    ENDIF.
    t263 = t264.
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t267.
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t268.
    DATA(t269) = CAST zif_lnt_statement_runnable( t89 ).
    IF t269 IS BOUND.
      CREATE OBJECT t268.
      t268->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t270 TYPE REF TO object.
      t270 = t269.
      t268->oval = t270.
    ENDIF.
    t267 = t268.
    DATA t271 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t272 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t272.
    t271 = t272.
    DATA(t273) = CAST zlnt_runtime_arra_c22708faf2e3( t271 ).
    DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t274.
    DATA(t275) = CAST zif_lnt_statement_runnable( t101 ).
    IF t275 IS BOUND.
      CREATE OBJECT t274.
      t274->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t276 TYPE REF TO object.
      t276 = t275.
      t274->oval = t276.
    ENDIF.
    APPEND t274 TO t273->items.
    DATA(t277) = CAST zlnt_runtime_arra_c22708faf2e3( t271 ).
    DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t278.
    DATA(t279) = CAST zif_lnt_statement_runnable( t106 ).
    IF t279 IS BOUND.
      CREATE OBJECT t278.
      t278->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t280 TYPE REF TO object.
      t280 = t279.
      t278->oval = t280.
    ENDIF.
    APPEND t278 TO t277->items.
    DATA(t281) = CAST zlnt_runtime_arra_c22708faf2e3( t271 ).
    DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t282.
    DATA(t283) = CAST zif_lnt_statement_runnable( t126 ).
    IF t283 IS BOUND.
      CREATE OBJECT t282.
      t282->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t284 TYPE REF TO object.
      t284 = t283.
      t282->oval = t284.
    ENDIF.
    APPEND t282 TO t281->items.
    DATA t285 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t286) = CAST zlnt_runtime_dyna_a429568d5be8( t263 ).
    DATA(t287) = CAST zlnt_runtime_dyna_a429568d5be8( t267 ).
    DATA(t288) = CAST zlnt_runtime_arra_c22708faf2e3( t271 ).
    t285 = zcl_lnt_st_combi_module=>seq( i_first = t286 i_second = t287 i_rest = t288 ).
    t262 = t285.
    IF t262 IS BOUND.
      CREATE OBJECT t261.
      t261->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t289 TYPE REF TO object.
      t289 = t262.
      t261->oval = t289.
    ENDIF.
    t260 = t261.
    DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t290.
    DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t291.
    DATA t292 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t292.
    DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t293.
    DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t294.
    DATA t295 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t295.
    DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t296.
    DATA(t297) = CAST zif_lnt_statement_runnable( t23 ).
    IF t297 IS BOUND.
      CREATE OBJECT t296.
      t296->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t298 TYPE REF TO object.
      t298 = t297.
      t296->oval = t298.
    ENDIF.
    t295 = zcl_lnt_st_combi_module=>opt_prio( i_first = t296 ).
    IF t295 IS BOUND.
      CREATE OBJECT t294.
      t294->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t299 TYPE REF TO object.
      t299 = t295.
      t294->oval = t299.
    ENDIF.
    t293 = t294.
    DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t300.
    DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t301.
    DATA(t302) = CAST zif_lnt_statement_runnable( t101 ).
    IF t302 IS BOUND.
      CREATE OBJECT t301.
      t301->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t303 TYPE REF TO object.
      t303 = t302.
      t301->oval = t303.
    ENDIF.
    t300 = t301.
    DATA t304 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t305 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t305.
    t304 = t305.
    DATA(t306) = CAST zlnt_runtime_arra_c22708faf2e3( t304 ).
    DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t307.
    DATA(t308) = CAST zif_lnt_statement_runnable( t106 ).
    IF t308 IS BOUND.
      CREATE OBJECT t307.
      t307->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t309 TYPE REF TO object.
      t309 = t308.
      t307->oval = t309.
    ENDIF.
    APPEND t307 TO t306->items.
    DATA(t310) = CAST zlnt_runtime_arra_c22708faf2e3( t304 ).
    DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t311.
    DATA(t312) = CAST zif_lnt_statement_runnable( t126 ).
    IF t312 IS BOUND.
      CREATE OBJECT t311.
      t311->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t313 TYPE REF TO object.
      t313 = t312.
      t311->oval = t313.
    ENDIF.
    APPEND t311 TO t310->items.
    DATA(t314) = CAST zlnt_runtime_arra_c22708faf2e3( t304 ).
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t315.
    DATA t316 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t316.
    DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t317.
    DATA(t318) = CAST zif_lnt_statement_runnable( t157 ).
    IF t318 IS BOUND.
      CREATE OBJECT t317.
      t317->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t319 TYPE REF TO object.
      t319 = t318.
      t317->oval = t319.
    ENDIF.
    t316 = zcl_lnt_st_combi_module=>opt_prio( i_first = t317 ).
    IF t316 IS BOUND.
      CREATE OBJECT t315.
      t315->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t320 TYPE REF TO object.
      t320 = t316.
      t315->oval = t320.
    ENDIF.
    APPEND t315 TO t314->items.
    DATA(t321) = CAST zlnt_runtime_arra_c22708faf2e3( t304 ).
    DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t322.
    DATA(t323) = CAST zif_lnt_statement_runnable( t93 ).
    IF t323 IS BOUND.
      CREATE OBJECT t322.
      t322->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t324 TYPE REF TO object.
      t324 = t323.
      t322->oval = t324.
    ENDIF.
    APPEND t322 TO t321->items.
    DATA t325 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t326) = CAST zlnt_runtime_dyna_a429568d5be8( t293 ).
    DATA(t327) = CAST zlnt_runtime_dyna_a429568d5be8( t300 ).
    DATA(t328) = CAST zlnt_runtime_arra_c22708faf2e3( t304 ).
    t325 = zcl_lnt_st_combi_module=>seq( i_first = t326 i_second = t327 i_rest = t328 ).
    t292 = t325.
    IF t292 IS BOUND.
      CREATE OBJECT t291.
      t291->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t329 TYPE REF TO object.
      t329 = t292.
      t291->oval = t329.
    ENDIF.
    t290 = t291.
    DATA t330 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t331 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t331.
    t330 = t331.
    DATA t332 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t333) = CAST zlnt_runtime_dyna_a429568d5be8( t260 ).
    DATA(t334) = CAST zlnt_runtime_dyna_a429568d5be8( t290 ).
    DATA(t335) = CAST zlnt_runtime_arra_c22708faf2e3( t330 ).
    t332 = zcl_lnt_st_combi_module=>alt_prio( i_first = t333 i_second = t334 i_rest = t335 ).
    t259 = t332.
    IF t259 IS BOUND.
      CREATE OBJECT t258.
      t258->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t336 TYPE REF TO object.
      t336 = t259.
      t258->oval = t336.
    ENDIF.
    APPEND t258 TO t257->items.
    DATA t337 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t338) = CAST zlnt_runtime_dyna_a429568d5be8( t240 ).
    DATA(t339) = CAST zlnt_runtime_dyna_a429568d5be8( t243 ).
    DATA(t340) = CAST zlnt_runtime_arra_c22708faf2e3( t247 ).
    t337 = zcl_lnt_st_combi_module=>seq( i_first = t338 i_second = t339 i_rest = t340 ).
    t239 = t337.
    t238 = t239.
    DATA t341 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t341.
    DATA t342 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t342.
    DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t343.
    DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t344.
    DATA(t345) = CAST zif_lnt_statement_runnable( t157 ).
    IF t345 IS BOUND.
      CREATE OBJECT t344.
      t344->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t346 TYPE REF TO object.
      t346 = t345.
      t344->oval = t346.
    ENDIF.
    t343 = t344.
    DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t347.
    DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t348.
    DATA(t349) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d297_8dd76b8d3d10 ).
    IF t349 IS BOUND.
      CREATE OBJECT t348.
      t348->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t348->cval = t349.
    ENDIF.
    t347 = t348.
    DATA t350 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t351 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t351.
    t350 = t351.
    DATA(t352) = CAST zlnt_runtime_arra_c22708faf2e3( t350 ).
    DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t353.
    DATA(t354) = CAST zif_lnt_statement_runnable( t85 ).
    IF t354 IS BOUND.
      CREATE OBJECT t353.
      t353->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t355 TYPE REF TO object.
      t355 = t354.
      t353->oval = t355.
    ENDIF.
    APPEND t353 TO t352->items.
    DATA(t356) = CAST zlnt_runtime_arra_c22708faf2e3( t350 ).
    DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t357.
    DATA(t358) = CAST zif_lnt_statement_runnable( t89 ).
    IF t358 IS BOUND.
      CREATE OBJECT t357.
      t357->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t359 TYPE REF TO object.
      t359 = t358.
      t357->oval = t359.
    ENDIF.
    APPEND t357 TO t356->items.
    DATA(t360) = CAST zlnt_runtime_arra_c22708faf2e3( t350 ).
    DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t361.
    DATA(t362) = CAST zif_lnt_statement_runnable( t93 ).
    IF t362 IS BOUND.
      CREATE OBJECT t361.
      t361->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t363 TYPE REF TO object.
      t363 = t362.
      t361->oval = t363.
    ENDIF.
    APPEND t361 TO t360->items.
    DATA(t364) = CAST zlnt_runtime_arra_c22708faf2e3( t350 ).
    DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t365.
    DATA(t366) = CAST zif_lnt_statement_runnable( t101 ).
    IF t366 IS BOUND.
      CREATE OBJECT t365.
      t365->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t367 TYPE REF TO object.
      t367 = t366.
      t365->oval = t367.
    ENDIF.
    APPEND t365 TO t364->items.
    DATA(t368) = CAST zlnt_runtime_arra_c22708faf2e3( t350 ).
    DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t369.
    DATA(t370) = CAST zif_lnt_statement_runnable( t106 ).
    IF t370 IS BOUND.
      CREATE OBJECT t369.
      t369->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t371 TYPE REF TO object.
      t371 = t370.
      t369->oval = t371.
    ENDIF.
    APPEND t369 TO t368->items.
    DATA(t372) = CAST zlnt_runtime_arra_c22708faf2e3( t350 ).
    DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t373.
    DATA(t374) = CAST zif_lnt_statement_runnable( t126 ).
    IF t374 IS BOUND.
      CREATE OBJECT t373.
      t373->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t375 TYPE REF TO object.
      t375 = t374.
      t373->oval = t375.
    ENDIF.
    APPEND t373 TO t372->items.
    DATA t376 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t377) = CAST zlnt_runtime_dyna_a429568d5be8( t343 ).
    DATA(t378) = CAST zlnt_runtime_dyna_a429568d5be8( t347 ).
    DATA(t379) = CAST zlnt_runtime_arra_c22708faf2e3( t350 ).
    t376 = zcl_lnt_st_combi_module=>seq( i_first = t377 i_second = t378 i_rest = t379 ).
    t342 = t376.
    t341 = t342.
    DATA t380 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t380.
    DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t381.
    DATA t382 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t382.
    DATA(t383) = CAST zif_lnt_statement_runnable( t53 ).
    IF t383 IS BOUND.
      CREATE OBJECT t382.
      t382->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t384 TYPE REF TO object.
      t384 = t383.
      t382->oval = t384.
    ENDIF.
    t381 = t382.
    DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t385.
    DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t386.
    DATA(t387) = CAST zif_lnt_statement_runnable( t89 ).
    IF t387 IS BOUND.
      CREATE OBJECT t386.
      t386->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t388 TYPE REF TO object.
      t388 = t387.
      t386->oval = t388.
    ENDIF.
    t385 = t386.
    DATA t389 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t390 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t390.
    t389 = t390.
    DATA(t391) = CAST zlnt_runtime_arra_c22708faf2e3( t389 ).
    DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t392.
    DATA t393 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t393.
    DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t394.
    DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t395.
    DATA(t396) = CAST zif_lnt_statement_runnable( t341 ).
    IF t396 IS BOUND.
      CREATE OBJECT t395.
      t395->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t397 TYPE REF TO object.
      t397 = t396.
      t395->oval = t397.
    ENDIF.
    t394 = t395.
    DATA t398 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t398.
    DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t399.
    DATA(t400) = CAST zif_lnt_statement_runnable( t238 ).
    IF t400 IS BOUND.
      CREATE OBJECT t399.
      t399->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t401 TYPE REF TO object.
      t401 = t400.
      t399->oval = t401.
    ENDIF.
    t398 = t399.
    DATA t402 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t403 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t403.
    t402 = t403.
    DATA t404 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t405) = CAST zlnt_runtime_dyna_a429568d5be8( t394 ).
    DATA(t406) = CAST zlnt_runtime_dyna_a429568d5be8( t398 ).
    DATA(t407) = CAST zlnt_runtime_arra_c22708faf2e3( t402 ).
    t404 = zcl_lnt_st_combi_module=>alt_prio( i_first = t405 i_second = t406 i_rest = t407 ).
    t393 = t404.
    IF t393 IS BOUND.
      CREATE OBJECT t392.
      t392->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t408 TYPE REF TO object.
      t408 = t393.
      t392->oval = t408.
    ENDIF.
    APPEND t392 TO t391->items.
    DATA t409 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t410) = CAST zlnt_runtime_dyna_a429568d5be8( t381 ).
    DATA(t411) = CAST zlnt_runtime_dyna_a429568d5be8( t385 ).
    DATA(t412) = CAST zlnt_runtime_arra_c22708faf2e3( t389 ).
    t409 = zcl_lnt_st_combi_module=>seq( i_first = t410 i_second = t411 i_rest = t412 ).
    t380 = t409.
    result = t380.

  ENDMETHOD.
  METHOD build_select_core.
    DATA(t1) = CAST zlnt_runtime_opti_7f2541396f43( i_allow_into ).
    DATA(t2) = CAST zlnt_runtime_opti_7f2541396f43( i_allow_order_by ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = CAST zlnt_runtime_opti_7f2541396f43( t1 ).
    IF t4 IS INITIAL.
      t3 = abap_true.
    ELSEIF t4->has = abap_false.
      t3 = abap_true.
    ENDIF.
    IF t3 = abap_true.
      DATA t5 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t5.
      DATA(t6) = abap_true.
      IF t6 = abap_true.
        DATA(t7) = abap_false.
        DATA(t8) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t8->has = abap_true.
        t8->value = t7.
        t5 = t8.
      ELSE.
        DATA t9 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t9.
        t5 = t9.
      ENDIF.
      t1 = t5.
    ENDIF.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = CAST zlnt_runtime_opti_7f2541396f43( t2 ).
    IF t11 IS INITIAL.
      t10 = abap_true.
    ELSEIF t11->has = abap_false.
      t10 = abap_true.
    ENDIF.
    IF t10 = abap_true.
      DATA t12 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t12.
      DATA(t13) = abap_true.
      IF t13 = abap_true.
        DATA(t14) = abap_true.
        DATA(t15) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t15->has = abap_true.
        t15->value = t14.
        t12 = t15.
      ELSE.
        DATA t16 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t16.
        t12 = t16.
      ENDIF.
      t2 = t12.
    ENDIF.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t17.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t21) = |WHERE|.
    CREATE OBJECT t20.
    t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t20->sval = t21.
    t19 = t20.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA(t24) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d273_c3e7a9098543 ).
    IF t24 IS BOUND.
      CREATE OBJECT t23.
      t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t23->cval = t24.
    ENDIF.
    t22 = t23.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t26.
    t25 = t26.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t28) = CAST zlnt_runtime_dyna_a429568d5be8( t19 ).
    DATA(t29) = CAST zlnt_runtime_dyna_a429568d5be8( t22 ).
    DATA(t30) = CAST zlnt_runtime_arra_c22708faf2e3( t25 ).
    t27 = zcl_lnt_st_combi_module=>seq( i_first = t28 i_second = t29 i_rest = t30 ).
    t18 = t27.
    t17 = t18.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t31.
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA t34 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t34.
    DATA t35 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t35.
    DATA t36 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t36.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t36 = zcl_lnt_version_module=>release_b8cd.
    DATA(t37) = |v751|.
    t35 = t36->get( p0 = t37 ).
    t34 = t35.
    IF t34 IS BOUND.
      CREATE OBJECT t33.
      t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t38 TYPE REF TO object.
      t38 = t34.
      t33->oval = t38.
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    DATA(t40) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d322_c628df08c7dc ).
    IF t40 IS BOUND.
      CREATE OBJECT t39.
      t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t39->cval = t40.
    ENDIF.
    DATA t41 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t41.
    t32 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t33 i_first = t39 i_opts = t41 ).
    t31 = t32.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t42.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA t45 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t45.
    DATA t46 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t47.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t47 = zcl_lnt_version_module=>release_b8cd.
    DATA(t48) = |v750|.
    t46 = t47->get( p0 = t48 ).
    t45 = t46.
    IF t45 IS BOUND.
      CREATE OBJECT t44.
      t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t49 TYPE REF TO object.
      t49 = t45.
      t44->oval = t49.
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    DATA(t51) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d295_c8c13651616a ).
    IF t51 IS BOUND.
      CREATE OBJECT t50.
      t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t50->cval = t51.
    ENDIF.
    DATA t52 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t52.
    DATA(t53) = abap_true.
    IF t53 = abap_true.
      DATA t54 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t54.
      DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t55.
      DATA(t56) = abap_true.
      IF t56 = abap_true.
        DATA(t57) = |OpenABAP|.
        DATA(t58) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t58->has = abap_true.
        t58->value = t57.
        t55 = t58.
      ELSE.
        DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t59.
        t55 = t59.
      ENDIF.
      t54 = NEW zcl_lnt_iver_options( i_also = t55 ).
      t52 = t54.
    ELSE.
      DATA t60 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t60.
      t52 = t60.
    ENDIF.
    t43 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t44 i_first = t50 i_opts = t52 ).
    t42 = t43.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t61.
    DATA t62 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t62.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA t64 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t64.
    DATA t65 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t65.
    DATA t66 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t66.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t66 = zcl_lnt_version_module=>release_b8cd.
    DATA(t67) = |v758|.
    t65 = t66->get( p0 = t67 ).
    t64 = t65.
    IF t64 IS BOUND.
      CREATE OBJECT t63.
      t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t68 TYPE REF TO object.
      t68 = t64.
      t63->oval = t68.
    ENDIF.
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t69.
    DATA(t70) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d286_cf5169b94e53 ).
    IF t70 IS BOUND.
      CREATE OBJECT t69.
      t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t69->cval = t70.
    ENDIF.
    DATA t71 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t71.
    t62 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t63 i_first = t69 i_opts = t71 ).
    t61 = t62.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t72.
    DATA t73 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA(t75) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d293_8f762dd42d06 ).
    IF t75 IS BOUND.
      CREATE OBJECT t74.
      t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t74->cval = t75.
    ENDIF.
    t73 = zcl_lnt_st_combi_module=>opt_prio( i_first = t74 ).
    t72 = t73.
    DATA t76 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t76.
    DATA t77 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA t79 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t79.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    DATA t81 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t81.
    DATA t82 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t82.
    DATA t83 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t83.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t83 = zcl_lnt_version_module=>release_b8cd.
    DATA(t84) = |v766|.
    t82 = t83->get( p0 = t84 ).
    t81 = t82.
    IF t81 IS BOUND.
      CREATE OBJECT t80.
      t80->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t85 TYPE REF TO object.
      t85 = t81.
      t80->oval = t85.
    ENDIF.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA(t87) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d289_f424b1178837 ).
    IF t87 IS BOUND.
      CREATE OBJECT t86.
      t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t86->cval = t87.
    ENDIF.
    DATA t88 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t88.
    t79 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t80 i_first = t86 i_opts = t88 ).
    IF t79 IS BOUND.
      CREATE OBJECT t78.
      t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t89 TYPE REF TO object.
      t89 = t79.
      t78->oval = t89.
    ENDIF.
    t77 = zcl_lnt_st_combi_module=>opt_prio( i_first = t78 ).
    t76 = t77.
    DATA t90 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t90.
    DATA t91 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t93.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    DATA t95 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t95.
    DATA t96 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t96.
    DATA t97 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t97.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t97 = zcl_lnt_version_module=>release_b8cd.
    DATA(t98) = |v750|.
    t96 = t97->get( p0 = t98 ).
    t95 = t96.
    IF t95 IS BOUND.
      CREATE OBJECT t94.
      t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t99 TYPE REF TO object.
      t99 = t95.
      t94->oval = t99.
    ENDIF.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA(t101) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26 ).
    IF t101 IS BOUND.
      CREATE OBJECT t100.
      t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t100->cval = t101.
    ENDIF.
    DATA t102 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t102.
    t93 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t94 i_first = t100 i_opts = t102 ).
    IF t93 IS BOUND.
      CREATE OBJECT t92.
      t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t103 TYPE REF TO object.
      t103 = t93.
      t92->oval = t103.
    ENDIF.
    t91 = zcl_lnt_st_combi_module=>opt_prio( i_first = t92 ).
    t90 = t91.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t104.
    DATA t105 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t105.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA(t107) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d276_d6ee8049769d ).
    IF t107 IS BOUND.
      CREATE OBJECT t106.
      t106->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t106->cval = t107.
    ENDIF.
    t105 = zcl_lnt_st_combi_module=>opt_prio( i_first = t106 ).
    t104 = t105.
    DATA t108 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t108.
    DATA t109 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t109.
    DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t110.
    DATA(t111) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d268_bc2d6eaf7263 ).
    IF t111 IS BOUND.
      CREATE OBJECT t110.
      t110->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t110->cval = t111.
    ENDIF.
    t109 = zcl_lnt_st_combi_module=>opt_prio( i_first = t110 ).
    t108 = t109.
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t112.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t113.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t114.
    DATA t115 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t115.
    DATA(t116) = |KeyUser|.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA(t118) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057 ).
    IF t118 IS BOUND.
      CREATE OBJECT t117.
      t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t117->cval = t118.
    ENDIF.
    t115 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = t116 i_first = t117 ).
    IF t115 IS BOUND.
      CREATE OBJECT t114.
      t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t119 TYPE REF TO object.
      t119 = t115.
      t114->oval = t119.
    ENDIF.
    t113 = zcl_lnt_st_combi_module=>opt_prio( i_first = t114 ).
    t112 = t113.
    DATA t120 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t120.
    DATA t121 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t121.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    DATA(t123) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d296_6b49712a4964 ).
    IF t123 IS BOUND.
      CREATE OBJECT t122.
      t122->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t122->cval = t123.
    ENDIF.
    t121 = zcl_lnt_st_combi_module=>opt_prio( i_first = t122 ).
    t120 = t121.
    DATA t124 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t124.
    DATA t125 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t125.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    DATA(t127) = CAST zif_lnt_statement_runnable( t17 ).
    IF t127 IS BOUND.
      CREATE OBJECT t126.
      t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t128 TYPE REF TO object.
      t128 = t127.
      t126->oval = t128.
    ENDIF.
    t125 = zcl_lnt_st_combi_module=>opt_prio( i_first = t126 ).
    t124 = t125.
    DATA t129 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t129.
    DATA t130 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t130.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA t133 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t133.
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    DATA(t135) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d308_c2d6db3f5bbf ).
    IF t135 IS BOUND.
      CREATE OBJECT t134.
      t134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t134->cval = t135.
    ENDIF.
    t133 = zcl_lnt_st_combi_module=>opt_prio( i_first = t134 ).
    IF t133 IS BOUND.
      CREATE OBJECT t132.
      t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t136 TYPE REF TO object.
      t136 = t133.
      t132->oval = t136.
    ENDIF.
    t131 = t132.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t137.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t138.
    DATA t139 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t139.
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t140.
    DATA(t141) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d309_e095d3fe668e ).
    IF t141 IS BOUND.
      CREATE OBJECT t140.
      t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t140->cval = t141.
    ENDIF.
    t139 = zcl_lnt_st_combi_module=>opt_prio( i_first = t140 ).
    IF t139 IS BOUND.
      CREATE OBJECT t138.
      t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t142 TYPE REF TO object.
      t142 = t139.
      t138->oval = t142.
    ENDIF.
    t137 = t138.
    DATA t143 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t144 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t144.
    t143 = t144.
    DATA t145 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t146) = CAST zlnt_runtime_dyna_a429568d5be8( t131 ).
    DATA(t147) = CAST zlnt_runtime_dyna_a429568d5be8( t137 ).
    DATA(t148) = CAST zlnt_runtime_arra_c22708faf2e3( t143 ).
    t145 = zcl_lnt_st_combi_module=>seq( i_first = t146 i_second = t147 i_rest = t148 ).
    t130 = t145.
    t129 = t130.
    DATA t149 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t149.
    DATA t150 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t150.
    DATA t151 TYPE abap_bool.
    DATA(t152) = CAST zlnt_runtime_opti_7f2541396f43( t2 ).
    t151 = t152->value.
    IF t151 = abap_true.
      DATA t153 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t153.
      DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t155 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t155.
      t154 = t155.
      DATA(t156) = CAST zlnt_runtime_arra_c22708faf2e3( t154 ).
      DATA t157 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t157.
      DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t158.
      DATA t159 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t159.
      DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t160.
      DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t161.
      DATA(t162) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d253_daaebfcb0814 ).
      IF t162 IS BOUND.
        CREATE OBJECT t161.
        t161->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
        t161->cval = t162.
      ENDIF.
      t160 = t161.
      DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t163.
      DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t164.
      DATA t165 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t165.
      DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t166.
      DATA(t167) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d328_b04944ab696d ).
      IF t167 IS BOUND.
        CREATE OBJECT t166.
        t166->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
        t166->cval = t167.
      ENDIF.
      t165 = zcl_lnt_st_combi_module=>opt_prio( i_first = t166 ).
      IF t165 IS BOUND.
        CREATE OBJECT t164.
        t164->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t168 TYPE REF TO object.
        t168 = t165.
        t164->oval = t168.
      ENDIF.
      t163 = t164.
      DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t170 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t170.
      t169 = t170.
      DATA(t171) = CAST zlnt_runtime_arra_c22708faf2e3( t169 ).
      DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t172.
      DATA t173 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t173.
      DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t174.
      DATA(t175) = CAST zif_lnt_statement_runnable( t31 ).
      IF t175 IS BOUND.
        CREATE OBJECT t174.
        t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t176 TYPE REF TO object.
        t176 = t175.
        t174->oval = t176.
      ENDIF.
      t173 = zcl_lnt_st_combi_module=>opt_prio( i_first = t174 ).
      IF t173 IS BOUND.
        CREATE OBJECT t172.
        t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t177 TYPE REF TO object.
        t177 = t173.
        t172->oval = t177.
      ENDIF.
      APPEND t172 TO t171->items.
      DATA t178 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t179) = CAST zlnt_runtime_dyna_a429568d5be8( t160 ).
      DATA(t180) = CAST zlnt_runtime_dyna_a429568d5be8( t163 ).
      DATA(t181) = CAST zlnt_runtime_arra_c22708faf2e3( t169 ).
      t178 = zcl_lnt_st_combi_module=>seq( i_first = t179 i_second = t180 i_rest = t181 ).
      t159 = t178.
      IF t159 IS BOUND.
        CREATE OBJECT t158.
        t158->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t182 TYPE REF TO object.
        t182 = t159.
        t158->oval = t182.
      ENDIF.
      t157 = zcl_lnt_st_combi_module=>opt_prio( i_first = t158 ).
      APPEND t157 TO t156->items.
      DATA(t183) = CAST zlnt_runtime_arra_c22708faf2e3( t154 ).
      t153 = t183.
      t150 = t153.
    ELSE.
      DATA t184 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t184.
      t150 = t184.
    ENDIF.
    t149 = t150.
    DATA t185 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t185.
    DATA t186 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t186.
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t187.
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t188.
    DATA(t189) = CAST zif_lnt_statement_runnable( t112 ).
    IF t189 IS BOUND.
      CREATE OBJECT t188.
      t188->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t190 TYPE REF TO object.
      t190 = t189.
      t188->oval = t190.
    ENDIF.
    t187 = t188.
    DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t191.
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t192.
    DATA t193 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t193.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    DATA(t195) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d313_63087fa9e019 ).
    IF t195 IS BOUND.
      CREATE OBJECT t194.
      t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t194->cval = t195.
    ENDIF.
    t193 = zcl_lnt_st_combi_module=>opt_prio( i_first = t194 ).
    IF t193 IS BOUND.
      CREATE OBJECT t192.
      t192->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t196 TYPE REF TO object.
      t196 = t193.
      t192->oval = t196.
    ENDIF.
    t191 = t192.
    DATA t197 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t198.
    t197 = t198.
    DATA(t199) = CAST zlnt_runtime_arra_c22708faf2e3( t197 ).
    DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t200.
    DATA t201 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t201.
    DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t202.
    DATA(t203) = CAST zif_lnt_statement_runnable( t61 ).
    IF t203 IS BOUND.
      CREATE OBJECT t202.
      t202->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t204 TYPE REF TO object.
      t204 = t203.
      t202->oval = t204.
    ENDIF.
    t201 = zcl_lnt_st_combi_module=>opt_prio( i_first = t202 ).
    IF t201 IS BOUND.
      CREATE OBJECT t200.
      t200->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t205 TYPE REF TO object.
      t205 = t201.
      t200->oval = t205.
    ENDIF.
    APPEND t200 TO t199->items.
    DATA(t206) = CAST zlnt_runtime_arra_c22708faf2e3( t197 ).
    DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t207.
    DATA t208 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t208.
    DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t209.
    DATA(t210) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d323_2cd6e0020229 ).
    IF t210 IS BOUND.
      CREATE OBJECT t209.
      t209->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t209->cval = t210.
    ENDIF.
    t208 = zcl_lnt_st_combi_module=>opt_prio( i_first = t209 ).
    IF t208 IS BOUND.
      CREATE OBJECT t207.
      t207->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t211 TYPE REF TO object.
      t211 = t208.
      t207->oval = t211.
    ENDIF.
    APPEND t207 TO t206->items.
    DATA t212 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t213) = CAST zlnt_runtime_dyna_a429568d5be8( t187 ).
    DATA(t214) = CAST zlnt_runtime_dyna_a429568d5be8( t191 ).
    DATA(t215) = CAST zlnt_runtime_arra_c22708faf2e3( t197 ).
    t212 = zcl_lnt_st_combi_module=>seq( i_first = t213 i_second = t214 i_rest = t215 ).
    t186 = t212.
    t185 = t186.
    DATA t216 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t216.
    DATA t217 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t217.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t218.
    DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t219.
    DATA t220 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t220.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t221.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t222.
    DATA(t223) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d250_08c3abeac258 ).
    IF t223 IS BOUND.
      CREATE OBJECT t222.
      t222->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t222->cval = t223.
    ENDIF.
    t221 = t222.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t224.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t225.
    DATA(t226) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d251_f36ca3dcb3e0 ).
    IF t226 IS BOUND.
      CREATE OBJECT t225.
      t225->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t225->cval = t226.
    ENDIF.
    t224 = t225.
    DATA t227 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t228 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t228.
    t227 = t228.
    DATA t229 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t230) = CAST zlnt_runtime_dyna_a429568d5be8( t221 ).
    DATA(t231) = CAST zlnt_runtime_dyna_a429568d5be8( t224 ).
    DATA(t232) = CAST zlnt_runtime_arra_c22708faf2e3( t227 ).
    t229 = zcl_lnt_st_combi_module=>alt_prio( i_first = t230 i_second = t231 i_rest = t232 ).
    t220 = t229.
    IF t220 IS BOUND.
      CREATE OBJECT t219.
      t219->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t233 TYPE REF TO object.
      t233 = t220.
      t219->oval = t233.
    ENDIF.
    t218 = t219.
    DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t234.
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t235.
    DATA(t236) = CAST zif_lnt_statement_runnable( t76 ).
    IF t236 IS BOUND.
      CREATE OBJECT t235.
      t235->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t237 TYPE REF TO object.
      t237 = t236.
      t235->oval = t237.
    ENDIF.
    t234 = t235.
    DATA t238 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t239 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t239.
    t238 = t239.
    DATA(t240) = CAST zlnt_runtime_arra_c22708faf2e3( t238 ).
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t241.
    DATA(t242) = CAST zif_lnt_statement_runnable( t90 ).
    IF t242 IS BOUND.
      CREATE OBJECT t241.
      t241->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t243 TYPE REF TO object.
      t243 = t242.
      t241->oval = t243.
    ENDIF.
    APPEND t241 TO t240->items.
    DATA t244 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t245) = CAST zlnt_runtime_dyna_a429568d5be8( t218 ).
    DATA(t246) = CAST zlnt_runtime_dyna_a429568d5be8( t234 ).
    DATA(t247) = CAST zlnt_runtime_arra_c22708faf2e3( t238 ).
    t244 = zcl_lnt_st_combi_module=>seq( i_first = t245 i_second = t246 i_rest = t247 ).
    t217 = t244.
    t216 = t217.
    DATA t248 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t248.
    DATA t249 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t249.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t250.
    DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t251.
    DATA(t252) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d249_9dc4af95df9d ).
    IF t252 IS BOUND.
      CREATE OBJECT t251.
      t251->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t251->cval = t252.
    ENDIF.
    t250 = t251.
    DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t253.
    DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t254.
    DATA(t255) = CAST zif_lnt_statement_runnable( t76 ).
    IF t255 IS BOUND.
      CREATE OBJECT t254.
      t254->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t256 TYPE REF TO object.
      t256 = t255.
      t254->oval = t256.
    ENDIF.
    t253 = t254.
    DATA t257 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t258.
    t257 = t258.
    DATA(t259) = CAST zlnt_runtime_arra_c22708faf2e3( t257 ).
    DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t260.
    DATA(t261) = CAST zif_lnt_statement_runnable( t90 ).
    IF t261 IS BOUND.
      CREATE OBJECT t260.
      t260->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t262 TYPE REF TO object.
      t262 = t261.
      t260->oval = t262.
    ENDIF.
    APPEND t260 TO t259->items.
    DATA t263 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t264) = CAST zlnt_runtime_dyna_a429568d5be8( t250 ).
    DATA(t265) = CAST zlnt_runtime_dyna_a429568d5be8( t253 ).
    DATA(t266) = CAST zlnt_runtime_arra_c22708faf2e3( t257 ).
    t263 = zcl_lnt_st_combi_module=>seq( i_first = t264 i_second = t265 i_rest = t266 ).
    t249 = t263.
    t248 = t249.
    DATA t267 TYPE abap_bool.
    DATA t268 TYPE abap_bool.
    DATA(t269) = CAST zlnt_runtime_opti_7f2541396f43( t1 ).
    t268 = t269->value.
    t267 = xsdbool( t268 = abap_false ).
    IF t267 = abap_true.
      DATA t270 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t270.
      DATA t271 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t271.
      DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t272.
      DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t273.
      DATA(t274) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d297_8dd76b8d3d10 ).
      IF t274 IS BOUND.
        CREATE OBJECT t273.
        t273->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
        t273->cval = t274.
      ENDIF.
      t272 = t273.
      DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t275.
      DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t276.
      DATA(t277) = CAST zif_lnt_statement_runnable( t104 ).
      IF t277 IS BOUND.
        CREATE OBJECT t276.
        t276->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t278 TYPE REF TO object.
        t278 = t277.
        t276->oval = t278.
      ENDIF.
      t275 = t276.
      DATA t279 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t280 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t280.
      t279 = t280.
      DATA(t281) = CAST zlnt_runtime_arra_c22708faf2e3( t279 ).
      DATA t282 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t282.
      DATA(t283) = CAST zif_lnt_statement_runnable( t108 ).
      IF t283 IS BOUND.
        CREATE OBJECT t282.
        t282->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t284 TYPE REF TO object.
        t284 = t283.
        t282->oval = t284.
      ENDIF.
      APPEND t282 TO t281->items.
      DATA(t285) = CAST zlnt_runtime_arra_c22708faf2e3( t279 ).
      DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t286.
      DATA t287 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t287.
      DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t288.
      DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t289.
      DATA t290 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t290.
      DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t291.
      DATA(t292) = CAST zif_lnt_statement_runnable( t42 ).
      IF t292 IS BOUND.
        CREATE OBJECT t291.
        t291->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t293 TYPE REF TO object.
        t293 = t292.
        t291->oval = t293.
      ENDIF.
      t290 = zcl_lnt_st_combi_module=>opt_prio( i_first = t291 ).
      IF t290 IS BOUND.
        CREATE OBJECT t289.
        t289->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t294 TYPE REF TO object.
        t294 = t290.
        t289->oval = t294.
      ENDIF.
      t288 = t289.
      DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t295.
      DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t296.
      DATA(t297) = CAST zif_lnt_statement_runnable( t120 ).
      IF t297 IS BOUND.
        CREATE OBJECT t296.
        t296->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t298 TYPE REF TO object.
        t298 = t297.
        t296->oval = t298.
      ENDIF.
      t295 = t296.
      DATA t299 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t300 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t300.
      t299 = t300.
      DATA(t301) = CAST zlnt_runtime_arra_c22708faf2e3( t299 ).
      DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t302.
      DATA(t303) = CAST zif_lnt_statement_runnable( t124 ).
      IF t303 IS BOUND.
        CREATE OBJECT t302.
        t302->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t304 TYPE REF TO object.
        t304 = t303.
        t302->oval = t304.
      ENDIF.
      APPEND t302 TO t301->items.
      DATA(t305) = CAST zlnt_runtime_arra_c22708faf2e3( t299 ).
      DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t306.
      DATA(t307) = CAST zif_lnt_statement_runnable( t129 ).
      IF t307 IS BOUND.
        CREATE OBJECT t306.
        t306->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t308 TYPE REF TO object.
        t308 = t307.
        t306->oval = t308.
      ENDIF.
      APPEND t306 TO t305->items.
      DATA(t309) = CAST zlnt_runtime_arra_c22708faf2e3( t149 ).
      DATA t310 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t310.
      DATA t311 TYPE REF TO object.
      CLEAR t311.
      LOOP AT t309->items INTO t311.
        t310 ?= t311.
        DATA(t312) = CAST zlnt_runtime_arra_c22708faf2e3( t299 ).
        DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t313.
        DATA(t314) = CAST zif_lnt_statement_runnable( t310 ).
        IF t314 IS BOUND.
          CREATE OBJECT t313.
          t313->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          DATA t315 TYPE REF TO object.
          t315 = t314.
          t313->oval = t315.
        ENDIF.
        APPEND t313 TO t312->items.
      ENDLOOP.
      DATA(t316) = CAST zlnt_runtime_arra_c22708faf2e3( t299 ).
      DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t317.
      DATA(t318) = CAST zif_lnt_statement_runnable( t185 ).
      IF t318 IS BOUND.
        CREATE OBJECT t317.
        t317->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t319 TYPE REF TO object.
        t319 = t318.
        t317->oval = t319.
      ENDIF.
      APPEND t317 TO t316->items.
      DATA t320 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t321) = CAST zlnt_runtime_dyna_a429568d5be8( t288 ).
      DATA(t322) = CAST zlnt_runtime_dyna_a429568d5be8( t295 ).
      DATA(t323) = CAST zlnt_runtime_arra_c22708faf2e3( t299 ).
      t320 = zcl_lnt_st_combi_module=>seq( i_first = t321 i_second = t322 i_rest = t323 ).
      t287 = t320.
      IF t287 IS BOUND.
        CREATE OBJECT t286.
        t286->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t324 TYPE REF TO object.
        t324 = t287.
        t286->oval = t324.
      ENDIF.
      APPEND t286 TO t285->items.
      DATA t325 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t326) = CAST zlnt_runtime_dyna_a429568d5be8( t272 ).
      DATA(t327) = CAST zlnt_runtime_dyna_a429568d5be8( t275 ).
      DATA(t328) = CAST zlnt_runtime_arra_c22708faf2e3( t279 ).
      t325 = zcl_lnt_st_combi_module=>seq( i_first = t326 i_second = t327 i_rest = t328 ).
      t271 = t325.
      t270 = t271.
      DATA t329 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t329.
      DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t330.
      DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t331.
      DATA t332 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t332.
      DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t335) = |SINGLE|.
      CREATE OBJECT t334.
      t334->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t334->sval = t335.
      t333 = t334.
      DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t336.
      DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t337.
      DATA t338 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t338.
      DATA t339 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t339.
      DATA(t340) = abap_true.
      IF t340 = abap_true.
        DATA(t341) = abap_false.
        DATA(t342) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t342->has = abap_true.
        t342->value = t341.
        t339 = t342.
      ELSE.
        DATA t343 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t343.
        t339 = t343.
      ENDIF.
      t338 = zcl_lnt_select_core_module=>build_select_single_core( i_allow_into = t339 ).
      IF t338 IS BOUND.
        CREATE OBJECT t337.
        t337->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t344 TYPE REF TO object.
        t344 = t338.
        t337->oval = t344.
      ENDIF.
      t336 = t337.
      DATA t345 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t346 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t346.
      t345 = t346.
      DATA t347 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t348) = CAST zlnt_runtime_dyna_a429568d5be8( t333 ).
      DATA(t349) = CAST zlnt_runtime_dyna_a429568d5be8( t336 ).
      DATA(t350) = CAST zlnt_runtime_arra_c22708faf2e3( t345 ).
      t347 = zcl_lnt_st_combi_module=>seq( i_first = t348 i_second = t349 i_rest = t350 ).
      t332 = t347.
      IF t332 IS BOUND.
        CREATE OBJECT t331.
        t331->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t351 TYPE REF TO object.
        t351 = t332.
        t331->oval = t351.
      ENDIF.
      t330 = t331.
      DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t352.
      DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t353.
      DATA t354 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t354.
      DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t355.
      DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t356.
      DATA t357 TYPE REF TO zif_lnt_statement_runnable.
      DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t359) = |DISTINCT|.
      CREATE OBJECT t358.
      t358->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t358->sval = t359.
      t357 = zcl_lnt_st_combi_module=>opt_prio( i_first = t358 ).
      IF t357 IS BOUND.
        CREATE OBJECT t356.
        t356->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t360 TYPE REF TO object.
        t360 = t357.
        t356->oval = t360.
      ENDIF.
      t355 = t356.
      DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t361.
      DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t362.
      DATA(t363) = CAST zif_lnt_statement_runnable( t72 ).
      IF t363 IS BOUND.
        CREATE OBJECT t362.
        t362->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t364 TYPE REF TO object.
        t364 = t363.
        t362->oval = t364.
      ENDIF.
      t361 = t362.
      DATA t365 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t366 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t366.
      t365 = t366.
      DATA(t367) = CAST zlnt_runtime_arra_c22708faf2e3( t365 ).
      DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t368.
      DATA(t369) = CAST zif_lnt_statement_runnable( t108 ).
      IF t369 IS BOUND.
        CREATE OBJECT t368.
        t368->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t370 TYPE REF TO object.
        t370 = t369.
        t368->oval = t370.
      ENDIF.
      APPEND t368 TO t367->items.
      DATA(t371) = CAST zlnt_runtime_arra_c22708faf2e3( t365 ).
      DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t372.
      DATA(t373) = CAST zif_lnt_statement_runnable( t270 ).
      IF t373 IS BOUND.
        CREATE OBJECT t372.
        t372->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t374 TYPE REF TO object.
        t374 = t373.
        t372->oval = t374.
      ENDIF.
      APPEND t372 TO t371->items.
      DATA t375 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t376) = CAST zlnt_runtime_dyna_a429568d5be8( t355 ).
      DATA(t377) = CAST zlnt_runtime_dyna_a429568d5be8( t361 ).
      DATA(t378) = CAST zlnt_runtime_arra_c22708faf2e3( t365 ).
      t375 = zcl_lnt_st_combi_module=>seq( i_first = t376 i_second = t377 i_rest = t378 ).
      t354 = t375.
      IF t354 IS BOUND.
        CREATE OBJECT t353.
        t353->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t379 TYPE REF TO object.
        t379 = t354.
        t353->oval = t379.
      ENDIF.
      t352 = t353.
      DATA t380 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t381 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t381.
      t380 = t381.
      DATA t382 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t383) = CAST zlnt_runtime_dyna_a429568d5be8( t330 ).
      DATA(t384) = CAST zlnt_runtime_dyna_a429568d5be8( t352 ).
      DATA(t385) = CAST zlnt_runtime_arra_c22708faf2e3( t380 ).
      t382 = zcl_lnt_st_combi_module=>alt_prio( i_first = t383 i_second = t384 i_rest = t385 ).
      t329 = t382.
      result = t329.
      RETURN.
    ENDIF.
    DATA t386 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t386.
    DATA t387 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t387.
    DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t388.
    DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t389.
    DATA t390 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t390.
    DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t391.
    DATA(t392) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d324_e103ee74a0b4 ).
    IF t392 IS BOUND.
      CREATE OBJECT t391.
      t391->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t391->cval = t392.
    ENDIF.
    t390 = zcl_lnt_st_combi_module=>opt_prio( i_first = t391 ).
    IF t390 IS BOUND.
      CREATE OBJECT t389.
      t389->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t393 TYPE REF TO object.
      t393 = t390.
      t389->oval = t393.
    ENDIF.
    t388 = t389.
    DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t394.
    DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t395.
    DATA t396 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t396.
    DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t397.
    DATA(t398) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d328_b04944ab696d ).
    IF t398 IS BOUND.
      CREATE OBJECT t397.
      t397->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t397->cval = t398.
    ENDIF.
    t396 = zcl_lnt_st_combi_module=>opt_prio( i_first = t397 ).
    IF t396 IS BOUND.
      CREATE OBJECT t395.
      t395->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t399 TYPE REF TO object.
      t399 = t396.
      t395->oval = t399.
    ENDIF.
    t394 = t395.
    DATA t400 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t401 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t401.
    t400 = t401.
    DATA(t402) = CAST zlnt_runtime_arra_c22708faf2e3( t400 ).
    DATA t403 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t403.
    DATA(t404) = CAST zif_lnt_statement_runnable( t108 ).
    IF t404 IS BOUND.
      CREATE OBJECT t403.
      t403->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t405 TYPE REF TO object.
      t405 = t404.
      t403->oval = t405.
    ENDIF.
    APPEND t403 TO t402->items.
    DATA(t406) = CAST zlnt_runtime_arra_c22708faf2e3( t400 ).
    DATA t407 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t407.
    DATA(t408) = CAST zif_lnt_statement_runnable( t112 ).
    IF t408 IS BOUND.
      CREATE OBJECT t407.
      t407->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t409 TYPE REF TO object.
      t409 = t408.
      t407->oval = t409.
    ENDIF.
    APPEND t407 TO t406->items.
    DATA(t410) = CAST zlnt_runtime_arra_c22708faf2e3( t400 ).
    DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t411.
    DATA(t412) = CAST zif_lnt_statement_runnable( t108 ).
    IF t412 IS BOUND.
      CREATE OBJECT t411.
      t411->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t413 TYPE REF TO object.
      t413 = t412.
      t411->oval = t413.
    ENDIF.
    APPEND t411 TO t410->items.
    DATA(t414) = CAST zlnt_runtime_arra_c22708faf2e3( t400 ).
    DATA t415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t415.
    DATA t416 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t416.
    DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t417.
    DATA(t418) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d328_b04944ab696d ).
    IF t418 IS BOUND.
      CREATE OBJECT t417.
      t417->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t417->cval = t418.
    ENDIF.
    t416 = zcl_lnt_st_combi_module=>opt_prio( i_first = t417 ).
    IF t416 IS BOUND.
      CREATE OBJECT t415.
      t415->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t419 TYPE REF TO object.
      t419 = t416.
      t415->oval = t419.
    ENDIF.
    APPEND t415 TO t414->items.
    DATA t420 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t421) = CAST zlnt_runtime_dyna_a429568d5be8( t388 ).
    DATA(t422) = CAST zlnt_runtime_dyna_a429568d5be8( t394 ).
    DATA(t423) = CAST zlnt_runtime_arra_c22708faf2e3( t400 ).
    t420 = zcl_lnt_st_combi_module=>seq( i_first = t421 i_second = t422 i_rest = t423 ).
    t387 = t420.
    t386 = t387.
    DATA t424 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t424.
    DATA t425 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t425.
    DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t426.
    DATA t427 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t427.
    DATA t428 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t428.
    DATA t429 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t429.
    DATA t430 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t430.
    DATA t431 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t431.
    DATA t432 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t432.
    DATA t433 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t433.
    DATA t434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t434.
    DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t435.
    DATA(t436) = CAST zif_lnt_statement_runnable( t248 ).
    IF t436 IS BOUND.
      CREATE OBJECT t435.
      t435->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t437 TYPE REF TO object.
      t437 = t436.
      t435->oval = t437.
    ENDIF.
    t434 = t435.
    DATA t438 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t438.
    DATA t439 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t439.
    DATA t440 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t440.
    DATA t441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t441.
    DATA(t442) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d324_e103ee74a0b4 ).
    IF t442 IS BOUND.
      CREATE OBJECT t441.
      t441->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t441->cval = t442.
    ENDIF.
    t440 = zcl_lnt_st_combi_module=>opt_prio( i_first = t441 ).
    IF t440 IS BOUND.
      CREATE OBJECT t439.
      t439->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t443 TYPE REF TO object.
      t443 = t440.
      t439->oval = t443.
    ENDIF.
    t438 = t439.
    DATA t444 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t445 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t445.
    t444 = t445.
    DATA(t446) = CAST zlnt_runtime_arra_c22708faf2e3( t444 ).
    DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t447.
    DATA(t448) = CAST zif_lnt_statement_runnable( t108 ).
    IF t448 IS BOUND.
      CREATE OBJECT t447.
      t447->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t449 TYPE REF TO object.
      t449 = t448.
      t447->oval = t449.
    ENDIF.
    APPEND t447 TO t446->items.
    DATA(t450) = CAST zlnt_runtime_arra_c22708faf2e3( t444 ).
    DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t451.
    DATA t452 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t452.
    DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t453.
    DATA(t454) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d328_b04944ab696d ).
    IF t454 IS BOUND.
      CREATE OBJECT t453.
      t453->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t453->cval = t454.
    ENDIF.
    t452 = zcl_lnt_st_combi_module=>opt_prio( i_first = t453 ).
    IF t452 IS BOUND.
      CREATE OBJECT t451.
      t451->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t455 TYPE REF TO object.
      t455 = t452.
      t451->oval = t455.
    ENDIF.
    APPEND t451 TO t450->items.
    DATA(t456) = CAST zlnt_runtime_arra_c22708faf2e3( t444 ).
    DATA t457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t457.
    DATA(t458) = CAST zif_lnt_statement_runnable( t108 ).
    IF t458 IS BOUND.
      CREATE OBJECT t457.
      t457->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t459 TYPE REF TO object.
      t459 = t458.
      t457->oval = t459.
    ENDIF.
    APPEND t457 TO t456->items.
    DATA(t460) = CAST zlnt_runtime_arra_c22708faf2e3( t444 ).
    DATA t461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t461.
    DATA t462 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t462.
    DATA t463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t463.
    DATA(t464) = CAST zif_lnt_statement_runnable( t31 ).
    IF t464 IS BOUND.
      CREATE OBJECT t463.
      t463->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t465 TYPE REF TO object.
      t465 = t464.
      t463->oval = t465.
    ENDIF.
    t462 = zcl_lnt_st_combi_module=>opt_prio( i_first = t463 ).
    IF t462 IS BOUND.
      CREATE OBJECT t461.
      t461->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t466 TYPE REF TO object.
      t466 = t462.
      t461->oval = t466.
    ENDIF.
    APPEND t461 TO t460->items.
    DATA(t467) = CAST zlnt_runtime_arra_c22708faf2e3( t444 ).
    DATA t468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t468.
    DATA t469 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t469.
    DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t470.
    DATA(t471) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d253_daaebfcb0814 ).
    IF t471 IS BOUND.
      CREATE OBJECT t470.
      t470->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t470->cval = t471.
    ENDIF.
    t469 = zcl_lnt_st_combi_module=>opt_prio( i_first = t470 ).
    IF t469 IS BOUND.
      CREATE OBJECT t468.
      t468->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t472 TYPE REF TO object.
      t472 = t469.
      t468->oval = t472.
    ENDIF.
    APPEND t468 TO t467->items.
    DATA t473 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t474) = CAST zlnt_runtime_dyna_a429568d5be8( t434 ).
    DATA(t475) = CAST zlnt_runtime_dyna_a429568d5be8( t438 ).
    DATA(t476) = CAST zlnt_runtime_arra_c22708faf2e3( t444 ).
    t473 = zcl_lnt_st_combi_module=>seq( i_first = t474 i_second = t475 i_rest = t476 ).
    t433 = t473.
    IF t433 IS BOUND.
      CREATE OBJECT t432.
      t432->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t477 TYPE REF TO object.
      t477 = t433.
      t432->oval = t477.
    ENDIF.
    t431 = t432.
    DATA t478 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t478.
    DATA t479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t479.
    DATA t480 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t480.
    DATA t481 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t481.
    DATA t482 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t482.
    DATA(t483) = CAST zif_lnt_statement_runnable( t216 ).
    IF t483 IS BOUND.
      CREATE OBJECT t482.
      t482->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t484 TYPE REF TO object.
      t484 = t483.
      t482->oval = t484.
    ENDIF.
    t481 = t482.
    DATA t485 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t485.
    DATA t486 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t486.
    DATA(t487) = CAST zif_lnt_statement_runnable( t108 ).
    IF t487 IS BOUND.
      CREATE OBJECT t486.
      t486->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t488 TYPE REF TO object.
      t488 = t487.
      t486->oval = t488.
    ENDIF.
    t485 = t486.
    DATA t489 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t490 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t490.
    t489 = t490.
    DATA(t491) = CAST zlnt_runtime_arra_c22708faf2e3( t489 ).
    DATA t492 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t492.
    DATA t493 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t493.
    DATA t494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t494.
    DATA(t495) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d328_b04944ab696d ).
    IF t495 IS BOUND.
      CREATE OBJECT t494.
      t494->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t494->cval = t495.
    ENDIF.
    t493 = zcl_lnt_st_combi_module=>opt_prio( i_first = t494 ).
    IF t493 IS BOUND.
      CREATE OBJECT t492.
      t492->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t496 TYPE REF TO object.
      t496 = t493.
      t492->oval = t496.
    ENDIF.
    APPEND t492 TO t491->items.
    DATA(t497) = CAST zlnt_runtime_arra_c22708faf2e3( t489 ).
    DATA t498 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t498.
    DATA(t499) = CAST zif_lnt_statement_runnable( t108 ).
    IF t499 IS BOUND.
      CREATE OBJECT t498.
      t498->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t500 TYPE REF TO object.
      t500 = t499.
      t498->oval = t500.
    ENDIF.
    APPEND t498 TO t497->items.
    DATA(t501) = CAST zlnt_runtime_arra_c22708faf2e3( t489 ).
    DATA t502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t502.
    DATA t503 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t503.
    DATA t504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t504.
    DATA(t505) = CAST zif_lnt_statement_runnable( t31 ).
    IF t505 IS BOUND.
      CREATE OBJECT t504.
      t504->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t506 TYPE REF TO object.
      t506 = t505.
      t504->oval = t506.
    ENDIF.
    t503 = zcl_lnt_st_combi_module=>opt_prio( i_first = t504 ).
    IF t503 IS BOUND.
      CREATE OBJECT t502.
      t502->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t507 TYPE REF TO object.
      t507 = t503.
      t502->oval = t507.
    ENDIF.
    APPEND t502 TO t501->items.
    DATA t508 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t509) = CAST zlnt_runtime_dyna_a429568d5be8( t481 ).
    DATA(t510) = CAST zlnt_runtime_dyna_a429568d5be8( t485 ).
    DATA(t511) = CAST zlnt_runtime_arra_c22708faf2e3( t489 ).
    t508 = zcl_lnt_st_combi_module=>seq( i_first = t509 i_second = t510 i_rest = t511 ).
    t480 = t508.
    IF t480 IS BOUND.
      CREATE OBJECT t479.
      t479->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t512 TYPE REF TO object.
      t512 = t480.
      t479->oval = t512.
    ENDIF.
    t478 = t479.
    DATA t513 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t514 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t514.
    t513 = t514.
    DATA t515 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t516) = CAST zlnt_runtime_dyna_a429568d5be8( t431 ).
    DATA(t517) = CAST zlnt_runtime_dyna_a429568d5be8( t478 ).
    DATA(t518) = CAST zlnt_runtime_arra_c22708faf2e3( t513 ).
    t515 = zcl_lnt_st_combi_module=>alt_prio( i_first = t516 i_second = t517 i_rest = t518 ).
    t430 = t515.
    IF t430 IS BOUND.
      CREATE OBJECT t429.
      t429->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t519 TYPE REF TO object.
      t519 = t430.
      t429->oval = t519.
    ENDIF.
    t428 = zcl_lnt_st_combi_module=>opt_prio( i_first = t429 ).
    IF t428 IS BOUND.
      CREATE OBJECT t427.
      t427->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t520 TYPE REF TO object.
      t520 = t428.
      t427->oval = t520.
    ENDIF.
    t426 = t427.
    DATA t521 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t521.
    DATA t522 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t522.
    DATA t523 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t523.
    DATA t524 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t524.
    DATA(t525) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d323_2cd6e0020229 ).
    IF t525 IS BOUND.
      CREATE OBJECT t524.
      t524->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t524->cval = t525.
    ENDIF.
    t523 = zcl_lnt_st_combi_module=>opt_prio( i_first = t524 ).
    IF t523 IS BOUND.
      CREATE OBJECT t522.
      t522->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t526 TYPE REF TO object.
      t526 = t523.
      t522->oval = t526.
    ENDIF.
    t521 = t522.
    DATA t527 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t528 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t528.
    t527 = t528.
    DATA t529 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t530) = CAST zlnt_runtime_dyna_a429568d5be8( t426 ).
    DATA(t531) = CAST zlnt_runtime_dyna_a429568d5be8( t521 ).
    DATA(t532) = CAST zlnt_runtime_arra_c22708faf2e3( t527 ).
    t529 = zcl_lnt_st_combi_module=>seq( i_first = t530 i_second = t531 i_rest = t532 ).
    t425 = t529.
    t424 = t425.
    DATA t533 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t533.
    DATA t534 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t534.
    DATA t535 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t535.
    DATA t536 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t536.
    DATA t537 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t537.
    DATA t538 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t538.
    DATA(t539) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d297_8dd76b8d3d10 ).
    IF t539 IS BOUND.
      CREATE OBJECT t538.
      t538->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t538->cval = t539.
    ENDIF.
    t537 = zcl_lnt_st_combi_module=>opt_prio( i_first = t538 ).
    IF t537 IS BOUND.
      CREATE OBJECT t536.
      t536->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t540 TYPE REF TO object.
      t540 = t537.
      t536->oval = t540.
    ENDIF.
    t535 = t536.
    DATA t541 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t541.
    DATA t542 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t542.
    DATA(t543) = CAST zif_lnt_statement_runnable( t104 ).
    IF t543 IS BOUND.
      CREATE OBJECT t542.
      t542->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t544 TYPE REF TO object.
      t544 = t543.
      t542->oval = t544.
    ENDIF.
    t541 = t542.
    DATA t545 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t546 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t546.
    t545 = t546.
    DATA(t547) = CAST zlnt_runtime_arra_c22708faf2e3( t545 ).
    DATA t548 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t548.
    DATA(t549) = CAST zif_lnt_statement_runnable( t108 ).
    IF t549 IS BOUND.
      CREATE OBJECT t548.
      t548->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t550 TYPE REF TO object.
      t550 = t549.
      t548->oval = t550.
    ENDIF.
    APPEND t548 TO t547->items.
    DATA(t551) = CAST zlnt_runtime_arra_c22708faf2e3( t545 ).
    DATA t552 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t552.
    DATA(t553) = CAST zif_lnt_statement_runnable( t386 ).
    IF t553 IS BOUND.
      CREATE OBJECT t552.
      t552->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t554 TYPE REF TO object.
      t554 = t553.
      t552->oval = t554.
    ENDIF.
    APPEND t552 TO t551->items.
    DATA(t555) = CAST zlnt_runtime_arra_c22708faf2e3( t545 ).
    DATA t556 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t556.
    DATA t557 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t557.
    DATA t558 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t558.
    DATA t559 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t559.
    DATA t560 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t560.
    DATA t561 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t561.
    DATA t562 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t562.
    DATA(t563) = CAST zif_lnt_statement_runnable( t248 ).
    IF t563 IS BOUND.
      CREATE OBJECT t562.
      t562->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t564 TYPE REF TO object.
      t564 = t563.
      t562->oval = t564.
    ENDIF.
    t561 = t562.
    DATA t565 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t565.
    DATA t566 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t566.
    DATA t567 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t567.
    DATA t568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t568.
    DATA(t569) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d324_e103ee74a0b4 ).
    IF t569 IS BOUND.
      CREATE OBJECT t568.
      t568->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t568->cval = t569.
    ENDIF.
    t567 = zcl_lnt_st_combi_module=>opt_prio( i_first = t568 ).
    IF t567 IS BOUND.
      CREATE OBJECT t566.
      t566->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t570 TYPE REF TO object.
      t570 = t567.
      t566->oval = t570.
    ENDIF.
    t565 = t566.
    DATA t571 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t572 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t572.
    t571 = t572.
    DATA(t573) = CAST zlnt_runtime_arra_c22708faf2e3( t571 ).
    DATA t574 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t574.
    DATA(t575) = CAST zif_lnt_statement_runnable( t108 ).
    IF t575 IS BOUND.
      CREATE OBJECT t574.
      t574->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t576 TYPE REF TO object.
      t576 = t575.
      t574->oval = t576.
    ENDIF.
    APPEND t574 TO t573->items.
    DATA(t577) = CAST zlnt_runtime_arra_c22708faf2e3( t571 ).
    DATA t578 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t578.
    DATA(t579) = CAST zif_lnt_statement_runnable( t112 ).
    IF t579 IS BOUND.
      CREATE OBJECT t578.
      t578->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t580 TYPE REF TO object.
      t580 = t579.
      t578->oval = t580.
    ENDIF.
    APPEND t578 TO t577->items.
    DATA(t581) = CAST zlnt_runtime_arra_c22708faf2e3( t571 ).
    DATA t582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t582.
    DATA t583 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t583.
    DATA t584 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t584.
    DATA(t585) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d328_b04944ab696d ).
    IF t585 IS BOUND.
      CREATE OBJECT t584.
      t584->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t584->cval = t585.
    ENDIF.
    t583 = zcl_lnt_st_combi_module=>opt_prio( i_first = t584 ).
    IF t583 IS BOUND.
      CREATE OBJECT t582.
      t582->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t586 TYPE REF TO object.
      t586 = t583.
      t582->oval = t586.
    ENDIF.
    APPEND t582 TO t581->items.
    DATA(t587) = CAST zlnt_runtime_arra_c22708faf2e3( t571 ).
    DATA t588 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t588.
    DATA(t589) = CAST zif_lnt_statement_runnable( t108 ).
    IF t589 IS BOUND.
      CREATE OBJECT t588.
      t588->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t590 TYPE REF TO object.
      t590 = t589.
      t588->oval = t590.
    ENDIF.
    APPEND t588 TO t587->items.
    DATA(t591) = CAST zlnt_runtime_arra_c22708faf2e3( t571 ).
    DATA t592 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t592.
    DATA t593 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t593.
    DATA t594 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t594.
    DATA(t595) = CAST zif_lnt_statement_runnable( t31 ).
    IF t595 IS BOUND.
      CREATE OBJECT t594.
      t594->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t596 TYPE REF TO object.
      t596 = t595.
      t594->oval = t596.
    ENDIF.
    t593 = zcl_lnt_st_combi_module=>opt_prio( i_first = t594 ).
    IF t593 IS BOUND.
      CREATE OBJECT t592.
      t592->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t597 TYPE REF TO object.
      t597 = t593.
      t592->oval = t597.
    ENDIF.
    APPEND t592 TO t591->items.
    DATA(t598) = CAST zlnt_runtime_arra_c22708faf2e3( t571 ).
    DATA t599 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t599.
    DATA(t600) = CAST zif_lnt_statement_runnable( t120 ).
    IF t600 IS BOUND.
      CREATE OBJECT t599.
      t599->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t601 TYPE REF TO object.
      t601 = t600.
      t599->oval = t601.
    ENDIF.
    APPEND t599 TO t598->items.
    DATA(t602) = CAST zlnt_runtime_arra_c22708faf2e3( t571 ).
    DATA t603 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t603.
    DATA(t604) = CAST zif_lnt_statement_runnable( t124 ).
    IF t604 IS BOUND.
      CREATE OBJECT t603.
      t603->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t605 TYPE REF TO object.
      t605 = t604.
      t603->oval = t605.
    ENDIF.
    APPEND t603 TO t602->items.
    DATA(t606) = CAST zlnt_runtime_arra_c22708faf2e3( t571 ).
    DATA t607 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t607.
    DATA(t608) = CAST zif_lnt_statement_runnable( t129 ).
    IF t608 IS BOUND.
      CREATE OBJECT t607.
      t607->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t609 TYPE REF TO object.
      t609 = t608.
      t607->oval = t609.
    ENDIF.
    APPEND t607 TO t606->items.
    DATA(t610) = CAST zlnt_runtime_arra_c22708faf2e3( t149 ).
    DATA t611 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t611.
    DATA t612 TYPE REF TO object.
    CLEAR t612.
    LOOP AT t610->items INTO t612.
      t611 ?= t612.
      DATA(t613) = CAST zlnt_runtime_arra_c22708faf2e3( t571 ).
      DATA t614 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t614.
      DATA(t615) = CAST zif_lnt_statement_runnable( t611 ).
      IF t615 IS BOUND.
        CREATE OBJECT t614.
        t614->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t616 TYPE REF TO object.
        t616 = t615.
        t614->oval = t616.
      ENDIF.
      APPEND t614 TO t613->items.
    ENDLOOP.
    DATA(t617) = CAST zlnt_runtime_arra_c22708faf2e3( t571 ).
    DATA t618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t618.
    DATA(t619) = CAST zif_lnt_statement_runnable( t185 ).
    IF t619 IS BOUND.
      CREATE OBJECT t618.
      t618->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t620 TYPE REF TO object.
      t620 = t619.
      t618->oval = t620.
    ENDIF.
    APPEND t618 TO t617->items.
    DATA t621 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t622) = CAST zlnt_runtime_dyna_a429568d5be8( t561 ).
    DATA(t623) = CAST zlnt_runtime_dyna_a429568d5be8( t565 ).
    DATA(t624) = CAST zlnt_runtime_arra_c22708faf2e3( t571 ).
    t621 = zcl_lnt_st_combi_module=>seq( i_first = t622 i_second = t623 i_rest = t624 ).
    t560 = t621.
    IF t560 IS BOUND.
      CREATE OBJECT t559.
      t559->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t625 TYPE REF TO object.
      t625 = t560.
      t559->oval = t625.
    ENDIF.
    t558 = t559.
    DATA t626 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t626.
    DATA t627 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t627.
    DATA t628 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t628.
    DATA t629 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t629.
    DATA t630 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t630.
    DATA(t631) = CAST zif_lnt_statement_runnable( t216 ).
    IF t631 IS BOUND.
      CREATE OBJECT t630.
      t630->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t632 TYPE REF TO object.
      t632 = t631.
      t630->oval = t632.
    ENDIF.
    t629 = t630.
    DATA t633 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t633.
    DATA t634 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t634.
    DATA(t635) = CAST zif_lnt_statement_runnable( t108 ).
    IF t635 IS BOUND.
      CREATE OBJECT t634.
      t634->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t636 TYPE REF TO object.
      t636 = t635.
      t634->oval = t636.
    ENDIF.
    t633 = t634.
    DATA t637 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t638 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t638.
    t637 = t638.
    DATA(t639) = CAST zlnt_runtime_arra_c22708faf2e3( t637 ).
    DATA t640 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t640.
    DATA t641 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t641.
    DATA t642 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t642.
    DATA(t643) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d328_b04944ab696d ).
    IF t643 IS BOUND.
      CREATE OBJECT t642.
      t642->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t642->cval = t643.
    ENDIF.
    t641 = zcl_lnt_st_combi_module=>opt_prio( i_first = t642 ).
    IF t641 IS BOUND.
      CREATE OBJECT t640.
      t640->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t644 TYPE REF TO object.
      t644 = t641.
      t640->oval = t644.
    ENDIF.
    APPEND t640 TO t639->items.
    DATA(t645) = CAST zlnt_runtime_arra_c22708faf2e3( t637 ).
    DATA t646 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t646.
    DATA(t647) = CAST zif_lnt_statement_runnable( t108 ).
    IF t647 IS BOUND.
      CREATE OBJECT t646.
      t646->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t648 TYPE REF TO object.
      t648 = t647.
      t646->oval = t648.
    ENDIF.
    APPEND t646 TO t645->items.
    DATA(t649) = CAST zlnt_runtime_arra_c22708faf2e3( t637 ).
    DATA t650 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t650.
    DATA(t651) = CAST zif_lnt_statement_runnable( t120 ).
    IF t651 IS BOUND.
      CREATE OBJECT t650.
      t650->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t652 TYPE REF TO object.
      t652 = t651.
      t650->oval = t652.
    ENDIF.
    APPEND t650 TO t649->items.
    DATA(t653) = CAST zlnt_runtime_arra_c22708faf2e3( t637 ).
    DATA t654 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t654.
    DATA t655 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t655.
    DATA t656 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t656.
    DATA(t657) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d328_b04944ab696d ).
    IF t657 IS BOUND.
      CREATE OBJECT t656.
      t656->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t656->cval = t657.
    ENDIF.
    t655 = zcl_lnt_st_combi_module=>opt_prio( i_first = t656 ).
    IF t655 IS BOUND.
      CREATE OBJECT t654.
      t654->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t658 TYPE REF TO object.
      t658 = t655.
      t654->oval = t658.
    ENDIF.
    APPEND t654 TO t653->items.
    DATA(t659) = CAST zlnt_runtime_arra_c22708faf2e3( t637 ).
    DATA t660 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t660.
    DATA(t661) = CAST zif_lnt_statement_runnable( t108 ).
    IF t661 IS BOUND.
      CREATE OBJECT t660.
      t660->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t662 TYPE REF TO object.
      t662 = t661.
      t660->oval = t662.
    ENDIF.
    APPEND t660 TO t659->items.
    DATA(t663) = CAST zlnt_runtime_arra_c22708faf2e3( t637 ).
    DATA t664 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t664.
    DATA t665 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t665.
    DATA t666 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t666.
    DATA(t667) = CAST zif_lnt_statement_runnable( t31 ).
    IF t667 IS BOUND.
      CREATE OBJECT t666.
      t666->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t668 TYPE REF TO object.
      t668 = t667.
      t666->oval = t668.
    ENDIF.
    t665 = zcl_lnt_st_combi_module=>opt_prio( i_first = t666 ).
    IF t665 IS BOUND.
      CREATE OBJECT t664.
      t664->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t669 TYPE REF TO object.
      t669 = t665.
      t664->oval = t669.
    ENDIF.
    APPEND t664 TO t663->items.
    DATA(t670) = CAST zlnt_runtime_arra_c22708faf2e3( t637 ).
    DATA t671 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t671.
    DATA(t672) = CAST zif_lnt_statement_runnable( t124 ).
    IF t672 IS BOUND.
      CREATE OBJECT t671.
      t671->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t673 TYPE REF TO object.
      t673 = t672.
      t671->oval = t673.
    ENDIF.
    APPEND t671 TO t670->items.
    DATA(t674) = CAST zlnt_runtime_arra_c22708faf2e3( t637 ).
    DATA t675 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t675.
    DATA(t676) = CAST zif_lnt_statement_runnable( t129 ).
    IF t676 IS BOUND.
      CREATE OBJECT t675.
      t675->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t677 TYPE REF TO object.
      t677 = t676.
      t675->oval = t677.
    ENDIF.
    APPEND t675 TO t674->items.
    DATA(t678) = CAST zlnt_runtime_arra_c22708faf2e3( t149 ).
    DATA t679 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t679.
    DATA t680 TYPE REF TO object.
    CLEAR t680.
    LOOP AT t678->items INTO t680.
      t679 ?= t680.
      DATA(t681) = CAST zlnt_runtime_arra_c22708faf2e3( t637 ).
      DATA t682 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t682.
      DATA(t683) = CAST zif_lnt_statement_runnable( t679 ).
      IF t683 IS BOUND.
        CREATE OBJECT t682.
        t682->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t684 TYPE REF TO object.
        t684 = t683.
        t682->oval = t684.
      ENDIF.
      APPEND t682 TO t681->items.
    ENDLOOP.
    DATA(t685) = CAST zlnt_runtime_arra_c22708faf2e3( t637 ).
    DATA t686 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t686.
    DATA(t687) = CAST zif_lnt_statement_runnable( t185 ).
    IF t687 IS BOUND.
      CREATE OBJECT t686.
      t686->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t688 TYPE REF TO object.
      t688 = t687.
      t686->oval = t688.
    ENDIF.
    APPEND t686 TO t685->items.
    DATA t689 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t690) = CAST zlnt_runtime_dyna_a429568d5be8( t629 ).
    DATA(t691) = CAST zlnt_runtime_dyna_a429568d5be8( t633 ).
    DATA(t692) = CAST zlnt_runtime_arra_c22708faf2e3( t637 ).
    t689 = zcl_lnt_st_combi_module=>seq( i_first = t690 i_second = t691 i_rest = t692 ).
    t628 = t689.
    IF t628 IS BOUND.
      CREATE OBJECT t627.
      t627->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t693 TYPE REF TO object.
      t693 = t628.
      t627->oval = t693.
    ENDIF.
    t626 = t627.
    DATA t694 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t695 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t695.
    t694 = t695.
    DATA(t696) = CAST zlnt_runtime_arra_c22708faf2e3( t694 ).
    DATA t697 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t697.
    DATA t698 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t698.
    DATA t699 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t699.
    DATA t700 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t700.
    DATA t701 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t701.
    DATA t702 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t702.
    DATA(t703) = CAST zif_lnt_statement_runnable( t42 ).
    IF t703 IS BOUND.
      CREATE OBJECT t702.
      t702->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t704 TYPE REF TO object.
      t704 = t703.
      t702->oval = t704.
    ENDIF.
    t701 = zcl_lnt_st_combi_module=>opt_prio( i_first = t702 ).
    IF t701 IS BOUND.
      CREATE OBJECT t700.
      t700->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t705 TYPE REF TO object.
      t705 = t701.
      t700->oval = t705.
    ENDIF.
    t699 = t700.
    DATA t706 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t706.
    DATA t707 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t707.
    DATA(t708) = CAST zif_lnt_statement_runnable( t120 ).
    IF t708 IS BOUND.
      CREATE OBJECT t707.
      t707->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t709 TYPE REF TO object.
      t709 = t708.
      t707->oval = t709.
    ENDIF.
    t706 = t707.
    DATA t710 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t711 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t711.
    t710 = t711.
    DATA(t712) = CAST zlnt_runtime_arra_c22708faf2e3( t710 ).
    DATA t713 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t713.
    DATA(t714) = CAST zif_lnt_statement_runnable( t124 ).
    IF t714 IS BOUND.
      CREATE OBJECT t713.
      t713->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t715 TYPE REF TO object.
      t715 = t714.
      t713->oval = t715.
    ENDIF.
    APPEND t713 TO t712->items.
    DATA(t716) = CAST zlnt_runtime_arra_c22708faf2e3( t710 ).
    DATA t717 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t717.
    DATA(t718) = CAST zif_lnt_statement_runnable( t129 ).
    IF t718 IS BOUND.
      CREATE OBJECT t717.
      t717->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t719 TYPE REF TO object.
      t719 = t718.
      t717->oval = t719.
    ENDIF.
    APPEND t717 TO t716->items.
    DATA(t720) = CAST zlnt_runtime_arra_c22708faf2e3( t149 ).
    DATA t721 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t721.
    DATA t722 TYPE REF TO object.
    CLEAR t722.
    LOOP AT t720->items INTO t722.
      t721 ?= t722.
      DATA(t723) = CAST zlnt_runtime_arra_c22708faf2e3( t710 ).
      DATA t724 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t724.
      DATA(t725) = CAST zif_lnt_statement_runnable( t721 ).
      IF t725 IS BOUND.
        CREATE OBJECT t724.
        t724->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        DATA t726 TYPE REF TO object.
        t726 = t725.
        t724->oval = t726.
      ENDIF.
      APPEND t724 TO t723->items.
    ENDLOOP.
    DATA(t727) = CAST zlnt_runtime_arra_c22708faf2e3( t710 ).
    DATA t728 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t728.
    DATA(t729) = CAST zif_lnt_statement_runnable( t185 ).
    IF t729 IS BOUND.
      CREATE OBJECT t728.
      t728->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t730 TYPE REF TO object.
      t730 = t729.
      t728->oval = t730.
    ENDIF.
    APPEND t728 TO t727->items.
    DATA(t731) = CAST zlnt_runtime_arra_c22708faf2e3( t710 ).
    DATA t732 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t732.
    DATA(t733) = CAST zif_lnt_statement_runnable( t424 ).
    IF t733 IS BOUND.
      CREATE OBJECT t732.
      t732->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t734 TYPE REF TO object.
      t734 = t733.
      t732->oval = t734.
    ENDIF.
    APPEND t732 TO t731->items.
    DATA t735 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t736) = CAST zlnt_runtime_dyna_a429568d5be8( t699 ).
    DATA(t737) = CAST zlnt_runtime_dyna_a429568d5be8( t706 ).
    DATA(t738) = CAST zlnt_runtime_arra_c22708faf2e3( t710 ).
    t735 = zcl_lnt_st_combi_module=>seq( i_first = t736 i_second = t737 i_rest = t738 ).
    t698 = t735.
    IF t698 IS BOUND.
      CREATE OBJECT t697.
      t697->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t739 TYPE REF TO object.
      t739 = t698.
      t697->oval = t739.
    ENDIF.
    APPEND t697 TO t696->items.
    DATA t740 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t741) = CAST zlnt_runtime_dyna_a429568d5be8( t558 ).
    DATA(t742) = CAST zlnt_runtime_dyna_a429568d5be8( t626 ).
    DATA(t743) = CAST zlnt_runtime_arra_c22708faf2e3( t694 ).
    t740 = zcl_lnt_st_combi_module=>alt_prio( i_first = t741 i_second = t742 i_rest = t743 ).
    t557 = t740.
    IF t557 IS BOUND.
      CREATE OBJECT t556.
      t556->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t744 TYPE REF TO object.
      t744 = t557.
      t556->oval = t744.
    ENDIF.
    APPEND t556 TO t555->items.
    DATA t745 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t746) = CAST zlnt_runtime_dyna_a429568d5be8( t535 ).
    DATA(t747) = CAST zlnt_runtime_dyna_a429568d5be8( t541 ).
    DATA(t748) = CAST zlnt_runtime_arra_c22708faf2e3( t545 ).
    t745 = zcl_lnt_st_combi_module=>seq( i_first = t746 i_second = t747 i_rest = t748 ).
    t534 = t745.
    t533 = t534.
    DATA t749 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t749.
    DATA t750 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t750.
    DATA t751 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t751.
    DATA t752 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t752.
    DATA(t753) = CAST zif_lnt_statement_runnable( t248 ).
    IF t753 IS BOUND.
      CREATE OBJECT t752.
      t752->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t754 TYPE REF TO object.
      t754 = t753.
      t752->oval = t754.
    ENDIF.
    t751 = t752.
    DATA t755 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t755.
    DATA t756 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t756.
    DATA t757 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t757.
    DATA t758 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t758.
    DATA(t759) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d324_e103ee74a0b4 ).
    IF t759 IS BOUND.
      CREATE OBJECT t758.
      t758->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t758->cval = t759.
    ENDIF.
    t757 = zcl_lnt_st_combi_module=>opt_prio( i_first = t758 ).
    IF t757 IS BOUND.
      CREATE OBJECT t756.
      t756->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t760 TYPE REF TO object.
      t760 = t757.
      t756->oval = t760.
    ENDIF.
    t755 = t756.
    DATA t761 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t762 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t762.
    t761 = t762.
    DATA t763 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t764) = CAST zlnt_runtime_dyna_a429568d5be8( t751 ).
    DATA(t765) = CAST zlnt_runtime_dyna_a429568d5be8( t755 ).
    DATA(t766) = CAST zlnt_runtime_arra_c22708faf2e3( t761 ).
    t763 = zcl_lnt_st_combi_module=>seq( i_first = t764 i_second = t765 i_rest = t766 ).
    t750 = t763.
    t749 = t750.
    DATA t767 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t768) = CAST zif_lnt_statement_runnable( t216 ).
    t767 = t768.
    DATA t769 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t769.
    DATA t770 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t770.
    DATA t771 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t771.
    DATA t772 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t772.
    DATA t773 TYPE REF TO zif_lnt_statement_runnable.
    DATA t774 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t775) = |DISTINCT|.
    CREATE OBJECT t774.
    t774->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t774->sval = t775.
    t773 = zcl_lnt_st_combi_module=>opt_prio( i_first = t774 ).
    IF t773 IS BOUND.
      CREATE OBJECT t772.
      t772->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t776 TYPE REF TO object.
      t776 = t773.
      t772->oval = t776.
    ENDIF.
    t771 = t772.
    DATA t777 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t777.
    DATA t778 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t778.
    DATA(t779) = CAST zif_lnt_statement_runnable( t72 ).
    IF t779 IS BOUND.
      CREATE OBJECT t778.
      t778->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t780 TYPE REF TO object.
      t780 = t779.
      t778->oval = t780.
    ENDIF.
    t777 = t778.
    DATA t781 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t782 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t782.
    t781 = t782.
    DATA(t783) = CAST zlnt_runtime_arra_c22708faf2e3( t781 ).
    DATA t784 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t784.
    DATA t785 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t785.
    DATA t786 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t786.
    DATA(t787) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d328_b04944ab696d ).
    IF t787 IS BOUND.
      CREATE OBJECT t786.
      t786->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t786->cval = t787.
    ENDIF.
    t785 = zcl_lnt_st_combi_module=>opt_prio( i_first = t786 ).
    IF t785 IS BOUND.
      CREATE OBJECT t784.
      t784->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t788 TYPE REF TO object.
      t788 = t785.
      t784->oval = t788.
    ENDIF.
    APPEND t784 TO t783->items.
    DATA(t789) = CAST zlnt_runtime_arra_c22708faf2e3( t781 ).
    DATA t790 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t790.
    DATA(t791) = CAST zif_lnt_statement_runnable( t108 ).
    IF t791 IS BOUND.
      CREATE OBJECT t790.
      t790->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t792 TYPE REF TO object.
      t792 = t791.
      t790->oval = t792.
    ENDIF.
    APPEND t790 TO t789->items.
    DATA(t793) = CAST zlnt_runtime_arra_c22708faf2e3( t781 ).
    DATA t794 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t794.
    DATA t795 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t795.
    DATA t796 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t796.
    DATA t797 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t797.
    DATA t798 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t798.
    DATA t799 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t799.
    DATA(t800) = CAST zif_lnt_statement_runnable( t749 ).
    IF t800 IS BOUND.
      CREATE OBJECT t799.
      t799->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t801 TYPE REF TO object.
      t801 = t800.
      t799->oval = t801.
    ENDIF.
    t798 = t799.
    DATA t802 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t802.
    DATA t803 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t803.
    DATA(t804) = CAST zif_lnt_statement_runnable( t767 ).
    IF t804 IS BOUND.
      CREATE OBJECT t803.
      t803->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t805 TYPE REF TO object.
      t805 = t804.
      t803->oval = t805.
    ENDIF.
    t802 = t803.
    DATA t806 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t807 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t807.
    t806 = t807.
    DATA t808 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t809) = CAST zlnt_runtime_dyna_a429568d5be8( t798 ).
    DATA(t810) = CAST zlnt_runtime_dyna_a429568d5be8( t802 ).
    DATA(t811) = CAST zlnt_runtime_arra_c22708faf2e3( t806 ).
    t808 = zcl_lnt_st_combi_module=>alt_prio( i_first = t809 i_second = t810 i_rest = t811 ).
    t797 = t808.
    IF t797 IS BOUND.
      CREATE OBJECT t796.
      t796->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t812 TYPE REF TO object.
      t812 = t797.
      t796->oval = t812.
    ENDIF.
    t795 = zcl_lnt_st_combi_module=>opt_prio( i_first = t796 ).
    IF t795 IS BOUND.
      CREATE OBJECT t794.
      t794->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t813 TYPE REF TO object.
      t813 = t795.
      t794->oval = t813.
    ENDIF.
    APPEND t794 TO t793->items.
    DATA(t814) = CAST zlnt_runtime_arra_c22708faf2e3( t781 ).
    DATA t815 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t815.
    DATA t816 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t816.
    DATA t817 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t817.
    DATA(t818) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d328_b04944ab696d ).
    IF t818 IS BOUND.
      CREATE OBJECT t817.
      t817->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t817->cval = t818.
    ENDIF.
    t816 = zcl_lnt_st_combi_module=>opt_prio( i_first = t817 ).
    IF t816 IS BOUND.
      CREATE OBJECT t815.
      t815->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t819 TYPE REF TO object.
      t819 = t816.
      t815->oval = t819.
    ENDIF.
    APPEND t815 TO t814->items.
    DATA(t820) = CAST zlnt_runtime_arra_c22708faf2e3( t781 ).
    DATA t821 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t821.
    DATA(t822) = CAST zif_lnt_statement_runnable( t108 ).
    IF t822 IS BOUND.
      CREATE OBJECT t821.
      t821->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t823 TYPE REF TO object.
      t823 = t822.
      t821->oval = t823.
    ENDIF.
    APPEND t821 TO t820->items.
    DATA(t824) = CAST zlnt_runtime_arra_c22708faf2e3( t781 ).
    DATA t825 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t825.
    DATA(t826) = CAST zif_lnt_statement_runnable( t112 ).
    IF t826 IS BOUND.
      CREATE OBJECT t825.
      t825->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t827 TYPE REF TO object.
      t827 = t826.
      t825->oval = t827.
    ENDIF.
    APPEND t825 TO t824->items.
    DATA(t828) = CAST zlnt_runtime_arra_c22708faf2e3( t781 ).
    DATA t829 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t829.
    DATA(t830) = CAST zif_lnt_statement_runnable( t533 ).
    IF t830 IS BOUND.
      CREATE OBJECT t829.
      t829->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t831 TYPE REF TO object.
      t831 = t830.
      t829->oval = t831.
    ENDIF.
    APPEND t829 TO t828->items.
    DATA t832 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t833) = CAST zlnt_runtime_dyna_a429568d5be8( t771 ).
    DATA(t834) = CAST zlnt_runtime_dyna_a429568d5be8( t777 ).
    DATA(t835) = CAST zlnt_runtime_arra_c22708faf2e3( t781 ).
    t832 = zcl_lnt_st_combi_module=>seq( i_first = t833 i_second = t834 i_rest = t835 ).
    t770 = t832.
    t769 = t770.
    DATA t836 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t836.
    DATA t837 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t837.
    DATA t838 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t838.
    DATA t839 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t839.
    DATA t840 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t841 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t842) = |SINGLE|.
    CREATE OBJECT t841.
    t841->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t841->sval = t842.
    t840 = t841.
    DATA t843 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t843.
    DATA t844 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t844.
    DATA t845 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t845.
    DATA t846 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t846.
    DATA(t847) = abap_true.
    IF t847 = abap_true.
      DATA(t848) = abap_true.
      DATA(t849) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t849->has = abap_true.
      t849->value = t848.
      t846 = t849.
    ELSE.
      DATA t850 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t850.
      t846 = t850.
    ENDIF.
    t845 = zcl_lnt_select_core_module=>build_select_single_core( i_allow_into = t846 ).
    IF t845 IS BOUND.
      CREATE OBJECT t844.
      t844->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t851 TYPE REF TO object.
      t851 = t845.
      t844->oval = t851.
    ENDIF.
    t843 = t844.
    DATA t852 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t853 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t853.
    t852 = t853.
    DATA t854 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t855) = CAST zlnt_runtime_dyna_a429568d5be8( t840 ).
    DATA(t856) = CAST zlnt_runtime_dyna_a429568d5be8( t843 ).
    DATA(t857) = CAST zlnt_runtime_arra_c22708faf2e3( t852 ).
    t854 = zcl_lnt_st_combi_module=>seq( i_first = t855 i_second = t856 i_rest = t857 ).
    t839 = t854.
    IF t839 IS BOUND.
      CREATE OBJECT t838.
      t838->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t858 TYPE REF TO object.
      t858 = t839.
      t838->oval = t858.
    ENDIF.
    t837 = t838.
    DATA t859 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t859.
    DATA t860 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t860.
    DATA(t861) = CAST zif_lnt_statement_runnable( t769 ).
    IF t861 IS BOUND.
      CREATE OBJECT t860.
      t860->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t862 TYPE REF TO object.
      t862 = t861.
      t860->oval = t862.
    ENDIF.
    t859 = t860.
    DATA t863 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t864 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t864.
    t863 = t864.
    DATA t865 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t866) = CAST zlnt_runtime_dyna_a429568d5be8( t837 ).
    DATA(t867) = CAST zlnt_runtime_dyna_a429568d5be8( t859 ).
    DATA(t868) = CAST zlnt_runtime_arra_c22708faf2e3( t863 ).
    t865 = zcl_lnt_st_combi_module=>alt_prio( i_first = t866 i_second = t867 i_rest = t868 ).
    t836 = t865.
    result = t836.

  ENDMETHOD.
  METHOD zlnt_builtin_init_6677a9ff777e.
    IF zlnt_builtin_init_f39435c81d86 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_f39435c81d86 = abap_true.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1832_83146e1936f9.
  ENDMETHOD.
ENDCLASS.
