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
    me->conf = NEW zcl_lnt_prsr_bd_excptns_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for syntax not recognized by abaplint, related to EXC|.
    t7 = t7 && |EPTIONS in CALL FUNCTION.|.
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
    t1 = NEW zcl_lnt_irule_metadata( i_key = |parser_bad_exceptions| i_title = |Parser Error, bad EXCEPTIONS in CALL FUNCTION| i_short_description = t6 i_bad_example = t20 i_good_example = t22 i_extended_information = t24 i_tags = t12 i_pragma = t26 i_pseudo_comment = t28 ).
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

  METHOD g_c_i_s_r_pr_bd_ex_ts_pr_bd_ex.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_pr_bd_ex_ts_pr_bd_ex.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_pr_bd_ex_ts_pr_bd_ex.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = t1->statements.
    DATA t9 TYPE REF TO zcl_lnt_statement_node.
    DATA t10 TYPE REF TO object.
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
      DATA t16 TYPE REF TO zif_lnt_statement.
      t16 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      IF xsdbool( xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_call_function ) = abap_false ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t18 = me->find_exception_tokens( i_statement = t9 ).
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = VALUE abap_bool( ).
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      t22 = xsdbool( xsdbool( t18 IS INITIAL ) = abap_false ).
      t21 = t22.
      IF t22 = abap_true.
        DATA(t33) = zlnt_runtime_desc_78196487750d=>zlnt_member_d241_133545949f95.
        t21 = me->cntns_mxd_excptn_syntx( i_exceptions = t9->find_all_expressions( i_type_9913 = t33 ) ).
      ENDIF.
      IF t21 = abap_true.
        DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t36 = t18.
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
          DATA t44 TYPE REF TO zcl_lnt_issue.
          CLEAR t44.
          DATA(t48) = VALUE string( ).
          DATA t49 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t54 TYPE string.
          DATA(t55) = |Checks for syntax not recognized by abaplint, related to EXC|.
          t55 = t55 && |EPTIONS in CALL FUNCTION.|.
          t54 = t55.
          DATA t56 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t56.
          DATA t60 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t60.
          t60->load( ).
          APPEND |Syntax| TO t60->items.
          t60->save( ).
          t60->load( ).
          APPEND |SingleFile| TO t60->items.
          t60->save( ).
          t56 = t60.
          DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t68.
          DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t70.
          DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t72.
          DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t74.
          DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t76.
          t49 = NEW zcl_lnt_irule_metadata( i_key = |parser_bad_exceptions| i_title = |Parser Error, bad EXCEPTIONS in CALL FUNCTION| i_short_description = t54 i_bad_example = t68 i_good_example = t70 i_extended_information = t72 i_tags = t56 i_pragma = t74 i_pseudo_comment = t76 ).
          CREATE OBJECT t49->zlnt_view_ownkeys_b0e8086400eb.
          t49->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t78.
          t49->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t78 ).
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
          DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t83.
          t49->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t83 ).
          DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t85.
          IF t49->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t49->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t85 ).
          ENDIF.
          DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t87.
          IF t49->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t49->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t87 ).
          ENDIF.
          DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t89.
          IF t49->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t49->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t89 ).
          ENDIF.
          t48 = t49->key.
          DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t90 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t92 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t92.
          t44 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t38 i_message_26cb = |Bad EXCEPTIONS syntax in CALL FUNCTION| i_key = t48 i_severity = t90 i_fix = t92 ).
          t2->load( ).
          APPEND t44 TO t2->items.
          t2->save( ).
        ENDDO.
        CONTINUE.
      ENDIF.
      DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t95) = zlnt_runtime_desc_78196487750d=>zlnt_member_d241_133545949f95.
      t93 = t9->find_all_expressions( i_type_9913 = t95 ).
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
        DATA t103 TYPE REF TO zcl_lnt_abstract_token.
        t103 = t96->find_direct_token_by_text( i_text = |=| ).
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        IF xsdbool( t103 IS INITIAL ) = abap_true.
          DATA t113 TYPE REF TO zcl_lnt_issue.
          CLEAR t113.
          DATA t115 TYPE REF TO zcl_lnt_abstract_token.
          t115 = t96->get_first_token( ).
          DATA(t118) = VALUE string( ).
          DATA t119 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t124 TYPE string.
          DATA(t125) = |Checks for syntax not recognized by abaplint, related to EXC|.
          t125 = t125 && |EPTIONS in CALL FUNCTION.|.
          t124 = t125.
          DATA t126 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t126.
          DATA t130 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t130.
          t130->load( ).
          APPEND |Syntax| TO t130->items.
          t130->save( ).
          t130->load( ).
          APPEND |SingleFile| TO t130->items.
          t130->save( ).
          t126 = t130.
          DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t138.
          DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t140.
          DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t142.
          DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t144.
          DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t146.
          t119 = NEW zcl_lnt_irule_metadata( i_key = |parser_bad_exceptions| i_title = |Parser Error, bad EXCEPTIONS in CALL FUNCTION| i_short_description = t124 i_bad_example = t138 i_good_example = t140 i_extended_information = t142 i_tags = t126 i_pragma = t144 i_pseudo_comment = t146 ).
          CREATE OBJECT t119->zlnt_view_ownkeys_b0e8086400eb.
          t119->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t148.
          t119->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t148 ).
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
          DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t153.
          t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t153 ).
          DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t155.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t155 ).
          ENDIF.
          DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t157.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t157 ).
          ENDIF.
          DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t159.
          IF t119->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t119->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t159 ).
          ENDIF.
          t118 = t119->key.
          DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t160 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t162 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t162.
          t113 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t115 i_message_26cb = |Bad EXCEPTIONS syntax in CALL FUNCTION| i_key = t118 i_severity = t160 i_fix = t162 ).
          t2->load( ).
          APPEND t113 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDDO.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD cntns_mxd_excptn_syntx.
    DATA(t1) = i_exceptions.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE abap_bool.
    t4 = abap_false.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    DATA t8 TYPE REF TO object.
    DATA(t9) = VALUE i( ).
    DO.
      t1->load( ).
      IF t9 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t1->items INDEX t9 + 1 INTO t8.
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
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      t14 = t7->find_direct_token_by_text( i_text = |=| ).
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      IF xsdbool( t14 IS INITIAL ) = abap_true.
        t4 = abap_true.
        EXIT.
      ENDIF.
    ENDDO.
    t3 = t4.
    t2 = t3.
    IF t3 = abap_true.
      DATA t24 TYPE abap_bool.
      t24 = abap_false.
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      DATA t28 TYPE REF TO object.
      DATA(t29) = VALUE i( ).
      DO.
        t1->load( ).
        IF t29 >= lines( t1->items ).
          EXIT.
        ENDIF.
        CLEAR t28.
        READ TABLE t1->items INDEX t29 + 1 INTO t28.
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
        DATA t34 TYPE REF TO zcl_lnt_abstract_token.
        t34 = t27->find_direct_token_by_text( i_text = |=| ).
        DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t37.
        IF xsdbool( xsdbool( t34 IS INITIAL ) = abap_false ) = abap_true.
          t24 = abap_true.
          EXIT.
        ENDIF.
      ENDDO.
      t2 = t24.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD find_exception_tokens.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t2 = i_statement->get_tokens( ).
    DATA(t5) = VALUE f( ).
    DATA t7 TYPE f.
    t7 = CONV f( -1 ).
    DATA t9 TYPE f.
    t9 = CONV f( -1 ).
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    DATA t13 TYPE REF TO object.
    DATA(t14) = VALUE i( ).
    DO.
      t2->load( ).
      IF t14 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t2->items INDEX t14 + 1 INTO t13.
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
      DATA(t19) = CONV f( 1 ).
      t7 = t7 + t19.
      DATA t21 TYPE string.
      DATA t22 TYPE string.
      t22 = t12->str.
      DATA(t27) = strlen( t22 ).
      t21 = t22.
      IF t21 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t21 TO UPPER CASE.
      ELSE.
        t21 = zlnt_runtime_uppe_91169605024d=>full( t21 ).
      ENDIF.
      IF xsdbool( t21 = |EXCEPTIONS| ) = abap_true.
        t9 = t7.
        EXIT.
      ENDIF.
    ENDDO.
    t5 = t9.
    IF xsdbool( t5 = CONV f( -1 ) ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t38.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t42) = VALUE i( ).
    IF t5 > range_i32_upper.
      t42 = range_i32_upper.
    ELSEIF t5 < range_i32_lower.
      t42 = range_i32_lower.
    ELSE.
      t42 = trunc( t5 ).
    ENDIF.
    t40 = t2->slice1( p0 = t42 ).
    DATA t44 TYPE REF TO zcl_lnt_abstract_token.
    DATA t45 TYPE REF TO object.
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
      IF xsdbool( t44->str <> |.| ) = abap_true.
        t38->load( ).
        APPEND t44 TO t38->items.
        t38->save( ).
      ENDIF.
    ENDDO.
    result = t38.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_prsr_bd_excptns_cnf( me->g_c_i_s_r_pr_bd_ex_ts_pr_bd_ex( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_prsr_bd_excptns_cnf( me->g_c_i_s_r_pr_bd_ex_ts_pr_bd_ex( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_prsr_bd_excptns_cnf.
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
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_pr_bd_ex_ts_pr_bd_ex( i_file = i_file ) ).

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
