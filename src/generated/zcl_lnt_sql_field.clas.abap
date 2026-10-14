* TS: src/abap/2_statements/expressions/sql_field.ts:9:1 SQLField
CLASS zcl_lnt_sql_field DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_field IMPLEMENTATION.
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
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4 ).
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
    DATA(t10) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d167_3c4543cf3a18 ).
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
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t16) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t15 = zcl_lnt_st_combi_module=>tok( i_t = t16 ).
    IF t15 IS BOUND.
      CREATE OBJECT t14.
      t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t17 TYPE REF TO object.
      t17 = t15.
      t14->oval = t17.
    ENDIF.
    APPEND t14 TO t13->items.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t19) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t20) = CAST zlnt_runtime_dyna_a429568d5be8( t8 ).
    DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t11 ).
    t18 = zcl_lnt_st_combi_module=>seq( i_first = t19 i_second = t20 i_rest = t21 ).
    t2 = t18.
    t1 = t2.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t22.
    DATA t23 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA t25 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t25.
    DATA t26 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t27.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t27 = zcl_lnt_version_module=>release_b8cd.
    DATA(t28) = |v740sp05|.
    t26 = t27->get( p0 = t28 ).
    t25 = t26.
    IF t25 IS BOUND.
      CREATE OBJECT t24.
      t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t29 TYPE REF TO object.
      t29 = t25.
      t24->oval = t29.
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t35) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d41_e53da77a9517f4 ).
    t34 = zcl_lnt_st_combi_module=>tok( i_t = t35 ).
    IF t34 IS BOUND.
      CREATE OBJECT t33.
      t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t36 TYPE REF TO object.
      t36 = t34.
      t33->oval = t36.
    ENDIF.
    t32 = t33.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA(t42) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d167_3c4543cf3a18 ).
    IF t42 IS BOUND.
      CREATE OBJECT t41.
      t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t41->cval = t42.
    ENDIF.
    t40 = t41.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    DATA(t45) = CAST zif_lnt_statement_runnable( t1 ).
    IF t45 IS BOUND.
      CREATE OBJECT t44.
      t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t46 TYPE REF TO object.
      t46 = t45.
      t44->oval = t46.
    ENDIF.
    t43 = t44.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t48.
    t47 = t48.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t50) = CAST zlnt_runtime_dyna_a429568d5be8( t40 ).
    DATA(t51) = CAST zlnt_runtime_dyna_a429568d5be8( t43 ).
    DATA(t52) = CAST zlnt_runtime_arra_c22708faf2e3( t47 ).
    t49 = zcl_lnt_st_combi_module=>alt_prio( i_first = t50 i_second = t51 i_rest = t52 ).
    t39 = t49.
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t53 TYPE REF TO object.
      t53 = t39.
      t38->oval = t53.
    ENDIF.
    t37 = t38.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t55.
    t54 = t55.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t57) = CAST zlnt_runtime_dyna_a429568d5be8( t32 ).
    DATA(t58) = CAST zlnt_runtime_dyna_a429568d5be8( t37 ).
    DATA(t59) = CAST zlnt_runtime_arra_c22708faf2e3( t54 ).
    t56 = zcl_lnt_st_combi_module=>seq( i_first = t57 i_second = t58 i_rest = t59 ).
    t31 = t56.
    IF t31 IS BOUND.
      CREATE OBJECT t30.
      t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t60 TYPE REF TO object.
      t60 = t31.
      t30->oval = t60.
    ENDIF.
    DATA t61 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t61.
    DATA(t62) = abap_true.
    IF t62 = abap_true.
      DATA t63 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t63.
      DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t64.
      DATA(t65) = abap_true.
      IF t65 = abap_true.
        DATA(t66) = |OpenABAP|.
        DATA(t67) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t67->has = abap_true.
        t67->value = t66.
        t64 = t67.
      ELSE.
        DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t68.
        t64 = t68.
      ENDIF.
      t63 = NEW zcl_lnt_iver_options( i_also = t64 ).
      t61 = t63.
    ELSE.
      DATA t69 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t69.
      t61 = t69.
    ENDIF.
    t23 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t24 i_first = t30 i_opts = t61 ).
    t22 = t23.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t70.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t74) = |AS|.
    CREATE OBJECT t73.
    t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t73->sval = t74.
    t72 = t73.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t76.
    DATA(t77) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d267_42ee2e3380a0 ).
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
    t70 = t71.
    DATA t84 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t84.
    DATA t85 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t85.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    DATA t88 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t89) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d52_2e425786555090 ).
    t88 = zcl_lnt_st_combi_module=>tok( i_t = t89 ).
    IF t88 IS BOUND.
      CREATE OBJECT t87.
      t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t90 TYPE REF TO object.
      t90 = t88.
      t87->oval = t90.
    ENDIF.
    t86 = t87.
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    DATA(t93) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba ).
    IF t93 IS BOUND.
      CREATE OBJECT t92.
      t92->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t92->cval = t93.
    ENDIF.
    t91 = t92.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t95.
    t94 = t95.
    DATA(t96) = CAST zlnt_runtime_arra_c22708faf2e3( t94 ).
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    DATA t101 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t102) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t101 = zcl_lnt_st_combi_module=>tok( i_t = t102 ).
    IF t101 IS BOUND.
      CREATE OBJECT t100.
      t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t103 TYPE REF TO object.
      t103 = t101.
      t100->oval = t103.
    ENDIF.
    t99 = t100.
    DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t104.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    DATA t106 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t107) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77 ).
    t106 = zcl_lnt_st_combi_module=>tok( i_t = t107 ).
    IF t106 IS BOUND.
      CREATE OBJECT t105.
      t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t108 TYPE REF TO object.
      t108 = t106.
      t105->oval = t108.
    ENDIF.
    t104 = t105.
    DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t110.
    t109 = t110.
    DATA t111 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t112) = CAST zlnt_runtime_dyna_a429568d5be8( t99 ).
    DATA(t113) = CAST zlnt_runtime_dyna_a429568d5be8( t104 ).
    DATA(t114) = CAST zlnt_runtime_arra_c22708faf2e3( t109 ).
    t111 = zcl_lnt_st_combi_module=>alt_prio( i_first = t112 i_second = t113 i_rest = t114 ).
    t98 = t111.
    IF t98 IS BOUND.
      CREATE OBJECT t97.
      t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t115 TYPE REF TO object.
      t115 = t98.
      t97->oval = t115.
    ENDIF.
    APPEND t97 TO t96->items.
    DATA t116 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t117) = CAST zlnt_runtime_dyna_a429568d5be8( t86 ).
    DATA(t118) = CAST zlnt_runtime_dyna_a429568d5be8( t91 ).
    DATA(t119) = CAST zlnt_runtime_arra_c22708faf2e3( t94 ).
    t116 = zcl_lnt_st_combi_module=>seq( i_first = t117 i_second = t118 i_rest = t119 ).
    t85 = t116.
    t84 = t85.
    DATA t120 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t120.
    DATA t121 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t121.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t122.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t123.
    DATA(t124) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d269_df623ced1aed ).
    IF t124 IS BOUND.
      CREATE OBJECT t123.
      t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t123->cval = t124.
    ENDIF.
    t122 = t123.
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t125.
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    DATA(t127) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d270_547c551ca3da ).
    IF t127 IS BOUND.
      CREATE OBJECT t126.
      t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t126->cval = t127.
    ENDIF.
    t125 = t126.
    DATA t128 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t129 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t129.
    t128 = t129.
    DATA(t130) = CAST zlnt_runtime_arra_c22708faf2e3( t128 ).
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA(t132) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d271_46df92fbd079 ).
    IF t132 IS BOUND.
      CREATE OBJECT t131.
      t131->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t131->cval = t132.
    ENDIF.
    APPEND t131 TO t130->items.
    DATA(t133) = CAST zlnt_runtime_arra_c22708faf2e3( t128 ).
    DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t134.
    DATA(t135) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d290_f492e89b83f5 ).
    IF t135 IS BOUND.
      CREATE OBJECT t134.
      t134->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t134->cval = t135.
    ENDIF.
    APPEND t134 TO t133->items.
    DATA(t136) = CAST zlnt_runtime_arra_c22708faf2e3( t128 ).
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t137.
    DATA(t138) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba ).
    IF t138 IS BOUND.
      CREATE OBJECT t137.
      t137->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t137->cval = t138.
    ENDIF.
    APPEND t137 TO t136->items.
    DATA(t139) = CAST zlnt_runtime_arra_c22708faf2e3( t128 ).
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t140.
    DATA(t141) = CAST zif_lnt_statement_runnable( t22 ).
    IF t141 IS BOUND.
      CREATE OBJECT t140.
      t140->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t142 TYPE REF TO object.
      t142 = t141.
      t140->oval = t142.
    ENDIF.
    APPEND t140 TO t139->items.
    DATA(t143) = CAST zlnt_runtime_arra_c22708faf2e3( t128 ).
    DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t144.
    DATA(t145) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d119_f7714013c01c ).
    IF t145 IS BOUND.
      CREATE OBJECT t144.
      t144->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t144->cval = t145.
    ENDIF.
    APPEND t144 TO t143->items.
    DATA(t146) = CAST zlnt_runtime_arra_c22708faf2e3( t128 ).
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t147.
    DATA(t148) = CAST zif_lnt_statement_runnable( t84 ).
    IF t148 IS BOUND.
      CREATE OBJECT t147.
      t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t149 TYPE REF TO object.
      t149 = t148.
      t147->oval = t149.
    ENDIF.
    APPEND t147 TO t146->items.
    DATA t150 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t151) = CAST zlnt_runtime_dyna_a429568d5be8( t122 ).
    DATA(t152) = CAST zlnt_runtime_dyna_a429568d5be8( t125 ).
    DATA(t153) = CAST zlnt_runtime_arra_c22708faf2e3( t128 ).
    t150 = zcl_lnt_st_combi_module=>alt_prio( i_first = t151 i_second = t152 i_rest = t153 ).
    t121 = t150.
    t120 = t121.
    DATA t154 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t154.
    DATA t155 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t155.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t156.
    DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t157.
    DATA(t158) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d265_12d4325923b8 ).
    IF t158 IS BOUND.
      CREATE OBJECT t157.
      t157->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t157->cval = t158.
    ENDIF.
    t156 = t157.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t159.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t160.
    DATA(t161) = CAST zif_lnt_statement_runnable( t120 ).
    IF t161 IS BOUND.
      CREATE OBJECT t160.
      t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t162 TYPE REF TO object.
      t162 = t161.
      t160->oval = t162.
    ENDIF.
    t159 = t160.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t164.
    t163 = t164.
    DATA t165 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t166) = CAST zlnt_runtime_dyna_a429568d5be8( t156 ).
    DATA(t167) = CAST zlnt_runtime_dyna_a429568d5be8( t159 ).
    DATA(t168) = CAST zlnt_runtime_arra_c22708faf2e3( t163 ).
    t165 = zcl_lnt_st_combi_module=>alt_prio( i_first = t166 i_second = t167 i_rest = t168 ).
    t155 = t165.
    t154 = t155.
    DATA t169 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t169.
    DATA t170 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t170.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t171.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t172.
    DATA t173 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t174) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d52_2e425786555090 ).
    t173 = zcl_lnt_st_combi_module=>tok( i_t = t174 ).
    IF t173 IS BOUND.
      CREATE OBJECT t172.
      t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t175 TYPE REF TO object.
      t175 = t173.
      t172->oval = t175.
    ENDIF.
    t171 = t172.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t176.
    DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t177.
    DATA(t178) = CAST zif_lnt_statement_runnable( t154 ).
    IF t178 IS BOUND.
      CREATE OBJECT t177.
      t177->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t179 TYPE REF TO object.
      t179 = t178.
      t177->oval = t179.
    ENDIF.
    t176 = t177.
    DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t181 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t181.
    t180 = t181.
    DATA(t182) = CAST zlnt_runtime_arra_c22708faf2e3( t180 ).
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t183.
    DATA t184 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t185) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t184 = zcl_lnt_st_combi_module=>tok( i_t = t185 ).
    IF t184 IS BOUND.
      CREATE OBJECT t183.
      t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t186 TYPE REF TO object.
      t186 = t184.
      t183->oval = t186.
    ENDIF.
    APPEND t183 TO t182->items.
    DATA t187 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t188) = CAST zlnt_runtime_dyna_a429568d5be8( t171 ).
    DATA(t189) = CAST zlnt_runtime_dyna_a429568d5be8( t176 ).
    DATA(t190) = CAST zlnt_runtime_arra_c22708faf2e3( t180 ).
    t187 = zcl_lnt_st_combi_module=>seq( i_first = t188 i_second = t189 i_rest = t190 ).
    t170 = t187.
    t169 = t170.
    DATA t191 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t191.
    DATA t192 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t192.
    DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t193.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    DATA t195 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t196) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d52_2e425786555090 ).
    t195 = zcl_lnt_st_combi_module=>tok( i_t = t196 ).
    IF t195 IS BOUND.
      CREATE OBJECT t194.
      t194->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t197 TYPE REF TO object.
      t197 = t195.
      t194->oval = t197.
    ENDIF.
    t193 = t194.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t198.
    DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t199.
    DATA(t200) = CAST zif_lnt_statement_runnable( t120 ).
    IF t200 IS BOUND.
      CREATE OBJECT t199.
      t199->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t201 TYPE REF TO object.
      t201 = t200.
      t199->oval = t201.
    ENDIF.
    t198 = t199.
    DATA t202 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t203 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t203.
    t202 = t203.
    DATA(t204) = CAST zlnt_runtime_arra_c22708faf2e3( t202 ).
    DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t205.
    DATA t206 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t207) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t206 = zcl_lnt_st_combi_module=>tok( i_t = t207 ).
    IF t206 IS BOUND.
      CREATE OBJECT t205.
      t205->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t208 TYPE REF TO object.
      t208 = t206.
      t205->oval = t208.
    ENDIF.
    APPEND t205 TO t204->items.
    DATA t209 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t210) = CAST zlnt_runtime_dyna_a429568d5be8( t193 ).
    DATA(t211) = CAST zlnt_runtime_dyna_a429568d5be8( t198 ).
    DATA(t212) = CAST zlnt_runtime_arra_c22708faf2e3( t202 ).
    t209 = zcl_lnt_st_combi_module=>seq( i_first = t210 i_second = t211 i_rest = t212 ).
    t192 = t209.
    t191 = t192.
    DATA t213 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t213.
    DATA t214 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t214.
    DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t215.
    DATA t216 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t216.
    DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t217.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t218.
    DATA t219 TYPE REF TO zif_lnt_statement_runnable.
    DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t222) = |+|.
    CREATE OBJECT t221.
    t221->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t221->sval = t222.
    t220 = t221.
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t225) = |-|.
    CREATE OBJECT t224.
    t224->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t224->sval = t225.
    t223 = t224.
    DATA t226 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t227 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t227.
    t226 = t227.
    DATA(t228) = CAST zlnt_runtime_arra_c22708faf2e3( t226 ).
    DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t230) = |*|.
    CREATE OBJECT t229.
    t229->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t229->sval = t230.
    APPEND t229 TO t228->items.
    DATA(t231) = CAST zlnt_runtime_arra_c22708faf2e3( t226 ).
    DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t233) = |/|.
    CREATE OBJECT t232.
    t232->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t232->sval = t233.
    APPEND t232 TO t231->items.
    DATA(t234) = CAST zlnt_runtime_arra_c22708faf2e3( t226 ).
    DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t236) = |&&|.
    CREATE OBJECT t235.
    t235->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t235->sval = t236.
    APPEND t235 TO t234->items.
    DATA t237 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t238) = CAST zlnt_runtime_dyna_a429568d5be8( t220 ).
    DATA(t239) = CAST zlnt_runtime_dyna_a429568d5be8( t223 ).
    DATA(t240) = CAST zlnt_runtime_arra_c22708faf2e3( t226 ).
    t237 = zcl_lnt_st_combi_module=>alt_prio( i_first = t238 i_second = t239 i_rest = t240 ).
    t219 = t237.
    IF t219 IS BOUND.
      CREATE OBJECT t218.
      t218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t241 TYPE REF TO object.
      t241 = t219.
      t218->oval = t241.
    ENDIF.
    t217 = t218.
    DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t242.
    DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t243.
    DATA t244 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t244.
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t245.
    DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t246.
    DATA(t247) = CAST zif_lnt_statement_runnable( t191 ).
    IF t247 IS BOUND.
      CREATE OBJECT t246.
      t246->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t248 TYPE REF TO object.
      t248 = t247.
      t246->oval = t248.
    ENDIF.
    t245 = t246.
    DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t249.
    DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t250.
    DATA(t251) = CAST zif_lnt_statement_runnable( t120 ).
    IF t251 IS BOUND.
      CREATE OBJECT t250.
      t250->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t252 TYPE REF TO object.
      t252 = t251.
      t250->oval = t252.
    ENDIF.
    t249 = t250.
    DATA t253 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t254 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t254.
    t253 = t254.
    DATA t255 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t256) = CAST zlnt_runtime_dyna_a429568d5be8( t245 ).
    DATA(t257) = CAST zlnt_runtime_dyna_a429568d5be8( t249 ).
    DATA(t258) = CAST zlnt_runtime_arra_c22708faf2e3( t253 ).
    t255 = zcl_lnt_st_combi_module=>alt_prio( i_first = t256 i_second = t257 i_rest = t258 ).
    t244 = t255.
    IF t244 IS BOUND.
      CREATE OBJECT t243.
      t243->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t259 TYPE REF TO object.
      t259 = t244.
      t243->oval = t259.
    ENDIF.
    t242 = t243.
    DATA t260 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t261 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t261.
    t260 = t261.
    DATA t262 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t263) = CAST zlnt_runtime_dyna_a429568d5be8( t217 ).
    DATA(t264) = CAST zlnt_runtime_dyna_a429568d5be8( t242 ).
    DATA(t265) = CAST zlnt_runtime_arra_c22708faf2e3( t260 ).
    t262 = zcl_lnt_st_combi_module=>seq( i_first = t263 i_second = t264 i_rest = t265 ).
    t216 = t262.
    IF t216 IS BOUND.
      CREATE OBJECT t215.
      t215->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t266 TYPE REF TO object.
      t266 = t216.
      t215->oval = t266.
    ENDIF.
    t214 = zcl_lnt_st_combi_module=>plus_prio( i_first = t215 ).
    t213 = t214.
    DATA t267 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t267.
    DATA t268 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t268.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t269.
    DATA t270 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t270.
    DATA t271 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t271.
    DATA t272 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t272.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t272 = zcl_lnt_version_module=>release_b8cd.
    DATA(t273) = |v740sp05|.
    t271 = t272->get( p0 = t273 ).
    t270 = t271.
    IF t270 IS BOUND.
      CREATE OBJECT t269.
      t269->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t274 TYPE REF TO object.
      t274 = t270.
      t269->oval = t274.
    ENDIF.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t275.
    DATA(t276) = CAST zif_lnt_statement_runnable( t213 ).
    IF t276 IS BOUND.
      CREATE OBJECT t275.
      t275->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t277 TYPE REF TO object.
      t277 = t276.
      t275->oval = t277.
    ENDIF.
    DATA t278 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t278.
    t268 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t269 i_first = t275 i_opts = t278 ).
    t267 = t268.
    DATA t279 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t279.
    DATA t280 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t280.
    DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t281.
    DATA t282 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t282.
    DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t283.
    DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t284.
    DATA t285 TYPE REF TO zif_lnt_statement_runnable.
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t288) = |+|.
    CREATE OBJECT t287.
    t287->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t287->sval = t288.
    t286 = t287.
    DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t291) = |-|.
    CREATE OBJECT t290.
    t290->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t290->sval = t291.
    t289 = t290.
    DATA t292 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t293 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t293.
    t292 = t293.
    DATA(t294) = CAST zlnt_runtime_arra_c22708faf2e3( t292 ).
    DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t296) = |*|.
    CREATE OBJECT t295.
    t295->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t295->sval = t296.
    APPEND t295 TO t294->items.
    DATA(t297) = CAST zlnt_runtime_arra_c22708faf2e3( t292 ).
    DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t299) = |/|.
    CREATE OBJECT t298.
    t298->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t298->sval = t299.
    APPEND t298 TO t297->items.
    DATA(t300) = CAST zlnt_runtime_arra_c22708faf2e3( t292 ).
    DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t302) = |&&|.
    CREATE OBJECT t301.
    t301->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t301->sval = t302.
    APPEND t301 TO t300->items.
    DATA t303 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t304) = CAST zlnt_runtime_dyna_a429568d5be8( t286 ).
    DATA(t305) = CAST zlnt_runtime_dyna_a429568d5be8( t289 ).
    DATA(t306) = CAST zlnt_runtime_arra_c22708faf2e3( t292 ).
    t303 = zcl_lnt_st_combi_module=>alt_prio( i_first = t304 i_second = t305 i_rest = t306 ).
    t285 = t303.
    IF t285 IS BOUND.
      CREATE OBJECT t284.
      t284->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t307 TYPE REF TO object.
      t307 = t285.
      t284->oval = t307.
    ENDIF.
    t283 = t284.
    DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t308.
    DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t309.
    DATA t310 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t310.
    DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t311.
    DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t312.
    DATA(t313) = CAST zif_lnt_statement_runnable( t169 ).
    IF t313 IS BOUND.
      CREATE OBJECT t312.
      t312->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t314 TYPE REF TO object.
      t314 = t313.
      t312->oval = t314.
    ENDIF.
    t311 = t312.
    DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t315.
    DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t316.
    DATA(t317) = CAST zif_lnt_statement_runnable( t154 ).
    IF t317 IS BOUND.
      CREATE OBJECT t316.
      t316->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t318 TYPE REF TO object.
      t318 = t317.
      t316->oval = t318.
    ENDIF.
    t315 = t316.
    DATA t319 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t320 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t320.
    t319 = t320.
    DATA t321 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t322) = CAST zlnt_runtime_dyna_a429568d5be8( t311 ).
    DATA(t323) = CAST zlnt_runtime_dyna_a429568d5be8( t315 ).
    DATA(t324) = CAST zlnt_runtime_arra_c22708faf2e3( t319 ).
    t321 = zcl_lnt_st_combi_module=>alt_prio( i_first = t322 i_second = t323 i_rest = t324 ).
    t310 = t321.
    IF t310 IS BOUND.
      CREATE OBJECT t309.
      t309->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t325 TYPE REF TO object.
      t325 = t310.
      t309->oval = t325.
    ENDIF.
    t308 = t309.
    DATA t326 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t327 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t327.
    t326 = t327.
    DATA t328 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t329) = CAST zlnt_runtime_dyna_a429568d5be8( t283 ).
    DATA(t330) = CAST zlnt_runtime_dyna_a429568d5be8( t308 ).
    DATA(t331) = CAST zlnt_runtime_arra_c22708faf2e3( t326 ).
    t328 = zcl_lnt_st_combi_module=>seq( i_first = t329 i_second = t330 i_rest = t331 ).
    t282 = t328.
    IF t282 IS BOUND.
      CREATE OBJECT t281.
      t281->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t332 TYPE REF TO object.
      t332 = t282.
      t281->oval = t332.
    ENDIF.
    t280 = zcl_lnt_st_combi_module=>plus_prio( i_first = t281 ).
    t279 = t280.
    DATA t333 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t333.
    DATA t334 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t334.
    DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t335.
    DATA t336 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t336.
    DATA t337 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t337.
    DATA t338 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t338.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t338 = zcl_lnt_version_module=>release_b8cd.
    DATA(t339) = |v754|.
    t337 = t338->get( p0 = t339 ).
    t336 = t337.
    IF t336 IS BOUND.
      CREATE OBJECT t335.
      t335->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t340 TYPE REF TO object.
      t340 = t336.
      t335->oval = t340.
    ENDIF.
    DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t341.
    DATA(t342) = CAST zif_lnt_statement_runnable( t279 ).
    IF t342 IS BOUND.
      CREATE OBJECT t341.
      t341->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t343 TYPE REF TO object.
      t343 = t342.
      t341->oval = t343.
    ENDIF.
    DATA t344 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t344.
    t334 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t335 i_first = t341 i_opts = t344 ).
    t333 = t334.
    DATA t345 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t345.
    DATA t346 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t346.
    DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t347.
    DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t348.
    DATA(t349) = CAST zif_lnt_statement_runnable( t333 ).
    IF t349 IS BOUND.
      CREATE OBJECT t348.
      t348->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t350 TYPE REF TO object.
      t350 = t349.
      t348->oval = t350.
    ENDIF.
    t347 = t348.
    DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t351.
    DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t352.
    DATA(t353) = CAST zif_lnt_statement_runnable( t267 ).
    IF t353 IS BOUND.
      CREATE OBJECT t352.
      t352->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t354 TYPE REF TO object.
      t354 = t353.
      t352->oval = t354.
    ENDIF.
    t351 = t352.
    DATA t355 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t356 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t356.
    t355 = t356.
    DATA t357 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t358) = CAST zlnt_runtime_dyna_a429568d5be8( t347 ).
    DATA(t359) = CAST zlnt_runtime_dyna_a429568d5be8( t351 ).
    DATA(t360) = CAST zlnt_runtime_arra_c22708faf2e3( t355 ).
    t357 = zcl_lnt_st_combi_module=>alt_prio( i_first = t358 i_second = t359 i_rest = t360 ).
    t346 = t357.
    t345 = t346.
    DATA t361 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t361.
    DATA t362 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t362.
    DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t363.
    DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t364.
    DATA t365 TYPE REF TO zif_lnt_statement_runnable.
    DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t367) = |-|.
    CREATE OBJECT t366.
    t366->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t366->sval = t367.
    t365 = zcl_lnt_st_combi_module=>opt_prio( i_first = t366 ).
    IF t365 IS BOUND.
      CREATE OBJECT t364.
      t364->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t368 TYPE REF TO object.
      t368 = t365.
      t364->oval = t368.
    ENDIF.
    t363 = t364.
    DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t369.
    DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t370.
    DATA(t371) = CAST zif_lnt_statement_runnable( t154 ).
    IF t371 IS BOUND.
      CREATE OBJECT t370.
      t370->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t372 TYPE REF TO object.
      t372 = t371.
      t370->oval = t372.
    ENDIF.
    t369 = t370.
    DATA t373 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t374 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t374.
    t373 = t374.
    DATA(t375) = CAST zlnt_runtime_arra_c22708faf2e3( t373 ).
    DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t376.
    DATA t377 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t377.
    DATA t378 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t378.
    DATA(t379) = CAST zif_lnt_statement_runnable( t345 ).
    IF t379 IS BOUND.
      CREATE OBJECT t378.
      t378->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t380 TYPE REF TO object.
      t380 = t379.
      t378->oval = t380.
    ENDIF.
    t377 = zcl_lnt_st_combi_module=>opt_prio( i_first = t378 ).
    IF t377 IS BOUND.
      CREATE OBJECT t376.
      t376->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t381 TYPE REF TO object.
      t381 = t377.
      t376->oval = t381.
    ENDIF.
    APPEND t376 TO t375->items.
    DATA t382 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t383) = CAST zlnt_runtime_dyna_a429568d5be8( t363 ).
    DATA(t384) = CAST zlnt_runtime_dyna_a429568d5be8( t369 ).
    DATA(t385) = CAST zlnt_runtime_arra_c22708faf2e3( t373 ).
    t382 = zcl_lnt_st_combi_module=>seq( i_first = t383 i_second = t384 i_rest = t385 ).
    t362 = t382.
    t361 = t362.
    DATA t386 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t386.
    DATA t387 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t387.
    DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t388.
    DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t389.
    DATA t390 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t391) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d52_2e425786555090 ).
    t390 = zcl_lnt_st_combi_module=>tok( i_t = t391 ).
    IF t390 IS BOUND.
      CREATE OBJECT t389.
      t389->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t392 TYPE REF TO object.
      t392 = t390.
      t389->oval = t392.
    ENDIF.
    t388 = t389.
    DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t393.
    DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t394.
    DATA t395 TYPE REF TO zif_lnt_statement_runnable.
    DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t397) = |-|.
    CREATE OBJECT t396.
    t396->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t396->sval = t397.
    t395 = zcl_lnt_st_combi_module=>opt_prio( i_first = t396 ).
    IF t395 IS BOUND.
      CREATE OBJECT t394.
      t394->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t398 TYPE REF TO object.
      t398 = t395.
      t394->oval = t398.
    ENDIF.
    t393 = t394.
    DATA t399 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t400 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t400.
    t399 = t400.
    DATA(t401) = CAST zlnt_runtime_arra_c22708faf2e3( t399 ).
    DATA t402 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t402.
    DATA(t403) = CAST zif_lnt_statement_runnable( t361 ).
    IF t403 IS BOUND.
      CREATE OBJECT t402.
      t402->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t404 TYPE REF TO object.
      t404 = t403.
      t402->oval = t404.
    ENDIF.
    APPEND t402 TO t401->items.
    DATA(t405) = CAST zlnt_runtime_arra_c22708faf2e3( t399 ).
    DATA t406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t406.
    DATA t407 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t408) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de ).
    t407 = zcl_lnt_st_combi_module=>tok( i_t = t408 ).
    IF t407 IS BOUND.
      CREATE OBJECT t406.
      t406->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t409 TYPE REF TO object.
      t409 = t407.
      t406->oval = t409.
    ENDIF.
    APPEND t406 TO t405->items.
    DATA t410 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t411) = CAST zlnt_runtime_dyna_a429568d5be8( t388 ).
    DATA(t412) = CAST zlnt_runtime_dyna_a429568d5be8( t393 ).
    DATA(t413) = CAST zlnt_runtime_arra_c22708faf2e3( t399 ).
    t410 = zcl_lnt_st_combi_module=>seq( i_first = t411 i_second = t412 i_rest = t413 ).
    t387 = t410.
    t386 = t387.
    DATA t414 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t414.
    DATA t415 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t415.
    DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t416.
    DATA t417 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t417.
    DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t418.
    DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t419.
    DATA t420 TYPE REF TO zif_lnt_statement_runnable.
    DATA t421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t423) = |+|.
    CREATE OBJECT t422.
    t422->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t422->sval = t423.
    t421 = t422.
    DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t425 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t426) = |-|.
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
    DATA(t431) = |*|.
    CREATE OBJECT t430.
    t430->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t430->sval = t431.
    APPEND t430 TO t429->items.
    DATA(t432) = CAST zlnt_runtime_arra_c22708faf2e3( t427 ).
    DATA t433 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t434) = |/|.
    CREATE OBJECT t433.
    t433->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t433->sval = t434.
    APPEND t433 TO t432->items.
    DATA(t435) = CAST zlnt_runtime_arra_c22708faf2e3( t427 ).
    DATA t436 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t437) = |&&|.
    CREATE OBJECT t436.
    t436->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t436->sval = t437.
    APPEND t436 TO t435->items.
    DATA t438 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t439) = CAST zlnt_runtime_dyna_a429568d5be8( t421 ).
    DATA(t440) = CAST zlnt_runtime_dyna_a429568d5be8( t424 ).
    DATA(t441) = CAST zlnt_runtime_arra_c22708faf2e3( t427 ).
    t438 = zcl_lnt_st_combi_module=>alt_prio( i_first = t439 i_second = t440 i_rest = t441 ).
    t420 = t438.
    IF t420 IS BOUND.
      CREATE OBJECT t419.
      t419->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t442 TYPE REF TO object.
      t442 = t420.
      t419->oval = t442.
    ENDIF.
    t418 = t419.
    DATA t443 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t443.
    DATA t444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t444.
    DATA t445 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t445.
    DATA t446 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t446.
    DATA t447 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t447.
    DATA(t448) = CAST zif_lnt_statement_runnable( t386 ).
    IF t448 IS BOUND.
      CREATE OBJECT t447.
      t447->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t449 TYPE REF TO object.
      t449 = t448.
      t447->oval = t449.
    ENDIF.
    t446 = t447.
    DATA t450 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t450.
    DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t451.
    DATA(t452) = CAST zif_lnt_statement_runnable( t169 ).
    IF t452 IS BOUND.
      CREATE OBJECT t451.
      t451->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t453 TYPE REF TO object.
      t453 = t452.
      t451->oval = t453.
    ENDIF.
    t450 = t451.
    DATA t454 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t455 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t455.
    t454 = t455.
    DATA(t456) = CAST zlnt_runtime_arra_c22708faf2e3( t454 ).
    DATA t457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t457.
    DATA(t458) = CAST zif_lnt_statement_runnable( t154 ).
    IF t458 IS BOUND.
      CREATE OBJECT t457.
      t457->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t459 TYPE REF TO object.
      t459 = t458.
      t457->oval = t459.
    ENDIF.
    APPEND t457 TO t456->items.
    DATA t460 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t461) = CAST zlnt_runtime_dyna_a429568d5be8( t446 ).
    DATA(t462) = CAST zlnt_runtime_dyna_a429568d5be8( t450 ).
    DATA(t463) = CAST zlnt_runtime_arra_c22708faf2e3( t454 ).
    t460 = zcl_lnt_st_combi_module=>alt_prio( i_first = t461 i_second = t462 i_rest = t463 ).
    t445 = t460.
    IF t445 IS BOUND.
      CREATE OBJECT t444.
      t444->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t464 TYPE REF TO object.
      t464 = t445.
      t444->oval = t464.
    ENDIF.
    t443 = t444.
    DATA t465 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t466 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t466.
    t465 = t466.
    DATA t467 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t468) = CAST zlnt_runtime_dyna_a429568d5be8( t418 ).
    DATA(t469) = CAST zlnt_runtime_dyna_a429568d5be8( t443 ).
    DATA(t470) = CAST zlnt_runtime_arra_c22708faf2e3( t465 ).
    t467 = zcl_lnt_st_combi_module=>seq( i_first = t468 i_second = t469 i_rest = t470 ).
    t417 = t467.
    IF t417 IS BOUND.
      CREATE OBJECT t416.
      t416->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t471 TYPE REF TO object.
      t471 = t417.
      t416->oval = t471.
    ENDIF.
    t415 = zcl_lnt_st_combi_module=>plus_prio( i_first = t416 ).
    t414 = t415.
    DATA t472 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t472.
    DATA t473 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t473.
    DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t474.
    DATA t475 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t475.
    DATA t476 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t476.
    DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t477.
    DATA t478 TYPE REF TO zif_lnt_statement_runnable.
    DATA t479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t480 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t481) = |+|.
    CREATE OBJECT t480.
    t480->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t480->sval = t481.
    t479 = t480.
    DATA t482 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t483 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t484) = |-|.
    CREATE OBJECT t483.
    t483->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t483->sval = t484.
    t482 = t483.
    DATA t485 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t486 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t486.
    t485 = t486.
    DATA(t487) = CAST zlnt_runtime_arra_c22708faf2e3( t485 ).
    DATA t488 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t489) = |*|.
    CREATE OBJECT t488.
    t488->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t488->sval = t489.
    APPEND t488 TO t487->items.
    DATA(t490) = CAST zlnt_runtime_arra_c22708faf2e3( t485 ).
    DATA t491 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t492) = |/|.
    CREATE OBJECT t491.
    t491->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t491->sval = t492.
    APPEND t491 TO t490->items.
    DATA(t493) = CAST zlnt_runtime_arra_c22708faf2e3( t485 ).
    DATA t494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t495) = |&&|.
    CREATE OBJECT t494.
    t494->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t494->sval = t495.
    APPEND t494 TO t493->items.
    DATA t496 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t497) = CAST zlnt_runtime_dyna_a429568d5be8( t479 ).
    DATA(t498) = CAST zlnt_runtime_dyna_a429568d5be8( t482 ).
    DATA(t499) = CAST zlnt_runtime_arra_c22708faf2e3( t485 ).
    t496 = zcl_lnt_st_combi_module=>alt_prio( i_first = t497 i_second = t498 i_rest = t499 ).
    t478 = t496.
    IF t478 IS BOUND.
      CREATE OBJECT t477.
      t477->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t500 TYPE REF TO object.
      t500 = t478.
      t477->oval = t500.
    ENDIF.
    t476 = t477.
    DATA t501 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t501.
    DATA t502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t502.
    DATA t503 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t503.
    DATA t504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t504.
    DATA t505 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t505.
    DATA(t506) = CAST zif_lnt_statement_runnable( t386 ).
    IF t506 IS BOUND.
      CREATE OBJECT t505.
      t505->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t507 TYPE REF TO object.
      t507 = t506.
      t505->oval = t507.
    ENDIF.
    t504 = t505.
    DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t508.
    DATA t509 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t509.
    DATA(t510) = CAST zif_lnt_statement_runnable( t191 ).
    IF t510 IS BOUND.
      CREATE OBJECT t509.
      t509->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t511 TYPE REF TO object.
      t511 = t510.
      t509->oval = t511.
    ENDIF.
    t508 = t509.
    DATA t512 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t513 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t513.
    t512 = t513.
    DATA(t514) = CAST zlnt_runtime_arra_c22708faf2e3( t512 ).
    DATA t515 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t515.
    DATA(t516) = CAST zif_lnt_statement_runnable( t120 ).
    IF t516 IS BOUND.
      CREATE OBJECT t515.
      t515->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t517 TYPE REF TO object.
      t517 = t516.
      t515->oval = t517.
    ENDIF.
    APPEND t515 TO t514->items.
    DATA t518 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t519) = CAST zlnt_runtime_dyna_a429568d5be8( t504 ).
    DATA(t520) = CAST zlnt_runtime_dyna_a429568d5be8( t508 ).
    DATA(t521) = CAST zlnt_runtime_arra_c22708faf2e3( t512 ).
    t518 = zcl_lnt_st_combi_module=>alt_prio( i_first = t519 i_second = t520 i_rest = t521 ).
    t503 = t518.
    IF t503 IS BOUND.
      CREATE OBJECT t502.
      t502->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t522 TYPE REF TO object.
      t522 = t503.
      t502->oval = t522.
    ENDIF.
    t501 = t502.
    DATA t523 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t524 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t524.
    t523 = t524.
    DATA t525 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t526) = CAST zlnt_runtime_dyna_a429568d5be8( t476 ).
    DATA(t527) = CAST zlnt_runtime_dyna_a429568d5be8( t501 ).
    DATA(t528) = CAST zlnt_runtime_arra_c22708faf2e3( t523 ).
    t525 = zcl_lnt_st_combi_module=>seq( i_first = t526 i_second = t527 i_rest = t528 ).
    t475 = t525.
    IF t475 IS BOUND.
      CREATE OBJECT t474.
      t474->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t529 TYPE REF TO object.
      t529 = t475.
      t474->oval = t529.
    ENDIF.
    t473 = zcl_lnt_st_combi_module=>plus_prio( i_first = t474 ).
    t472 = t473.
    DATA t530 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t530.
    DATA t531 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t531.
    DATA t532 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t532.
    DATA t533 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t533.
    DATA t534 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t534.
    DATA t535 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t535.
    DATA t536 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t536.
    DATA t537 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t537.
    DATA t538 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t538.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t538 = zcl_lnt_version_module=>release_b8cd.
    DATA(t539) = |v754|.
    t537 = t538->get( p0 = t539 ).
    t536 = t537.
    IF t536 IS BOUND.
      CREATE OBJECT t535.
      t535->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t540 TYPE REF TO object.
      t540 = t536.
      t535->oval = t540.
    ENDIF.
    DATA t541 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t541.
    DATA(t542) = CAST zif_lnt_statement_runnable( t414 ).
    IF t542 IS BOUND.
      CREATE OBJECT t541.
      t541->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t543 TYPE REF TO object.
      t543 = t542.
      t541->oval = t543.
    ENDIF.
    DATA t544 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t544.
    t534 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t535 i_first = t541 i_opts = t544 ).
    IF t534 IS BOUND.
      CREATE OBJECT t533.
      t533->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t545 TYPE REF TO object.
      t545 = t534.
      t533->oval = t545.
    ENDIF.
    t532 = t533.
    DATA t546 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t546.
    DATA t547 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t547.
    DATA t548 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t548.
    DATA t549 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t549.
    DATA t550 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t550.
    DATA t551 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t551.
    DATA t552 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t552.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t552 = zcl_lnt_version_module=>release_b8cd.
    DATA(t553) = |v740sp05|.
    t551 = t552->get( p0 = t553 ).
    t550 = t551.
    IF t550 IS BOUND.
      CREATE OBJECT t549.
      t549->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t554 TYPE REF TO object.
      t554 = t550.
      t549->oval = t554.
    ENDIF.
    DATA t555 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t555.
    DATA(t556) = CAST zif_lnt_statement_runnable( t472 ).
    IF t556 IS BOUND.
      CREATE OBJECT t555.
      t555->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t557 TYPE REF TO object.
      t557 = t556.
      t555->oval = t557.
    ENDIF.
    DATA t558 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t558.
    t548 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t549 i_first = t555 i_opts = t558 ).
    IF t548 IS BOUND.
      CREATE OBJECT t547.
      t547->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t559 TYPE REF TO object.
      t559 = t548.
      t547->oval = t559.
    ENDIF.
    t546 = t547.
    DATA t560 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t561 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t561.
    t560 = t561.
    DATA t562 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t563) = CAST zlnt_runtime_dyna_a429568d5be8( t532 ).
    DATA(t564) = CAST zlnt_runtime_dyna_a429568d5be8( t546 ).
    DATA(t565) = CAST zlnt_runtime_arra_c22708faf2e3( t560 ).
    t562 = zcl_lnt_st_combi_module=>alt_prio( i_first = t563 i_second = t564 i_rest = t565 ).
    t531 = t562.
    t530 = t531.
    DATA t566 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t566.
    DATA t567 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t567.
    DATA t568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t568.
    DATA t569 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t569.
    DATA t570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t570.
    DATA t571 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t571.
    DATA t572 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t572.
    DATA t573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t573.
    DATA t574 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t574.
    DATA(t575) = CAST zif_lnt_statement_runnable( t386 ).
    IF t575 IS BOUND.
      CREATE OBJECT t574.
      t574->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t576 TYPE REF TO object.
      t576 = t575.
      t574->oval = t576.
    ENDIF.
    t573 = t574.
    DATA t577 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t577.
    DATA t578 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t578.
    DATA t579 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t579.
    DATA t580 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t580.
    DATA(t581) = CAST zif_lnt_statement_runnable( t530 ).
    IF t581 IS BOUND.
      CREATE OBJECT t580.
      t580->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t582 TYPE REF TO object.
      t582 = t581.
      t580->oval = t582.
    ENDIF.
    t579 = zcl_lnt_st_combi_module=>opt_prio( i_first = t580 ).
    IF t579 IS BOUND.
      CREATE OBJECT t578.
      t578->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t583 TYPE REF TO object.
      t583 = t579.
      t578->oval = t583.
    ENDIF.
    t577 = t578.
    DATA t584 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t585 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t585.
    t584 = t585.
    DATA t586 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t587) = CAST zlnt_runtime_dyna_a429568d5be8( t573 ).
    DATA(t588) = CAST zlnt_runtime_dyna_a429568d5be8( t577 ).
    DATA(t589) = CAST zlnt_runtime_arra_c22708faf2e3( t584 ).
    t586 = zcl_lnt_st_combi_module=>seq( i_first = t587 i_second = t588 i_rest = t589 ).
    t572 = t586.
    IF t572 IS BOUND.
      CREATE OBJECT t571.
      t571->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t590 TYPE REF TO object.
      t590 = t572.
      t571->oval = t590.
    ENDIF.
    t570 = t571.
    DATA t591 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t591.
    DATA t592 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t592.
    DATA(t593) = CAST zif_lnt_statement_runnable( t361 ).
    IF t593 IS BOUND.
      CREATE OBJECT t592.
      t592->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t594 TYPE REF TO object.
      t594 = t593.
      t592->oval = t594.
    ENDIF.
    t591 = t592.
    DATA t595 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t596 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t596.
    t595 = t596.
    DATA t597 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t598) = CAST zlnt_runtime_dyna_a429568d5be8( t570 ).
    DATA(t599) = CAST zlnt_runtime_dyna_a429568d5be8( t591 ).
    DATA(t600) = CAST zlnt_runtime_arra_c22708faf2e3( t595 ).
    t597 = zcl_lnt_st_combi_module=>alt_prio( i_first = t598 i_second = t599 i_rest = t600 ).
    t569 = t597.
    IF t569 IS BOUND.
      CREATE OBJECT t568.
      t568->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t601 TYPE REF TO object.
      t601 = t569.
      t568->oval = t601.
    ENDIF.
    t567 = t568.
    DATA t602 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t602.
    DATA t603 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t603.
    DATA t604 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t604.
    DATA t605 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t605.
    DATA(t606) = CAST zif_lnt_statement_runnable( t70 ).
    IF t606 IS BOUND.
      CREATE OBJECT t605.
      t605->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t607 TYPE REF TO object.
      t607 = t606.
      t605->oval = t607.
    ENDIF.
    t604 = zcl_lnt_st_combi_module=>opt_prio( i_first = t605 ).
    IF t604 IS BOUND.
      CREATE OBJECT t603.
      t603->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t608 TYPE REF TO object.
      t608 = t604.
      t603->oval = t608.
    ENDIF.
    t602 = t603.
    DATA t609 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t610 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t610.
    t609 = t610.
    DATA t611 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t612) = CAST zlnt_runtime_dyna_a429568d5be8( t567 ).
    DATA(t613) = CAST zlnt_runtime_dyna_a429568d5be8( t602 ).
    DATA(t614) = CAST zlnt_runtime_arra_c22708faf2e3( t609 ).
    t611 = zcl_lnt_st_combi_module=>seq( i_first = t612 i_second = t613 i_rest = t614 ).
    t566 = t611.
    result = t566.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d291_77feaa8efd76.
  ENDMETHOD.
ENDCLASS.
