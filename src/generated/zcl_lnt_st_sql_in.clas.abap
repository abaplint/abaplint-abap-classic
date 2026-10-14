* TS: src/abap/2_statements/expressions/sql_in.ts:9:1 SQLIn
CLASS zcl_lnt_st_sql_in DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_sql_in IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zcl_lnt_st_sql_source.
    DATA(t2) = NEW zcl_lnt_st_sql_source( ).
    t1 = t2.
    DATA t3 TYPE REF TO zcl_lnt_sql_source_no_space.
    DATA(t4) = NEW zcl_lnt_sql_source_no_space( ).
    t3 = t4.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t5.
    DATA t6 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    DATA t9 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d51_977bdd21674215.
    t9 = zcl_lnt_st_combi_module=>tok( i_t = t10 ).
    IF t9 IS BOUND.
      CREATE OBJECT t8.
      t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t11 TYPE REF TO object.
      t11 = t9.
      t8->oval = t11.
    ENDIF.
    t7 = t8.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA t19 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t21.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t21 = zcl_lnt_version_module=>release_b8cd.
    DATA(t22) = |v740sp05|.
    t20 = t21->get( p0 = t22 ).
    t19 = t20.
    IF t19 IS BOUND.
      CREATE OBJECT t18.
      t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t23 TYPE REF TO object.
      t23 = t19.
      t18->oval = t23.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA(t25) = t3.
    IF t25 IS BOUND.
      CREATE OBJECT t24.
      t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t26 TYPE REF TO object.
      t26 = t25.
      t24->oval = t26.
    ENDIF.
    DATA t27 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA t29 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t29.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      DATA(t31) = abap_true.
      IF t31 = abap_true.
        DATA(t32) = |OpenABAP|.
        DATA(t33) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t33->has = abap_true.
        t33->value = t32.
        t30 = t33.
      ELSE.
        DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t34.
        t30 = t34.
      ENDIF.
      t29 = NEW zcl_lnt_iver_options( i_also = t30 ).
      t27 = t29.
    ELSE.
      DATA t35 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t35.
      t27 = t35.
    ENDIF.
    t17 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t18 i_first = t24 i_opts = t27 ).
    IF t17 IS BOUND.
      CREATE OBJECT t16.
      t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t36 TYPE REF TO object.
      t36 = t17.
      t16->oval = t36.
    ENDIF.
    t15 = t16.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA(t39) = t1.
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t40 TYPE REF TO object.
      t40 = t39.
      t38->oval = t40.
    ENDIF.
    t37 = t38.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t42.
    t41 = t42.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t44) = t15.
    DATA(t45) = t37.
    DATA(t46) = t41.
    t43 = zcl_lnt_st_combi_module=>alt( i_first = t44 i_second = t45 i_rest = t46 ).
    t14 = t43.
    IF t14 IS BOUND.
      CREATE OBJECT t13.
      t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t47 TYPE REF TO object.
      t47 = t14.
      t13->oval = t47.
    ENDIF.
    t12 = t13.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t49.
    t48 = t49.
    DATA(t50) = t48.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    DATA t52 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t57) = |,|.
    CREATE OBJECT t56.
    t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t56->sval = t57.
    t55 = t56.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t59.
    DATA(t60) = t1.
    IF t60 IS BOUND.
      CREATE OBJECT t59.
      t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t61 TYPE REF TO object.
      t61 = t60.
      t59->oval = t61.
    ENDIF.
    t58 = t59.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t63.
    t62 = t63.
    DATA t64 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t65) = t55.
    DATA(t66) = t58.
    DATA(t67) = t62.
    t64 = zcl_lnt_st_combi_module=>seq( i_first = t65 i_second = t66 i_rest = t67 ).
    t54 = t64.
    IF t54 IS BOUND.
      CREATE OBJECT t53.
      t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t68 TYPE REF TO object.
      t68 = t54.
      t53->oval = t68.
    ENDIF.
    t52 = zcl_lnt_st_combi_module=>star_prio( i_first = t53 ).
    IF t52 IS BOUND.
      CREATE OBJECT t51.
      t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t69 TYPE REF TO object.
      t69 = t52.
      t51->oval = t69.
    ENDIF.
    APPEND t51 TO t50->items.
    DATA(t70) = t48.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t71.
    DATA t72 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t74.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t76) = zlnt_runtime_desc_78196487750d=>zlnt_member_d28_3a57ab83f0ed44.
    t75 = zcl_lnt_st_combi_module=>tok( i_t = t76 ).
    IF t75 IS BOUND.
      CREATE OBJECT t74.
      t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t77 TYPE REF TO object.
      t77 = t75.
      t74->oval = t77.
    ENDIF.
    t73 = t74.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t78.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t79.
    DATA t80 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t81) = zlnt_runtime_desc_78196487750d=>zlnt_member_d29_f2ed5131cb71b6.
    t80 = zcl_lnt_st_combi_module=>tok( i_t = t81 ).
    IF t80 IS BOUND.
      CREATE OBJECT t79.
      t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t82 TYPE REF TO object.
      t82 = t80.
      t79->oval = t82.
    ENDIF.
    t78 = t79.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t84.
    t83 = t84.
    DATA(t85) = t83.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t86.
    DATA t87 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t88) = zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de.
    t87 = zcl_lnt_st_combi_module=>tok( i_t = t88 ).
    IF t87 IS BOUND.
      CREATE OBJECT t86.
      t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t89 TYPE REF TO object.
      t89 = t87.
      t86->oval = t89.
    ENDIF.
    APPEND t86 TO t85->items.
    DATA t90 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t91) = t73.
    DATA(t92) = t78.
    DATA(t93) = t83.
    t90 = zcl_lnt_st_combi_module=>alt_prio( i_first = t91 i_second = t92 i_rest = t93 ).
    t72 = t90.
    IF t72 IS BOUND.
      CREATE OBJECT t71.
      t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t94 TYPE REF TO object.
      t94 = t72.
      t71->oval = t94.
    ENDIF.
    APPEND t71 TO t70->items.
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t96) = t7.
    DATA(t97) = t12.
    DATA(t98) = t48.
    t95 = zcl_lnt_st_combi_module=>seq( i_first = t96 i_second = t97 i_rest = t98 ).
    t6 = t95.
    t5 = t6.
    DATA t99 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t99.
    DATA t100 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t100.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA t103 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t104) = zlnt_runtime_desc_78196487750d=>zlnt_member_d52_2e425786555090.
    t103 = zcl_lnt_st_combi_module=>tok( i_t = t104 ).
    IF t103 IS BOUND.
      CREATE OBJECT t102.
      t102->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t105 TYPE REF TO object.
      t105 = t103.
      t102->oval = t105.
    ENDIF.
    t101 = t102.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t106.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    DATA(t108) = t1.
    IF t108 IS BOUND.
      CREATE OBJECT t107.
      t107->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t109 TYPE REF TO object.
      t109 = t108.
      t107->oval = t109.
    ENDIF.
    t106 = t107.
    DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t111.
    t110 = t111.
    DATA(t112) = t110.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    DATA t114 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t114.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    DATA t116 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t116.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t119) = |,|.
    CREATE OBJECT t118.
    t118->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t118->sval = t119.
    t117 = t118.
    DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t120.
    DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t121.
    DATA t122 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t122.
    DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t123.
    DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t124.
    DATA(t125) = t3.
    IF t125 IS BOUND.
      CREATE OBJECT t124.
      t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t126 TYPE REF TO object.
      t126 = t125.
      t124->oval = t126.
    ENDIF.
    t123 = t124.
    DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t127.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t128.
    DATA(t129) = t1.
    IF t129 IS BOUND.
      CREATE OBJECT t128.
      t128->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t130 TYPE REF TO object.
      t130 = t129.
      t128->oval = t130.
    ENDIF.
    t127 = t128.
    DATA t131 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t132.
    t131 = t132.
    DATA t133 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t134) = t123.
    DATA(t135) = t127.
    DATA(t136) = t131.
    t133 = zcl_lnt_st_combi_module=>alt_prio( i_first = t134 i_second = t135 i_rest = t136 ).
    t122 = t133.
    IF t122 IS BOUND.
      CREATE OBJECT t121.
      t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t137 TYPE REF TO object.
      t137 = t122.
      t121->oval = t137.
    ENDIF.
    t120 = t121.
    DATA t138 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t139 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t139.
    t138 = t139.
    DATA t140 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t141) = t117.
    DATA(t142) = t120.
    DATA(t143) = t138.
    t140 = zcl_lnt_st_combi_module=>seq( i_first = t141 i_second = t142 i_rest = t143 ).
    t116 = t140.
    IF t116 IS BOUND.
      CREATE OBJECT t115.
      t115->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t144 TYPE REF TO object.
      t144 = t116.
      t115->oval = t144.
    ENDIF.
    t114 = zcl_lnt_st_combi_module=>star_prio( i_first = t115 ).
    IF t114 IS BOUND.
      CREATE OBJECT t113.
      t113->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t145 TYPE REF TO object.
      t145 = t114.
      t113->oval = t145.
    ENDIF.
    APPEND t113 TO t112->items.
    DATA(t146) = t110.
    DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t147.
    DATA t148 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t148.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t149.
    DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t150.
    DATA t151 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t152) = zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77.
    t151 = zcl_lnt_st_combi_module=>tok( i_t = t152 ).
    IF t151 IS BOUND.
      CREATE OBJECT t150.
      t150->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t153 TYPE REF TO object.
      t153 = t151.
      t150->oval = t153.
    ENDIF.
    t149 = t150.
    DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t154.
    DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t155.
    DATA t156 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t157) = zlnt_runtime_desc_78196487750d=>zlnt_member_d54_e55193f1dae9de.
    t156 = zcl_lnt_st_combi_module=>tok( i_t = t157 ).
    IF t156 IS BOUND.
      CREATE OBJECT t155.
      t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t158 TYPE REF TO object.
      t158 = t156.
      t155->oval = t158.
    ENDIF.
    t154 = t155.
    DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t160.
    t159 = t160.
    DATA t161 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t162) = t149.
    DATA(t163) = t154.
    DATA(t164) = t159.
    t161 = zcl_lnt_st_combi_module=>alt_prio( i_first = t162 i_second = t163 i_rest = t164 ).
    t148 = t161.
    IF t148 IS BOUND.
      CREATE OBJECT t147.
      t147->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t165 TYPE REF TO object.
      t165 = t148.
      t147->oval = t165.
    ENDIF.
    APPEND t147 TO t146->items.
    DATA t166 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t167) = t101.
    DATA(t168) = t106.
    DATA(t169) = t110.
    t166 = zcl_lnt_st_combi_module=>seq( i_first = t167 i_second = t168 i_rest = t169 ).
    t100 = t166.
    t99 = t100.
    DATA t170 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t170.
    DATA t171 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t171.
    DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t172.
    DATA t173 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t173.
    DATA t174 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t174.
    DATA t175 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t175.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t175 = zcl_lnt_version_module=>release_b8cd.
    DATA(t176) = |v740sp02|.
    t174 = t175->get( p0 = t176 ).
    t173 = t174.
    IF t173 IS BOUND.
      CREATE OBJECT t172.
      t172->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t177 TYPE REF TO object.
      t177 = t173.
      t172->oval = t177.
    ENDIF.
    DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t178.
    DATA(t179) = t99.
    IF t179 IS BOUND.
      CREATE OBJECT t178.
      t178->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t180 TYPE REF TO object.
      t180 = t179.
      t178->oval = t180.
    ENDIF.
    DATA t181 TYPE REF TO zcl_lnt_iver_options.
    CLEAR t181.
    DATA(t182) = abap_true.
    IF t182 = abap_true.
      DATA t183 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t183.
      DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t184.
      DATA(t185) = abap_true.
      IF t185 = abap_true.
        DATA(t186) = |OpenABAP|.
        DATA(t187) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t187->has = abap_true.
        t187->value = t186.
        t184 = t187.
      ELSE.
        DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t188.
        t184 = t188.
      ENDIF.
      t183 = NEW zcl_lnt_iver_options( i_also = t184 ).
      t181 = t183.
    ELSE.
      DATA t189 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t189.
      t181 = t189.
    ENDIF.
    t171 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t172 i_first = t178 i_opts = t181 ).
    t170 = t171.
    DATA t190 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA(t191) = zlnt_runtime_desc_78196487750d=>zlnt_member_d277_c16b515a2f49.
    t190 = t191.
    DATA t192 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t192.
    DATA t193 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t193.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t196) = |(|.
    CREATE OBJECT t195.
    t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t195->sval = t196.
    t194 = t195.
    DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t199) = |SELECT|.
    CREATE OBJECT t198.
    t198->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t198->sval = t199.
    t197 = t198.
    DATA t200 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t201 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t201.
    t200 = t201.
    DATA(t202) = t200.
    DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t203.
    DATA t204 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t204.
    DATA t205 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t205.
    DATA t206 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t206.
    DATA(t207) = abap_true.
    IF t207 = abap_true.
      DATA(t208) = abap_false.
      DATA(t209) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t209->has = abap_true.
      t209->value = t208.
      t206 = t209.
    ELSE.
      DATA t210 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t210.
      t206 = t210.
    ENDIF.
    t204 = zcl_lnt_select_core_module=>build_select_core( i_allow_into = t205 i_allow_order_by = t206 ).
    IF t204 IS BOUND.
      CREATE OBJECT t203.
      t203->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t211 TYPE REF TO object.
      t211 = t204.
      t203->oval = t211.
    ENDIF.
    APPEND t203 TO t202->items.
    DATA(t212) = t200.
    DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t214) = |)|.
    CREATE OBJECT t213.
    t213->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t213->sval = t214.
    APPEND t213 TO t212->items.
    DATA t215 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t216) = t194.
    DATA(t217) = t197.
    DATA(t218) = t200.
    t215 = zcl_lnt_st_combi_module=>seq( i_first = t216 i_second = t217 i_rest = t218 ).
    t193 = t215.
    t192 = t193.
    DATA t219 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t219.
    DATA t220 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t220.
    DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t223) = |IN|.
    CREATE OBJECT t222.
    t222->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t222->sval = t223.
    t221 = t222.
    DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t224.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t225.
    DATA t226 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t226.
    DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t227.
    DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t228.
    DATA(t229) = t190.
    IF t229 IS BOUND.
      CREATE OBJECT t228.
      t228->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t228->cval = t229.
    ENDIF.
    t227 = t228.
    DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t230.
    DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t231.
    DATA(t232) = t192.
    IF t232 IS BOUND.
      CREATE OBJECT t231.
      t231->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t233 TYPE REF TO object.
      t233 = t232.
      t231->oval = t233.
    ENDIF.
    t230 = t231.
    DATA t234 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t235 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t235.
    t234 = t235.
    DATA(t236) = t234.
    DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t237.
    DATA(t238) = t5.
    IF t238 IS BOUND.
      CREATE OBJECT t237.
      t237->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t239 TYPE REF TO object.
      t239 = t238.
      t237->oval = t239.
    ENDIF.
    APPEND t237 TO t236->items.
    DATA(t240) = t234.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t241.
    DATA(t242) = t170.
    IF t242 IS BOUND.
      CREATE OBJECT t241.
      t241->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t243 TYPE REF TO object.
      t243 = t242.
      t241->oval = t243.
    ENDIF.
    APPEND t241 TO t240->items.
    DATA(t244) = t234.
    DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t245.
    DATA(t246) = zlnt_runtime_desc_78196487750d=>zlnt_member_d272_6a64f0eb4e20.
    IF t246 IS BOUND.
      CREATE OBJECT t245.
      t245->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t245->cval = t246.
    ENDIF.
    APPEND t245 TO t244->items.
    DATA t247 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t248) = t227.
    DATA(t249) = t230.
    DATA(t250) = t234.
    t247 = zcl_lnt_st_combi_module=>alt_prio( i_first = t248 i_second = t249 i_rest = t250 ).
    t226 = t247.
    IF t226 IS BOUND.
      CREATE OBJECT t225.
      t225->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t251 TYPE REF TO object.
      t251 = t226.
      t225->oval = t251.
    ENDIF.
    t224 = t225.
    DATA t252 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t253 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t253.
    t252 = t253.
    DATA t254 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t255) = t221.
    DATA(t256) = t224.
    DATA(t257) = t252.
    t254 = zcl_lnt_st_combi_module=>seq( i_first = t255 i_second = t256 i_rest = t257 ).
    t220 = t254.
    t219 = t220.
    DATA(t258) = t219.
    result = t258.

  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d279_5e96219eaf2c.
  ENDMETHOD.
ENDCLASS.
