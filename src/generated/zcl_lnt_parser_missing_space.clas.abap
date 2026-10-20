* TS: src/rules/parser_missing_space.ts:15:1 ParserMissingSpace
CLASS zcl_lnt_parser_missing_space DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_prsr_mssng_spc_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_pr_ms_sp_ts_pr_ms_sp RETURNING VALUE(result) TYPE REF TO zcl_lnt_prsr_mssng_spc_cnf.
    METHODS s_c_i_s_r_pr_ms_sp_ts_pr_ms_sp IMPORTING i_conf TYPE REF TO zcl_lnt_prsr_mssng_spc_cnf.
    METHODS r_p_i_s_r_pr_ms_sp_ts_pr_ms_sp IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS missing_space IMPORTING i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    METHODS check_sql_cond IMPORTING i_cond TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    METHODS check_new_object IMPORTING i_cond TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    METHODS check_cond_sub IMPORTING i_cond TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    METHODS check_component_cond_sub IMPORTING i_cond TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    METHODS check_component_cond IMPORTING i_cond TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    METHODS check_value_body_line IMPORTING i_vb TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    METHODS check_cond IMPORTING i_cond TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    METHODS check_source IMPORTING i_cond TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    METHODS check_method_call_param IMPORTING i_call_bc15 TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_position.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_parser_missing_space IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_prsr_mssng_spc_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |In special cases the ABAP language allows for not having spa|.
    t7 = t7 && |ces before or after string literals.\nThis rule makes sure th|.
    t7 = t7 && |e spaces are consistently required across the language.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t12.
    t12->load( ).
    APPEND |Syntax| TO t12->items.
    t12->save( ).
    t12->load( ).
    APPEND |Whitespace| TO t12->items.
    t12->save( ).
    t12->load( ).
    APPEND |SingleFile| TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t26->has = abap_true.
    t26->value = |IF ( foo = 'bar').|.
    t22 = t26.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = |IF ( foo = 'bar' ).|.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |parser_missing_space| i_title = |Parser Error, missing space| i_short_description = t6 i_bad_example = t22 i_good_example = t32 i_extended_information = t34 i_tags = t8 i_pragma = t36 i_pseudo_comment = t38 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t40 ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t45 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t47 ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t49 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t51 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t53 ).
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t55 ).
    ENDIF.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t57 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_pr_ms_sp_ts_pr_ms_sp.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_pr_ms_sp_ts_pr_ms_sp.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_pr_ms_sp_ts_pr_ms_sp.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zcl_lnt_position.
    DATA(t8) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t8->has = abap_true.
    t8->value = CONV f( 0 ).
    t4 = NEW zcl_lnt_position( i_row = CONV f( 0 ) i_col = t8 ).
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t9 = t1->statements.
    DATA t14 TYPE REF TO zcl_lnt_statement_node.
    DATA t15 TYPE REF TO object.
    DATA(t16) = VALUE i( ).
    DO.
      t9->load( ).
      IF t16 >= lines( t9->items ).
        EXIT.
      ENDIF.
      CLEAR t15.
      READ TABLE t9->items INDEX t16 + 1 INTO t15.
      t16 = t16 + 1.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      CLEAR t14.
      IF t15 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t17 ?= t15.
        DATA t18 TYPE REF TO object.
        t18 = t17->as_ref( ).
        t14 ?= t18.
      ELSE.
        t14 ?= t15.
      ENDIF.
      DATA t19 TYPE REF TO zcl_lnt_position.
      t19 = me->missing_space( i_statement = t14 ).
      IF xsdbool( t19 IS BOUND ) = abap_true.
        DATA(t25) = |Missing space between string or character literal and parent|.
        t25 = t25 && |heses|.
        t4 = t19.
        DATA t29 TYPE REF TO zcl_lnt_issue.
        CLEAR t29.
        DATA(t33) = VALUE string( ).
        DATA t34 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t39 TYPE string.
        DATA(t40) = |In special cases the ABAP language allows for not having spa|.
        t40 = t40 && |ces before or after string literals.\nThis rule makes sure th|.
        t40 = t40 && |e spaces are consistently required across the language.|.
        t39 = t40.
        DATA t41 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t41.
        DATA t45 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t45.
        t45->load( ).
        APPEND |Syntax| TO t45->items.
        t45->save( ).
        t45->load( ).
        APPEND |Whitespace| TO t45->items.
        t45->save( ).
        t45->load( ).
        APPEND |SingleFile| TO t45->items.
        t45->save( ).
        t41 = t45.
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t55.
        DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t59->has = abap_true.
        t59->value = |IF ( foo = 'bar').|.
        t55 = t59.
        DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t61.
        DATA(t65) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t65->has = abap_true.
        t65->value = |IF ( foo = 'bar' ).|.
        t61 = t65.
        DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t67.
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t69.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t71.
        t34 = NEW zcl_lnt_irule_metadata( i_key = |parser_missing_space| i_title = |Parser Error, missing space| i_short_description = t39 i_bad_example = t55 i_good_example = t61 i_extended_information = t67 i_tags = t41 i_pragma = t69 i_pseudo_comment = t71 ).
        CREATE OBJECT t34->zlnt_view_ownkeys_b0e8086400eb.
        t34->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t73.
        t34->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t73 ).
        DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t74.
        IF t34->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t34->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t74 ).
        ENDIF.
        DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t75.
        IF t34->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t34->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t75 ).
        ENDIF.
        DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t76.
        IF t34->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t34->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t76 ).
        ENDIF.
        DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t77.
        IF t34->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t34->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t77 ).
        ENDIF.
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t78.
        IF t34->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t34->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t78 ).
        ENDIF.
        CREATE OBJECT t34->zlnt_json_ownkeys_70e5fd461788.
        t34->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t80.
        t34->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t80 ).
        DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t82.
        IF t34->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t34->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t82 ).
        ENDIF.
        DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t84.
        IF t34->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t34->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t84 ).
        ENDIF.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        IF t34->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t34->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t86 ).
        ENDIF.
        DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t88.
        IF t34->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t34->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t88 ).
        ENDIF.
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t90.
        IF t34->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t34->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t90 ).
        ENDIF.
        t33 = t34->key.
        DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t91 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t93 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t93.
        t29 = zcl_lnt_issue=>at_position( i_file = t1 i_start = t4 i_message_26cb = t25 i_key = t33 i_severity = t91 i_fix = t93 ).
        t2->load( ).
        APPEND t29 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD missing_space.
    DATA(t1) = i_statement.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t2 = t1->get_tokens( ).
    DATA t5 TYPE i.
    t5 = 1.
    DO.
      t2->load( ).
      IF xsdbool( t5 < lines( t2->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA t11 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t12.
      DATA t14 TYPE i.
      DATA(t16) = 1.
      t14 = t5 - t16.
      t14 = t14 + 1.
      DATA t17 TYPE REF TO object.
      CLEAR t17.
      t2->load( ).
      CLEAR t17.
      READ TABLE t2->items INDEX t14 INTO t17.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      CLEAR t12.
      IF t17 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t18 ?= t17.
        DATA t19 TYPE REF TO object.
        t19 = t18->as_ref( ).
        t12 ?= t19.
      ELSE.
        t12 ?= t17.
      ENDIF.
      t11 = t12.
      DATA t20 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t20.
      DATA t21 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t21.
      DATA(t23) = t5.
      t23 = t23 + 1.
      DATA t24 TYPE REF TO object.
      CLEAR t24.
      t2->load( ).
      CLEAR t24.
      READ TABLE t2->items INDEX t23 INTO t24.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      CLEAR t21.
      IF t24 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t25 ?= t24.
        DATA t26 TYPE REF TO object.
        t26 = t25->as_ref( ).
        t21 ?= t26.
      ELSE.
        t21 ?= t24.
      ENDIF.
      t20 = t21.
      DATA(t27) = VALUE abap_bool( ).
      DATA(t28) = VALUE abap_bool( ).
      DATA t29 TYPE abap_bool.
      DATA t30 TYPE abap_bool.
      t30 = xsdbool( t11->str = |)| ).
      t29 = t30.
      IF t30 = abap_true.
        t29 = xsdbool( t20->str = |=| ).
      ENDIF.
      t28 = t29.
      IF t29 = abap_true.
        t28 = xsdbool( t11->start->row = t20->start->row ).
      ENDIF.
      t27 = t28.
      IF t28 = abap_true.
        DATA t64 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t67 TYPE REF TO zcl_lnt_abstract_token.
        t67 = t11.
        DATA t70 TYPE f.
        t70 = t67->start->row.
        DATA t77 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t77 = t67->start->col.
        DATA t83 TYPE f.
        t83 = strlen( t67->str ).
        DATA(t88) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t88->has = abap_true.
        t88->value = t83.
        t64 = NEW zcl_lnt_position( i_row = t70 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t77 right = t88 op = `+` ) )->col.
        DATA t98 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t98 = t20->start->col.
        t27 = zlnt_runtime_numb_290eb04a9758=>compare( left = t64 right = t98 op = `==` ).
      ENDIF.
      IF t27 = abap_true.
        result = t20->start.
        RETURN.
      ENDIF.
      DATA(t110) = 1.
      t5 = t5 + t110.
    ENDDO.
    DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t115.
    DATA(t118) = zlnt_runtime_desc_78196487750d=>zlnt_member_d135_0d084eddc054.
    t115->load( ).
    APPEND t118 TO t115->items.
    t115->save( ).
    DATA(t120) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
    t115->load( ).
    APPEND t120 TO t115->items.
    t115->save( ).
    DATA(t122) = zlnt_runtime_desc_78196487750d=>zlnt_member_d355_f5f8042a98ef.
    t115->load( ).
    APPEND t122 TO t115->items.
    t115->save( ).
    DATA(t124) = zlnt_runtime_desc_78196487750d=>zlnt_member_d224_4e54f441ad62.
    t115->load( ).
    APPEND t124 TO t115->items.
    t115->save( ).
    DATA(t126) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
    t115->load( ).
    APPEND t126 TO t115->items.
    t115->save( ).
    DATA(t128) = zlnt_runtime_desc_78196487750d=>zlnt_member_d133_716522bf3a6a.
    t115->load( ).
    APPEND t128 TO t115->items.
    t115->save( ).
    DATA(t130) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t115->load( ).
    APPEND t130 TO t115->items.
    t115->save( ).
    DATA(t132) = zlnt_runtime_desc_78196487750d=>zlnt_member_d132_568147cc297b.
    t115->load( ).
    APPEND t132 TO t115->items.
    t115->save( ).
    DATA(t134) = zlnt_runtime_desc_78196487750d=>zlnt_member_d220_2984eb665ddb.
    t115->load( ).
    APPEND t134 TO t115->items.
    t115->save( ).
    t114 = t115.
    DATA(t139) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t139->has = abap_true.
    t139->value = abap_true.
    t111 = t1->find_all_expressions_multi( i_type_9913 = t114 i_recursive = t139 ).
    DATA t141 TYPE REF TO zcl_lnt_position.
    DATA t144 TYPE REF TO zcl_lnt_expression_node.
    DATA t145 TYPE REF TO object.
    DATA(t146) = VALUE i( ).
    DO.
      t111->load( ).
      IF t146 >= lines( t111->items ).
        EXIT.
      ENDIF.
      CLEAR t145.
      READ TABLE t111->items INDEX t146 + 1 INTO t145.
      t146 = t146 + 1.
      DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t147.
      CLEAR t144.
      IF t145 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t147 ?= t145.
        DATA t148 TYPE REF TO object.
        t148 = t147->as_ref( ).
        t144 ?= t148.
      ELSE.
        t144 ?= t145.
      ENDIF.
      DATA t149 TYPE REF TO zif_lnt_statement_runnable.
      t149 = t144->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      IF xsdbool( t149 IS BOUND AND t149 IS INSTANCE OF zcl_lnt_st_cond ) = abap_true.
        t141 = me->check_cond( i_cond = t144 ).
      ELSE.
        IF xsdbool( t149 IS BOUND AND t149 IS INSTANCE OF zcl_lnt_st_source ) = abap_true.
          t141 = me->check_source( i_cond = t144 ).
        ELSE.
          IF xsdbool( t149 IS BOUND AND t149 IS INSTANCE OF zcl_lnt_cond_sub ) = abap_true.
            t141 = me->check_cond_sub( i_cond = t144 ).
          ELSE.
            IF xsdbool( t149 IS BOUND AND t149 IS INSTANCE OF zcl_lnt_st_component_cond ) = abap_true.
              t141 = me->check_component_cond( i_cond = t144 ).
            ELSE.
              IF xsdbool( t149 IS BOUND AND t149 IS INSTANCE OF zcl_lnt_component_cond_sub ) = abap_true.
                t141 = me->check_component_cond_sub( i_cond = t144 ).
              ELSE.
                IF xsdbool( t149 IS BOUND AND t149 IS INSTANCE OF zcl_lnt_sql_cond ) = abap_true.
                  t141 = me->check_sql_cond( i_cond = t144 ).
                ELSE.
                  IF xsdbool( t149 IS BOUND AND t149 IS INSTANCE OF zcl_lnt_value_body_line ) = abap_true.
                    t141 = me->check_value_body_line( i_vb = t144 ).
                  ELSE.
                    IF xsdbool( t149 IS BOUND AND t149 IS INSTANCE OF zcl_lnt_st_new_object ) = abap_true.
                      DATA t186 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                      DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                      DATA t188 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                      DATA t189 TYPE REF TO zcl_lnt_abstract_node.
                      t189 = t144.
                      t188 = t189->children.
                      t187 ?= t188.
                      t186 = t187.
                      DATA t194 TYPE REF TO zcl_lnt_abstract_token.
                      CLEAR t194.
                      DATA t196 TYPE REF TO zif_lnt_union_4cf1d054.
                      CLEAR t196.
                      DATA t198 TYPE i.
                      DATA t199 TYPE i.
                      t186->load( ).
                      t199 = lines( t186->items ).
                      DATA(t201) = 2.
                      t198 = t199 - t201.
                      t198 = t198 + 1.
                      DATA t202 TYPE REF TO object.
                      CLEAR t202.
                      t186->load( ).
                      CLEAR t202.
                      READ TABLE t186->items INDEX t198 INTO t202.
                      DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t203.
                      CLEAR t196.
                      IF t202 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                        t203 ?= t202.
                        DATA t204 TYPE REF TO object.
                        t204 = t203->as_ref( ).
                        t196 ?= t204.
                      ELSE.
                        t196 ?= t202.
                      ENDIF.
                      t194 = t196->get_last_token( ).
                      DATA t205 TYPE REF TO zcl_lnt_abstract_token.
                      CLEAR t205.
                      DATA t207 TYPE REF TO zif_lnt_union_4cf1d054.
                      CLEAR t207.
                      DATA t209 TYPE i.
                      DATA t210 TYPE i.
                      t186->load( ).
                      t210 = lines( t186->items ).
                      DATA(t212) = 1.
                      t209 = t210 - t212.
                      t209 = t209 + 1.
                      DATA t213 TYPE REF TO object.
                      CLEAR t213.
                      t186->load( ).
                      CLEAR t213.
                      READ TABLE t186->items INDEX t209 INTO t213.
                      DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t214.
                      CLEAR t207.
                      IF t213 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                        t214 ?= t213.
                        DATA t215 TYPE REF TO object.
                        t215 = t214->as_ref( ).
                        t207 ?= t215.
                      ELSE.
                        t207 ?= t213.
                      ENDIF.
                      t205 = t207->get_first_token( ).
                      DATA t216 TYPE REF TO zcl_lnt_position.
                      CLEAR t216.
                      DATA t217 TYPE abap_bool.
                      DATA t218 TYPE abap_bool.
                      t218 = xsdbool( t194->start->row = t205->start->row ).
                      t217 = t218.
                      IF t218 = abap_true.
                        DATA t238 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                        DATA t241 TYPE REF TO zcl_lnt_abstract_token.
                        t241 = t194.
                        DATA t244 TYPE f.
                        t244 = t241->start->row.
                        DATA t251 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                        t251 = t241->start->col.
                        DATA t257 TYPE f.
                        t257 = strlen( t241->str ).
                        DATA(t262) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                        t262->has = abap_true.
                        t262->value = t257.
                        t238 = NEW zcl_lnt_position( i_row = t244 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t251 right = t262 op = `+` ) )->col.
                        DATA t272 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                        t272 = t205->start->col.
                        t217 = zlnt_runtime_numb_290eb04a9758=>compare( left = t238 right = t272 op = `==` ).
                      ENDIF.
                      IF t217 = abap_true.
                        t216 = t205->start.
                      ELSE.
                        CLEAR t216.
                      ENDIF.
                      t141 = t216.
                    ELSE.
                      IF xsdbool( t149 IS BOUND AND t149 IS INSTANCE OF zcl_lnt_st_method_call_param ) = abap_true.
                        DATA t289 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                        DATA t290 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                        DATA t291 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                        DATA t292 TYPE REF TO zcl_lnt_abstract_node.
                        t292 = t144.
                        t291 = t292->children.
                        t290 ?= t291.
                        t289 = t290.
                        DATA t297 TYPE REF TO zcl_lnt_abstract_token.
                        CLEAR t297.
                        DATA t299 TYPE REF TO zif_lnt_union_4cf1d054.
                        CLEAR t299.
                        DATA t301 TYPE REF TO object.
                        CLEAR t301.
                        t289->load( ).
                        CLEAR t301.
                        READ TABLE t289->items INDEX 1 INTO t301.
                        DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t302.
                        CLEAR t299.
                        IF t301 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                          t302 ?= t301.
                          DATA t303 TYPE REF TO object.
                          t303 = t302->as_ref( ).
                          t299 ?= t303.
                        ELSE.
                          t299 ?= t301.
                        ENDIF.
                        t297 = t299->get_first_token( ).
                        DATA t304 TYPE REF TO zcl_lnt_abstract_token.
                        CLEAR t304.
                        DATA t306 TYPE REF TO zif_lnt_union_4cf1d054.
                        CLEAR t306.
                        DATA t308 TYPE REF TO object.
                        CLEAR t308.
                        t289->load( ).
                        CLEAR t308.
                        READ TABLE t289->items INDEX 2 INTO t308.
                        DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t309.
                        CLEAR t306.
                        IF t308 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                          t309 ?= t308.
                          DATA t310 TYPE REF TO object.
                          t310 = t309->as_ref( ).
                          t306 ?= t310.
                        ELSE.
                          t306 ?= t308.
                        ENDIF.
                        t304 = t306->get_first_token( ).
                        DATA t311 TYPE REF TO zcl_lnt_position.
                        CLEAR t311.
                        DATA t312 TYPE abap_bool.
                        DATA t313 TYPE abap_bool.
                        t313 = xsdbool( t297->start->row = t304->start->row ).
                        t312 = t313.
                        IF t313 = abap_true.
                          DATA t333 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                          DATA t334 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                          t334 = t297->start->col.
                          DATA(t344) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                          t344->has = abap_true.
                          t344->value = CONV f( 1 ).
                          t333 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t334 right = t344 op = `+` ).
                          DATA t352 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                          t352 = t304->start->col.
                          t312 = zlnt_runtime_numb_290eb04a9758=>compare( left = t333 right = t352 op = `==` ).
                        ENDIF.
                        IF t312 = abap_true.
                          t311 = t304->start.
                        ELSE.
                          DATA t363 TYPE REF TO zcl_lnt_abstract_token.
                          CLEAR t363.
                          DATA t365 TYPE REF TO zif_lnt_union_4cf1d054.
                          CLEAR t365.
                          DATA t367 TYPE i.
                          DATA t368 TYPE i.
                          t289->load( ).
                          t368 = lines( t289->items ).
                          DATA(t370) = 2.
                          t367 = t368 - t370.
                          t367 = t367 + 1.
                          DATA t371 TYPE REF TO object.
                          CLEAR t371.
                          t289->load( ).
                          CLEAR t371.
                          READ TABLE t289->items INDEX t367 INTO t371.
                          DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t372.
                          CLEAR t365.
                          IF t371 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                            t372 ?= t371.
                            DATA t373 TYPE REF TO object.
                            t373 = t372->as_ref( ).
                            t365 ?= t373.
                          ELSE.
                            t365 ?= t371.
                          ENDIF.
                          t363 = t365->get_last_token( ).
                          DATA t374 TYPE REF TO zcl_lnt_abstract_token.
                          CLEAR t374.
                          DATA t376 TYPE REF TO zif_lnt_union_4cf1d054.
                          CLEAR t376.
                          DATA t378 TYPE i.
                          DATA t379 TYPE i.
                          t289->load( ).
                          t379 = lines( t289->items ).
                          DATA(t381) = 1.
                          t378 = t379 - t381.
                          t378 = t378 + 1.
                          DATA t382 TYPE REF TO object.
                          CLEAR t382.
                          t289->load( ).
                          CLEAR t382.
                          READ TABLE t289->items INDEX t378 INTO t382.
                          DATA t383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t383.
                          CLEAR t376.
                          IF t382 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                            t383 ?= t382.
                            DATA t384 TYPE REF TO object.
                            t384 = t383->as_ref( ).
                            t376 ?= t384.
                          ELSE.
                            t376 ?= t382.
                          ENDIF.
                          t374 = t376->get_first_token( ).
                          DATA t385 TYPE REF TO zcl_lnt_position.
                          CLEAR t385.
                          DATA t386 TYPE abap_bool.
                          DATA t387 TYPE abap_bool.
                          t387 = xsdbool( t363->start->row = t374->start->row ).
                          t386 = t387.
                          IF t387 = abap_true.
                            DATA t407 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                            DATA t410 TYPE REF TO zcl_lnt_abstract_token.
                            t410 = t363.
                            DATA t413 TYPE f.
                            t413 = t410->start->row.
                            DATA t420 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                            t420 = t410->start->col.
                            DATA t426 TYPE f.
                            t426 = strlen( t410->str ).
                            DATA(t431) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                            t431->has = abap_true.
                            t431->value = t426.
                            t407 = NEW zcl_lnt_position( i_row = t413 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t420 right = t431 op = `+` ) )->col.
                            DATA t441 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                            t441 = t374->start->col.
                            t386 = zlnt_runtime_numb_290eb04a9758=>compare( left = t407 right = t441 op = `==` ).
                          ENDIF.
                          IF t386 = abap_true.
                            t385 = t374->start.
                          ELSE.
                            CLEAR t385.
                          ENDIF.
                          t311 = t385.
                        ENDIF.
                        t141 = t311.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      IF xsdbool( t141 IS BOUND ) = abap_true.
        result = t141.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD check_sql_cond.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    t5 = i_cond.
    t4 = t5->children.
    t3 ?= t4.
    t2 = t3.
    DATA t9 TYPE i.
    t9 = 0.
    DO.
      t2->load( ).
      IF xsdbool( t9 < lines( t2->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA t16 TYPE REF TO object.
      CLEAR t16.
      DATA t17 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t17.
      DATA(t19) = t9.
      t19 = t19 + 1.
      DATA t20 TYPE REF TO object.
      CLEAR t20.
      t2->load( ).
      CLEAR t20.
      READ TABLE t2->items INDEX t19 INTO t20.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      CLEAR t17.
      IF t20 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t21 ?= t20.
        DATA t22 TYPE REF TO object.
        t22 = t21->as_ref( ).
        t17 ?= t22.
      ELSE.
        t17 ?= t20.
      ENDIF.
      t16 = t17->get_db65( ).
      IF xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_sql_cond ) = abap_true.
        DATA t23 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t23.
        DATA t24 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t24.
        DATA(t26) = t9.
        t26 = t26 + 1.
        DATA t27 TYPE REF TO object.
        CLEAR t27.
        t2->load( ).
        CLEAR t27.
        READ TABLE t2->items INDEX t26 INTO t27.
        DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t28.
        CLEAR t24.
        IF t27 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t28 ?= t27.
          DATA t29 TYPE REF TO object.
          t29 = t28->as_ref( ).
          t24 ?= t29.
        ELSE.
          t24 ?= t27.
        ENDIF.
        t23 = t24.
        DATA t30 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t30.
        DATA t32 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t32.
        DATA t34 TYPE i.
        DATA(t36) = 1.
        t34 = t9 - t36.
        t34 = t34 + 1.
        DATA t37 TYPE REF TO object.
        CLEAR t37.
        t2->load( ).
        CLEAR t37.
        READ TABLE t2->items INDEX t34 INTO t37.
        DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t38.
        CLEAR t32.
        IF t37 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t38 ?= t37.
          DATA t39 TYPE REF TO object.
          t39 = t38->as_ref( ).
          t32 ?= t39.
        ELSE.
          t32 ?= t37.
        ENDIF.
        t30 = t32->get_last_token( ).
        DATA t40 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t40.
        DATA t42 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t42.
        DATA t44 TYPE i.
        DATA(t46) = 1.
        t44 = t9 + t46.
        t44 = t44 + 1.
        DATA t47 TYPE REF TO object.
        CLEAR t47.
        t2->load( ).
        CLEAR t47.
        READ TABLE t2->items INDEX t44 INTO t47.
        DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t48.
        CLEAR t42.
        IF t47 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t48 ?= t47.
          DATA t49 TYPE REF TO object.
          t49 = t48->as_ref( ).
          t42 ?= t49.
        ELSE.
          t42 ?= t47.
        ENDIF.
        t40 = t42->get_first_token( ).
        DATA(t50) = VALUE abap_bool( ).
        DATA t51 TYPE abap_bool.
        DATA t52 TYPE abap_bool.
        t52 = xsdbool( t30->str = |(| ).
        t51 = t52.
        IF t52 = abap_true.
          DATA t60 TYPE f.
          t60 = t30->start->row.
          DATA t75 TYPE REF TO zcl_lnt_position.
          t75 = t23->get_first_token( )->start.
          t51 = xsdbool( t60 = t75->row ).
        ENDIF.
        t50 = t51.
        IF t51 = abap_true.
          DATA t80 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t81 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t81 = t30->start->col.
          DATA(t91) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t91->has = abap_true.
          t91->value = CONV f( 1 ).
          t80 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t81 right = t91 op = `+` ).
          DATA t92 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t98 TYPE REF TO zcl_lnt_position.
          t98 = t23->get_first_token( )->start.
          t92 = t98->col.
          t50 = zlnt_runtime_numb_290eb04a9758=>compare( left = t80 right = t92 op = `==` ).
        ENDIF.
        IF t50 = abap_true.
          result = t23->get_first_token( )->start.
          RETURN.
        ENDIF.
        DATA(t111) = VALUE abap_bool( ).
        DATA t112 TYPE abap_bool.
        DATA t113 TYPE abap_bool.
        t113 = xsdbool( t40->str = |)| ).
        t112 = t113.
        IF t113 = abap_true.
          DATA t121 TYPE f.
          t121 = t40->start->row.
          DATA t136 TYPE REF TO zcl_lnt_position.
          t136 = t23->get_last_token( )->start.
          t112 = xsdbool( t121 = t136->row ).
        ENDIF.
        t111 = t112.
        IF t112 = abap_true.
          DATA t141 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t141 = t40->start->col.
          DATA t153 TYPE REF TO zcl_lnt_abstract_token.
          t153 = t23->get_last_token( ).
          DATA t157 TYPE f.
          t157 = t153->start->row.
          DATA t164 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t164 = t153->start->col.
          DATA t170 TYPE f.
          t170 = strlen( t153->str ).
          DATA(t175) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t175->has = abap_true.
          t175->value = t170.
          DATA t176 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t176 = NEW zcl_lnt_position( i_row = t157 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t164 right = t175 op = `+` ) )->col.
          t111 = zlnt_runtime_numb_290eb04a9758=>compare( left = t141 right = t176 op = `==` ).
        ENDIF.
        IF t111 = abap_true.
          DATA t181 TYPE REF TO zcl_lnt_abstract_token.
          t181 = t23->get_last_token( ).
          DATA t185 TYPE f.
          t185 = t181->start->row.
          DATA t192 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t192 = t181->start->col.
          DATA t198 TYPE f.
          t198 = strlen( t181->str ).
          DATA(t203) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t203->has = abap_true.
          t203->value = t198.
          result = NEW zcl_lnt_position( i_row = t185 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t192 right = t203 op = `+` ) ).
          RETURN.
        ENDIF.
      ENDIF.
      DATA(t207) = 1.
      t9 = t9 + t207.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD check_new_object.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    t5 = i_cond.
    t4 = t5->children.
    t3 ?= t4.
    t2 = t3.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    DATA t11 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t13 TYPE i.
    DATA t14 TYPE i.
    t2->load( ).
    t14 = lines( t2->items ).
    DATA(t16) = 2.
    t13 = t14 - t16.
    t13 = t13 + 1.
    DATA t17 TYPE REF TO object.
    t2->load( ).
    READ TABLE t2->items INDEX t13 INTO t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t17 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t18 ?= t17.
      DATA t19 TYPE REF TO object.
      t19 = t18->as_ref( ).
      t11 ?= t19.
    ELSE.
      t11 ?= t17.
    ENDIF.
    t9 = t11->get_last_token( ).
    DATA t20 TYPE REF TO zcl_lnt_abstract_token.
    DATA t22 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t24 TYPE i.
    DATA t25 TYPE i.
    t2->load( ).
    t25 = lines( t2->items ).
    DATA(t27) = 1.
    t24 = t25 - t27.
    t24 = t24 + 1.
    DATA t28 TYPE REF TO object.
    t2->load( ).
    READ TABLE t2->items INDEX t24 INTO t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t28 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t29 ?= t28.
      DATA t30 TYPE REF TO object.
      t30 = t29->as_ref( ).
      t22 ?= t30.
    ELSE.
      t22 ?= t28.
    ENDIF.
    t20 = t22->get_first_token( ).
    DATA t31 TYPE abap_bool.
    DATA t32 TYPE abap_bool.
    t32 = xsdbool( t9->start->row = t20->start->row ).
    t31 = t32.
    IF t32 = abap_true.
      DATA t52 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t55 TYPE REF TO zcl_lnt_abstract_token.
      t55 = t9.
      DATA t58 TYPE f.
      t58 = t55->start->row.
      DATA t65 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t65 = t55->start->col.
      DATA t71 TYPE f.
      t71 = strlen( t55->str ).
      DATA(t76) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t76->has = abap_true.
      t76->value = t71.
      t52 = NEW zcl_lnt_position( i_row = t58 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t65 right = t76 op = `+` ) )->col.
      DATA t86 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t86 = t20->start->col.
      t31 = zlnt_runtime_numb_290eb04a9758=>compare( left = t52 right = t86 op = `==` ).
    ENDIF.
    IF t31 = abap_true.
      result = t20->start.
      RETURN.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD check_cond_sub.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    t5 = i_cond.
    t4 = t5->children.
    t3 ?= t4.
    t2 = t3.
    DATA t9 TYPE i.
    t9 = 0.
    DO.
      t2->load( ).
      IF xsdbool( t9 < lines( t2->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA t16 TYPE REF TO object.
      CLEAR t16.
      DATA t17 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t17.
      DATA(t19) = t9.
      t19 = t19 + 1.
      DATA t20 TYPE REF TO object.
      CLEAR t20.
      t2->load( ).
      CLEAR t20.
      READ TABLE t2->items INDEX t19 INTO t20.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      CLEAR t17.
      IF t20 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t21 ?= t20.
        DATA t22 TYPE REF TO object.
        t22 = t21->as_ref( ).
        t17 ?= t22.
      ELSE.
        t17 ?= t20.
      ENDIF.
      t16 = t17->get_db65( ).
      IF xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_cond ) = abap_true.
        DATA t23 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t23.
        DATA t24 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t24.
        DATA(t26) = t9.
        t26 = t26 + 1.
        DATA t27 TYPE REF TO object.
        CLEAR t27.
        t2->load( ).
        CLEAR t27.
        READ TABLE t2->items INDEX t26 INTO t27.
        DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t28.
        CLEAR t24.
        IF t27 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t28 ?= t27.
          DATA t29 TYPE REF TO object.
          t29 = t28->as_ref( ).
          t24 ?= t29.
        ELSE.
          t24 ?= t27.
        ENDIF.
        t23 = t24.
        DATA t30 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t30.
        DATA t32 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t32.
        DATA t34 TYPE i.
        DATA(t36) = 1.
        t34 = t9 - t36.
        t34 = t34 + 1.
        DATA t37 TYPE REF TO object.
        CLEAR t37.
        t2->load( ).
        CLEAR t37.
        READ TABLE t2->items INDEX t34 INTO t37.
        DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t38.
        CLEAR t32.
        IF t37 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t38 ?= t37.
          DATA t39 TYPE REF TO object.
          t39 = t38->as_ref( ).
          t32 ?= t39.
        ELSE.
          t32 ?= t37.
        ENDIF.
        t30 = t32->get_last_token( ).
        DATA t40 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t40.
        DATA t42 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t42.
        DATA t44 TYPE i.
        DATA(t46) = 1.
        t44 = t9 + t46.
        t44 = t44 + 1.
        DATA t47 TYPE REF TO object.
        CLEAR t47.
        t2->load( ).
        CLEAR t47.
        READ TABLE t2->items INDEX t44 INTO t47.
        DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t48.
        CLEAR t42.
        IF t47 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t48 ?= t47.
          DATA t49 TYPE REF TO object.
          t49 = t48->as_ref( ).
          t42 ?= t49.
        ELSE.
          t42 ?= t47.
        ENDIF.
        t40 = t42->get_first_token( ).
        DATA(t50) = VALUE abap_bool( ).
        DATA t51 TYPE abap_bool.
        DATA t52 TYPE abap_bool.
        t52 = xsdbool( t30->str = |(| ).
        t51 = t52.
        IF t52 = abap_true.
          DATA t60 TYPE f.
          t60 = t30->start->row.
          DATA t75 TYPE REF TO zcl_lnt_position.
          t75 = t23->get_first_token( )->start.
          t51 = xsdbool( t60 = t75->row ).
        ENDIF.
        t50 = t51.
        IF t51 = abap_true.
          DATA t80 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t81 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t81 = t30->start->col.
          DATA(t91) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t91->has = abap_true.
          t91->value = CONV f( 1 ).
          t80 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t81 right = t91 op = `+` ).
          DATA t92 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t98 TYPE REF TO zcl_lnt_position.
          t98 = t23->get_first_token( )->start.
          t92 = t98->col.
          t50 = zlnt_runtime_numb_290eb04a9758=>compare( left = t80 right = t92 op = `==` ).
        ENDIF.
        IF t50 = abap_true.
          result = t23->get_first_token( )->start.
          RETURN.
        ENDIF.
        DATA(t111) = VALUE abap_bool( ).
        DATA t112 TYPE abap_bool.
        DATA t113 TYPE abap_bool.
        t113 = xsdbool( t40->str = |)| ).
        t112 = t113.
        IF t113 = abap_true.
          DATA t121 TYPE f.
          t121 = t40->start->row.
          DATA t136 TYPE REF TO zcl_lnt_position.
          t136 = t23->get_last_token( )->start.
          t112 = xsdbool( t121 = t136->row ).
        ENDIF.
        t111 = t112.
        IF t112 = abap_true.
          DATA t141 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t141 = t40->start->col.
          DATA t153 TYPE REF TO zcl_lnt_abstract_token.
          t153 = t23->get_last_token( ).
          DATA t157 TYPE f.
          t157 = t153->start->row.
          DATA t164 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t164 = t153->start->col.
          DATA t170 TYPE f.
          t170 = strlen( t153->str ).
          DATA(t175) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t175->has = abap_true.
          t175->value = t170.
          DATA t176 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t176 = NEW zcl_lnt_position( i_row = t157 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t164 right = t175 op = `+` ) )->col.
          t111 = zlnt_runtime_numb_290eb04a9758=>compare( left = t141 right = t176 op = `==` ).
        ENDIF.
        IF t111 = abap_true.
          DATA t181 TYPE REF TO zcl_lnt_abstract_token.
          t181 = t23->get_last_token( ).
          DATA t185 TYPE f.
          t185 = t181->start->row.
          DATA t192 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t192 = t181->start->col.
          DATA t198 TYPE f.
          t198 = strlen( t181->str ).
          DATA(t203) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t203->has = abap_true.
          t203->value = t198.
          result = NEW zcl_lnt_position( i_row = t185 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t192 right = t203 op = `+` ) ).
          RETURN.
        ENDIF.
      ENDIF.
      DATA(t207) = 1.
      t9 = t9 + t207.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD check_component_cond_sub.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    t5 = i_cond.
    t4 = t5->children.
    t3 ?= t4.
    t2 = t3.
    DATA t9 TYPE i.
    t9 = 0.
    DO.
      t2->load( ).
      IF xsdbool( t9 < lines( t2->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA t16 TYPE REF TO object.
      CLEAR t16.
      DATA t17 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t17.
      DATA(t19) = t9.
      t19 = t19 + 1.
      DATA t20 TYPE REF TO object.
      CLEAR t20.
      t2->load( ).
      CLEAR t20.
      READ TABLE t2->items INDEX t19 INTO t20.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      CLEAR t17.
      IF t20 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t21 ?= t20.
        DATA t22 TYPE REF TO object.
        t22 = t21->as_ref( ).
        t17 ?= t22.
      ELSE.
        t17 ?= t20.
      ENDIF.
      t16 = t17->get_db65( ).
      IF xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_component_cond ) = abap_true.
        DATA t23 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t23.
        DATA t24 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t24.
        DATA(t26) = t9.
        t26 = t26 + 1.
        DATA t27 TYPE REF TO object.
        CLEAR t27.
        t2->load( ).
        CLEAR t27.
        READ TABLE t2->items INDEX t26 INTO t27.
        DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t28.
        CLEAR t24.
        IF t27 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t28 ?= t27.
          DATA t29 TYPE REF TO object.
          t29 = t28->as_ref( ).
          t24 ?= t29.
        ELSE.
          t24 ?= t27.
        ENDIF.
        t23 = t24.
        DATA t30 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t30.
        DATA t32 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t32.
        DATA t34 TYPE i.
        DATA(t36) = 1.
        t34 = t9 - t36.
        t34 = t34 + 1.
        DATA t37 TYPE REF TO object.
        CLEAR t37.
        t2->load( ).
        CLEAR t37.
        READ TABLE t2->items INDEX t34 INTO t37.
        DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t38.
        CLEAR t32.
        IF t37 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t38 ?= t37.
          DATA t39 TYPE REF TO object.
          t39 = t38->as_ref( ).
          t32 ?= t39.
        ELSE.
          t32 ?= t37.
        ENDIF.
        t30 = t32->get_last_token( ).
        DATA t40 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t40.
        DATA t42 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t42.
        DATA t44 TYPE i.
        DATA(t46) = 1.
        t44 = t9 + t46.
        t44 = t44 + 1.
        DATA t47 TYPE REF TO object.
        CLEAR t47.
        t2->load( ).
        CLEAR t47.
        READ TABLE t2->items INDEX t44 INTO t47.
        DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t48.
        CLEAR t42.
        IF t47 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t48 ?= t47.
          DATA t49 TYPE REF TO object.
          t49 = t48->as_ref( ).
          t42 ?= t49.
        ELSE.
          t42 ?= t47.
        ENDIF.
        t40 = t42->get_first_token( ).
        DATA(t50) = VALUE abap_bool( ).
        DATA t51 TYPE abap_bool.
        DATA t52 TYPE abap_bool.
        t52 = xsdbool( t30->str = |(| ).
        t51 = t52.
        IF t52 = abap_true.
          DATA t60 TYPE f.
          t60 = t30->start->row.
          DATA t75 TYPE REF TO zcl_lnt_position.
          t75 = t23->get_first_token( )->start.
          t51 = xsdbool( t60 = t75->row ).
        ENDIF.
        t50 = t51.
        IF t51 = abap_true.
          DATA t80 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t81 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t81 = t30->start->col.
          DATA(t91) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t91->has = abap_true.
          t91->value = CONV f( 1 ).
          t80 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t81 right = t91 op = `+` ).
          DATA t92 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t98 TYPE REF TO zcl_lnt_position.
          t98 = t23->get_first_token( )->start.
          t92 = t98->col.
          t50 = zlnt_runtime_numb_290eb04a9758=>compare( left = t80 right = t92 op = `==` ).
        ENDIF.
        IF t50 = abap_true.
          result = t23->get_first_token( )->start.
          RETURN.
        ENDIF.
        DATA(t111) = VALUE abap_bool( ).
        DATA t112 TYPE abap_bool.
        DATA t113 TYPE abap_bool.
        t113 = xsdbool( t40->str = |)| ).
        t112 = t113.
        IF t113 = abap_true.
          DATA t121 TYPE f.
          t121 = t40->start->row.
          DATA t136 TYPE REF TO zcl_lnt_position.
          t136 = t23->get_last_token( )->start.
          t112 = xsdbool( t121 = t136->row ).
        ENDIF.
        t111 = t112.
        IF t112 = abap_true.
          DATA t141 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t141 = t40->start->col.
          DATA t153 TYPE REF TO zcl_lnt_abstract_token.
          t153 = t23->get_last_token( ).
          DATA t157 TYPE f.
          t157 = t153->start->row.
          DATA t164 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t164 = t153->start->col.
          DATA t170 TYPE f.
          t170 = strlen( t153->str ).
          DATA(t175) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t175->has = abap_true.
          t175->value = t170.
          DATA t176 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t176 = NEW zcl_lnt_position( i_row = t157 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t164 right = t175 op = `+` ) )->col.
          t111 = zlnt_runtime_numb_290eb04a9758=>compare( left = t141 right = t176 op = `==` ).
        ENDIF.
        IF t111 = abap_true.
          DATA t181 TYPE REF TO zcl_lnt_abstract_token.
          t181 = t23->get_last_token( ).
          DATA t185 TYPE f.
          t185 = t181->start->row.
          DATA t192 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t192 = t181->start->col.
          DATA t198 TYPE f.
          t198 = strlen( t181->str ).
          DATA(t203) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t203->has = abap_true.
          t203->value = t198.
          result = NEW zcl_lnt_position( i_row = t185 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t192 right = t203 op = `+` ) ).
          RETURN.
        ENDIF.
      ENDIF.
      DATA(t207) = 1.
      t9 = t9 + t207.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD check_component_cond.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t2 = i_cond->get_all_tokens( ).
    DATA t5 TYPE i.
    t5 = 0.
    DO.
      DATA t9 TYPE i.
      DATA t10 TYPE i.
      t2->load( ).
      t10 = lines( t2->items ).
      DATA(t12) = 1.
      t9 = t10 - t12.
      IF xsdbool( t5 < t9 ) = abap_false.
        EXIT.
      ENDIF.
      DATA t13 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t13.
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t14.
      DATA(t16) = t5.
      t16 = t16 + 1.
      DATA t17 TYPE REF TO object.
      CLEAR t17.
      t2->load( ).
      CLEAR t17.
      READ TABLE t2->items INDEX t16 INTO t17.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      CLEAR t14.
      IF t17 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t18 ?= t17.
        DATA t19 TYPE REF TO object.
        t19 = t18->as_ref( ).
        t14 ?= t19.
      ELSE.
        t14 ?= t17.
      ENDIF.
      t13 = t14.
      DATA t20 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t20.
      DATA t21 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t21.
      DATA t23 TYPE i.
      DATA(t25) = 1.
      t23 = t5 + t25.
      t23 = t23 + 1.
      DATA t26 TYPE REF TO object.
      CLEAR t26.
      t2->load( ).
      CLEAR t26.
      READ TABLE t2->items INDEX t23 INTO t26.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      CLEAR t21.
      IF t26 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t27 ?= t26.
        DATA t28 TYPE REF TO object.
        t28 = t27->as_ref( ).
        t21 ?= t28.
      ELSE.
        t21 ?= t26.
      ENDIF.
      t20 = t21.
      DATA(t29) = VALUE abap_bool( ).
      DATA(t30) = VALUE abap_bool( ).
      DATA(t31) = VALUE abap_bool( ).
      DATA t32 TYPE string.
      t32 = t20->str.
      DATA(t37) = |'|.
      DATA(t38) = strlen( t32 ).
      DATA t39 TYPE i.
      DATA(t40) = VALUE i( ).
      DATA(t41) = VALUE string( ).
      t39 = strlen( t37 ).
      IF t39 = 0.
        t31 = abap_true.
      ELSEIF t39 <= t38.
        t40 = 0.
        t41 = t32+t40(t39).
        IF t41 = t37.
          t31 = abap_true.
        ENDIF.
      ENDIF.
      t30 = t31.
      IF t31 = abap_true.
        t30 = xsdbool( t20->start->row = t13->start->row ).
      ENDIF.
      t29 = t30.
      IF t30 = abap_true.
        DATA t62 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t62 = t20->start->col.
        DATA t74 TYPE REF TO zcl_lnt_abstract_token.
        t74 = t13.
        DATA t77 TYPE f.
        t77 = t74->start->row.
        DATA t84 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t84 = t74->start->col.
        DATA t90 TYPE f.
        t90 = strlen( t74->str ).
        DATA(t95) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t95->has = abap_true.
        t95->value = t90.
        DATA t96 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t96 = NEW zcl_lnt_position( i_row = t77 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t84 right = t95 op = `+` ) )->col.
        t29 = zlnt_runtime_numb_290eb04a9758=>compare( left = t62 right = t96 op = `==` ).
      ENDIF.
      IF t29 = abap_true.
        DATA t101 TYPE REF TO zcl_lnt_abstract_token.
        t101 = t13.
        DATA t104 TYPE f.
        t104 = t101->start->row.
        DATA t111 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t111 = t101->start->col.
        DATA t117 TYPE f.
        t117 = strlen( t101->str ).
        DATA(t122) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t122->has = abap_true.
        t122->value = t117.
        result = NEW zcl_lnt_position( i_row = t104 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t111 right = t122 op = `+` ) ).
        RETURN.
      ENDIF.
      DATA(t126) = 1.
      t5 = t5 + t126.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD check_value_body_line.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    t5 = i_vb.
    t4 = t5->children.
    t3 ?= t4.
    t2 = t3.
    DATA t9 TYPE i.
    t9 = 0.
    DO.
      t2->load( ).
      IF xsdbool( t9 < lines( t2->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA t15 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t15.
      DATA t16 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t16.
      DATA(t18) = t9.
      t18 = t18 + 1.
      DATA t19 TYPE REF TO object.
      CLEAR t19.
      t2->load( ).
      CLEAR t19.
      READ TABLE t2->items INDEX t18 INTO t19.
      DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t20.
      CLEAR t16.
      IF t19 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t20 ?= t19.
        DATA t21 TYPE REF TO object.
        t21 = t20->as_ref( ).
        t16 ?= t21.
      ELSE.
        t16 ?= t19.
      ENDIF.
      t15 = t16.
      IF xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_token_node ) = abap_true.
        DATA t24 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t24.
        DATA t26 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t26.
        DATA t27 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t27.
        DATA t29 TYPE i.
        DATA(t31) = 1.
        t29 = t9 - t31.
        DATA t32 TYPE REF TO object.
        t32 = t2->get( p0 = t29 ).
        DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t33.
        CLEAR t27.
        IF t32 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t33 ?= t32.
          DATA t34 TYPE REF TO object.
          t34 = t33->as_ref( ).
          t27 ?= t34.
        ELSE.
          t27 ?= t32.
        ENDIF.
        t26 = t27.
        DATA t35 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t35.
        IF xsdbool( t26 IS INITIAL ) = abap_true.
          CLEAR t35.
        ELSE.
          t35 = t26->get_last_token( ).
        ENDIF.
        t24 = t35.
        DATA t42 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t42.
        DATA t44 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t44.
        DATA t45 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t45.
        DATA t47 TYPE i.
        DATA(t49) = 1.
        t47 = t9 + t49.
        DATA t50 TYPE REF TO object.
        t50 = t2->get( p0 = t47 ).
        DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t51.
        CLEAR t45.
        IF t50 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t51 ?= t50.
          DATA t52 TYPE REF TO object.
          t52 = t51->as_ref( ).
          t45 ?= t52.
        ELSE.
          t45 ?= t50.
        ENDIF.
        t44 = t45.
        DATA t53 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t53.
        IF xsdbool( t44 IS INITIAL ) = abap_true.
          CLEAR t53.
        ELSE.
          t53 = t44->get_first_token( ).
        ENDIF.
        t42 = t53.
        DATA(t60) = VALUE abap_bool( ).
        DATA(t61) = VALUE abap_bool( ).
        DATA t62 TYPE abap_bool.
        DATA t63 TYPE abap_bool.
        DATA t68 TYPE REF TO zcl_lnt_token_node.
        DATA t70 TYPE REF TO object.
        t70 = t15.
        t68 ?= t70.
        t63 = xsdbool( t68->token->str = |(| ).
        t62 = t63.
        IF t63 = abap_true.
          DATA t77 TYPE REF TO zcl_lnt_abstract_token.
          t77 = t42.
          t62 = xsdbool( t77 IS BOUND ).
        ENDIF.
        t61 = t62.
        IF t62 = abap_true.
          DATA t80 TYPE f.
          t80 = t42->start->row.
          DATA t94 TYPE REF TO zcl_lnt_token_node.
          DATA t96 TYPE REF TO object.
          t96 = t15.
          t94 ?= t96.
          t61 = xsdbool( t80 = t94->token->start->row ).
        ENDIF.
        t60 = t61.
        IF t61 = abap_true.
          DATA t106 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t106 = t42->start->col.
          DATA t119 TYPE REF TO zcl_lnt_abstract_token.
          DATA t122 TYPE REF TO zcl_lnt_token_node.
          DATA t124 TYPE REF TO object.
          t124 = t15.
          t122 ?= t124.
          t119 = t122->token.
          DATA t128 TYPE f.
          t128 = t119->start->row.
          DATA t135 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t135 = t119->start->col.
          DATA t141 TYPE f.
          t141 = strlen( t119->str ).
          DATA(t146) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t146->has = abap_true.
          t146->value = t141.
          DATA t147 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t147 = NEW zcl_lnt_position( i_row = t128 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t135 right = t146 op = `+` ) )->col.
          t60 = zlnt_runtime_numb_290eb04a9758=>compare( left = t106 right = t147 op = `==` ).
        ENDIF.
        IF t60 = abap_true.
          DATA t155 TYPE REF TO zcl_lnt_token_node.
          DATA t157 TYPE REF TO object.
          t157 = t15.
          t155 ?= t157.
          result = t155->token->start.
          RETURN.
        ENDIF.
        DATA(t163) = VALUE abap_bool( ).
        DATA(t164) = VALUE abap_bool( ).
        DATA t165 TYPE abap_bool.
        DATA t166 TYPE abap_bool.
        DATA t171 TYPE REF TO zcl_lnt_token_node.
        DATA t173 TYPE REF TO object.
        t173 = t15.
        t171 ?= t173.
        t166 = xsdbool( t171->token->str = |)| ).
        t165 = t166.
        IF t166 = abap_true.
          DATA t180 TYPE REF TO zcl_lnt_abstract_token.
          t180 = t24.
          t165 = xsdbool( t180 IS BOUND ).
        ENDIF.
        t164 = t165.
        IF t165 = abap_true.
          DATA t183 TYPE f.
          t183 = t24->start->row.
          DATA t197 TYPE REF TO zcl_lnt_token_node.
          DATA t199 TYPE REF TO object.
          t199 = t15.
          t197 ?= t199.
          t164 = xsdbool( t183 = t197->token->start->row ).
        ENDIF.
        t163 = t164.
        IF t164 = abap_true.
          DATA t209 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t212 TYPE REF TO zcl_lnt_abstract_token.
          t212 = t24.
          DATA t216 TYPE f.
          t216 = t212->start->row.
          DATA t223 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t223 = t212->start->col.
          DATA t229 TYPE f.
          t229 = strlen( t212->str ).
          DATA(t234) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t234->has = abap_true.
          t234->value = t229.
          t209 = NEW zcl_lnt_position( i_row = t216 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t223 right = t234 op = `+` ) )->col.
          DATA t237 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t243 TYPE REF TO zcl_lnt_token_node.
          DATA t245 TYPE REF TO object.
          t245 = t15.
          t243 ?= t245.
          t237 = t243->token->start->col.
          t163 = zlnt_runtime_numb_290eb04a9758=>compare( left = t209 right = t237 op = `==` ).
        ENDIF.
        IF t163 = abap_true.
          DATA t255 TYPE REF TO zcl_lnt_abstract_token.
          DATA t258 TYPE REF TO zcl_lnt_token_node.
          DATA t260 TYPE REF TO object.
          t260 = t15.
          t258 ?= t260.
          t255 = t258->token.
          DATA t264 TYPE f.
          t264 = t255->start->row.
          DATA t271 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t271 = t255->start->col.
          DATA t277 TYPE f.
          t277 = strlen( t255->str ).
          DATA(t282) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t282->has = abap_true.
          t282->value = t277.
          result = NEW zcl_lnt_position( i_row = t264 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t271 right = t282 op = `+` ) ).
          RETURN.
        ENDIF.
      ENDIF.
      DATA(t286) = 1.
      t9 = t9 + t286.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD check_cond.
    DATA(t1) = i_cond.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t2 = t1->get_all_tokens( ).
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    t5 = t1->find_all_expressions( i_type_9913 = t8 ).
    DATA(t9) = VALUE i( ).
    t9 = 0.
    DO.
      DATA(t13) = VALUE i( ).
      DATA(t14) = VALUE i( ).
      t2->load( ).
      t14 = lines( t2->items ).
      DATA(t16) = 1.
      t13 = t14 - t16.
      IF xsdbool( t9 < t13 ) = abap_false.
        EXIT.
      ENDIF.
      DATA t17 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t17.
      DATA t18 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t18.
      DATA(t20) = t9.
      t20 = t20 + 1.
      DATA t21 TYPE REF TO object.
      CLEAR t21.
      t2->load( ).
      CLEAR t21.
      READ TABLE t2->items INDEX t20 INTO t21.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t22.
      CLEAR t18.
      IF t21 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t22 ?= t21.
        DATA t23 TYPE REF TO object.
        t23 = t22->as_ref( ).
        t18 ?= t23.
      ELSE.
        t18 ?= t21.
      ENDIF.
      t17 = t18.
      DATA t24 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t24.
      DATA t25 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t25.
      DATA(t27) = VALUE i( ).
      DATA(t29) = 1.
      t27 = t9 + t29.
      t27 = t27 + 1.
      DATA t30 TYPE REF TO object.
      CLEAR t30.
      t2->load( ).
      CLEAR t30.
      READ TABLE t2->items INDEX t27 INTO t30.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      CLEAR t25.
      IF t30 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t31 ?= t30.
        DATA t32 TYPE REF TO object.
        t32 = t31->as_ref( ).
        t25 ?= t32.
      ELSE.
        t25 ?= t30.
      ENDIF.
      t24 = t25.
      DATA(t33) = VALUE abap_bool( ).
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = VALUE abap_bool( ).
      DATA(t36) = VALUE string( ).
      t36 = t24->str.
      DATA(t41) = |'|.
      DATA(t42) = strlen( t36 ).
      DATA(t43) = VALUE i( ).
      DATA(t44) = VALUE i( ).
      DATA(t45) = VALUE string( ).
      t43 = strlen( t41 ).
      IF t43 = 0.
        t35 = abap_true.
      ELSEIF t43 <= t42.
        t44 = 0.
        t45 = t36+t44(t43).
        IF t45 = t41.
          t35 = abap_true.
        ENDIF.
      ENDIF.
      t34 = t35.
      IF t35 = abap_true.
        t34 = xsdbool( t24->start->row = t17->start->row ).
      ENDIF.
      t33 = t34.
      IF t34 = abap_true.
        DATA t66 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t66.
        t66 = t24->start->col.
        DATA t75 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t75.
        DATA t78 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t78.
        t78 = t17.
        DATA(t81) = VALUE f( ).
        t81 = t78->start->row.
        DATA t88 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t88.
        t88 = t78->start->col.
        DATA(t94) = VALUE f( ).
        t94 = strlen( t78->str ).
        DATA(t99) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t99->has = abap_true.
        t99->value = t94.
        t75 = NEW zcl_lnt_position( i_row = t81 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t88 right = t99 op = `+` ) )->col.
        t33 = zlnt_runtime_numb_290eb04a9758=>compare( left = t66 right = t75 op = `==` ).
      ENDIF.
      IF t33 = abap_true.
        DATA(t102) = VALUE abap_bool( ).
        t102 = abap_false.
        DATA(t104) = VALUE i( ).
        t104 = 0.
        DATA t107 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t107.
        DATA t108 TYPE REF TO object.
        CLEAR t108.
        DATA(t109) = VALUE i( ).
        DO.
          t5->load( ).
          IF t109 >= lines( t5->items ).
            EXIT.
          ENDIF.
          CLEAR t108.
          READ TABLE t5->items INDEX t109 + 1 INTO t108.
          t109 = t109 + 1.
          DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t110.
          CLEAR t107.
          IF t108 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t110 ?= t108.
            DATA t111 TYPE REF TO object.
            t111 = t110->as_ref( ).
            t107 ?= t111.
          ELSE.
            t107 ?= t108.
          ENDIF.
          DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t112.
          t112 = t107->get_all_tokens( ).
          DATA t114 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t114.
          DATA t115 TYPE REF TO object.
          CLEAR t115.
          DATA(t116) = VALUE i( ).
          DO.
            t112->load( ).
            IF t116 >= lines( t112->items ).
              EXIT.
            ENDIF.
            CLEAR t115.
            READ TABLE t112->items INDEX t116 + 1 INTO t115.
            t116 = t116 + 1.
            DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t117.
            CLEAR t114.
            IF t115 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t117 ?= t115.
              DATA t118 TYPE REF TO object.
              t118 = t117->as_ref( ).
              t114 ?= t118.
            ELSE.
              t114 ?= t115.
            ENDIF.
            DATA(t119) = VALUE abap_bool( ).
            DATA(t120) = VALUE abap_bool( ).
            DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t123.
            DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t124.
            CLEAR t123.
            IF t114 IS BOUND.
              DATA t125 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t125.
              DATA t126 TYPE REF TO object.
              CLEAR t125.
              t126 = t114.
              TRY.
                  t123 ?= t126.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t123 IS NOT BOUND.
                TRY.
                    t125 ?= t114.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t125 IS BOUND.
                  t123 = t125->source( ).
                ENDIF.
                IF t123 IS NOT BOUND.
                  CREATE OBJECT t123.
                  t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t123->oval = t114.
                ENDIF.
              ENDIF.
            ENDIF.
            CLEAR t124.
            IF t24 IS BOUND.
              DATA t127 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t127.
              DATA t128 TYPE REF TO object.
              CLEAR t127.
              t128 = t24.
              TRY.
                  t124 ?= t128.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t124 IS NOT BOUND.
                TRY.
                    t127 ?= t24.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t127 IS BOUND.
                  t124 = t127->source( ).
                ENDIF.
                IF t124 IS NOT BOUND.
                  CREATE OBJECT t124.
                  t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t124->oval = t24.
                ENDIF.
              ENDIF.
            ENDIF.
            IF t123 IS BOUND.
              t120 = t123->strict_equals( t124 ).
            ELSE.
              t120 = xsdbool( t124 IS NOT BOUND ).
            ENDIF.
            t119 = t120.
            IF t120 = abap_false.
              DATA(t129) = VALUE abap_bool( ).
              DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t132.
              DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t133.
              CLEAR t132.
              IF t114 IS BOUND.
                DATA t134 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t134.
                DATA t135 TYPE REF TO object.
                CLEAR t134.
                t135 = t114.
                TRY.
                    t132 ?= t135.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t132 IS NOT BOUND.
                  TRY.
                      t134 ?= t114.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t134 IS BOUND.
                    t132 = t134->source( ).
                  ENDIF.
                  IF t132 IS NOT BOUND.
                    CREATE OBJECT t132.
                    t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    t132->oval = t114.
                  ENDIF.
                ENDIF.
              ENDIF.
              CLEAR t133.
              IF t17 IS BOUND.
                DATA t136 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t136.
                DATA t137 TYPE REF TO object.
                CLEAR t136.
                t137 = t17.
                TRY.
                    t133 ?= t137.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t133 IS NOT BOUND.
                  TRY.
                      t136 ?= t17.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t136 IS BOUND.
                    t133 = t136->source( ).
                  ENDIF.
                  IF t133 IS NOT BOUND.
                    CREATE OBJECT t133.
                    t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    t133->oval = t17.
                  ENDIF.
                ENDIF.
              ENDIF.
              IF t132 IS BOUND.
                t129 = t132->strict_equals( t133 ).
              ELSE.
                t129 = xsdbool( t133 IS NOT BOUND ).
              ENDIF.
              t119 = t129.
            ENDIF.
            IF t119 = abap_true.
              t102 = abap_true.
              t104 = 1.
              EXIT.
            ENDIF.
          ENDDO.
          IF xsdbool( t104 = 1 ) = abap_true.
            EXIT.
          ENDIF.
          IF xsdbool( t104 = 2 ) = abap_true.
            t104 = 0.
            CONTINUE.
          ENDIF.
        ENDDO.
        IF xsdbool( t102 = abap_false ) = abap_true.
          DATA t153 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t153.
          t153 = t17.
          DATA(t156) = VALUE f( ).
          t156 = t153->start->row.
          DATA t163 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t163.
          t163 = t153->start->col.
          DATA(t169) = VALUE f( ).
          t169 = strlen( t153->str ).
          DATA(t174) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t174->has = abap_true.
          t174->value = t169.
          result = NEW zcl_lnt_position( i_row = t156 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t163 right = t174 op = `+` ) ).
          RETURN.
        ENDIF.
      ENDIF.
      DATA(t178) = 1.
      t9 = t9 + t178.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD check_source.
    DATA(t1) = i_cond.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t2 = t1->get_all_tokens( ).
    t2->load( ).
    IF xsdbool( lines( t2->items ) < 2 ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t10 TYPE abap_bool.
    DATA t11 TYPE abap_bool.
    t2->load( ).
    t11 = xsdbool( lines( t2->items ) >= 4 ).
    t10 = t11.
    IF t11 = abap_true.
      DATA(t16) = VALUE string( ).
      DATA(t17) = VALUE string( ).
      DATA t19 TYPE REF TO zcl_lnt_abstract_token.
      DATA t21 TYPE REF TO object.
      t2->load( ).
      READ TABLE t2->items INDEX 1 INTO t21.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t21 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t22 ?= t21.
        DATA t23 TYPE REF TO object.
        t23 = t22->as_ref( ).
        t19 ?= t23.
      ELSE.
        t19 ?= t21.
      ENDIF.
      t17 = t19->str.
      DATA(t26) = strlen( t17 ).
      t16 = t17.
      IF t16 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t16 TO UPPER CASE.
      ELSE.
        t16 = zlnt_runtime_uppe_91169605024d=>full( t16 ).
      ENDIF.
      t10 = xsdbool( t16 = |CONV| ).
    ENDIF.
    IF t10 = abap_true.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t31 TYPE REF TO zcl_lnt_abstract_node.
      t31 = t1.
      t30 = t31->children.
      t29 ?= t30.
      t28 = t29.
      DATA t35 TYPE REF TO zcl_lnt_abstract_token.
      DATA t37 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t38 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t41 TYPE REF TO object.
      t41 = t28->get( p0 = 2 ).
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t41 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t42 ?= t41.
        DATA t43 TYPE REF TO object.
        t43 = t42->as_ref( ).
        t38 ?= t43.
      ELSE.
        t38 ?= t41.
      ENDIF.
      t37 = t38.
      DATA t44 TYPE REF TO zcl_lnt_abstract_token.
      IF xsdbool( t37 IS INITIAL ) = abap_true.
      ELSE.
        t44 = t37->get_last_token( ).
      ENDIF.
      t35 = t44.
      DATA t51 TYPE REF TO zcl_lnt_abstract_token.
      DATA t53 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t54 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t57 TYPE REF TO object.
      t57 = t28->get( p0 = 3 ).
      DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t57 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t58 ?= t57.
        DATA t59 TYPE REF TO object.
        t59 = t58->as_ref( ).
        t54 ?= t59.
      ELSE.
        t54 ?= t57.
      ENDIF.
      t53 = t54.
      DATA t60 TYPE REF TO zcl_lnt_abstract_token.
      IF xsdbool( t53 IS INITIAL ) = abap_true.
      ELSE.
        t60 = t53->get_first_token( ).
      ENDIF.
      t51 = t60.
      DATA(t67) = VALUE abap_bool( ).
      DATA(t68) = VALUE abap_bool( ).
      DATA(t69) = VALUE abap_bool( ).
      DATA t70 TYPE abap_bool.
      DATA t71 TYPE abap_bool.
      t71 = xsdbool( t35 IS BOUND ).
      t70 = t71.
      IF t71 = abap_true.
        t70 = xsdbool( t35->str = |(| ).
      ENDIF.
      t69 = t70.
      IF t70 = abap_true.
        DATA t82 TYPE REF TO zcl_lnt_abstract_token.
        t82 = t51.
        t69 = xsdbool( t82 IS BOUND ).
      ENDIF.
      t68 = t69.
      IF t69 = abap_true.
        t68 = xsdbool( t35->start->row = t51->start->row ).
      ENDIF.
      t67 = t68.
      IF t68 = abap_true.
        DATA t106 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t107 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t107 = t35->start->col.
        DATA(t118) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t118->has = abap_true.
        t118->value = CONV f( 1 ).
        t106 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t107 right = t118 op = `+` ).
        DATA t127 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t127 = t51->start->col.
        t67 = zlnt_runtime_numb_290eb04a9758=>compare( left = t106 right = t127 op = `==` ).
      ENDIF.
      IF t67 = abap_true.
        result = t51->start.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t138 TYPE REF TO zcl_lnt_abstract_token.
    DATA t139 TYPE REF TO zcl_lnt_abstract_token.
    DATA t141 TYPE i.
    DATA t142 TYPE i.
    t2->load( ).
    t142 = lines( t2->items ).
    DATA(t144) = 2.
    t141 = t142 - t144.
    t141 = t141 + 1.
    DATA t145 TYPE REF TO object.
    t2->load( ).
    READ TABLE t2->items INDEX t141 INTO t145.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t145 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t146 ?= t145.
      DATA t147 TYPE REF TO object.
      t147 = t146->as_ref( ).
      t139 ?= t147.
    ELSE.
      t139 ?= t145.
    ENDIF.
    t138 = t139.
    DATA t148 TYPE REF TO zcl_lnt_abstract_token.
    DATA t149 TYPE REF TO zcl_lnt_abstract_token.
    DATA t151 TYPE i.
    DATA t152 TYPE i.
    t2->load( ).
    t152 = lines( t2->items ).
    DATA(t154) = 1.
    t151 = t152 - t154.
    t151 = t151 + 1.
    DATA t155 TYPE REF TO object.
    t2->load( ).
    READ TABLE t2->items INDEX t151 INTO t155.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t155 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t156 ?= t155.
      DATA t157 TYPE REF TO object.
      t157 = t156->as_ref( ).
      t149 ?= t157.
    ELSE.
      t149 ?= t155.
    ENDIF.
    t148 = t149.
    DATA(t158) = VALUE abap_bool( ).
    DATA(t159) = VALUE abap_bool( ).
    DATA(t160) = VALUE abap_bool( ).
    DATA t161 TYPE string.
    t161 = t138->str.
    DATA(t166) = |'|.
    DATA(t167) = strlen( t161 ).
    DATA t168 TYPE i.
    DATA(t169) = VALUE i( ).
    DATA(t170) = VALUE string( ).
    t168 = strlen( t166 ).
    IF t168 = 0.
      t160 = abap_true.
    ELSEIF t168 <= t167.
      t169 = 0.
      t170 = t161+t169(t168).
      IF t170 = t166.
        t160 = abap_true.
      ENDIF.
    ENDIF.
    t159 = t160.
    IF t160 = abap_true.
      t159 = xsdbool( t138->start->row = t148->start->row ).
    ENDIF.
    t158 = t159.
    IF t159 = abap_true.
      DATA t191 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t194 TYPE REF TO zcl_lnt_abstract_token.
      t194 = t138.
      DATA t197 TYPE f.
      t197 = t194->start->row.
      DATA t204 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t204 = t194->start->col.
      DATA t210 TYPE f.
      t210 = strlen( t194->str ).
      DATA(t215) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t215->has = abap_true.
      t215->value = t210.
      t191 = NEW zcl_lnt_position( i_row = t197 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t204 right = t215 op = `+` ) )->col.
      DATA t225 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t225 = t148->start->col.
      t158 = zlnt_runtime_numb_290eb04a9758=>compare( left = t191 right = t225 op = `==` ).
    ENDIF.
    IF t158 = abap_true.
      DATA t230 TYPE REF TO zcl_lnt_abstract_token.
      t230 = t148.
      DATA t233 TYPE f.
      t233 = t230->start->row.
      DATA t240 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t240 = t230->start->col.
      DATA t246 TYPE f.
      t246 = strlen( t230->str ).
      DATA(t251) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t251->has = abap_true.
      t251->value = t246.
      result = NEW zcl_lnt_position( i_row = t233 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t240 right = t251 op = `+` ) ).
      RETURN.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD check_method_call_param.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    t5 = i_call_bc15.
    t4 = t5->children.
    t3 ?= t4.
    t2 = t3.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    DATA t11 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t13 TYPE REF TO object.
    t2->load( ).
    READ TABLE t2->items INDEX 1 INTO t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t14 ?= t13.
      DATA t15 TYPE REF TO object.
      t15 = t14->as_ref( ).
      t11 ?= t15.
    ELSE.
      t11 ?= t13.
    ENDIF.
    t9 = t11->get_first_token( ).
    DATA t16 TYPE REF TO zcl_lnt_abstract_token.
    DATA t18 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t20 TYPE REF TO object.
    t2->load( ).
    READ TABLE t2->items INDEX 2 INTO t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t20 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t21 ?= t20.
      DATA t22 TYPE REF TO object.
      t22 = t21->as_ref( ).
      t18 ?= t22.
    ELSE.
      t18 ?= t20.
    ENDIF.
    t16 = t18->get_first_token( ).
    DATA t23 TYPE abap_bool.
    DATA t24 TYPE abap_bool.
    t24 = xsdbool( t9->start->row = t16->start->row ).
    t23 = t24.
    IF t24 = abap_true.
      DATA t44 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t45 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t45 = t9->start->col.
      DATA(t55) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t55->has = abap_true.
      t55->value = CONV f( 1 ).
      t44 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t45 right = t55 op = `+` ).
      DATA t63 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t63 = t16->start->col.
      t23 = zlnt_runtime_numb_290eb04a9758=>compare( left = t44 right = t63 op = `==` ).
    ENDIF.
    IF t23 = abap_true.
      result = t16->start.
      RETURN.
    ENDIF.
    DATA t73 TYPE REF TO zcl_lnt_abstract_token.
    DATA t75 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t77 TYPE i.
    DATA t78 TYPE i.
    t2->load( ).
    t78 = lines( t2->items ).
    DATA(t80) = 2.
    t77 = t78 - t80.
    t77 = t77 + 1.
    DATA t81 TYPE REF TO object.
    t2->load( ).
    READ TABLE t2->items INDEX t77 INTO t81.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t81 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t82 ?= t81.
      DATA t83 TYPE REF TO object.
      t83 = t82->as_ref( ).
      t75 ?= t83.
    ELSE.
      t75 ?= t81.
    ENDIF.
    t73 = t75->get_last_token( ).
    DATA t84 TYPE REF TO zcl_lnt_abstract_token.
    DATA t86 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t88 TYPE i.
    DATA t89 TYPE i.
    t2->load( ).
    t89 = lines( t2->items ).
    DATA(t91) = 1.
    t88 = t89 - t91.
    t88 = t88 + 1.
    DATA t92 TYPE REF TO object.
    t2->load( ).
    READ TABLE t2->items INDEX t88 INTO t92.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t92 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t93 ?= t92.
      DATA t94 TYPE REF TO object.
      t94 = t93->as_ref( ).
      t86 ?= t94.
    ELSE.
      t86 ?= t92.
    ENDIF.
    t84 = t86->get_first_token( ).
    DATA t95 TYPE abap_bool.
    DATA t96 TYPE abap_bool.
    t96 = xsdbool( t73->start->row = t84->start->row ).
    t95 = t96.
    IF t96 = abap_true.
      DATA t116 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t119 TYPE REF TO zcl_lnt_abstract_token.
      t119 = t73.
      DATA t122 TYPE f.
      t122 = t119->start->row.
      DATA t129 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t129 = t119->start->col.
      DATA t135 TYPE f.
      t135 = strlen( t119->str ).
      DATA(t140) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t140->has = abap_true.
      t140->value = t135.
      t116 = NEW zcl_lnt_position( i_row = t122 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t129 right = t140 op = `+` ) )->col.
      DATA t150 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t150 = t84->start->col.
      t95 = zlnt_runtime_numb_290eb04a9758=>compare( left = t116 right = t150 op = `==` ).
    ENDIF.
    IF t95 = abap_true.
      result = t84->start.
      RETURN.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_prsr_mssng_spc_cnf( me->g_c_i_s_r_pr_ms_sp_ts_pr_ms_sp( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_prsr_mssng_spc_cnf( me->g_c_i_s_r_pr_ms_sp_ts_pr_ms_sp( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_prsr_mssng_spc_cnf.
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
        t1 = NEW zcl_lnt_prsr_mssng_spc_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_pr_ms_sp_ts_pr_ms_sp( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_pr_ms_sp_ts_pr_ms_sp( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1647_7a524a243458.
  ENDMETHOD.
ENDCLASS.
