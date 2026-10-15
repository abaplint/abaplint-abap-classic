* TS: src/rules/parser_bad_exceptions.ts:15:1 ParserBadExceptions
CLASS zcl_lnt_parser_bad_exceptions DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_prsr_bd_excptns_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_pr_bd_ex_ts_pr_bd_ex RETURNING VALUE(result) TYPE REF TO zcl_lnt_prsr_bd_excptns_cnf.
    METHODS s_c_i_s_r_pr_bd_ex_ts_pr_bd_ex IMPORTING i_conf TYPE REF TO zcl_lnt_prsr_bd_excptns_cnf.
    METHODS r_p_i_s_r_pr_bd_ex_ts_pr_bd_ex IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS cntns_mxd_excptn_syntx IMPORTING i_exceptions TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE abap_bool.
    METHODS find_exception_tokens IMPORTING i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_parser_bad_exceptions IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_prsr_bd_excptns_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |parser_bad_exceptions|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Parser Error, bad EXCEPTIONS in CALL FUNCTION|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for syntax not recognized by abaplint, related to EXC|.
    t7 = t7 && |EPTIONS in CALL FUNCTION.|.
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

  METHOD g_c_i_s_r_pr_bd_ex_ts_pr_bd_ex.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_pr_bd_ex_ts_pr_bd_ex.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_pr_bd_ex_ts_pr_bd_ex.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abap_file.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = t5.
    t7 = t8->statements.
    t4 = t7.
    DATA t9 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    DATA(t11) = VALUE i( ).
    DO.
      t4->load( ).
      IF t11 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t4->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA t14 TYPE abap_bool.
      DATA t15 TYPE abap_bool.
      DATA t16 TYPE REF TO zif_lnt_statement.
      DATA(t17) = t9.
      t16 = t17->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t15 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_call_function ).
      t14 = xsdbool( t15 = abap_false ).
      IF t14 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t20) = t9.
      t19 = me->find_exception_tokens( i_statement = t20 ).
      t18 = t19.
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = VALUE abap_bool( ).
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t24) = t18.
      t23 = t24.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t26.
      t25 = t26.
      DATA(t27) = VALUE abap_bool( ).
      DATA(t28) = VALUE abap_bool( ).
      DATA(t29) = t23.
      IF t29 IS INITIAL.
        t28 = abap_true.
      ENDIF.
      t27 = xsdbool( t28 = abap_false ).
      t22 = t27.
      t21 = t22.
      IF t22 = abap_true.
        DATA t30 TYPE abap_bool.
        DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t32) = t9.
        DATA(t33) = zlnt_runtime_desc_78196487750d=>zlnt_member_d241_133545949f95.
        t31 = t32->find_all_expressions( i_type_9913 = t33 ).
        t30 = me->cntns_mxd_excptn_syntx( i_exceptions = t31 ).
        t21 = t30.
      ENDIF.
      IF t21 = abap_true.
        DATA t34 TYPE string.
        DATA(t35) = |Bad EXCEPTIONS syntax in CALL FUNCTION|.
        t34 = t35.
        DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t37) = t18.
        t36 = t37.
        DATA t38 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t38.
        DATA t39 TYPE REF TO object.
        CLEAR t39.
        DATA(t40) = VALUE i( ).
        DO.
          t36->load( ).
          IF t40 >= lines( t36->items ).
            EXIT.
          ENDIF.
          CLEAR t39.
          READ TABLE t36->items INDEX t40 + 1 INTO t39.
          t40 = t40 + 1.
          DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t41.
          CLEAR t38.
          IF t39 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t41 ?= t39.
            DATA t42 TYPE REF TO object.
            t42 = t41->as_ref( ).
            t38 ?= t42.
          ELSE.
            t38 ?= t39.
          ENDIF.
          DATA(t43) = t2.
          DATA t44 TYPE REF TO zcl_lnt_issue.
          CLEAR t44.
          DATA(t45) = t1.
          DATA(t46) = t38.
          DATA(t47) = t34.
          DATA(t48) = VALUE string( ).
          DATA t49 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t49.
          DATA t50 TYPE string.
          DATA(t51) = |parser_bad_exceptions|.
          t50 = t51.
          DATA t52 TYPE string.
          DATA(t53) = |Parser Error, bad EXCEPTIONS in CALL FUNCTION|.
          t52 = t53.
          DATA t54 TYPE string.
          DATA(t55) = |Checks for syntax not recognized by abaplint, related to EXC|.
          t55 = t55 && |EPTIONS in CALL FUNCTION.|.
          t54 = t55.
          DATA t56 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t56.
          DATA t57 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t57.
          DATA(t58) = abap_true.
          IF t58 = abap_true.
            DATA t59 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t60 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t61 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t61.
            t60 = t61.
            DATA(t62) = t60.
            DATA(t63) = |Syntax|.
            t62->load( ).
            APPEND t63 TO t62->items.
            t62->save( ).
            DATA(t64) = t60.
            DATA(t65) = |SingleFile|.
            t64->load( ).
            APPEND t65 TO t64->items.
            t64->save( ).
            DATA(t66) = t60.
            t59 = t66.
            t57 = t59.
          ELSE.
            DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t67.
            t57 = t67.
          ENDIF.
          t56 = t57.
          DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t69.
          t68 = t69.
          DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t71.
          t70 = t71.
          DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t73.
          t72 = t73.
          DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t75.
          t74 = t75.
          DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t77.
          t76 = t77.
          t49 = NEW zcl_lnt_irule_metadata( i_key = t50 i_title = t52 i_short_description = t54 i_bad_example = t68 i_good_example = t70 i_extended_information = t72 i_tags = t56 i_pragma = t74 i_pseudo_comment = t76 ).
          CREATE OBJECT t49->zlnt_view_ownkeys_b0e8086400eb.
          t49->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t78.
          IF t49->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t49->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t78 ).
          ENDIF.
          DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t79.
          IF t49->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t49->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t79 ).
          ENDIF.
          DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t80.
          IF t49->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t49->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t80 ).
          ENDIF.
          DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t81.
          IF t49->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t49->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t81 ).
          ENDIF.
          CREATE OBJECT t49->zlnt_json_ownkeys_70e5fd461788.
          t49->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t82) = |key|.
          DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t83.
          IF t49->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t49->zlnt_json_ownkeys_70e5fd461788->put( p0 = t82 p1 = t83 ).
          ENDIF.
          DATA(t84) = |title|.
          DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t85.
          IF t49->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t49->zlnt_json_ownkeys_70e5fd461788->put( p0 = t84 p1 = t85 ).
          ENDIF.
          DATA(t86) = |shortDescription|.
          DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t87.
          IF t49->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t49->zlnt_json_ownkeys_70e5fd461788->put( p0 = t86 p1 = t87 ).
          ENDIF.
          DATA(t88) = |tags|.
          DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t89.
          IF t49->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t49->zlnt_json_ownkeys_70e5fd461788->put( p0 = t88 p1 = t89 ).
          ENDIF.
          t48 = t49->key.
          DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t91) = me->conf.
          t90 = t91->zlnt_view_read_sr_15c06369f827( ).
          DATA t92 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t92.
          t44 = zcl_lnt_issue=>at_token( i_file = t45 i_token = t46 i_message_26cb = t47 i_key = t48 i_severity = t90 i_fix = t92 ).
          t43->load( ).
          APPEND t44 TO t43->items.
          t43->save( ).
        ENDDO.
        CONTINUE.
      ENDIF.
      DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t94) = t9.
      DATA(t95) = zlnt_runtime_desc_78196487750d=>zlnt_member_d241_133545949f95.
      t93 = t94->find_all_expressions( i_type_9913 = t95 ).
      DATA t96 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t96.
      DATA t97 TYPE REF TO object.
      CLEAR t97.
      DATA(t98) = VALUE i( ).
      DO.
        t93->load( ).
        IF t98 >= lines( t93->items ).
          EXIT.
        ENDIF.
        CLEAR t97.
        READ TABLE t93->items INDEX t98 + 1 INTO t97.
        t98 = t98 + 1.
        DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t99.
        CLEAR t96.
        IF t97 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t99 ?= t97.
          DATA t100 TYPE REF TO object.
          t100 = t99->as_ref( ).
          t96 ?= t100.
        ELSE.
          t96 ?= t97.
        ENDIF.
        DATA(t101) = VALUE abap_bool( ).
        DATA t102 TYPE REF TO zcl_lnt_abstract_token.
        DATA t103 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t104) = t96.
        DATA(t105) = |=|.
        t103 = t104->find_direct_token_by_text( i_text = t105 ).
        t102 = t103.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t107.
        t106 = t107.
        DATA(t108) = VALUE abap_bool( ).
        DATA(t109) = t102.
        IF t109 IS INITIAL.
          t108 = abap_true.
        ENDIF.
        t101 = t108.
        IF t101 = abap_true.
          DATA t110 TYPE string.
          DATA(t111) = |Bad EXCEPTIONS syntax in CALL FUNCTION|.
          t110 = t111.
          DATA(t112) = t2.
          DATA t113 TYPE REF TO zcl_lnt_issue.
          CLEAR t113.
          DATA(t114) = t1.
          DATA t115 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t116) = t96.
          t115 = t116->get_first_token( ).
          DATA(t117) = t110.
          DATA(t118) = VALUE string( ).
          DATA t119 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t119.
          DATA t120 TYPE string.
          DATA(t121) = |parser_bad_exceptions|.
          t120 = t121.
          DATA t122 TYPE string.
          DATA(t123) = |Parser Error, bad EXCEPTIONS in CALL FUNCTION|.
          t122 = t123.
          DATA t124 TYPE string.
          DATA(t125) = |Checks for syntax not recognized by abaplint, related to EXC|.
          t125 = t125 && |EPTIONS in CALL FUNCTION.|.
          t124 = t125.
          DATA t126 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t126.
          DATA t127 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t127.
          DATA(t128) = abap_true.
          IF t128 = abap_true.
            DATA t129 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t130 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t131 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t131.
            t130 = t131.
            DATA(t132) = t130.
            DATA(t133) = |Syntax|.
            t132->load( ).
            APPEND t133 TO t132->items.
            t132->save( ).
            DATA(t134) = t130.
            DATA(t135) = |SingleFile|.
            t134->load( ).
            APPEND t135 TO t134->items.
            t134->save( ).
            DATA(t136) = t130.
            t129 = t136.
            t127 = t129.
          ELSE.
            DATA t137 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t137.
            t127 = t137.
          ENDIF.
          t126 = t127.
          DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t139.
          t138 = t139.
          DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t141.
          t140 = t141.
          DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t143.
          t142 = t143.
          DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t145.
          t144 = t145.
          DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t147.
          t146 = t147.
          t119 = NEW zcl_lnt_irule_metadata( i_key = t120 i_title = t122 i_short_description = t124 i_bad_example = t138 i_good_example = t140 i_extended_information = t142 i_tags = t126 i_pragma = t144 i_pseudo_comment = t146 ).
          CREATE OBJECT t119->zlnt_view_ownkeys_b0e8086400eb.
          t119->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t148.
          IF t119->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t119->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t148 ).
          ENDIF.
          DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t149.
          IF t119->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t119->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t149 ).
          ENDIF.
          DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t150.
          IF t119->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t119->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t150 ).
          ENDIF.
          DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t151.
          IF t119->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t119->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t151 ).
          ENDIF.
          CREATE OBJECT t119->zlnt_json_ownkeys_70e5fd461788.
          t119->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t152) = |key|.
          DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t153.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = t152 p1 = t153 ).
          ENDIF.
          DATA(t154) = |title|.
          DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t155.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = t154 p1 = t155 ).
          ENDIF.
          DATA(t156) = |shortDescription|.
          DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t157.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
          ENDIF.
          DATA(t158) = |tags|.
          DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t159.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = t158 p1 = t159 ).
          ENDIF.
          t118 = t119->key.
          DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t161) = me->conf.
          t160 = t161->zlnt_view_read_sr_15c06369f827( ).
          DATA t162 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t162.
          t113 = zcl_lnt_issue=>at_token( i_file = t114 i_token = t115 i_message_26cb = t117 i_key = t118 i_severity = t160 i_fix = t162 ).
          t112->load( ).
          APPEND t113 TO t112->items.
          t112->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t163) = t2.
    result = t163.

  ENDMETHOD.

  METHOD cntns_mxd_excptn_syntx.
    DATA(t1) = i_exceptions.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE abap_bool.
    DATA(t5) = abap_false.
    t4 = t5.
    DATA(t6) = t1.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
    DATA(t9) = VALUE i( ).
    DO.
      t6->load( ).
      IF t9 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t6->items INDEX t9 + 1 INTO t8.
      t9 = t9 + 1.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      CLEAR t7.
      IF t8 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t10 ?= t8.
        DATA t11 TYPE REF TO object.
        t11 = t10->as_ref( ).
        t7 ?= t11.
      ELSE.
        t7 ?= t8.
      ENDIF.
      DATA(t12) = VALUE abap_bool( ).
      DATA t13 TYPE REF TO zcl_lnt_abstract_token.
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t15) = t7.
      DATA(t16) = |=|.
      t14 = t15->find_direct_token_by_text( i_text = t16 ).
      t13 = t14.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      t17 = t18.
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = t13.
      IF t20 IS INITIAL.
        t19 = abap_true.
      ENDIF.
      t12 = t19.
      IF t12 = abap_true.
        DATA(t21) = abap_true.
        t4 = t21.
        EXIT.
      ENDIF.
    ENDDO.
    DATA(t22) = t4.
    t3 = t22.
    t2 = t3.
    IF t3 = abap_true.
      DATA(t23) = VALUE abap_bool( ).
      DATA t24 TYPE abap_bool.
      DATA(t25) = abap_false.
      t24 = t25.
      DATA(t26) = t1.
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t27.
      DATA t28 TYPE REF TO object.
      CLEAR t28.
      DATA(t29) = VALUE i( ).
      DO.
        t26->load( ).
        IF t29 >= lines( t26->items ).
          EXIT.
        ENDIF.
        CLEAR t28.
        READ TABLE t26->items INDEX t29 + 1 INTO t28.
        t29 = t29 + 1.
        DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t30.
        CLEAR t27.
        IF t28 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t30 ?= t28.
          DATA t31 TYPE REF TO object.
          t31 = t30->as_ref( ).
          t27 ?= t31.
        ELSE.
          t27 ?= t28.
        ENDIF.
        DATA(t32) = VALUE abap_bool( ).
        DATA t33 TYPE REF TO zcl_lnt_abstract_token.
        DATA t34 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t35) = t27.
        DATA(t36) = |=|.
        t34 = t35->find_direct_token_by_text( i_text = t36 ).
        t33 = t34.
        DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t38.
        t37 = t38.
        DATA(t39) = VALUE abap_bool( ).
        DATA(t40) = VALUE abap_bool( ).
        DATA(t41) = t33.
        IF t41 IS INITIAL.
          t40 = abap_true.
        ENDIF.
        t39 = xsdbool( t40 = abap_false ).
        t32 = t39.
        IF t32 = abap_true.
          DATA(t42) = abap_true.
          t24 = t42.
          EXIT.
        ENDIF.
      ENDDO.
      DATA(t43) = t24.
      t23 = t43.
      t2 = t23.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD find_exception_tokens.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_statement.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t1.
    t3 = t4->get_tokens( ).
    t2 = t3.
    DATA(t5) = VALUE f( ).
    DATA(t6) = VALUE f( ).
    DATA t7 TYPE f.
    DATA(t8) = CONV f( -1 ).
    t7 = t8.
    DATA t9 TYPE f.
    DATA(t10) = CONV f( -1 ).
    t9 = t10.
    DATA(t11) = t2.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t12.
    DATA t13 TYPE REF TO object.
    CLEAR t13.
    DATA(t14) = VALUE i( ).
    DO.
      t11->load( ).
      IF t14 >= lines( t11->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t11->items INDEX t14 + 1 INTO t13.
      t14 = t14 + 1.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      CLEAR t12.
      IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t15 ?= t13.
        DATA t16 TYPE REF TO object.
        t16 = t15->as_ref( ).
        t12 ?= t16.
      ELSE.
        t12 ?= t13.
      ENDIF.
      DATA t17 TYPE f.
      DATA(t18) = t7.
      DATA(t19) = CONV f( 1 ).
      t17 = t18 + t19.
      t7 = t17.
      DATA(t20) = VALUE abap_bool( ).
      DATA t21 TYPE string.
      DATA t22 TYPE string.
      DATA t23 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t24) = t12.
      t23 = t24.
      DATA t25 TYPE string.
      DATA(t26) = t23.
      t25 = t26->str.
      t22 = t25.
      DATA(t27) = strlen( t22 ).
      t21 = t22.
      IF t21 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t21 TO UPPER CASE.
      ELSE.
        t21 = zlnt_runtime_uppe_91169605024d=>full( t21 ).
      ENDIF.
      DATA(t28) = |EXCEPTIONS|.
      t20 = xsdbool( t21 = t28 ).
      IF t20 = abap_true.
        DATA(t29) = t7.
        t9 = t29.
        EXIT.
      ENDIF.
    ENDDO.
    DATA(t30) = t9.
    t6 = t30.
    t5 = t6.
    DATA t31 TYPE abap_bool.
    DATA(t32) = t5.
    DATA(t33) = CONV f( -1 ).
    t31 = xsdbool( t32 = t33 ).
    IF t31 = abap_true.
      DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t34.
      result = t34.
      RETURN.
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t35.
    DATA(t36) = abap_true.
    IF t36 = abap_true.
      DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t37.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t39.
      t38 = t39.
      DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t40.
      DATA(t41) = t2.
      DATA(t42) = VALUE i( ).
      DATA(t43) = t5.
      IF t43 > range_i32_upper.
        t42 = range_i32_upper.
      ELSEIF t43 < range_i32_lower.
        t42 = range_i32_lower.
      ELSE.
        t42 = trunc( t43 ).
      ENDIF.
      t40 = t41->slice1( p0 = t42 ).
      DATA t44 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t44.
      DATA t45 TYPE REF TO object.
      CLEAR t45.
      DATA(t46) = VALUE i( ).
      DO.
        t40->load( ).
        IF t46 >= lines( t40->items ).
          EXIT.
        ENDIF.
        CLEAR t45.
        READ TABLE t40->items INDEX t46 + 1 INTO t45.
        t46 = t46 + 1.
        DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t47.
        CLEAR t44.
        IF t45 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t47 ?= t45.
          DATA t48 TYPE REF TO object.
          t48 = t47->as_ref( ).
          t44 ?= t48.
        ELSE.
          t44 ?= t45.
        ENDIF.
        DATA t49 TYPE abap_bool.
        DATA t50 TYPE string.
        DATA t51 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t52) = t44.
        t51 = t52.
        DATA t53 TYPE string.
        DATA(t54) = t51.
        t53 = t54->str.
        t50 = t53.
        DATA(t55) = |.|.
        t49 = xsdbool( t50 <> t55 ).
        IF t49 = abap_true.
          DATA(t56) = t38.
          DATA(t57) = t44.
          t56->load( ).
          APPEND t57 TO t56->items.
          t56->save( ).
        ENDIF.
      ENDDO.
      DATA(t58) = t38.
      t37 = t58.
      t35 = t37.
    ELSE.
      DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t59.
      t35 = t59.
    ENDIF.
    result = t35.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_prsr_bd_excptns_cnf( me->g_c_i_s_r_pr_bd_ex_ts_pr_bd_ex( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_prsr_bd_excptns_cnf( me->g_c_i_s_r_pr_bd_ex_ts_pr_bd_ex( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_prsr_bd_excptns_cnf.
    CLEAR t1.
    CLEAR t1.
    IF i_conf IS BOUND.
      IF i_conf->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t1 ?= i_conf->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t1 IS NOT BOUND.
        IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t2 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t2.
          IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t2 ?= i_conf->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t2->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t1 = NEW zcl_lnt_prsr_bd_excptns_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_pr_bd_ex_ts_pr_bd_ex( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_pr_bd_ex_ts_pr_bd_ex( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1643_fb61e317a4d3.
  ENDMETHOD.
ENDCLASS.
