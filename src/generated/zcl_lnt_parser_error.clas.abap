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
    me->conf = NEW zcl_lnt_parser_error_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for syntax not recognized by abaplint.\n\nSee recognize|.
    t7 = t7 && |d syntax at https://syntax.abaplint.org|.
    t6 = t7.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t12.
    t12->load( ).
    APPEND |Syntax| TO t12->items.
    t12->save( ).
    t12->load( ).
    APPEND |SingleFile| TO t12->items.
    t12->save( ).
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |parser_error| i_title = |Parser error| i_short_description = t6 i_bad_example = t20 i_good_example = t22 i_extended_information = t24 i_tags = t12 i_pragma = t26 i_pseudo_comment = t28 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t30 ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t31 ).
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t32 ).
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t33 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t35 ).
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t37 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t39 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t41 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD in_in_sr_rl_prs_err_ts_prs_err.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    result = me.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_pr_er_ts_pr_err.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_pr_er_ts_pr_err.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA(t4) = VALUE i( ).
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t5 = t1->get_parsing_issues( ).
    DATA t7 TYPE REF TO zcl_lnt_issue.
    DATA t8 TYPE REF TO object.
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
      t2->load( ).
      APPEND t7 TO t2->items.
      t2->save( ).
    ENDDO.
    t2->load( ).
    t4 = lines( t2->items ).
    IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_abap_object ) = abap_true.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t20 TYPE REF TO zcl_lnt_abap_object.
      DATA t22 TYPE REF TO object.
      t22 = t1.
      t20 ?= t22.
      t18 = t20->parsed.
      DATA t25 TYPE REF TO zcl_lnt_abap_file.
      DATA t26 TYPE REF TO object.
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
        t30 = t25->statements.
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
          DATA t41 TYPE REF TO zif_lnt_statement.
          CLEAR t41.
          t41 = t35->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          IF xsdbool( t41 IS BOUND AND t41 IS INSTANCE OF zcl_lnt_unknown ) = abap_true.
            DATA(t44) = VALUE i( ).
            DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t45.
            t45 = t35->get_tokens( ).
            t45->load( ).
            t44 = lines( t45->items ).
            DATA(t47) = CONV i( zcl_lnt_sttmnt_prsr_mdl=>statement_max_tokens ).
            IF xsdbool( t44 > t47 ) = abap_true.
              DATA t51 TYPE REF TO zcl_lnt_issue.
              CLEAR t51.
              DATA t53 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t53.
              DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t54.
              t54 = t35->get_tokens( ).
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
              DATA(t60) = VALUE string( ).
              DATA t61 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t61.
              DATA(t66) = VALUE string( ).
              DATA(t67) = |Checks for syntax not recognized by abaplint.\n\nSee recognize|.
              t67 = t67 && |d syntax at https://syntax.abaplint.org|.
              t66 = t67.
              DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t68.
              DATA t72 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t72.
              DATA t73 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t73.
              CREATE OBJECT t73.
              t72 = t73.
              t72->load( ).
              APPEND |Syntax| TO t72->items.
              t72->save( ).
              t72->load( ).
              APPEND |SingleFile| TO t72->items.
              t72->save( ).
              t68 = t72.
              DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t80.
              CLEAR t80.
              DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t82.
              CLEAR t82.
              DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t84.
              CLEAR t84.
              DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t86.
              CLEAR t86.
              DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t88.
              CLEAR t88.
              t61 = NEW zcl_lnt_irule_metadata( i_key = |parser_error| i_title = |Parser error| i_short_description = t66 i_bad_example = t80 i_good_example = t82 i_extended_information = t84 i_tags = t68 i_pragma = t86 i_pseudo_comment = t88 ).
              CREATE OBJECT t61->zlnt_view_ownkeys_b0e8086400eb.
              t61->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t90.
              t61->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t90 ).
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
              DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t95.
              t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t95 ).
              DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t97.
              IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t97 ).
              ENDIF.
              DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t99.
              IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t99 ).
              ENDIF.
              DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t101.
              IF t61->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t61->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t101 ).
              ENDIF.
              t60 = t61->key.
              DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t102.
              t102 = me->conf->zlnt_view_read_sr_15c06369f827( ).
              DATA t104 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t104.
              t51 = zcl_lnt_issue=>at_token( i_file = t25 i_token = t53 i_message_26cb = |Statement too long, refactor statement| i_key = t60 i_severity = t102 i_fix = t104 ).
              t2->load( ).
              APPEND t51 TO t2->items.
              t2->save( ).
            ELSE.
              DATA t108 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t108.
              t108 = t35->get_first_token( ).
              DATA(t110) = VALUE string( ).
              DATA(t112) = VALUE string( ).
              DATA(t113) = |Statement does not exist in the configured ABAP version(or a|.
              t113 = t113 && | parser error), "|.
              DATA(t114) = VALUE string( ).
              t114 = t108->str.
              DATA(t119) = strlen( t113 ).
              t112 = |{ t113 }{ t114 }|.
              DATA(t121) = strlen( t112 ).
              t110 = |{ t112 }{ |"| }|.
              DATA t123 TYPE REF TO zcl_lnt_issue.
              CLEAR t123.
              DATA(t127) = VALUE string( ).
              DATA t128 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t128.
              DATA(t133) = VALUE string( ).
              DATA(t134) = |Checks for syntax not recognized by abaplint.\n\nSee recognize|.
              t134 = t134 && |d syntax at https://syntax.abaplint.org|.
              t133 = t134.
              DATA t135 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t135.
              DATA t139 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t139.
              DATA t140 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t140.
              CREATE OBJECT t140.
              t139 = t140.
              t139->load( ).
              APPEND |Syntax| TO t139->items.
              t139->save( ).
              t139->load( ).
              APPEND |SingleFile| TO t139->items.
              t139->save( ).
              t135 = t139.
              DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t147.
              CLEAR t147.
              DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t149.
              CLEAR t149.
              DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t151.
              CLEAR t151.
              DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t153.
              CLEAR t153.
              DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t155.
              CLEAR t155.
              t128 = NEW zcl_lnt_irule_metadata( i_key = |parser_error| i_title = |Parser error| i_short_description = t133 i_bad_example = t147 i_good_example = t149 i_extended_information = t151 i_tags = t135 i_pragma = t153 i_pseudo_comment = t155 ).
              CREATE OBJECT t128->zlnt_view_ownkeys_b0e8086400eb.
              t128->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t157.
              t128->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t157 ).
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
              DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t162.
              t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t162 ).
              DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t164.
              IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t164 ).
              ENDIF.
              DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t166.
              IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t166 ).
              ENDIF.
              DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t168.
              IF t128->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t128->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t168 ).
              ENDIF.
              t127 = t128->key.
              DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t169.
              t169 = me->conf->zlnt_view_read_sr_15c06369f827( ).
              DATA t171 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t171.
              DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t172.
              t123 = zcl_lnt_issue=>at_statement( i_file = t25 i_statement = t35 i_message_26cb = t110 i_key = t127 i_severity = t169 i_fix = t171 i_alternative_fixes = t172 ).
              t2->load( ).
              APPEND t123 TO t2->items.
              t2->save( ).
            ENDIF.
          ELSE.
            DATA t176 TYPE REF TO zif_lnt_statement.
            CLEAR t176.
            t176 = t35->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
            IF xsdbool( t176 IS BOUND AND t176 IS INSTANCE OF zcl_lnt_macro_recursion ) = abap_true.
              DATA t179 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t179.
              t179 = t35->get_first_token( ).
              DATA(t181) = VALUE string( ).
              DATA(t183) = VALUE string( ).
              DATA(t184) = |Macro recursion detected involving "|.
              DATA(t185) = VALUE string( ).
              t185 = t179->str.
              DATA(t190) = strlen( t184 ).
              t183 = |{ t184 }{ t185 }|.
              DATA(t192) = strlen( t183 ).
              t181 = |{ t183 }{ |"| }|.
              DATA t194 TYPE REF TO zcl_lnt_issue.
              CLEAR t194.
              DATA(t198) = VALUE string( ).
              DATA t199 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t199.
              DATA(t204) = VALUE string( ).
              DATA(t205) = |Checks for syntax not recognized by abaplint.\n\nSee recognize|.
              t205 = t205 && |d syntax at https://syntax.abaplint.org|.
              t204 = t205.
              DATA t206 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t206.
              DATA t210 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t210.
              DATA t211 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t211.
              CREATE OBJECT t211.
              t210 = t211.
              t210->load( ).
              APPEND |Syntax| TO t210->items.
              t210->save( ).
              t210->load( ).
              APPEND |SingleFile| TO t210->items.
              t210->save( ).
              t206 = t210.
              DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t218.
              CLEAR t218.
              DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t220.
              CLEAR t220.
              DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t222.
              CLEAR t222.
              DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t224.
              CLEAR t224.
              DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t226.
              CLEAR t226.
              t199 = NEW zcl_lnt_irule_metadata( i_key = |parser_error| i_title = |Parser error| i_short_description = t204 i_bad_example = t218 i_good_example = t220 i_extended_information = t222 i_tags = t206 i_pragma = t224 i_pseudo_comment = t226 ).
              CREATE OBJECT t199->zlnt_view_ownkeys_b0e8086400eb.
              t199->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t228.
              t199->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t228 ).
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
              DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t233.
              t199->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t233 ).
              DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t235.
              IF t199->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t199->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t235 ).
              ENDIF.
              DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t237.
              IF t199->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t199->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t237 ).
              ENDIF.
              DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t239.
              IF t199->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t199->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t239 ).
              ENDIF.
              t198 = t199->key.
              DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t240.
              t240 = me->conf->zlnt_view_read_sr_15c06369f827( ).
              DATA t242 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t242.
              DATA t243 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t243.
              t194 = zcl_lnt_issue=>at_statement( i_file = t25 i_statement = t35 i_message_26cb = t181 i_key = t198 i_severity = t240 i_fix = t242 i_alternative_fixes = t243 ).
              t2->load( ).
              APPEND t194 TO t2->items.
              t2->save( ).
            ENDIF.
          ENDIF.
        ENDDO.
        DATA(t244) = VALUE abap_bool( ).
        DATA t245 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t245.
        t245 = me->reg->get_config( )->get_release( ).
        DATA t248 TYPE REF TO zcl_lnt_abap_release.
        CLEAR t248.
        IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
          zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
        ENDIF.
        t248 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v700| ).
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
          t258 = t25->statements.
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
            DATA t270 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t270.
            t270 = t263->pragmas.
            t270->load( ).
            IF xsdbool( lines( t270->items ) > 0 ) = abap_true.
              DATA t279 TYPE REF TO zcl_lnt_issue.
              CLEAR t279.
              DATA(t283) = VALUE string( ).
              DATA t284 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t284.
              DATA(t289) = VALUE string( ).
              DATA(t290) = |Checks for syntax not recognized by abaplint.\n\nSee recognize|.
              t290 = t290 && |d syntax at https://syntax.abaplint.org|.
              t289 = t290.
              DATA t291 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t291.
              DATA t295 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t295.
              DATA t296 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t296.
              CREATE OBJECT t296.
              t295 = t296.
              t295->load( ).
              APPEND |Syntax| TO t295->items.
              t295->save( ).
              t295->load( ).
              APPEND |SingleFile| TO t295->items.
              t295->save( ).
              t291 = t295.
              DATA t303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t303.
              CLEAR t303.
              DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t305.
              CLEAR t305.
              DATA t307 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t307.
              CLEAR t307.
              DATA t309 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t309.
              CLEAR t309.
              DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t311.
              CLEAR t311.
              t284 = NEW zcl_lnt_irule_metadata( i_key = |parser_error| i_title = |Parser error| i_short_description = t289 i_bad_example = t303 i_good_example = t305 i_extended_information = t307 i_tags = t291 i_pragma = t309 i_pseudo_comment = t311 ).
              CREATE OBJECT t284->zlnt_view_ownkeys_b0e8086400eb.
              t284->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t313.
              t284->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t313 ).
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
              DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t318.
              t284->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t318 ).
              DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t320.
              IF t284->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t284->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t320 ).
              ENDIF.
              DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t322.
              IF t284->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t284->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t322 ).
              ENDIF.
              DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t324.
              IF t284->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t284->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t324 ).
              ENDIF.
              t283 = t284->key.
              DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t325.
              t325 = me->conf->zlnt_view_read_sr_15c06369f827( ).
              DATA t327 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t327.
              DATA t328 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t328.
              t279 = zcl_lnt_issue=>at_statement( i_file = t25 i_statement = t263 i_message_26cb = |Pragmas not allowed in v700| i_key = t283 i_severity = t325 i_fix = t327 i_alternative_fixes = t328 ).
              t2->load( ).
              APPEND t279 TO t2->items.
              t2->save( ).
            ENDIF.
          ENDDO.
        ENDIF.
      ENDDO.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD initialize.
    DATA(t3) = i_reg_f149.
    result = me->in_in_sr_rl_prs_err_ts_prs_err( i_reg_f149 = t3 ).

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_parser_error_conf( me->gt_cn_in_sr_rl_pr_er_ts_pr_err( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_parser_error_conf( me->gt_cn_in_sr_rl_pr_er_ts_pr_err( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_parser_error_conf.
    IF t1 IS BOUND.
      IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t2 ?= t1->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t2 IS NOT BOUND.
        IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t4 TYPE REF TO zlnt_view_storage_74017ca272ac.
          IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t4 ?= t1->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t4->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t2 = NEW zcl_lnt_parser_error_conf( view_source = t1 ).
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
