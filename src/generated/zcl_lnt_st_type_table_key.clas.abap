* TS: src/abap/2_statements/expressions/type_table_key.ts:6:1 TypeTableKey
CLASS zcl_lnt_st_type_table_key DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_type_table_key IMPLEMENTATION.
  METHOD constructor.
    super->constructor(  ).
  ENDMETHOD.
  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t5) = |NON-UNIQUE|.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = t5.
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = |UNIQUE|.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = t8.
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t9 = t10.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t12) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    DATA(t13) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    t11 = zcl_lnt_st_combi_module=>alt( i_first = t12 i_second = t13 i_rest = t14 ).
    t2 = t11.
    t1 = t2.
    DATA t15 TYPE string.
    DATA(t16) = |DEFAULT KEY|.
    t15 = t16.
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t17.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA t20 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t20.
    DATA t21 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t22.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t22 = zcl_lnt_version_module=>release_b8cd.
    DATA(t23) = |v740sp02|.
    t21 = t22->get( p0 = t23 ).
    t20 = t21.
    IF t20 IS BOUND.
      CREATE OBJECT t19.
      t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t24 TYPE REF TO object.
      t24 = t20.
      t19->oval = t24.
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t26) = |EMPTY KEY|.
    CREATE OBJECT t25.
    t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t25->sval = t26.
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
    t18 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t19 i_first = t25 i_opts = t27 ).
    t17 = t18.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t36.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t37.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    DATA t39 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t39.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    DATA t43 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t44 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t44.
    t43 = t44.
    DATA(t45) = CAST zlnt_runtime_arra_8ecd6afe19e0( t43 ).
    DATA(t46) = |WITH|.
    APPEND t46 TO t45->items.
    DATA(t47) = CAST zlnt_runtime_arra_8ecd6afe19e0( t43 ).
    DATA(t48) = |INITIAL|.
    APPEND t48 TO t47->items.
    DATA(t49) = CAST zlnt_runtime_arra_8ecd6afe19e0( t43 ).
    DATA(t50) = |WITHOUT|.
    APPEND t50 TO t49->items.
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t52) = CAST zlnt_runtime_arra_8ecd6afe19e0( t43 ).
    t51 = zcl_lnt_st_combi_module=>stop_before1( i_words = t52 ).
    t42 = t51.
    IF t42 IS BOUND.
      CREATE OBJECT t41.
      t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t53 TYPE REF TO object.
      t53 = t42.
      t41->oval = t53.
    ENDIF.
    t40 = t41.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t57) = |READ|.
    DATA(t58) = |-|.
    t56 = zcl_lnt_st_combi_module=>stop_before( i_t1 = t57 i_t2 = t58 ).
    IF t56 IS BOUND.
      CREATE OBJECT t55.
      t55->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t59 TYPE REF TO object.
      t59 = t56.
      t55->oval = t59.
    ENDIF.
    t54 = t55.
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t61.
    t60 = t61.
    DATA(t62) = CAST zlnt_runtime_arra_c22708faf2e3( t60 ).
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t63.
    DATA(t64) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df ).
    IF t64 IS BOUND.
      CREATE OBJECT t63.
      t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t63->cval = t64.
    ENDIF.
    APPEND t63 TO t62->items.
    DATA t65 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t66) = CAST zlnt_runtime_dyna_a429568d5be8( t40 ).
    DATA(t67) = CAST zlnt_runtime_dyna_a429568d5be8( t54 ).
    DATA(t68) = CAST zlnt_runtime_arra_c22708faf2e3( t60 ).
    t65 = zcl_lnt_st_combi_module=>seq( i_first = t66 i_second = t67 i_rest = t68 ).
    t39 = t65.
    IF t39 IS BOUND.
      CREATE OBJECT t38.
      t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t69 TYPE REF TO object.
      t69 = t39.
      t38->oval = t69.
    ENDIF.
    t37 = zcl_lnt_st_combi_module=>plus_prio( i_first = t38 ).
    t36 = t37.
    DATA t70 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t70.
    DATA t71 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    DATA t74 TYPE REF TO zif_lnt_statement_runnable.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t77) = |WITHOUT|.
    CREATE OBJECT t76.
    t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t76->sval = t77.
    t75 = t76.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t80) = |WITH|.
    CREATE OBJECT t79.
    t79->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t79->sval = t80.
    t78 = t79.
    DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t82 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t82.
    t81 = t82.
    DATA t83 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t84) = CAST zlnt_runtime_dyna_a429568d5be8( t75 ).
    DATA(t85) = CAST zlnt_runtime_dyna_a429568d5be8( t78 ).
    DATA(t86) = CAST zlnt_runtime_arra_c22708faf2e3( t81 ).
    t83 = zcl_lnt_st_combi_module=>alt( i_first = t84 i_second = t85 i_rest = t86 ).
    t74 = t83.
    IF t74 IS BOUND.
      CREATE OBJECT t73.
      t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t87 TYPE REF TO object.
      t87 = t74.
      t73->oval = t87.
    ENDIF.
    t72 = t73.
    DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t90) = |FURTHER SECONDARY KEYS|.
    CREATE OBJECT t89.
    t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t89->sval = t90.
    t88 = t89.
    DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t92.
    t91 = t92.
    DATA t93 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t94) = CAST zlnt_runtime_dyna_a429568d5be8( t72 ).
    DATA(t95) = CAST zlnt_runtime_dyna_a429568d5be8( t88 ).
    DATA(t96) = CAST zlnt_runtime_arra_c22708faf2e3( t91 ).
    t93 = zcl_lnt_st_combi_module=>seq( i_first = t94 i_second = t95 i_rest = t96 ).
    t71 = t93.
    t70 = t71.
    DATA t97 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t97.
    DATA t98 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t98.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t101) = |ALIAS|.
    CREATE OBJECT t100.
    t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t100->sval = t101.
    t99 = t100.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    DATA(t104) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185 ).
    IF t104 IS BOUND.
      CREATE OBJECT t103.
      t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t103->cval = t104.
    ENDIF.
    t102 = t103.
    DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t106.
    t105 = t106.
    DATA t107 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t108) = CAST zlnt_runtime_dyna_a429568d5be8( t99 ).
    DATA(t109) = CAST zlnt_runtime_dyna_a429568d5be8( t102 ).
    DATA(t110) = CAST zlnt_runtime_arra_c22708faf2e3( t105 ).
    t107 = zcl_lnt_st_combi_module=>seq( i_first = t108 i_second = t109 i_rest = t110 ).
    t98 = t107.
    t97 = t98.
    DATA t111 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t111.
    DATA t112 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t112.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t115) = |WITH|.
    CREATE OBJECT t114.
    t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t114->sval = t115.
    t113 = t114.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t116.
    DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t117.
    DATA t118 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t118.
    DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t119.
    DATA(t120) = CAST zif_lnt_statement_runnable( t1 ).
    IF t120 IS BOUND.
      CREATE OBJECT t119.
      t119->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t121 TYPE REF TO object.
      t121 = t120.
      t119->oval = t121.
    ENDIF.
    t118 = zcl_lnt_st_combi_module=>opt_prio( i_first = t119 ).
    IF t118 IS BOUND.
      CREATE OBJECT t117.
      t117->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t122 TYPE REF TO object.
      t122 = t118.
      t117->oval = t122.
    ENDIF.
    t116 = t117.
    DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t124.
    t123 = t124.
    DATA(t125) = CAST zlnt_runtime_arra_c22708faf2e3( t123 ).
    DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t126.
    DATA t127 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t127.
    DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t130) = t15.
    CREATE OBJECT t129.
    t129->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t129->sval = t130.
    t128 = t129.
    DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t131.
    DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t132.
    DATA(t133) = CAST zif_lnt_statement_runnable( t17 ).
    IF t133 IS BOUND.
      CREATE OBJECT t132.
      t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t134 TYPE REF TO object.
      t134 = t133.
      t132->oval = t134.
    ENDIF.
    t131 = t132.
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
    DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t141.
    DATA t142 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t142.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t143.
    DATA t144 TYPE REF TO zif_lnt_statement_runnable.
    DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t147) = |SORTED|.
    CREATE OBJECT t146.
    t146->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t146->sval = t147.
    t145 = t146.
    DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t150) = |HASHED|.
    CREATE OBJECT t149.
    t149->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t149->sval = t150.
    t148 = t149.
    DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t152.
    t151 = t152.
    DATA t153 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t154) = CAST zlnt_runtime_dyna_a429568d5be8( t145 ).
    DATA(t155) = CAST zlnt_runtime_dyna_a429568d5be8( t148 ).
    DATA(t156) = CAST zlnt_runtime_arra_c22708faf2e3( t151 ).
    t153 = zcl_lnt_st_combi_module=>alt( i_first = t154 i_second = t155 i_rest = t156 ).
    t144 = t153.
    IF t144 IS BOUND.
      CREATE OBJECT t143.
      t143->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t157 TYPE REF TO object.
      t157 = t144.
      t143->oval = t157.
    ENDIF.
    t142 = zcl_lnt_st_combi_module=>opt( i_first = t143 ).
    IF t142 IS BOUND.
      CREATE OBJECT t141.
      t141->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t158 TYPE REF TO object.
      t158 = t142.
      t141->oval = t158.
    ENDIF.
    t140 = t141.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t161) = |KEY|.
    CREATE OBJECT t160.
    t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t160->sval = t161.
    t159 = t160.
    DATA t162 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t163 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t163.
    t162 = t163.
    DATA(t164) = CAST zlnt_runtime_arra_c22708faf2e3( t162 ).
    DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t165.
    DATA t166 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t166.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t167.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t168.
    DATA t169 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t169.
    DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t170.
    DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t171.
    DATA(t172) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185 ).
    IF t172 IS BOUND.
      CREATE OBJECT t171.
      t171->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t171->cval = t172.
    ENDIF.
    t170 = t171.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t173.
    DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t174.
    DATA t175 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t175.
    DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t176.
    DATA(t177) = CAST zif_lnt_statement_runnable( t97 ).
    IF t177 IS BOUND.
      CREATE OBJECT t176.
      t176->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t178 TYPE REF TO object.
      t178 = t177.
      t176->oval = t178.
    ENDIF.
    t175 = zcl_lnt_st_combi_module=>opt( i_first = t176 ).
    IF t175 IS BOUND.
      CREATE OBJECT t174.
      t174->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t179 TYPE REF TO object.
      t179 = t175.
      t174->oval = t179.
    ENDIF.
    t173 = t174.
    DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t181 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t181.
    t180 = t181.
    DATA(t182) = CAST zlnt_runtime_arra_c22708faf2e3( t180 ).
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t184) = |COMPONENTS|.
    CREATE OBJECT t183.
    t183->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t183->sval = t184.
    APPEND t183 TO t182->items.
    DATA(t185) = CAST zlnt_runtime_arra_c22708faf2e3( t180 ).
    DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t186.
    DATA(t187) = CAST zif_lnt_statement_runnable( t36 ).
    IF t187 IS BOUND.
      CREATE OBJECT t186.
      t186->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t188 TYPE REF TO object.
      t188 = t187.
      t186->oval = t188.
    ENDIF.
    APPEND t186 TO t185->items.
    DATA t189 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t190) = CAST zlnt_runtime_dyna_a429568d5be8( t170 ).
    DATA(t191) = CAST zlnt_runtime_dyna_a429568d5be8( t173 ).
    DATA(t192) = CAST zlnt_runtime_arra_c22708faf2e3( t180 ).
    t189 = zcl_lnt_st_combi_module=>seq( i_first = t190 i_second = t191 i_rest = t192 ).
    t169 = t189.
    IF t169 IS BOUND.
      CREATE OBJECT t168.
      t168->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t193 TYPE REF TO object.
      t193 = t169.
      t168->oval = t193.
    ENDIF.
    t167 = t168.
    DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t194.
    DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t195.
    DATA(t196) = CAST zif_lnt_statement_runnable( t36 ).
    IF t196 IS BOUND.
      CREATE OBJECT t195.
      t195->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t197 TYPE REF TO object.
      t197 = t196.
      t195->oval = t197.
    ENDIF.
    t194 = t195.
    DATA t198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t199 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t199.
    t198 = t199.
    DATA t200 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t201) = CAST zlnt_runtime_dyna_a429568d5be8( t167 ).
    DATA(t202) = CAST zlnt_runtime_dyna_a429568d5be8( t194 ).
    DATA(t203) = CAST zlnt_runtime_arra_c22708faf2e3( t198 ).
    t200 = zcl_lnt_st_combi_module=>alt_prio( i_first = t201 i_second = t202 i_rest = t203 ).
    t166 = t200.
    IF t166 IS BOUND.
      CREATE OBJECT t165.
      t165->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t204 TYPE REF TO object.
      t204 = t166.
      t165->oval = t204.
    ENDIF.
    APPEND t165 TO t164->items.
    DATA t205 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t206) = CAST zlnt_runtime_dyna_a429568d5be8( t140 ).
    DATA(t207) = CAST zlnt_runtime_dyna_a429568d5be8( t159 ).
    DATA(t208) = CAST zlnt_runtime_arra_c22708faf2e3( t162 ).
    t205 = zcl_lnt_st_combi_module=>seq( i_first = t206 i_second = t207 i_rest = t208 ).
    t139 = t205.
    IF t139 IS BOUND.
      CREATE OBJECT t138.
      t138->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t209 TYPE REF TO object.
      t209 = t139.
      t138->oval = t209.
    ENDIF.
    APPEND t138 TO t137->items.
    DATA t210 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t211) = CAST zlnt_runtime_dyna_a429568d5be8( t128 ).
    DATA(t212) = CAST zlnt_runtime_dyna_a429568d5be8( t131 ).
    DATA(t213) = CAST zlnt_runtime_arra_c22708faf2e3( t135 ).
    t210 = zcl_lnt_st_combi_module=>alt_prio( i_first = t211 i_second = t212 i_rest = t213 ).
    t127 = t210.
    IF t127 IS BOUND.
      CREATE OBJECT t126.
      t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t214 TYPE REF TO object.
      t214 = t127.
      t126->oval = t214.
    ENDIF.
    APPEND t126 TO t125->items.
    DATA(t215) = CAST zlnt_runtime_arra_c22708faf2e3( t123 ).
    DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t216.
    DATA t217 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t217.
    DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t218.
    DATA(t219) = CAST zif_lnt_statement_runnable( t70 ).
    IF t219 IS BOUND.
      CREATE OBJECT t218.
      t218->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t220 TYPE REF TO object.
      t220 = t219.
      t218->oval = t220.
    ENDIF.
    t217 = zcl_lnt_st_combi_module=>opt_prio( i_first = t218 ).
    IF t217 IS BOUND.
      CREATE OBJECT t216.
      t216->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t221 TYPE REF TO object.
      t221 = t217.
      t216->oval = t221.
    ENDIF.
    APPEND t216 TO t215->items.
    DATA(t222) = CAST zlnt_runtime_arra_c22708faf2e3( t123 ).
    DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t223.
    DATA t224 TYPE REF TO zif_lnt_statement_runnable.
    DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t226) = |READ-ONLY|.
    CREATE OBJECT t225.
    t225->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t225->sval = t226.
    t224 = zcl_lnt_st_combi_module=>opt_prio( i_first = t225 ).
    IF t224 IS BOUND.
      CREATE OBJECT t223.
      t223->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
      DATA t227 TYPE REF TO object.
      t227 = t224.
      t223->oval = t227.
    ENDIF.
    APPEND t223 TO t222->items.
    DATA t228 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t229) = CAST zlnt_runtime_dyna_a429568d5be8( t113 ).
    DATA(t230) = CAST zlnt_runtime_dyna_a429568d5be8( t116 ).
    DATA(t231) = CAST zlnt_runtime_arra_c22708faf2e3( t123 ).
    t228 = zcl_lnt_st_combi_module=>seq( i_first = t229 i_second = t230 i_rest = t231 ).
    t112 = t228.
    t111 = t112.
    DATA(t232) = CAST zif_lnt_statement_runnable( t111 ).
    result = t232.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d336_e416d8dcf33c.
  ENDMETHOD.
ENDCLASS.
