* TS: src/rules/parser_error.ts:14:1 ParserError
CLASS zcl_lnt_parser_error DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_parser_error_conf.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS in_in_sr_rl_prs_err_ts_prs_err IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_parser_error.
    METHODS gt_cn_in_sr_rl_pr_er_ts_pr_err RETURNING VALUE(result) TYPE REF TO zcl_lnt_parser_error_conf.
    METHODS st_cn_in_sr_rl_pr_er_ts_pr_err IMPORTING i_conf TYPE REF TO zcl_lnt_parser_error_conf.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_parser_error IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_parser_error_conf( ).
    me->conf = t1.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA(t2) = |parser_error|.
    DATA(t3) = |Parser error|.
    DATA(t4) = |Checks for syntax not recognized by abaplint.|.
    DATA t5 TYPE c LENGTH 1.
    CLEAR t5.
    t5 = cl_abap_conv_in_ce=>uccpi( 10 ).
    CONCATENATE t4 t5 INTO t4 RESPECTING BLANKS.
    DATA t6 TYPE c LENGTH 1.
    CLEAR t6.
    t6 = cl_abap_conv_in_ce=>uccpi( 10 ).
    CONCATENATE t4 t6 INTO t4 RESPECTING BLANKS.
    t4 = t4 && |See recognized syntax at https://syntax.abaplint.org|.
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t10.
    DATA(t11) = abap_true.
    IF t11 = abap_true.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t14.
      t13 = t14.
      DATA(t15) = t13.
      DATA(t16) = |Syntax|.
      APPEND t16 TO t15->items.
      DATA(t17) = t13.
      DATA(t18) = |SingleFile|.
      APPEND t18 TO t17->items.
      DATA(t19) = t13.
      t12 = t19.
      t10 = t12.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t20.
      t10 = t20.
    ENDIF.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t22.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t3 i_short_description = t4 i_bad_example = t7 i_good_example = t8 i_extended_information = t9 i_tags = t10 i_pragma = t21 i_pseudo_comment = t22 ).
    result = t1.

  ENDMETHOD.

  METHOD in_in_sr_rl_prs_err_ts_prs_err.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DATA(t3) = me.
    result = t3.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_pr_er_ts_pr_err.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_pr_er_ts_pr_err.
    DATA(t1) = i_conf.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/parser_error.ts:38|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = VALUE i( ).
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = t1.
    t5 = t6->get_parsing_issues( ).
    DATA t7 TYPE REF TO zcl_lnt_issue.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
    LOOP AT t5->items INTO t8.
      t7 ?= t8.
      DATA(t9) = t2.
      DATA(t10) = t7.
      APPEND t10 TO t9->items.
    ENDLOOP.
    DATA t11 TYPE i.
    DATA(t12) = t2.
    t11 = lines( t12->items ).
    t4 = t11.
    DATA t13 TYPE abap_bool.
    DATA(t14) = t1.
    t13 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_abap_object ).
    IF t13 = abap_true.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t16 TYPE REF TO zcl_lnt_abap_object.
      DATA t17 TYPE REF TO zcl_lnt_abap_object.
      DATA(t18) = t1.
      DATA t19 TYPE REF TO object.
      t19 = t18.
      t17 ?= t19.
      t16 = t17.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t21) = t16.
      t20 = t21->parsed.
      t15 = t20.
      DATA t22 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t22.
      DATA t23 TYPE REF TO object.
      CLEAR t23.
      LOOP AT t15->items INTO t23.
        t22 ?= t23.
        DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t25 TYPE REF TO zcl_lnt_abap_file.
        DATA(t26) = t22.
        t25 = t26.
        DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t28) = t25.
        t27 = t28->statements.
        t24 = t27.
        DATA t29 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t29.
        DATA t30 TYPE REF TO object.
        CLEAR t30.
        LOOP AT t24->items INTO t30.
          t29 ?= t30.
          DATA t31 TYPE abap_bool.
          DATA t32 TYPE REF TO zif_lnt_statement.
          DATA(t33) = t29.
          t32 = t33->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t31 = xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_unknown ).
          IF t31 = abap_true.
            DATA t34 TYPE abap_bool.
            DATA t35 TYPE i.
            DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t37) = t29.
            t36 = t37->get_tokens( ).
            t35 = lines( t36->items ).
            DATA(t38) = CONV i( zcl_lnt_sttmnt_prsr_mdl=>statement_max_tokens ).
            t34 = xsdbool( t35 > t38 ).
            IF t34 = abap_true.
              DATA t39 TYPE string.
              DATA(t40) = |Statement too long, refactor statement|.
              t39 = t40.
              DATA t41 TYPE REF TO zcl_lnt_issue.
              CLEAR t41.
              DATA t42 TYPE REF TO zcl_lnt_issue.
              CLEAR t42.
              DATA(t43) = t22.
              DATA t44 TYPE REF TO zcl_lnt_abstract_token.
              DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t46) = t29.
              t45 = t46->get_tokens( ).
              DATA t47 TYPE REF TO object.
              CLEAR t47.
              READ TABLE t45->items INDEX 1 INTO t47.
              t44 ?= t47.
              DATA(t48) = t39.
              DATA(t49) = VALUE string( ).
              DATA t50 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t50.
              DATA(t51) = |parser_error|.
              DATA(t52) = |Parser error|.
              DATA(t53) = |Checks for syntax not recognized by abaplint.|.
              DATA t54 TYPE c LENGTH 1.
              CLEAR t54.
              t54 = cl_abap_conv_in_ce=>uccpi( 10 ).
              CONCATENATE t53 t54 INTO t53 RESPECTING BLANKS.
              DATA t55 TYPE c LENGTH 1.
              CLEAR t55.
              t55 = cl_abap_conv_in_ce=>uccpi( 10 ).
              CONCATENATE t53 t55 INTO t53 RESPECTING BLANKS.
              t53 = t53 && |See recognized syntax at https://syntax.abaplint.org|.
              DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t56.
              DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t57.
              DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t58.
              DATA t59 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t59.
              DATA(t60) = abap_true.
              IF t60 = abap_true.
                DATA t61 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t62 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t63 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CREATE OBJECT t63.
                t62 = t63.
                DATA(t64) = t62.
                DATA(t65) = |Syntax|.
                APPEND t65 TO t64->items.
                DATA(t66) = t62.
                DATA(t67) = |SingleFile|.
                APPEND t67 TO t66->items.
                DATA(t68) = t62.
                t61 = t68.
                t59 = t61.
              ELSE.
                DATA t69 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t69.
                t59 = t69.
              ENDIF.
              DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t70.
              DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t71.
              t50 = NEW zcl_lnt_irule_metadata( i_key = t51 i_title = t52 i_short_description = t53 i_bad_example = t56 i_good_example = t57 i_extended_information = t58 i_tags = t59 i_pragma = t70 i_pseudo_comment = t71 ).
              t49 = t50->key.
              DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t73) = me->conf.
              t72 = t73->severity.
              DATA t74 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t74.
              t42 = zcl_lnt_issue=>at_token( i_file = t43 i_token = t44 i_message_26cb = t48 i_key = t49 i_severity = t72 i_fix = t74 ).
              t41 = t42.
              DATA(t75) = t2.
              DATA(t76) = t41.
              APPEND t76 TO t75->items.
            ELSE.
              DATA t77 TYPE REF TO zcl_lnt_abstract_token.
              DATA t78 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t79) = t29.
              t78 = t79->get_first_token( ).
              t77 = t78.
              DATA t80 TYPE string.
              DATA t81 TYPE string.
              DATA t82 TYPE string.
              DATA(t83) = |Statement does not exist in the configured ABAP version(or a|.
              t83 = t83 && | parser error), "|.
              DATA t84 TYPE string.
              DATA t85 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t86) = t77.
              t85 = t86.
              DATA t87 TYPE string.
              DATA(t88) = t85.
              t87 = t88->str.
              t84 = t87.
              DATA(t89) = strlen( t83 ).
              t82 = |{ t83 }{ t84 }|.
              DATA(t90) = |"|.
              DATA(t91) = strlen( t82 ).
              t81 = |{ t82 }{ t90 }|.
              t80 = t81.
              DATA t92 TYPE REF TO zcl_lnt_issue.
              CLEAR t92.
              DATA t93 TYPE REF TO zcl_lnt_issue.
              CLEAR t93.
              DATA(t94) = t22.
              DATA(t95) = t29.
              DATA(t96) = t80.
              DATA(t97) = VALUE string( ).
              DATA t98 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t98.
              DATA(t99) = |parser_error|.
              DATA(t100) = |Parser error|.
              DATA(t101) = |Checks for syntax not recognized by abaplint.|.
              DATA t102 TYPE c LENGTH 1.
              CLEAR t102.
              t102 = cl_abap_conv_in_ce=>uccpi( 10 ).
              CONCATENATE t101 t102 INTO t101 RESPECTING BLANKS.
              DATA t103 TYPE c LENGTH 1.
              CLEAR t103.
              t103 = cl_abap_conv_in_ce=>uccpi( 10 ).
              CONCATENATE t101 t103 INTO t101 RESPECTING BLANKS.
              t101 = t101 && |See recognized syntax at https://syntax.abaplint.org|.
              DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t104.
              DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t105.
              DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t106.
              DATA t107 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t107.
              DATA(t108) = abap_true.
              IF t108 = abap_true.
                DATA t109 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t110 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t111 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CREATE OBJECT t111.
                t110 = t111.
                DATA(t112) = t110.
                DATA(t113) = |Syntax|.
                APPEND t113 TO t112->items.
                DATA(t114) = t110.
                DATA(t115) = |SingleFile|.
                APPEND t115 TO t114->items.
                DATA(t116) = t110.
                t109 = t116.
                t107 = t109.
              ELSE.
                DATA t117 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t117.
                t107 = t117.
              ENDIF.
              DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t118.
              DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t119.
              t98 = NEW zcl_lnt_irule_metadata( i_key = t99 i_title = t100 i_short_description = t101 i_bad_example = t104 i_good_example = t105 i_extended_information = t106 i_tags = t107 i_pragma = t118 i_pseudo_comment = t119 ).
              t97 = t98->key.
              DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t121) = me->conf.
              t120 = t121->severity.
              DATA t122 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t122.
              DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t123.
              t93 = zcl_lnt_issue=>at_statement( i_file = t94 i_statement = t95 i_message_26cb = t96 i_key = t97 i_severity = t120 i_fix = t122 i_alternative_fixes = t123 ).
              t92 = t93.
              DATA(t124) = t2.
              DATA(t125) = t92.
              APPEND t125 TO t124->items.
            ENDIF.
          ELSE.
            DATA t126 TYPE abap_bool.
            DATA t127 TYPE REF TO zif_lnt_statement.
            DATA(t128) = t29.
            t127 = t128->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
            t126 = xsdbool( t127 IS BOUND AND t127 IS INSTANCE OF zcl_lnt_macro_recursion ).
            IF t126 = abap_true.
              DATA t129 TYPE REF TO zcl_lnt_abstract_token.
              DATA t130 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t131) = t29.
              t130 = t131->get_first_token( ).
              t129 = t130.
              DATA t132 TYPE string.
              DATA t133 TYPE string.
              DATA t134 TYPE string.
              DATA(t135) = |Macro recursion detected involving "|.
              DATA t136 TYPE string.
              DATA t137 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t138) = t129.
              t137 = t138.
              DATA t139 TYPE string.
              DATA(t140) = t137.
              t139 = t140->str.
              t136 = t139.
              DATA(t141) = strlen( t135 ).
              t134 = |{ t135 }{ t136 }|.
              DATA(t142) = |"|.
              DATA(t143) = strlen( t134 ).
              t133 = |{ t134 }{ t142 }|.
              t132 = t133.
              DATA(t144) = t2.
              DATA t145 TYPE REF TO zcl_lnt_issue.
              CLEAR t145.
              DATA(t146) = t22.
              DATA(t147) = t29.
              DATA(t148) = t132.
              DATA(t149) = VALUE string( ).
              DATA t150 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t150.
              DATA(t151) = |parser_error|.
              DATA(t152) = |Parser error|.
              DATA(t153) = |Checks for syntax not recognized by abaplint.|.
              DATA t154 TYPE c LENGTH 1.
              CLEAR t154.
              t154 = cl_abap_conv_in_ce=>uccpi( 10 ).
              CONCATENATE t153 t154 INTO t153 RESPECTING BLANKS.
              DATA t155 TYPE c LENGTH 1.
              CLEAR t155.
              t155 = cl_abap_conv_in_ce=>uccpi( 10 ).
              CONCATENATE t153 t155 INTO t153 RESPECTING BLANKS.
              t153 = t153 && |See recognized syntax at https://syntax.abaplint.org|.
              DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t156.
              DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t157.
              DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t158.
              DATA t159 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t159.
              DATA(t160) = abap_true.
              IF t160 = abap_true.
                DATA t161 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t162 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t163 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CREATE OBJECT t163.
                t162 = t163.
                DATA(t164) = t162.
                DATA(t165) = |Syntax|.
                APPEND t165 TO t164->items.
                DATA(t166) = t162.
                DATA(t167) = |SingleFile|.
                APPEND t167 TO t166->items.
                DATA(t168) = t162.
                t161 = t168.
                t159 = t161.
              ELSE.
                DATA t169 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t169.
                t159 = t169.
              ENDIF.
              DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t170.
              DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t171.
              t150 = NEW zcl_lnt_irule_metadata( i_key = t151 i_title = t152 i_short_description = t153 i_bad_example = t156 i_good_example = t157 i_extended_information = t158 i_tags = t159 i_pragma = t170 i_pseudo_comment = t171 ).
              t149 = t150->key.
              DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t173) = me->conf.
              t172 = t173->severity.
              DATA t174 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t174.
              DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t175.
              t145 = zcl_lnt_issue=>at_statement( i_file = t146 i_statement = t147 i_message_26cb = t148 i_key = t149 i_severity = t172 i_fix = t174 i_alternative_fixes = t175 ).
              APPEND t145 TO t144->items.
            ENDIF.
          ENDIF.
        ENDLOOP.
        DATA(t176) = VALUE abap_bool( ).
        DATA t177 TYPE REF TO zcl_lnt_abap_release.
        DATA t178 TYPE REF TO zif_lnt_configuration.
        DATA(t179) = me->reg.
        t178 = t179->get_config( ).
        t177 = t178->get_release( ).
        DATA t180 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t180.
        DATA t181 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t181.
        DATA t182 TYPE REF TO zlnt_runtime_map__201f3699a39e.
        CLEAR t182.
        IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
          zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
        ENDIF.
        t182 = zcl_lnt_version_module=>release_b8cd.
        DATA(t183) = |v700|.
        t181 = t182->get( p0 = t183 ).
        t180 = t181.
        t176 = xsdbool( t177 = t180 ).
        IF t176 = abap_true.
          DATA t184 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t185 TYPE REF TO zcl_lnt_abap_file.
          DATA(t186) = t22.
          t185 = t186.
          DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t188) = t185.
          t187 = t188->statements.
          t184 = t187.
          DATA t189 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t189.
          DATA t190 TYPE REF TO object.
          CLEAR t190.
          LOOP AT t184->items INTO t190.
            t189 ?= t190.
            DATA t191 TYPE abap_bool.
            DATA t192 TYPE i.
            DATA t193 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t194) = t189.
            t193 = t194->get_pragmas( ).
            t192 = lines( t193->items ).
            DATA(t195) = 0.
            t191 = xsdbool( t192 > t195 ).
            IF t191 = abap_true.
              DATA t196 TYPE string.
              DATA(t197) = |Pragmas not allowed in v700|.
              t196 = t197.
              DATA t198 TYPE REF TO zcl_lnt_issue.
              CLEAR t198.
              DATA t199 TYPE REF TO zcl_lnt_issue.
              CLEAR t199.
              DATA(t200) = t22.
              DATA(t201) = t189.
              DATA(t202) = t196.
              DATA(t203) = VALUE string( ).
              DATA t204 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t204.
              DATA(t205) = |parser_error|.
              DATA(t206) = |Parser error|.
              DATA(t207) = |Checks for syntax not recognized by abaplint.|.
              DATA t208 TYPE c LENGTH 1.
              CLEAR t208.
              t208 = cl_abap_conv_in_ce=>uccpi( 10 ).
              CONCATENATE t207 t208 INTO t207 RESPECTING BLANKS.
              DATA t209 TYPE c LENGTH 1.
              CLEAR t209.
              t209 = cl_abap_conv_in_ce=>uccpi( 10 ).
              CONCATENATE t207 t209 INTO t207 RESPECTING BLANKS.
              t207 = t207 && |See recognized syntax at https://syntax.abaplint.org|.
              DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t210.
              DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t211.
              DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t212.
              DATA t213 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t213.
              DATA(t214) = abap_true.
              IF t214 = abap_true.
                DATA t215 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t216 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t217 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CREATE OBJECT t217.
                t216 = t217.
                DATA(t218) = t216.
                DATA(t219) = |Syntax|.
                APPEND t219 TO t218->items.
                DATA(t220) = t216.
                DATA(t221) = |SingleFile|.
                APPEND t221 TO t220->items.
                DATA(t222) = t216.
                t215 = t222.
                t213 = t215.
              ELSE.
                DATA t223 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t223.
                t213 = t223.
              ENDIF.
              DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t224.
              DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t225.
              t204 = NEW zcl_lnt_irule_metadata( i_key = t205 i_title = t206 i_short_description = t207 i_bad_example = t210 i_good_example = t211 i_extended_information = t212 i_tags = t213 i_pragma = t224 i_pseudo_comment = t225 ).
              t203 = t204->key.
              DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t227) = me->conf.
              t226 = t227->severity.
              DATA t228 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t228.
              DATA t229 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t229.
              t199 = zcl_lnt_issue=>at_statement( i_file = t200 i_statement = t201 i_message_26cb = t202 i_key = t203 i_severity = t226 i_fix = t228 i_alternative_fixes = t229 ).
              t198 = t199.
              DATA(t230) = t2.
              DATA(t231) = t198.
              APPEND t231 TO t230->items.
            ENDIF.
          ENDLOOP.
        ENDIF.
      ENDLOOP.
    ENDIF.
    DATA(t232) = t2.
    result = t232.

  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_parser_error.
    DATA(t3) = t1.
    t2 = me->in_in_sr_rl_prs_err_ts_prs_err( i_reg_f149 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_parser_error_conf( me->gt_cn_in_sr_rl_pr_er_ts_pr_err( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_parser_error_conf( me->gt_cn_in_sr_rl_pr_er_ts_pr_err( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/rules/parser_error.ts:38|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1546_3eceddb8f47f.
  ENDMETHOD.

  METHOD zif_lnt_rule~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_metadata.
    result = me->get_metadata( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_config.
    me->get_config( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~set_config.
    me->set_config( i_conf = i_conf ).
  ENDMETHOD.

  METHOD zif_lnt_rule~initialize.
    result = me->initialize( i_reg_f149 = i_reg_f149 ).
  ENDMETHOD.

  METHOD zif_lnt_rule~run.
    result = me->run( i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_config_value.
    result = me->get_config_value( ).
  ENDMETHOD.
ENDCLASS.
