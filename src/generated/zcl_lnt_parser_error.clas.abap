* TS: src/rules/parser_error.ts:14:1 ParserError
CLASS zcl_lnt_parser_error DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
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
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_parser_error IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_parser_error_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |parser_error|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Parser error|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for syntax not recognized by abaplint.\n\nSee recognize|.
    t7 = t7 && |d syntax at https://syntax.abaplint.org|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t13.
      t12 = t13.
      DATA(t14) = t12.
      DATA(t15) = |Syntax|.
      t14->load( ).
      APPEND t15 TO t14->items.
      t14->save( ).
      DATA(t16) = t12.
      DATA(t17) = |SingleFile|.
      t16->load( ).
      APPEND t17 TO t16->items.
      t16->save( ).
      DATA(t18) = t12.
      t11 = t18.
      t9 = t11.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t19.
      t9 = t19.
    ENDIF.
    t8 = t9.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    t22 = t23.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    t26 = t27.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    t28 = t29.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t20 i_good_example = t22 i_extended_information = t24 i_tags = t8 i_pragma = t26 i_pseudo_comment = t28 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t30 ).
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t31 ).
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t32 ).
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t33 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t34) = |key|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    DATA(t36) = |title|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    ENDIF.
    DATA(t38) = |shortDescription|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    DATA(t40) = |tags|.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t40 p1 = t41 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD in_in_sr_rl_prs_err_ts_prs_err.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA(t3) = me.
    result = t3.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_pr_er_ts_pr_err.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_pr_er_ts_pr_err.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = VALUE i( ).
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA(t6) = t1.
    t5 = t6->get_parsing_issues( ).
    DATA t7 TYPE REF TO zcl_lnt_issue.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
    DATA(t9) = VALUE i( ).
    DO.
      t5->load( ).
      IF t9 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t5->items INDEX t9 + 1 INTO t8.
      t9 = t9 + 1.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      CLEAR t7.
      IF t8 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t10 ?= t8.
        DATA t11 TYPE REF TO object.
        CLEAR t11.
        t11 = t10->as_ref( ).
        t7 ?= t11.
      ELSE.
        t7 ?= t8.
      ENDIF.
      DATA(t12) = t2.
      DATA(t13) = t7.
      t12->load( ).
      APPEND t13 TO t12->items.
      t12->save( ).
    ENDDO.
    DATA(t14) = VALUE i( ).
    DATA(t15) = t2.
    t15->load( ).
    t14 = lines( t15->items ).
    t4 = t14.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = t1.
    t16 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_abap_object ).
    IF t16 = abap_true.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t18.
      DATA t19 TYPE REF TO zcl_lnt_abap_object.
      CLEAR t19.
      DATA t20 TYPE REF TO zcl_lnt_abap_object.
      CLEAR t20.
      DATA(t21) = t1.
      DATA t22 TYPE REF TO object.
      CLEAR t22.
      t22 = t21.
      t20 ?= t22.
      t19 = t20.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t23.
      DATA(t24) = t19.
      t23 = t24->parsed.
      t18 = t23.
      DATA t25 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t25.
      DATA t26 TYPE REF TO object.
      CLEAR t26.
      DATA(t27) = VALUE i( ).
      DO.
        t18->load( ).
        IF t27 >= lines( t18->items ).
          EXIT.
        ENDIF.
        CLEAR t26.
        READ TABLE t18->items INDEX t27 + 1 INTO t26.
        t27 = t27 + 1.
        DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t28.
        CLEAR t25.
        IF t26 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t28 ?= t26.
          DATA t29 TYPE REF TO object.
          CLEAR t29.
          t29 = t28->as_ref( ).
          t25 ?= t29.
        ELSE.
          t25 ?= t26.
        ENDIF.
        DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t30.
        DATA t31 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t31.
        DATA(t32) = t25.
        t31 = t32.
        DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t33.
        DATA(t34) = t31.
        t33 = t34->statements.
        t30 = t33.
        DATA t35 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t35.
        DATA t36 TYPE REF TO object.
        CLEAR t36.
        DATA(t37) = VALUE i( ).
        DO.
          t30->load( ).
          IF t37 >= lines( t30->items ).
            EXIT.
          ENDIF.
          CLEAR t36.
          READ TABLE t30->items INDEX t37 + 1 INTO t36.
          t37 = t37 + 1.
          DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t38.
          CLEAR t35.
          IF t36 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t38 ?= t36.
            DATA t39 TYPE REF TO object.
            CLEAR t39.
            t39 = t38->as_ref( ).
            t35 ?= t39.
          ELSE.
            t35 ?= t36.
          ENDIF.
          DATA(t40) = VALUE abap_bool( ).
          DATA t41 TYPE REF TO zif_lnt_statement.
          CLEAR t41.
          DATA(t42) = t35.
          t41 = t42->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t40 = xsdbool( t41 IS BOUND AND t41 IS INSTANCE OF zcl_lnt_unknown ).
          IF t40 = abap_true.
            DATA(t43) = VALUE abap_bool( ).
            DATA(t44) = VALUE i( ).
            DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t45.
            DATA(t46) = t35.
            t45 = t46->get_tokens( ).
            t45->load( ).
            t44 = lines( t45->items ).
            DATA(t47) = CONV i( zcl_lnt_sttmnt_prsr_mdl=>statement_max_tokens ).
            t43 = xsdbool( t44 > t47 ).
            IF t43 = abap_true.
              DATA(t48) = VALUE string( ).
              DATA(t49) = |Statement too long, refactor statement|.
              t48 = t49.
              DATA t50 TYPE REF TO zcl_lnt_issue.
              CLEAR t50.
              DATA t51 TYPE REF TO zcl_lnt_issue.
              CLEAR t51.
              DATA(t52) = t25.
              DATA t53 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t53.
              DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t54.
              DATA(t55) = t35.
              t54 = t55->get_tokens( ).
              DATA t56 TYPE REF TO object.
              CLEAR t56.
              t54->load( ).
              CLEAR t56.
              READ TABLE t54->items INDEX 1 INTO t56.
              DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t57.
              CLEAR t53.
              IF t56 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t57 ?= t56.
                DATA t58 TYPE REF TO object.
                CLEAR t58.
                t58 = t57->as_ref( ).
                t53 ?= t58.
              ELSE.
                t53 ?= t56.
              ENDIF.
              DATA(t59) = t48.
              DATA(t60) = VALUE string( ).
              DATA t61 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t61.
              DATA(t62) = VALUE string( ).
              DATA(t63) = |parser_error|.
              t62 = t63.
              DATA(t64) = VALUE string( ).
              DATA(t65) = |Parser error|.
              t64 = t65.
              DATA(t66) = VALUE string( ).
              DATA(t67) = |Checks for syntax not recognized by abaplint.\n\nSee recognize|.
              t67 = t67 && |d syntax at https://syntax.abaplint.org|.
              t66 = t67.
              DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t68.
              DATA t69 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t69.
              DATA(t70) = abap_true.
              IF t70 = abap_true.
                DATA t71 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t71.
                DATA t72 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t72.
                DATA t73 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t73.
                CREATE OBJECT t73.
                t72 = t73.
                DATA(t74) = t72.
                DATA(t75) = |Syntax|.
                t74->load( ).
                APPEND t75 TO t74->items.
                t74->save( ).
                DATA(t76) = t72.
                DATA(t77) = |SingleFile|.
                t76->load( ).
                APPEND t77 TO t76->items.
                t76->save( ).
                DATA(t78) = t72.
                t71 = t78.
                t69 = t71.
              ELSE.
                DATA t79 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t79.
                t69 = t79.
              ENDIF.
              t68 = t69.
              DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t80.
              DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t81.
              t80 = t81.
              DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t82.
              DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t83.
              t82 = t83.
              DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t84.
              DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t85.
              t84 = t85.
              DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t86.
              DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t87.
              t86 = t87.
              DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t88.
              DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t89.
              t88 = t89.
              t61 = NEW zcl_lnt_irule_metadata( i_key = t62 i_title = t64 i_short_description = t66 i_bad_example = t80 i_good_example = t82 i_extended_information = t84 i_tags = t68 i_pragma = t86 i_pseudo_comment = t88 ).
              CREATE OBJECT t61->zlnt_view_ownkeys_b0e8086400eb.
              t61->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t90.
              IF t61->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t90 ).
              ENDIF.
              DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t91.
              IF t61->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t91 ).
              ENDIF.
              DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t92.
              IF t61->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t92 ).
              ENDIF.
              DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t93.
              IF t61->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t93 ).
              ENDIF.
              CREATE OBJECT t61->zlnt_json_ownkeys_70e5fd461788.
              t61->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t94) = |key|.
              DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t95.
              IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t94 p1 = t95 ).
              ENDIF.
              DATA(t96) = |title|.
              DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t97.
              IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t96 p1 = t97 ).
              ENDIF.
              DATA(t98) = |shortDescription|.
              DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t99.
              IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t98 p1 = t99 ).
              ENDIF.
              DATA(t100) = |tags|.
              DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t101.
              IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = t100 p1 = t101 ).
              ENDIF.
              t60 = t61->key.
              DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t102.
              DATA(t103) = me->conf.
              t102 = t103->zlnt_view_read_sr_15c06369f827( ).
              DATA t104 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t104.
              t51 = zcl_lnt_issue=>at_token( i_file = t52 i_token = t53 i_message_26cb = t59 i_key = t60 i_severity = t102 i_fix = t104 ).
              t50 = t51.
              DATA(t105) = t2.
              DATA(t106) = t50.
              t105->load( ).
              APPEND t106 TO t105->items.
              t105->save( ).
            ELSE.
              DATA t107 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t107.
              DATA t108 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t108.
              DATA(t109) = t35.
              t108 = t109->get_first_token( ).
              t107 = t108.
              DATA(t110) = VALUE string( ).
              DATA(t111) = VALUE string( ).
              DATA(t112) = VALUE string( ).
              DATA(t113) = |Statement does not exist in the configured ABAP version(or a|.
              t113 = t113 && | parser error), "|.
              DATA(t114) = VALUE string( ).
              DATA t115 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t115.
              DATA(t116) = t107.
              t115 = t116.
              DATA(t117) = VALUE string( ).
              DATA(t118) = t115.
              t117 = t118->str.
              t114 = t117.
              DATA(t119) = strlen( t113 ).
              t112 = |{ t113 }{ t114 }|.
              DATA(t120) = |"|.
              DATA(t121) = strlen( t112 ).
              t111 = |{ t112 }{ t120 }|.
              t110 = t111.
              DATA t122 TYPE REF TO zcl_lnt_issue.
              CLEAR t122.
              DATA t123 TYPE REF TO zcl_lnt_issue.
              CLEAR t123.
              DATA(t124) = t25.
              DATA(t125) = t35.
              DATA(t126) = t110.
              DATA(t127) = VALUE string( ).
              DATA t128 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t128.
              DATA(t129) = VALUE string( ).
              DATA(t130) = |parser_error|.
              t129 = t130.
              DATA(t131) = VALUE string( ).
              DATA(t132) = |Parser error|.
              t131 = t132.
              DATA(t133) = VALUE string( ).
              DATA(t134) = |Checks for syntax not recognized by abaplint.\n\nSee recognize|.
              t134 = t134 && |d syntax at https://syntax.abaplint.org|.
              t133 = t134.
              DATA t135 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t135.
              DATA t136 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t136.
              DATA(t137) = abap_true.
              IF t137 = abap_true.
                DATA t138 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t138.
                DATA t139 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t139.
                DATA t140 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t140.
                CREATE OBJECT t140.
                t139 = t140.
                DATA(t141) = t139.
                DATA(t142) = |Syntax|.
                t141->load( ).
                APPEND t142 TO t141->items.
                t141->save( ).
                DATA(t143) = t139.
                DATA(t144) = |SingleFile|.
                t143->load( ).
                APPEND t144 TO t143->items.
                t143->save( ).
                DATA(t145) = t139.
                t138 = t145.
                t136 = t138.
              ELSE.
                DATA t146 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t146.
                t136 = t146.
              ENDIF.
              t135 = t136.
              DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t147.
              DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t148.
              t147 = t148.
              DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t149.
              DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t150.
              t149 = t150.
              DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t151.
              DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t152.
              t151 = t152.
              DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t153.
              DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t154.
              t153 = t154.
              DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t155.
              DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t156.
              t155 = t156.
              t128 = NEW zcl_lnt_irule_metadata( i_key = t129 i_title = t131 i_short_description = t133 i_bad_example = t147 i_good_example = t149 i_extended_information = t151 i_tags = t135 i_pragma = t153 i_pseudo_comment = t155 ).
              CREATE OBJECT t128->zlnt_view_ownkeys_b0e8086400eb.
              t128->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t157.
              IF t128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t157 ).
              ENDIF.
              DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t158.
              IF t128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t158 ).
              ENDIF.
              DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t159.
              IF t128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t159 ).
              ENDIF.
              DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t160.
              IF t128->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t160 ).
              ENDIF.
              CREATE OBJECT t128->zlnt_json_ownkeys_70e5fd461788.
              t128->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t161) = |key|.
              DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t162.
              IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = t161 p1 = t162 ).
              ENDIF.
              DATA(t163) = |title|.
              DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t164.
              IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = t163 p1 = t164 ).
              ENDIF.
              DATA(t165) = |shortDescription|.
              DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t166.
              IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = t165 p1 = t166 ).
              ENDIF.
              DATA(t167) = |tags|.
              DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t168.
              IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = t167 p1 = t168 ).
              ENDIF.
              t127 = t128->key.
              DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t169.
              DATA(t170) = me->conf.
              t169 = t170->zlnt_view_read_sr_15c06369f827( ).
              DATA t171 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t171.
              DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t172.
              t123 = zcl_lnt_issue=>at_statement( i_file = t124 i_statement = t125 i_message_26cb = t126 i_key = t127 i_severity = t169 i_fix = t171 i_alternative_fixes = t172 ).
              t122 = t123.
              DATA(t173) = t2.
              DATA(t174) = t122.
              t173->load( ).
              APPEND t174 TO t173->items.
              t173->save( ).
            ENDIF.
          ELSE.
            DATA(t175) = VALUE abap_bool( ).
            DATA t176 TYPE REF TO zif_lnt_statement.
            CLEAR t176.
            DATA(t177) = t35.
            t176 = t177->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
            t175 = xsdbool( t176 IS BOUND AND t176 IS INSTANCE OF zcl_lnt_macro_recursion ).
            IF t175 = abap_true.
              DATA t178 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t178.
              DATA t179 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t179.
              DATA(t180) = t35.
              t179 = t180->get_first_token( ).
              t178 = t179.
              DATA(t181) = VALUE string( ).
              DATA(t182) = VALUE string( ).
              DATA(t183) = VALUE string( ).
              DATA(t184) = |Macro recursion detected involving "|.
              DATA(t185) = VALUE string( ).
              DATA t186 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t186.
              DATA(t187) = t178.
              t186 = t187.
              DATA(t188) = VALUE string( ).
              DATA(t189) = t186.
              t188 = t189->str.
              t185 = t188.
              DATA(t190) = strlen( t184 ).
              t183 = |{ t184 }{ t185 }|.
              DATA(t191) = |"|.
              DATA(t192) = strlen( t183 ).
              t182 = |{ t183 }{ t191 }|.
              t181 = t182.
              DATA(t193) = t2.
              DATA t194 TYPE REF TO zcl_lnt_issue.
              CLEAR t194.
              DATA(t195) = t25.
              DATA(t196) = t35.
              DATA(t197) = t181.
              DATA(t198) = VALUE string( ).
              DATA t199 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t199.
              DATA(t200) = VALUE string( ).
              DATA(t201) = |parser_error|.
              t200 = t201.
              DATA(t202) = VALUE string( ).
              DATA(t203) = |Parser error|.
              t202 = t203.
              DATA(t204) = VALUE string( ).
              DATA(t205) = |Checks for syntax not recognized by abaplint.\n\nSee recognize|.
              t205 = t205 && |d syntax at https://syntax.abaplint.org|.
              t204 = t205.
              DATA t206 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t206.
              DATA t207 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t207.
              DATA(t208) = abap_true.
              IF t208 = abap_true.
                DATA t209 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t209.
                DATA t210 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t210.
                DATA t211 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t211.
                CREATE OBJECT t211.
                t210 = t211.
                DATA(t212) = t210.
                DATA(t213) = |Syntax|.
                t212->load( ).
                APPEND t213 TO t212->items.
                t212->save( ).
                DATA(t214) = t210.
                DATA(t215) = |SingleFile|.
                t214->load( ).
                APPEND t215 TO t214->items.
                t214->save( ).
                DATA(t216) = t210.
                t209 = t216.
                t207 = t209.
              ELSE.
                DATA t217 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t217.
                t207 = t217.
              ENDIF.
              t206 = t207.
              DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t218.
              DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t219.
              t218 = t219.
              DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t220.
              DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t221.
              t220 = t221.
              DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t222.
              DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t223.
              t222 = t223.
              DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t224.
              DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t225.
              t224 = t225.
              DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t226.
              DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t227.
              t226 = t227.
              t199 = NEW zcl_lnt_irule_metadata( i_key = t200 i_title = t202 i_short_description = t204 i_bad_example = t218 i_good_example = t220 i_extended_information = t222 i_tags = t206 i_pragma = t224 i_pseudo_comment = t226 ).
              CREATE OBJECT t199->zlnt_view_ownkeys_b0e8086400eb.
              t199->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t228.
              IF t199->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t199->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t228 ).
              ENDIF.
              DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t229.
              IF t199->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t199->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t229 ).
              ENDIF.
              DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t230.
              IF t199->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t199->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t230 ).
              ENDIF.
              DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t231.
              IF t199->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t199->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t231 ).
              ENDIF.
              CREATE OBJECT t199->zlnt_json_ownkeys_70e5fd461788.
              t199->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t232) = |key|.
              DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t233.
              IF t199->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t199->zlnt_json_ownkeys_70e5fd461788->put( p0 = t232 p1 = t233 ).
              ENDIF.
              DATA(t234) = |title|.
              DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t235.
              IF t199->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t199->zlnt_json_ownkeys_70e5fd461788->put( p0 = t234 p1 = t235 ).
              ENDIF.
              DATA(t236) = |shortDescription|.
              DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t237.
              IF t199->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t199->zlnt_json_ownkeys_70e5fd461788->put( p0 = t236 p1 = t237 ).
              ENDIF.
              DATA(t238) = |tags|.
              DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t239.
              IF t199->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t199->zlnt_json_ownkeys_70e5fd461788->put( p0 = t238 p1 = t239 ).
              ENDIF.
              t198 = t199->key.
              DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t240.
              DATA(t241) = me->conf.
              t240 = t241->zlnt_view_read_sr_15c06369f827( ).
              DATA t242 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t242.
              DATA t243 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t243.
              t194 = zcl_lnt_issue=>at_statement( i_file = t195 i_statement = t196 i_message_26cb = t197 i_key = t198 i_severity = t240 i_fix = t242 i_alternative_fixes = t243 ).
              t193->load( ).
              APPEND t194 TO t193->items.
              t193->save( ).
            ENDIF.
          ENDIF.
        ENDDO.
        DATA(t244) = VALUE abap_bool( ).
        DATA t245 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t245.
        DATA t246 TYPE REF TO zif_lnt_configuration.
        CLEAR t246.
        DATA(t247) = me->reg.
        t246 = t247->get_config( ).
        t245 = t246->get_release( ).
        DATA t248 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t248.
        DATA t249 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t249.
        DATA t250 TYPE REF TO zlnt_runtime_map__201f3699a39e.
        CLEAR t250.
        IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
          zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
        ENDIF.
        t250 = zcl_lnt_version_module=>release_b8cd.
        DATA(t251) = |v700|.
        t249 = t250->get( p0 = t251 ).
        t248 = t249.
        DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t252.
        DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t253.
        CLEAR t252.
        IF t245 IS BOUND.
          DATA t254 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t254.
          DATA t255 TYPE REF TO object.
          CLEAR t255.
          CLEAR t254.
          t255 = t245.
          TRY.
              t252 ?= t255.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t252 IS NOT BOUND.
            TRY.
                t254 ?= t245.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t254 IS BOUND.
              t252 = t254->source( ).
            ENDIF.
            IF t252 IS NOT BOUND.
              CREATE OBJECT t252.
              t252->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t252->oval = t245.
            ENDIF.
          ENDIF.
        ENDIF.
        CLEAR t253.
        IF t248 IS BOUND.
          DATA t256 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t256.
          DATA t257 TYPE REF TO object.
          CLEAR t257.
          CLEAR t256.
          t257 = t248.
          TRY.
              t253 ?= t257.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t253 IS NOT BOUND.
            TRY.
                t256 ?= t248.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t256 IS BOUND.
              t253 = t256->source( ).
            ENDIF.
            IF t253 IS NOT BOUND.
              CREATE OBJECT t253.
              t253->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t253->oval = t248.
            ENDIF.
          ENDIF.
        ENDIF.
        IF t252 IS BOUND.
          t244 = t252->strict_equals( t253 ).
        ELSE.
          t244 = xsdbool( t253 IS NOT BOUND ).
        ENDIF.
        IF t244 = abap_true.
          DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t258.
          DATA t259 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t259.
          DATA(t260) = t25.
          t259 = t260.
          DATA t261 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t261.
          DATA(t262) = t259.
          t261 = t262->statements.
          t258 = t261.
          DATA t263 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t263.
          DATA t264 TYPE REF TO object.
          CLEAR t264.
          DATA(t265) = VALUE i( ).
          DO.
            t258->load( ).
            IF t265 >= lines( t258->items ).
              EXIT.
            ENDIF.
            CLEAR t264.
            READ TABLE t258->items INDEX t265 + 1 INTO t264.
            t265 = t265 + 1.
            DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t266.
            CLEAR t263.
            IF t264 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t266 ?= t264.
              DATA t267 TYPE REF TO object.
              CLEAR t267.
              t267 = t266->as_ref( ).
              t263 ?= t267.
            ELSE.
              t263 ?= t264.
            ENDIF.
            DATA(t268) = VALUE abap_bool( ).
            DATA(t269) = VALUE i( ).
            DATA t270 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t270.
            DATA t271 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t271.
            DATA(t272) = t263.
            t271 = t272.
            DATA t273 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t273.
            DATA(t274) = t271.
            t273 = t274->pragmas.
            t270 = t273.
            t270->load( ).
            t269 = lines( t270->items ).
            DATA(t275) = 0.
            t268 = xsdbool( t269 > t275 ).
            IF t268 = abap_true.
              DATA(t276) = VALUE string( ).
              DATA(t277) = |Pragmas not allowed in v700|.
              t276 = t277.
              DATA t278 TYPE REF TO zcl_lnt_issue.
              CLEAR t278.
              DATA t279 TYPE REF TO zcl_lnt_issue.
              CLEAR t279.
              DATA(t280) = t25.
              DATA(t281) = t263.
              DATA(t282) = t276.
              DATA(t283) = VALUE string( ).
              DATA t284 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t284.
              DATA(t285) = VALUE string( ).
              DATA(t286) = |parser_error|.
              t285 = t286.
              DATA(t287) = VALUE string( ).
              DATA(t288) = |Parser error|.
              t287 = t288.
              DATA(t289) = VALUE string( ).
              DATA(t290) = |Checks for syntax not recognized by abaplint.\n\nSee recognize|.
              t290 = t290 && |d syntax at https://syntax.abaplint.org|.
              t289 = t290.
              DATA t291 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t291.
              DATA t292 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t292.
              DATA(t293) = abap_true.
              IF t293 = abap_true.
                DATA t294 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t294.
                DATA t295 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t295.
                DATA t296 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t296.
                CREATE OBJECT t296.
                t295 = t296.
                DATA(t297) = t295.
                DATA(t298) = |Syntax|.
                t297->load( ).
                APPEND t298 TO t297->items.
                t297->save( ).
                DATA(t299) = t295.
                DATA(t300) = |SingleFile|.
                t299->load( ).
                APPEND t300 TO t299->items.
                t299->save( ).
                DATA(t301) = t295.
                t294 = t301.
                t292 = t294.
              ELSE.
                DATA t302 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t302.
                t292 = t302.
              ENDIF.
              t291 = t292.
              DATA t303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t303.
              DATA t304 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t304.
              t303 = t304.
              DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t305.
              DATA t306 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t306.
              t305 = t306.
              DATA t307 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t307.
              DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t308.
              t307 = t308.
              DATA t309 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t309.
              DATA t310 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t310.
              t309 = t310.
              DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t311.
              DATA t312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t312.
              t311 = t312.
              t284 = NEW zcl_lnt_irule_metadata( i_key = t285 i_title = t287 i_short_description = t289 i_bad_example = t303 i_good_example = t305 i_extended_information = t307 i_tags = t291 i_pragma = t309 i_pseudo_comment = t311 ).
              CREATE OBJECT t284->zlnt_view_ownkeys_b0e8086400eb.
              t284->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t313.
              IF t284->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t284->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t313 ).
              ENDIF.
              DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t314.
              IF t284->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t284->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t314 ).
              ENDIF.
              DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t315.
              IF t284->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t284->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t315 ).
              ENDIF.
              DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t316.
              IF t284->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t284->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t316 ).
              ENDIF.
              CREATE OBJECT t284->zlnt_json_ownkeys_70e5fd461788.
              t284->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t317) = |key|.
              DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t318.
              IF t284->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t284->zlnt_json_ownkeys_70e5fd461788->put( p0 = t317 p1 = t318 ).
              ENDIF.
              DATA(t319) = |title|.
              DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t320.
              IF t284->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t284->zlnt_json_ownkeys_70e5fd461788->put( p0 = t319 p1 = t320 ).
              ENDIF.
              DATA(t321) = |shortDescription|.
              DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t322.
              IF t284->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t284->zlnt_json_ownkeys_70e5fd461788->put( p0 = t321 p1 = t322 ).
              ENDIF.
              DATA(t323) = |tags|.
              DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t324.
              IF t284->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t284->zlnt_json_ownkeys_70e5fd461788->put( p0 = t323 p1 = t324 ).
              ENDIF.
              t283 = t284->key.
              DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t325.
              DATA(t326) = me->conf.
              t325 = t326->zlnt_view_read_sr_15c06369f827( ).
              DATA t327 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t327.
              DATA t328 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t328.
              t279 = zcl_lnt_issue=>at_statement( i_file = t280 i_statement = t281 i_message_26cb = t282 i_key = t283 i_severity = t325 i_fix = t327 i_alternative_fixes = t328 ).
              t278 = t279.
              DATA(t329) = t2.
              DATA(t330) = t278.
              t329->load( ).
              APPEND t330 TO t329->items.
              t329->save( ).
            ENDIF.
          ENDDO.
        ENDIF.
      ENDDO.
    ENDIF.
    DATA(t331) = t2.
    result = t331.

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
    DATA t2 TYPE REF TO zcl_lnt_parser_error_conf.
    CLEAR t2.
    DATA(t3) = t1.
    CLEAR t2.
    IF t3 IS BOUND.
      IF t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t2 ?= t3->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t2 IS NOT BOUND.
        IF t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t4 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t4.
          IF t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t4 ?= t3->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t4->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t2 = NEW zcl_lnt_parser_error_conf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_pr_er_ts_pr_err( i_conf = t2 ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1645_838d4280ff91.
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
