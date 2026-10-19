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
    DATA t2 TYPE string.
    t2 = |parser_missing_space|.
    DATA t4 TYPE string.
    t4 = |Parser Error, missing space|.
    DATA t6 TYPE string.
    DATA(t7) = |In special cases the ABAP language allows for not having spa|.
    t7 = t7 && |ces before or after string literals.\nThis rule makes sure th|.
    t7 = t7 && |e spaces are consistently required across the language.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t15) = |Syntax|.
    t12->load( ).
    APPEND t15 TO t12->items.
    t12->save( ).
    DATA(t17) = |Whitespace|.
    t12->load( ).
    APPEND t17 TO t12->items.
    t12->save( ).
    DATA(t19) = |SingleFile|.
    t12->load( ).
    APPEND t19 TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t25) = |IF ( foo = 'bar').|.
    DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t26->has = abap_true.
    t26->value = t25.
    t22 = t26.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t31) = |IF ( foo = 'bar' ).|.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = t31.
    t28 = t32.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t22 i_good_example = t28 i_extended_information = t34 i_tags = t8 i_pragma = t36 i_pseudo_comment = t38 ).
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
    DATA(t46) = |key|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    DATA(t48) = |title|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |shortDescription|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |tags|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    DATA(t54) = |badExample|.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
    ENDIF.
    DATA(t56) = |goodExample|.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t56 p1 = t57 ).
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
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_position.
    DATA t5 TYPE REF TO zcl_lnt_position.
    DATA(t6) = CONV f( 0 ).
    DATA(t7) = CONV f( 0 ).
    DATA(t8) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t8->has = abap_true.
    t8->value = t7.
    t5 = NEW zcl_lnt_position( i_row = t6 i_col = t8 ).
    t4 = t5.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t12 = t1->statements.
    t9 = t12.
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
      DATA t20 TYPE REF TO zcl_lnt_position.
      t20 = me->missing_space( i_statement = t14 ).
      t19 = t20.
      DATA t22 TYPE abap_bool.
      t22 = xsdbool( t19 IS BOUND ).
      IF t22 = abap_true.
        DATA(t25) = |Missing space between string or character literal and parent|.
        t25 = t25 && |heses|.
        t4 = t19.
        DATA t29 TYPE REF TO zcl_lnt_issue.
        CLEAR t29.
        DATA(t33) = VALUE string( ).
        DATA t34 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t34.
        DATA t35 TYPE string.
        t35 = |parser_missing_space|.
        DATA t37 TYPE string.
        t37 = |Parser Error, missing space|.
        DATA t39 TYPE string.
        DATA(t40) = |In special cases the ABAP language allows for not having spa|.
        t40 = t40 && |ces before or after string literals.\nThis rule makes sure th|.
        t40 = t40 && |e spaces are consistently required across the language.|.
        t39 = t40.
        DATA t41 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t41.
        DATA t45 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t46 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t46.
        t45 = t46.
        DATA(t48) = |Syntax|.
        t45->load( ).
        APPEND t48 TO t45->items.
        t45->save( ).
        DATA(t50) = |Whitespace|.
        t45->load( ).
        APPEND t50 TO t45->items.
        t45->save( ).
        DATA(t52) = |SingleFile|.
        t45->load( ).
        APPEND t52 TO t45->items.
        t45->save( ).
        t41 = t45.
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t55.
        DATA(t58) = |IF ( foo = 'bar').|.
        DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t59->has = abap_true.
        t59->value = t58.
        t55 = t59.
        DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t61.
        DATA(t64) = |IF ( foo = 'bar' ).|.
        DATA(t65) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t65->has = abap_true.
        t65->value = t64.
        t61 = t65.
        DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t67.
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t69.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t71.
        t34 = NEW zcl_lnt_irule_metadata( i_key = t35 i_title = t37 i_short_description = t39 i_bad_example = t55 i_good_example = t61 i_extended_information = t67 i_tags = t41 i_pragma = t69 i_pseudo_comment = t71 ).
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
        DATA(t79) = |key|.
        DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t80.
        t34->zlnt_json_ownkeys_70e5fd461788->put( p0 = t79 p1 = t80 ).
        DATA(t81) = |title|.
        DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t82.
        IF t34->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t34->zlnt_json_ownkeys_70e5fd461788->put( p0 = t81 p1 = t82 ).
        ENDIF.
        DATA(t83) = |shortDescription|.
        DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t84.
        IF t34->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t34->zlnt_json_ownkeys_70e5fd461788->put( p0 = t83 p1 = t84 ).
        ENDIF.
        DATA(t85) = |tags|.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        IF t34->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t34->zlnt_json_ownkeys_70e5fd461788->put( p0 = t85 p1 = t86 ).
        ENDIF.
        DATA(t87) = |badExample|.
        DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t88.
        IF t34->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t34->zlnt_json_ownkeys_70e5fd461788->put( p0 = t87 p1 = t88 ).
        ENDIF.
        DATA(t89) = |goodExample|.
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t90.
        IF t34->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t34->zlnt_json_ownkeys_70e5fd461788->put( p0 = t89 p1 = t90 ).
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
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t3 = t1->get_tokens( ).
    t2 = t3.
    DATA t5 TYPE i.
    t5 = 1.
    DO.
      DATA t7 TYPE abap_bool.
      DATA t9 TYPE i.
      t2->load( ).
      t9 = lines( t2->items ).
      t7 = xsdbool( t5 < t9 ).
      IF t7 = abap_false.
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
      DATA t31 TYPE string.
      DATA t34 TYPE string.
      t34 = t11->str.
      t31 = t34.
      DATA(t36) = |)|.
      t30 = xsdbool( t31 = t36 ).
      t29 = t30.
      IF t30 = abap_true.
        DATA t37 TYPE abap_bool.
        DATA t38 TYPE string.
        DATA t41 TYPE string.
        t41 = t20->str.
        t38 = t41.
        DATA(t43) = |=|.
        t37 = xsdbool( t38 = t43 ).
        t29 = t37.
      ENDIF.
      t28 = t29.
      IF t29 = abap_true.
        DATA t44 TYPE abap_bool.
        DATA t45 TYPE f.
        DATA t50 TYPE REF TO zcl_lnt_position.
        t50 = t11->start.
        DATA t52 TYPE f.
        t52 = t50->row.
        t45 = t52.
        DATA t54 TYPE f.
        DATA t59 TYPE REF TO zcl_lnt_position.
        t59 = t20->start.
        DATA t61 TYPE f.
        t61 = t59->row.
        t54 = t61.
        t44 = xsdbool( t45 = t54 ).
        t28 = t44.
      ENDIF.
      t27 = t28.
      IF t28 = abap_true.
        DATA t63 TYPE abap_bool.
        DATA t64 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t67 TYPE REF TO zcl_lnt_abstract_token.
        t67 = t11.
        DATA t69 TYPE REF TO zcl_lnt_position.
        DATA t70 TYPE f.
        DATA t72 TYPE REF TO zcl_lnt_position.
        t72 = t67->start.
        DATA t74 TYPE f.
        t74 = t72->row.
        t70 = t74.
        DATA t76 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t77 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t79 TYPE REF TO zcl_lnt_position.
        t79 = t67->start.
        DATA t81 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t81 = t79->col.
        t77 = t81.
        DATA t83 TYPE f.
        DATA t85 TYPE string.
        t85 = t67->str.
        t83 = strlen( t85 ).
        DATA(t88) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t88->has = abap_true.
        t88->value = t83.
        t76 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t77 right = t88 op = `+` ).
        t69 = NEW zcl_lnt_position( i_row = t70 i_col = t76 ).
        DATA t89 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t89 = t69->col.
        t64 = t89.
        DATA t91 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t96 TYPE REF TO zcl_lnt_position.
        t96 = t20->start.
        DATA t98 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t98 = t96->col.
        t91 = t98.
        t63 = zlnt_runtime_numb_290eb04a9758=>compare( left = t64 right = t91 op = `==` ).
        t27 = t63.
      ENDIF.
      IF t27 = abap_true.
        DATA t105 TYPE REF TO zcl_lnt_position.
        t105 = t20->start.
        result = t105.
        RETURN.
      ENDIF.
      DATA t108 TYPE i.
      DATA(t110) = 1.
      t108 = t5 + t110.
      t5 = t108.
    ENDDO.
    DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t116 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t116.
    t115 = t116.
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
    DATA t136 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t139) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t139->has = abap_true.
    t139->value = abap_true.
    t136 = t139.
    t112 = t1->find_all_expressions_multi( i_type_9913 = t114 i_recursive = t136 ).
    t111 = t112.
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
      DATA t150 TYPE REF TO zif_lnt_statement_runnable.
      t150 = t144->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t149 = t150.
      DATA t152 TYPE abap_bool.
      t152 = xsdbool( t149 IS BOUND AND t149 IS INSTANCE OF zcl_lnt_st_cond ).
      IF t152 = abap_true.
        DATA t154 TYPE REF TO zcl_lnt_position.
        t154 = me->check_cond( i_cond = t144 ).
        t141 = t154.
      ELSE.
        DATA t156 TYPE abap_bool.
        t156 = xsdbool( t149 IS BOUND AND t149 IS INSTANCE OF zcl_lnt_st_source ).
        IF t156 = abap_true.
          DATA t158 TYPE REF TO zcl_lnt_position.
          t158 = me->check_source( i_cond = t144 ).
          t141 = t158.
        ELSE.
          DATA t160 TYPE abap_bool.
          t160 = xsdbool( t149 IS BOUND AND t149 IS INSTANCE OF zcl_lnt_cond_sub ).
          IF t160 = abap_true.
            DATA t162 TYPE REF TO zcl_lnt_position.
            t162 = me->check_cond_sub( i_cond = t144 ).
            t141 = t162.
          ELSE.
            DATA t164 TYPE abap_bool.
            t164 = xsdbool( t149 IS BOUND AND t149 IS INSTANCE OF zcl_lnt_st_component_cond ).
            IF t164 = abap_true.
              DATA t166 TYPE REF TO zcl_lnt_position.
              t166 = me->check_component_cond( i_cond = t144 ).
              t141 = t166.
            ELSE.
              DATA t168 TYPE abap_bool.
              t168 = xsdbool( t149 IS BOUND AND t149 IS INSTANCE OF zcl_lnt_component_cond_sub ).
              IF t168 = abap_true.
                DATA t170 TYPE REF TO zcl_lnt_position.
                t170 = me->check_component_cond_sub( i_cond = t144 ).
                t141 = t170.
              ELSE.
                DATA t172 TYPE abap_bool.
                t172 = xsdbool( t149 IS BOUND AND t149 IS INSTANCE OF zcl_lnt_sql_cond ).
                IF t172 = abap_true.
                  DATA t174 TYPE REF TO zcl_lnt_position.
                  t174 = me->check_sql_cond( i_cond = t144 ).
                  t141 = t174.
                ELSE.
                  DATA t176 TYPE abap_bool.
                  t176 = xsdbool( t149 IS BOUND AND t149 IS INSTANCE OF zcl_lnt_value_body_line ).
                  IF t176 = abap_true.
                    DATA t178 TYPE REF TO zcl_lnt_position.
                    t178 = me->check_value_body_line( i_vb = t144 ).
                    t141 = t178.
                  ELSE.
                    DATA t180 TYPE abap_bool.
                    t180 = xsdbool( t149 IS BOUND AND t149 IS INSTANCE OF zcl_lnt_st_new_object ).
                    IF t180 = abap_true.
                      DATA t186 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                      DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                      DATA t188 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                      DATA t189 TYPE REF TO zcl_lnt_abstract_node.
                      t189 = t144.
                      DATA t191 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                      t191 = t189->children.
                      t188 = t191.
                      t187 ?= t188.
                      t186 = t187.
                      DATA t194 TYPE REF TO zcl_lnt_abstract_token.
                      CLEAR t194.
                      DATA t195 TYPE REF TO zcl_lnt_abstract_token.
                      CLEAR t195.
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
                      t195 = t196->get_last_token( ).
                      t194 = t195.
                      DATA t205 TYPE REF TO zcl_lnt_abstract_token.
                      CLEAR t205.
                      DATA t206 TYPE REF TO zcl_lnt_abstract_token.
                      CLEAR t206.
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
                      t206 = t207->get_first_token( ).
                      t205 = t206.
                      DATA t216 TYPE REF TO zcl_lnt_position.
                      CLEAR t216.
                      DATA t217 TYPE abap_bool.
                      DATA t218 TYPE abap_bool.
                      DATA t219 TYPE f.
                      DATA t224 TYPE REF TO zcl_lnt_position.
                      t224 = t194->start.
                      DATA t226 TYPE f.
                      t226 = t224->row.
                      t219 = t226.
                      DATA t228 TYPE f.
                      DATA t233 TYPE REF TO zcl_lnt_position.
                      t233 = t205->start.
                      DATA t235 TYPE f.
                      t235 = t233->row.
                      t228 = t235.
                      t218 = xsdbool( t219 = t228 ).
                      t217 = t218.
                      IF t218 = abap_true.
                        DATA t237 TYPE abap_bool.
                        DATA t238 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                        DATA t241 TYPE REF TO zcl_lnt_abstract_token.
                        t241 = t194.
                        DATA t243 TYPE REF TO zcl_lnt_position.
                        DATA t244 TYPE f.
                        DATA t246 TYPE REF TO zcl_lnt_position.
                        t246 = t241->start.
                        DATA t248 TYPE f.
                        t248 = t246->row.
                        t244 = t248.
                        DATA t250 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                        DATA t251 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                        DATA t253 TYPE REF TO zcl_lnt_position.
                        t253 = t241->start.
                        DATA t255 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                        t255 = t253->col.
                        t251 = t255.
                        DATA t257 TYPE f.
                        DATA t259 TYPE string.
                        t259 = t241->str.
                        t257 = strlen( t259 ).
                        DATA(t262) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                        t262->has = abap_true.
                        t262->value = t257.
                        t250 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t251 right = t262 op = `+` ).
                        t243 = NEW zcl_lnt_position( i_row = t244 i_col = t250 ).
                        DATA t263 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                        t263 = t243->col.
                        t238 = t263.
                        DATA t265 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                        DATA t270 TYPE REF TO zcl_lnt_position.
                        t270 = t205->start.
                        DATA t272 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                        t272 = t270->col.
                        t265 = t272.
                        t237 = zlnt_runtime_numb_290eb04a9758=>compare( left = t238 right = t265 op = `==` ).
                        t217 = t237.
                      ENDIF.
                      IF t217 = abap_true.
                        DATA t279 TYPE REF TO zcl_lnt_position.
                        t279 = t205->start.
                        t216 = t279.
                      ELSE.
                        CLEAR t216.
                      ENDIF.
                      t141 = t216.
                    ELSE.
                      DATA t283 TYPE abap_bool.
                      t283 = xsdbool( t149 IS BOUND AND t149 IS INSTANCE OF zcl_lnt_st_method_call_param ).
                      IF t283 = abap_true.
                        DATA t289 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                        DATA t290 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                        DATA t291 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                        DATA t292 TYPE REF TO zcl_lnt_abstract_node.
                        t292 = t144.
                        DATA t294 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                        t294 = t292->children.
                        t291 = t294.
                        t290 ?= t291.
                        t289 = t290.
                        DATA t297 TYPE REF TO zcl_lnt_abstract_token.
                        CLEAR t297.
                        DATA t298 TYPE REF TO zcl_lnt_abstract_token.
                        CLEAR t298.
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
                        t298 = t299->get_first_token( ).
                        t297 = t298.
                        DATA t304 TYPE REF TO zcl_lnt_abstract_token.
                        CLEAR t304.
                        DATA t305 TYPE REF TO zcl_lnt_abstract_token.
                        CLEAR t305.
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
                        t305 = t306->get_first_token( ).
                        t304 = t305.
                        DATA t311 TYPE REF TO zcl_lnt_position.
                        CLEAR t311.
                        DATA t312 TYPE abap_bool.
                        DATA t313 TYPE abap_bool.
                        DATA t314 TYPE f.
                        DATA t319 TYPE REF TO zcl_lnt_position.
                        t319 = t297->start.
                        DATA t321 TYPE f.
                        t321 = t319->row.
                        t314 = t321.
                        DATA t323 TYPE f.
                        DATA t328 TYPE REF TO zcl_lnt_position.
                        t328 = t304->start.
                        DATA t330 TYPE f.
                        t330 = t328->row.
                        t323 = t330.
                        t313 = xsdbool( t314 = t323 ).
                        t312 = t313.
                        IF t313 = abap_true.
                          DATA t332 TYPE abap_bool.
                          DATA t333 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                          DATA t334 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                          DATA t339 TYPE REF TO zcl_lnt_position.
                          t339 = t297->start.
                          DATA t341 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                          t341 = t339->col.
                          t334 = t341.
                          DATA(t343) = CONV f( 1 ).
                          DATA(t344) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                          t344->has = abap_true.
                          t344->value = t343.
                          t333 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t334 right = t344 op = `+` ).
                          DATA t345 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                          DATA t350 TYPE REF TO zcl_lnt_position.
                          t350 = t304->start.
                          DATA t352 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                          t352 = t350->col.
                          t345 = t352.
                          t332 = zlnt_runtime_numb_290eb04a9758=>compare( left = t333 right = t345 op = `==` ).
                          t312 = t332.
                        ENDIF.
                        IF t312 = abap_true.
                          DATA t359 TYPE REF TO zcl_lnt_position.
                          t359 = t304->start.
                          t311 = t359.
                        ELSE.
                          DATA t363 TYPE REF TO zcl_lnt_abstract_token.
                          CLEAR t363.
                          DATA t364 TYPE REF TO zcl_lnt_abstract_token.
                          CLEAR t364.
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
                          t364 = t365->get_last_token( ).
                          t363 = t364.
                          DATA t374 TYPE REF TO zcl_lnt_abstract_token.
                          CLEAR t374.
                          DATA t375 TYPE REF TO zcl_lnt_abstract_token.
                          CLEAR t375.
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
                          t375 = t376->get_first_token( ).
                          t374 = t375.
                          DATA t385 TYPE REF TO zcl_lnt_position.
                          CLEAR t385.
                          DATA t386 TYPE abap_bool.
                          DATA t387 TYPE abap_bool.
                          DATA t388 TYPE f.
                          DATA t393 TYPE REF TO zcl_lnt_position.
                          t393 = t363->start.
                          DATA t395 TYPE f.
                          t395 = t393->row.
                          t388 = t395.
                          DATA t397 TYPE f.
                          DATA t402 TYPE REF TO zcl_lnt_position.
                          t402 = t374->start.
                          DATA t404 TYPE f.
                          t404 = t402->row.
                          t397 = t404.
                          t387 = xsdbool( t388 = t397 ).
                          t386 = t387.
                          IF t387 = abap_true.
                            DATA t406 TYPE abap_bool.
                            DATA t407 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                            DATA t410 TYPE REF TO zcl_lnt_abstract_token.
                            t410 = t363.
                            DATA t412 TYPE REF TO zcl_lnt_position.
                            DATA t413 TYPE f.
                            DATA t415 TYPE REF TO zcl_lnt_position.
                            t415 = t410->start.
                            DATA t417 TYPE f.
                            t417 = t415->row.
                            t413 = t417.
                            DATA t419 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                            DATA t420 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                            DATA t422 TYPE REF TO zcl_lnt_position.
                            t422 = t410->start.
                            DATA t424 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                            t424 = t422->col.
                            t420 = t424.
                            DATA t426 TYPE f.
                            DATA t428 TYPE string.
                            t428 = t410->str.
                            t426 = strlen( t428 ).
                            DATA(t431) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                            t431->has = abap_true.
                            t431->value = t426.
                            t419 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t420 right = t431 op = `+` ).
                            t412 = NEW zcl_lnt_position( i_row = t413 i_col = t419 ).
                            DATA t432 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                            t432 = t412->col.
                            t407 = t432.
                            DATA t434 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                            DATA t439 TYPE REF TO zcl_lnt_position.
                            t439 = t374->start.
                            DATA t441 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                            t441 = t439->col.
                            t434 = t441.
                            t406 = zlnt_runtime_numb_290eb04a9758=>compare( left = t407 right = t434 op = `==` ).
                            t386 = t406.
                          ENDIF.
                          IF t386 = abap_true.
                            DATA t448 TYPE REF TO zcl_lnt_position.
                            t448 = t374->start.
                            t385 = t448.
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
      DATA t452 TYPE abap_bool.
      t452 = xsdbool( t141 IS BOUND ).
      IF t452 = abap_true.
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
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t7 = t5->children.
    t4 = t7.
    t3 ?= t4.
    t2 = t3.
    DATA t9 TYPE i.
    t9 = 0.
    DO.
      DATA t11 TYPE abap_bool.
      DATA t13 TYPE i.
      t2->load( ).
      t13 = lines( t2->items ).
      t11 = xsdbool( t9 < t13 ).
      IF t11 = abap_false.
        EXIT.
      ENDIF.
      DATA(t15) = VALUE abap_bool( ).
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
      t15 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_sql_cond ).
      IF t15 = abap_true.
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
        DATA t31 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t31.
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
        t31 = t32->get_last_token( ).
        t30 = t31.
        DATA t40 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t40.
        DATA t41 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t41.
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
        t41 = t42->get_first_token( ).
        t40 = t41.
        DATA(t50) = VALUE abap_bool( ).
        DATA t51 TYPE abap_bool.
        DATA t52 TYPE abap_bool.
        DATA t53 TYPE string.
        DATA t56 TYPE string.
        t56 = t30->str.
        t53 = t56.
        DATA(t58) = |(|.
        t52 = xsdbool( t53 = t58 ).
        t51 = t52.
        IF t52 = abap_true.
          DATA t59 TYPE abap_bool.
          DATA t60 TYPE f.
          DATA t65 TYPE REF TO zcl_lnt_position.
          t65 = t30->start.
          DATA t67 TYPE f.
          t67 = t65->row.
          t60 = t67.
          DATA t69 TYPE f.
          DATA t71 TYPE REF TO zcl_lnt_abstract_token.
          t71 = t23->get_first_token( ).
          DATA t75 TYPE REF TO zcl_lnt_position.
          t75 = t71->start.
          DATA t77 TYPE f.
          t77 = t75->row.
          t69 = t77.
          t59 = xsdbool( t60 = t69 ).
          t51 = t59.
        ENDIF.
        t50 = t51.
        IF t51 = abap_true.
          DATA t79 TYPE abap_bool.
          DATA t80 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t81 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t86 TYPE REF TO zcl_lnt_position.
          t86 = t30->start.
          DATA t88 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t88 = t86->col.
          t81 = t88.
          DATA(t90) = CONV f( 1 ).
          DATA(t91) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t91->has = abap_true.
          t91->value = t90.
          t80 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t81 right = t91 op = `+` ).
          DATA t92 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t96 TYPE REF TO zcl_lnt_abstract_token.
          t96 = t23->get_first_token( ).
          DATA t98 TYPE REF TO zcl_lnt_position.
          t98 = t96->start.
          DATA t100 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t100 = t98->col.
          t92 = t100.
          t79 = zlnt_runtime_numb_290eb04a9758=>compare( left = t80 right = t92 op = `==` ).
          t50 = t79.
        ENDIF.
        IF t50 = abap_true.
          DATA t106 TYPE REF TO zcl_lnt_abstract_token.
          t106 = t23->get_first_token( ).
          DATA t108 TYPE REF TO zcl_lnt_position.
          t108 = t106->start.
          result = t108.
          RETURN.
        ENDIF.
        DATA(t111) = VALUE abap_bool( ).
        DATA t112 TYPE abap_bool.
        DATA t113 TYPE abap_bool.
        DATA t114 TYPE string.
        DATA t117 TYPE string.
        t117 = t40->str.
        t114 = t117.
        DATA(t119) = |)|.
        t113 = xsdbool( t114 = t119 ).
        t112 = t113.
        IF t113 = abap_true.
          DATA t120 TYPE abap_bool.
          DATA t121 TYPE f.
          DATA t126 TYPE REF TO zcl_lnt_position.
          t126 = t40->start.
          DATA t128 TYPE f.
          t128 = t126->row.
          t121 = t128.
          DATA t130 TYPE f.
          DATA t132 TYPE REF TO zcl_lnt_abstract_token.
          t132 = t23->get_last_token( ).
          DATA t136 TYPE REF TO zcl_lnt_position.
          t136 = t132->start.
          DATA t138 TYPE f.
          t138 = t136->row.
          t130 = t138.
          t120 = xsdbool( t121 = t130 ).
          t112 = t120.
        ENDIF.
        t111 = t112.
        IF t112 = abap_true.
          DATA t140 TYPE abap_bool.
          DATA t141 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t146 TYPE REF TO zcl_lnt_position.
          t146 = t40->start.
          DATA t148 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t148 = t146->col.
          t141 = t148.
          DATA t150 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t153 TYPE REF TO zcl_lnt_abstract_token.
          DATA t154 TYPE REF TO zcl_lnt_abstract_token.
          t154 = t23->get_last_token( ).
          t153 = t154.
          DATA t156 TYPE REF TO zcl_lnt_position.
          DATA t157 TYPE f.
          DATA t159 TYPE REF TO zcl_lnt_position.
          t159 = t153->start.
          DATA t161 TYPE f.
          t161 = t159->row.
          t157 = t161.
          DATA t163 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t164 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t166 TYPE REF TO zcl_lnt_position.
          t166 = t153->start.
          DATA t168 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t168 = t166->col.
          t164 = t168.
          DATA t170 TYPE f.
          DATA t172 TYPE string.
          t172 = t153->str.
          t170 = strlen( t172 ).
          DATA(t175) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t175->has = abap_true.
          t175->value = t170.
          t163 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t164 right = t175 op = `+` ).
          t156 = NEW zcl_lnt_position( i_row = t157 i_col = t163 ).
          DATA t176 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t176 = t156->col.
          t150 = t176.
          t140 = zlnt_runtime_numb_290eb04a9758=>compare( left = t141 right = t150 op = `==` ).
          t111 = t140.
        ENDIF.
        IF t111 = abap_true.
          DATA t181 TYPE REF TO zcl_lnt_abstract_token.
          DATA t182 TYPE REF TO zcl_lnt_abstract_token.
          t182 = t23->get_last_token( ).
          t181 = t182.
          DATA t184 TYPE REF TO zcl_lnt_position.
          DATA t185 TYPE f.
          DATA t187 TYPE REF TO zcl_lnt_position.
          t187 = t181->start.
          DATA t189 TYPE f.
          t189 = t187->row.
          t185 = t189.
          DATA t191 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t192 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t194 TYPE REF TO zcl_lnt_position.
          t194 = t181->start.
          DATA t196 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t196 = t194->col.
          t192 = t196.
          DATA t198 TYPE f.
          DATA t200 TYPE string.
          t200 = t181->str.
          t198 = strlen( t200 ).
          DATA(t203) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t203->has = abap_true.
          t203->value = t198.
          t191 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t192 right = t203 op = `+` ).
          t184 = NEW zcl_lnt_position( i_row = t185 i_col = t191 ).
          result = t184.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t205 TYPE i.
      DATA(t207) = 1.
      t205 = t9 + t207.
      t9 = t205.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD check_new_object.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    t5 = i_cond.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t7 = t5->children.
    t4 = t7.
    t3 ?= t4.
    t2 = t3.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    DATA t10 TYPE REF TO zcl_lnt_abstract_token.
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
    t10 = t11->get_last_token( ).
    t9 = t10.
    DATA t20 TYPE REF TO zcl_lnt_abstract_token.
    DATA t21 TYPE REF TO zcl_lnt_abstract_token.
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
    t21 = t22->get_first_token( ).
    t20 = t21.
    DATA t31 TYPE abap_bool.
    DATA t32 TYPE abap_bool.
    DATA t33 TYPE f.
    DATA t38 TYPE REF TO zcl_lnt_position.
    t38 = t9->start.
    DATA t40 TYPE f.
    t40 = t38->row.
    t33 = t40.
    DATA t42 TYPE f.
    DATA t47 TYPE REF TO zcl_lnt_position.
    t47 = t20->start.
    DATA t49 TYPE f.
    t49 = t47->row.
    t42 = t49.
    t32 = xsdbool( t33 = t42 ).
    t31 = t32.
    IF t32 = abap_true.
      DATA t51 TYPE abap_bool.
      DATA t52 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t55 TYPE REF TO zcl_lnt_abstract_token.
      t55 = t9.
      DATA t57 TYPE REF TO zcl_lnt_position.
      DATA t58 TYPE f.
      DATA t60 TYPE REF TO zcl_lnt_position.
      t60 = t55->start.
      DATA t62 TYPE f.
      t62 = t60->row.
      t58 = t62.
      DATA t64 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t65 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t67 TYPE REF TO zcl_lnt_position.
      t67 = t55->start.
      DATA t69 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t69 = t67->col.
      t65 = t69.
      DATA t71 TYPE f.
      DATA t73 TYPE string.
      t73 = t55->str.
      t71 = strlen( t73 ).
      DATA(t76) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t76->has = abap_true.
      t76->value = t71.
      t64 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t65 right = t76 op = `+` ).
      t57 = NEW zcl_lnt_position( i_row = t58 i_col = t64 ).
      DATA t77 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t77 = t57->col.
      t52 = t77.
      DATA t79 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t84 TYPE REF TO zcl_lnt_position.
      t84 = t20->start.
      DATA t86 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t86 = t84->col.
      t79 = t86.
      t51 = zlnt_runtime_numb_290eb04a9758=>compare( left = t52 right = t79 op = `==` ).
      t31 = t51.
    ENDIF.
    IF t31 = abap_true.
      DATA t93 TYPE REF TO zcl_lnt_position.
      t93 = t20->start.
      result = t93.
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
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t7 = t5->children.
    t4 = t7.
    t3 ?= t4.
    t2 = t3.
    DATA t9 TYPE i.
    t9 = 0.
    DO.
      DATA t11 TYPE abap_bool.
      DATA t13 TYPE i.
      t2->load( ).
      t13 = lines( t2->items ).
      t11 = xsdbool( t9 < t13 ).
      IF t11 = abap_false.
        EXIT.
      ENDIF.
      DATA(t15) = VALUE abap_bool( ).
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
      t15 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_cond ).
      IF t15 = abap_true.
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
        DATA t31 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t31.
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
        t31 = t32->get_last_token( ).
        t30 = t31.
        DATA t40 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t40.
        DATA t41 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t41.
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
        t41 = t42->get_first_token( ).
        t40 = t41.
        DATA(t50) = VALUE abap_bool( ).
        DATA t51 TYPE abap_bool.
        DATA t52 TYPE abap_bool.
        DATA t53 TYPE string.
        DATA t56 TYPE string.
        t56 = t30->str.
        t53 = t56.
        DATA(t58) = |(|.
        t52 = xsdbool( t53 = t58 ).
        t51 = t52.
        IF t52 = abap_true.
          DATA t59 TYPE abap_bool.
          DATA t60 TYPE f.
          DATA t65 TYPE REF TO zcl_lnt_position.
          t65 = t30->start.
          DATA t67 TYPE f.
          t67 = t65->row.
          t60 = t67.
          DATA t69 TYPE f.
          DATA t71 TYPE REF TO zcl_lnt_abstract_token.
          t71 = t23->get_first_token( ).
          DATA t75 TYPE REF TO zcl_lnt_position.
          t75 = t71->start.
          DATA t77 TYPE f.
          t77 = t75->row.
          t69 = t77.
          t59 = xsdbool( t60 = t69 ).
          t51 = t59.
        ENDIF.
        t50 = t51.
        IF t51 = abap_true.
          DATA t79 TYPE abap_bool.
          DATA t80 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t81 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t86 TYPE REF TO zcl_lnt_position.
          t86 = t30->start.
          DATA t88 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t88 = t86->col.
          t81 = t88.
          DATA(t90) = CONV f( 1 ).
          DATA(t91) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t91->has = abap_true.
          t91->value = t90.
          t80 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t81 right = t91 op = `+` ).
          DATA t92 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t96 TYPE REF TO zcl_lnt_abstract_token.
          t96 = t23->get_first_token( ).
          DATA t98 TYPE REF TO zcl_lnt_position.
          t98 = t96->start.
          DATA t100 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t100 = t98->col.
          t92 = t100.
          t79 = zlnt_runtime_numb_290eb04a9758=>compare( left = t80 right = t92 op = `==` ).
          t50 = t79.
        ENDIF.
        IF t50 = abap_true.
          DATA t106 TYPE REF TO zcl_lnt_abstract_token.
          t106 = t23->get_first_token( ).
          DATA t108 TYPE REF TO zcl_lnt_position.
          t108 = t106->start.
          result = t108.
          RETURN.
        ENDIF.
        DATA(t111) = VALUE abap_bool( ).
        DATA t112 TYPE abap_bool.
        DATA t113 TYPE abap_bool.
        DATA t114 TYPE string.
        DATA t117 TYPE string.
        t117 = t40->str.
        t114 = t117.
        DATA(t119) = |)|.
        t113 = xsdbool( t114 = t119 ).
        t112 = t113.
        IF t113 = abap_true.
          DATA t120 TYPE abap_bool.
          DATA t121 TYPE f.
          DATA t126 TYPE REF TO zcl_lnt_position.
          t126 = t40->start.
          DATA t128 TYPE f.
          t128 = t126->row.
          t121 = t128.
          DATA t130 TYPE f.
          DATA t132 TYPE REF TO zcl_lnt_abstract_token.
          t132 = t23->get_last_token( ).
          DATA t136 TYPE REF TO zcl_lnt_position.
          t136 = t132->start.
          DATA t138 TYPE f.
          t138 = t136->row.
          t130 = t138.
          t120 = xsdbool( t121 = t130 ).
          t112 = t120.
        ENDIF.
        t111 = t112.
        IF t112 = abap_true.
          DATA t140 TYPE abap_bool.
          DATA t141 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t146 TYPE REF TO zcl_lnt_position.
          t146 = t40->start.
          DATA t148 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t148 = t146->col.
          t141 = t148.
          DATA t150 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t153 TYPE REF TO zcl_lnt_abstract_token.
          DATA t154 TYPE REF TO zcl_lnt_abstract_token.
          t154 = t23->get_last_token( ).
          t153 = t154.
          DATA t156 TYPE REF TO zcl_lnt_position.
          DATA t157 TYPE f.
          DATA t159 TYPE REF TO zcl_lnt_position.
          t159 = t153->start.
          DATA t161 TYPE f.
          t161 = t159->row.
          t157 = t161.
          DATA t163 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t164 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t166 TYPE REF TO zcl_lnt_position.
          t166 = t153->start.
          DATA t168 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t168 = t166->col.
          t164 = t168.
          DATA t170 TYPE f.
          DATA t172 TYPE string.
          t172 = t153->str.
          t170 = strlen( t172 ).
          DATA(t175) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t175->has = abap_true.
          t175->value = t170.
          t163 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t164 right = t175 op = `+` ).
          t156 = NEW zcl_lnt_position( i_row = t157 i_col = t163 ).
          DATA t176 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t176 = t156->col.
          t150 = t176.
          t140 = zlnt_runtime_numb_290eb04a9758=>compare( left = t141 right = t150 op = `==` ).
          t111 = t140.
        ENDIF.
        IF t111 = abap_true.
          DATA t181 TYPE REF TO zcl_lnt_abstract_token.
          DATA t182 TYPE REF TO zcl_lnt_abstract_token.
          t182 = t23->get_last_token( ).
          t181 = t182.
          DATA t184 TYPE REF TO zcl_lnt_position.
          DATA t185 TYPE f.
          DATA t187 TYPE REF TO zcl_lnt_position.
          t187 = t181->start.
          DATA t189 TYPE f.
          t189 = t187->row.
          t185 = t189.
          DATA t191 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t192 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t194 TYPE REF TO zcl_lnt_position.
          t194 = t181->start.
          DATA t196 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t196 = t194->col.
          t192 = t196.
          DATA t198 TYPE f.
          DATA t200 TYPE string.
          t200 = t181->str.
          t198 = strlen( t200 ).
          DATA(t203) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t203->has = abap_true.
          t203->value = t198.
          t191 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t192 right = t203 op = `+` ).
          t184 = NEW zcl_lnt_position( i_row = t185 i_col = t191 ).
          result = t184.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t205 TYPE i.
      DATA(t207) = 1.
      t205 = t9 + t207.
      t9 = t205.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD check_component_cond_sub.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    t5 = i_cond.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t7 = t5->children.
    t4 = t7.
    t3 ?= t4.
    t2 = t3.
    DATA t9 TYPE i.
    t9 = 0.
    DO.
      DATA t11 TYPE abap_bool.
      DATA t13 TYPE i.
      t2->load( ).
      t13 = lines( t2->items ).
      t11 = xsdbool( t9 < t13 ).
      IF t11 = abap_false.
        EXIT.
      ENDIF.
      DATA(t15) = VALUE abap_bool( ).
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
      t15 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_component_cond ).
      IF t15 = abap_true.
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
        DATA t31 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t31.
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
        t31 = t32->get_last_token( ).
        t30 = t31.
        DATA t40 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t40.
        DATA t41 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t41.
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
        t41 = t42->get_first_token( ).
        t40 = t41.
        DATA(t50) = VALUE abap_bool( ).
        DATA t51 TYPE abap_bool.
        DATA t52 TYPE abap_bool.
        DATA t53 TYPE string.
        DATA t56 TYPE string.
        t56 = t30->str.
        t53 = t56.
        DATA(t58) = |(|.
        t52 = xsdbool( t53 = t58 ).
        t51 = t52.
        IF t52 = abap_true.
          DATA t59 TYPE abap_bool.
          DATA t60 TYPE f.
          DATA t65 TYPE REF TO zcl_lnt_position.
          t65 = t30->start.
          DATA t67 TYPE f.
          t67 = t65->row.
          t60 = t67.
          DATA t69 TYPE f.
          DATA t71 TYPE REF TO zcl_lnt_abstract_token.
          t71 = t23->get_first_token( ).
          DATA t75 TYPE REF TO zcl_lnt_position.
          t75 = t71->start.
          DATA t77 TYPE f.
          t77 = t75->row.
          t69 = t77.
          t59 = xsdbool( t60 = t69 ).
          t51 = t59.
        ENDIF.
        t50 = t51.
        IF t51 = abap_true.
          DATA t79 TYPE abap_bool.
          DATA t80 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t81 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t86 TYPE REF TO zcl_lnt_position.
          t86 = t30->start.
          DATA t88 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t88 = t86->col.
          t81 = t88.
          DATA(t90) = CONV f( 1 ).
          DATA(t91) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t91->has = abap_true.
          t91->value = t90.
          t80 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t81 right = t91 op = `+` ).
          DATA t92 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t96 TYPE REF TO zcl_lnt_abstract_token.
          t96 = t23->get_first_token( ).
          DATA t98 TYPE REF TO zcl_lnt_position.
          t98 = t96->start.
          DATA t100 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t100 = t98->col.
          t92 = t100.
          t79 = zlnt_runtime_numb_290eb04a9758=>compare( left = t80 right = t92 op = `==` ).
          t50 = t79.
        ENDIF.
        IF t50 = abap_true.
          DATA t106 TYPE REF TO zcl_lnt_abstract_token.
          t106 = t23->get_first_token( ).
          DATA t108 TYPE REF TO zcl_lnt_position.
          t108 = t106->start.
          result = t108.
          RETURN.
        ENDIF.
        DATA(t111) = VALUE abap_bool( ).
        DATA t112 TYPE abap_bool.
        DATA t113 TYPE abap_bool.
        DATA t114 TYPE string.
        DATA t117 TYPE string.
        t117 = t40->str.
        t114 = t117.
        DATA(t119) = |)|.
        t113 = xsdbool( t114 = t119 ).
        t112 = t113.
        IF t113 = abap_true.
          DATA t120 TYPE abap_bool.
          DATA t121 TYPE f.
          DATA t126 TYPE REF TO zcl_lnt_position.
          t126 = t40->start.
          DATA t128 TYPE f.
          t128 = t126->row.
          t121 = t128.
          DATA t130 TYPE f.
          DATA t132 TYPE REF TO zcl_lnt_abstract_token.
          t132 = t23->get_last_token( ).
          DATA t136 TYPE REF TO zcl_lnt_position.
          t136 = t132->start.
          DATA t138 TYPE f.
          t138 = t136->row.
          t130 = t138.
          t120 = xsdbool( t121 = t130 ).
          t112 = t120.
        ENDIF.
        t111 = t112.
        IF t112 = abap_true.
          DATA t140 TYPE abap_bool.
          DATA t141 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t146 TYPE REF TO zcl_lnt_position.
          t146 = t40->start.
          DATA t148 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t148 = t146->col.
          t141 = t148.
          DATA t150 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t153 TYPE REF TO zcl_lnt_abstract_token.
          DATA t154 TYPE REF TO zcl_lnt_abstract_token.
          t154 = t23->get_last_token( ).
          t153 = t154.
          DATA t156 TYPE REF TO zcl_lnt_position.
          DATA t157 TYPE f.
          DATA t159 TYPE REF TO zcl_lnt_position.
          t159 = t153->start.
          DATA t161 TYPE f.
          t161 = t159->row.
          t157 = t161.
          DATA t163 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t164 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t166 TYPE REF TO zcl_lnt_position.
          t166 = t153->start.
          DATA t168 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t168 = t166->col.
          t164 = t168.
          DATA t170 TYPE f.
          DATA t172 TYPE string.
          t172 = t153->str.
          t170 = strlen( t172 ).
          DATA(t175) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t175->has = abap_true.
          t175->value = t170.
          t163 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t164 right = t175 op = `+` ).
          t156 = NEW zcl_lnt_position( i_row = t157 i_col = t163 ).
          DATA t176 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t176 = t156->col.
          t150 = t176.
          t140 = zlnt_runtime_numb_290eb04a9758=>compare( left = t141 right = t150 op = `==` ).
          t111 = t140.
        ENDIF.
        IF t111 = abap_true.
          DATA t181 TYPE REF TO zcl_lnt_abstract_token.
          DATA t182 TYPE REF TO zcl_lnt_abstract_token.
          t182 = t23->get_last_token( ).
          t181 = t182.
          DATA t184 TYPE REF TO zcl_lnt_position.
          DATA t185 TYPE f.
          DATA t187 TYPE REF TO zcl_lnt_position.
          t187 = t181->start.
          DATA t189 TYPE f.
          t189 = t187->row.
          t185 = t189.
          DATA t191 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t192 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t194 TYPE REF TO zcl_lnt_position.
          t194 = t181->start.
          DATA t196 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t196 = t194->col.
          t192 = t196.
          DATA t198 TYPE f.
          DATA t200 TYPE string.
          t200 = t181->str.
          t198 = strlen( t200 ).
          DATA(t203) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t203->has = abap_true.
          t203->value = t198.
          t191 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t192 right = t203 op = `+` ).
          t184 = NEW zcl_lnt_position( i_row = t185 i_col = t191 ).
          result = t184.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t205 TYPE i.
      DATA(t207) = 1.
      t205 = t9 + t207.
      t9 = t205.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD check_component_cond.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t3 = i_cond->get_all_tokens( ).
    t2 = t3.
    DATA t5 TYPE i.
    t5 = 0.
    DO.
      DATA t7 TYPE abap_bool.
      DATA t9 TYPE i.
      DATA t10 TYPE i.
      t2->load( ).
      t10 = lines( t2->items ).
      DATA(t12) = 1.
      t9 = t10 - t12.
      t7 = xsdbool( t5 < t9 ).
      IF t7 = abap_false.
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
      DATA t35 TYPE string.
      t35 = t20->str.
      t32 = t35.
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
        DATA t42 TYPE abap_bool.
        DATA t43 TYPE f.
        DATA t48 TYPE REF TO zcl_lnt_position.
        t48 = t20->start.
        DATA t50 TYPE f.
        t50 = t48->row.
        t43 = t50.
        DATA t52 TYPE f.
        DATA t57 TYPE REF TO zcl_lnt_position.
        t57 = t13->start.
        DATA t59 TYPE f.
        t59 = t57->row.
        t52 = t59.
        t42 = xsdbool( t43 = t52 ).
        t30 = t42.
      ENDIF.
      t29 = t30.
      IF t30 = abap_true.
        DATA t61 TYPE abap_bool.
        DATA t62 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t67 TYPE REF TO zcl_lnt_position.
        t67 = t20->start.
        DATA t69 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t69 = t67->col.
        t62 = t69.
        DATA t71 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t74 TYPE REF TO zcl_lnt_abstract_token.
        t74 = t13.
        DATA t76 TYPE REF TO zcl_lnt_position.
        DATA t77 TYPE f.
        DATA t79 TYPE REF TO zcl_lnt_position.
        t79 = t74->start.
        DATA t81 TYPE f.
        t81 = t79->row.
        t77 = t81.
        DATA t83 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t84 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t86 TYPE REF TO zcl_lnt_position.
        t86 = t74->start.
        DATA t88 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t88 = t86->col.
        t84 = t88.
        DATA t90 TYPE f.
        DATA t92 TYPE string.
        t92 = t74->str.
        t90 = strlen( t92 ).
        DATA(t95) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t95->has = abap_true.
        t95->value = t90.
        t83 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t84 right = t95 op = `+` ).
        t76 = NEW zcl_lnt_position( i_row = t77 i_col = t83 ).
        DATA t96 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t96 = t76->col.
        t71 = t96.
        t61 = zlnt_runtime_numb_290eb04a9758=>compare( left = t62 right = t71 op = `==` ).
        t29 = t61.
      ENDIF.
      IF t29 = abap_true.
        DATA t101 TYPE REF TO zcl_lnt_abstract_token.
        t101 = t13.
        DATA t103 TYPE REF TO zcl_lnt_position.
        DATA t104 TYPE f.
        DATA t106 TYPE REF TO zcl_lnt_position.
        t106 = t101->start.
        DATA t108 TYPE f.
        t108 = t106->row.
        t104 = t108.
        DATA t110 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t111 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t113 TYPE REF TO zcl_lnt_position.
        t113 = t101->start.
        DATA t115 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t115 = t113->col.
        t111 = t115.
        DATA t117 TYPE f.
        DATA t119 TYPE string.
        t119 = t101->str.
        t117 = strlen( t119 ).
        DATA(t122) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t122->has = abap_true.
        t122->value = t117.
        t110 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t111 right = t122 op = `+` ).
        t103 = NEW zcl_lnt_position( i_row = t104 i_col = t110 ).
        result = t103.
        RETURN.
      ENDIF.
      DATA t124 TYPE i.
      DATA(t126) = 1.
      t124 = t5 + t126.
      t5 = t124.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD check_value_body_line.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    t5 = i_vb.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t7 = t5->children.
    t4 = t7.
    t3 ?= t4.
    t2 = t3.
    DATA t9 TYPE i.
    t9 = 0.
    DO.
      DATA t11 TYPE abap_bool.
      DATA t13 TYPE i.
      t2->load( ).
      t13 = lines( t2->items ).
      t11 = xsdbool( t9 < t13 ).
      IF t11 = abap_false.
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
      DATA t22 TYPE abap_bool.
      t22 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_token_node ).
      IF t22 = abap_true.
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
        DATA(t36) = xsdbool( t26 IS INITIAL ).
        IF t36 = abap_true.
          CLEAR t35.
        ELSE.
          DATA t39 TYPE REF TO zcl_lnt_abstract_token.
          DATA t40 TYPE REF TO zif_lnt_union_4cf1d054.
          t40 = t26.
          t39 = t40->get_last_token( ).
          t35 = t39.
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
        DATA(t54) = xsdbool( t44 IS INITIAL ).
        IF t54 = abap_true.
          CLEAR t53.
        ELSE.
          DATA t57 TYPE REF TO zcl_lnt_abstract_token.
          DATA t58 TYPE REF TO zif_lnt_union_4cf1d054.
          t58 = t44.
          t57 = t58->get_first_token( ).
          t53 = t57.
        ENDIF.
        t42 = t53.
        DATA(t60) = VALUE abap_bool( ).
        DATA(t61) = VALUE abap_bool( ).
        DATA t62 TYPE abap_bool.
        DATA t63 TYPE abap_bool.
        DATA t64 TYPE string.
        DATA t68 TYPE REF TO zcl_lnt_token_node.
        DATA t70 TYPE REF TO object.
        t70 = t15.
        t68 ?= t70.
        DATA t71 TYPE REF TO zcl_lnt_abstract_token.
        t71 = t68->token.
        DATA t73 TYPE string.
        t73 = t71->str.
        t64 = t73.
        DATA(t75) = |(|.
        t63 = xsdbool( t64 = t75 ).
        t62 = t63.
        IF t63 = abap_true.
          DATA t76 TYPE abap_bool.
          DATA t77 TYPE REF TO zcl_lnt_abstract_token.
          t77 = t42.
          t76 = xsdbool( t77 IS BOUND ).
          t62 = t76.
        ENDIF.
        t61 = t62.
        IF t62 = abap_true.
          DATA t79 TYPE abap_bool.
          DATA t80 TYPE f.
          DATA t86 TYPE REF TO zcl_lnt_position.
          t86 = t42->start.
          DATA t88 TYPE f.
          t88 = t86->row.
          t80 = t88.
          DATA t90 TYPE f.
          DATA t94 TYPE REF TO zcl_lnt_token_node.
          DATA t96 TYPE REF TO object.
          t96 = t15.
          t94 ?= t96.
          DATA t97 TYPE REF TO zcl_lnt_abstract_token.
          t97 = t94->token.
          DATA t101 TYPE REF TO zcl_lnt_position.
          t101 = t97->start.
          DATA t103 TYPE f.
          t103 = t101->row.
          t90 = t103.
          t79 = xsdbool( t80 = t90 ).
          t61 = t79.
        ENDIF.
        t60 = t61.
        IF t61 = abap_true.
          DATA t105 TYPE abap_bool.
          DATA t106 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t112 TYPE REF TO zcl_lnt_position.
          t112 = t42->start.
          DATA t114 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t114 = t112->col.
          t106 = t114.
          DATA t116 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t119 TYPE REF TO zcl_lnt_abstract_token.
          DATA t122 TYPE REF TO zcl_lnt_token_node.
          DATA t124 TYPE REF TO object.
          t124 = t15.
          t122 ?= t124.
          DATA t125 TYPE REF TO zcl_lnt_abstract_token.
          t125 = t122->token.
          t119 = t125.
          DATA t127 TYPE REF TO zcl_lnt_position.
          DATA t128 TYPE f.
          DATA t130 TYPE REF TO zcl_lnt_position.
          t130 = t119->start.
          DATA t132 TYPE f.
          t132 = t130->row.
          t128 = t132.
          DATA t134 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t135 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t137 TYPE REF TO zcl_lnt_position.
          t137 = t119->start.
          DATA t139 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t139 = t137->col.
          t135 = t139.
          DATA t141 TYPE f.
          DATA t143 TYPE string.
          t143 = t119->str.
          t141 = strlen( t143 ).
          DATA(t146) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t146->has = abap_true.
          t146->value = t141.
          t134 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t135 right = t146 op = `+` ).
          t127 = NEW zcl_lnt_position( i_row = t128 i_col = t134 ).
          DATA t147 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t147 = t127->col.
          t116 = t147.
          t105 = zlnt_runtime_numb_290eb04a9758=>compare( left = t106 right = t116 op = `==` ).
          t60 = t105.
        ENDIF.
        IF t60 = abap_true.
          DATA t155 TYPE REF TO zcl_lnt_token_node.
          DATA t157 TYPE REF TO object.
          t157 = t15.
          t155 ?= t157.
          DATA t158 TYPE REF TO zcl_lnt_abstract_token.
          t158 = t155->token.
          DATA t160 TYPE REF TO zcl_lnt_position.
          t160 = t158->start.
          result = t160.
          RETURN.
        ENDIF.
        DATA(t163) = VALUE abap_bool( ).
        DATA(t164) = VALUE abap_bool( ).
        DATA t165 TYPE abap_bool.
        DATA t166 TYPE abap_bool.
        DATA t167 TYPE string.
        DATA t171 TYPE REF TO zcl_lnt_token_node.
        DATA t173 TYPE REF TO object.
        t173 = t15.
        t171 ?= t173.
        DATA t174 TYPE REF TO zcl_lnt_abstract_token.
        t174 = t171->token.
        DATA t176 TYPE string.
        t176 = t174->str.
        t167 = t176.
        DATA(t178) = |)|.
        t166 = xsdbool( t167 = t178 ).
        t165 = t166.
        IF t166 = abap_true.
          DATA t179 TYPE abap_bool.
          DATA t180 TYPE REF TO zcl_lnt_abstract_token.
          t180 = t24.
          t179 = xsdbool( t180 IS BOUND ).
          t165 = t179.
        ENDIF.
        t164 = t165.
        IF t165 = abap_true.
          DATA t182 TYPE abap_bool.
          DATA t183 TYPE f.
          DATA t189 TYPE REF TO zcl_lnt_position.
          t189 = t24->start.
          DATA t191 TYPE f.
          t191 = t189->row.
          t183 = t191.
          DATA t193 TYPE f.
          DATA t197 TYPE REF TO zcl_lnt_token_node.
          DATA t199 TYPE REF TO object.
          t199 = t15.
          t197 ?= t199.
          DATA t200 TYPE REF TO zcl_lnt_abstract_token.
          t200 = t197->token.
          DATA t204 TYPE REF TO zcl_lnt_position.
          t204 = t200->start.
          DATA t206 TYPE f.
          t206 = t204->row.
          t193 = t206.
          t182 = xsdbool( t183 = t193 ).
          t164 = t182.
        ENDIF.
        t163 = t164.
        IF t164 = abap_true.
          DATA t208 TYPE abap_bool.
          DATA t209 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t212 TYPE REF TO zcl_lnt_abstract_token.
          t212 = t24.
          DATA t215 TYPE REF TO zcl_lnt_position.
          DATA t216 TYPE f.
          DATA t218 TYPE REF TO zcl_lnt_position.
          t218 = t212->start.
          DATA t220 TYPE f.
          t220 = t218->row.
          t216 = t220.
          DATA t222 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t223 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t225 TYPE REF TO zcl_lnt_position.
          t225 = t212->start.
          DATA t227 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t227 = t225->col.
          t223 = t227.
          DATA t229 TYPE f.
          DATA t231 TYPE string.
          t231 = t212->str.
          t229 = strlen( t231 ).
          DATA(t234) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t234->has = abap_true.
          t234->value = t229.
          t222 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t223 right = t234 op = `+` ).
          t215 = NEW zcl_lnt_position( i_row = t216 i_col = t222 ).
          DATA t235 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t235 = t215->col.
          t209 = t235.
          DATA t237 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t243 TYPE REF TO zcl_lnt_token_node.
          DATA t245 TYPE REF TO object.
          t245 = t15.
          t243 ?= t245.
          DATA t246 TYPE REF TO zcl_lnt_abstract_token.
          t246 = t243->token.
          DATA t248 TYPE REF TO zcl_lnt_position.
          t248 = t246->start.
          DATA t250 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t250 = t248->col.
          t237 = t250.
          t208 = zlnt_runtime_numb_290eb04a9758=>compare( left = t209 right = t237 op = `==` ).
          t163 = t208.
        ENDIF.
        IF t163 = abap_true.
          DATA t255 TYPE REF TO zcl_lnt_abstract_token.
          DATA t258 TYPE REF TO zcl_lnt_token_node.
          DATA t260 TYPE REF TO object.
          t260 = t15.
          t258 ?= t260.
          DATA t261 TYPE REF TO zcl_lnt_abstract_token.
          t261 = t258->token.
          t255 = t261.
          DATA t263 TYPE REF TO zcl_lnt_position.
          DATA t264 TYPE f.
          DATA t266 TYPE REF TO zcl_lnt_position.
          t266 = t255->start.
          DATA t268 TYPE f.
          t268 = t266->row.
          t264 = t268.
          DATA t270 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t271 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t273 TYPE REF TO zcl_lnt_position.
          t273 = t255->start.
          DATA t275 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t275 = t273->col.
          t271 = t275.
          DATA t277 TYPE f.
          DATA t279 TYPE string.
          t279 = t255->str.
          t277 = strlen( t279 ).
          DATA(t282) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t282->has = abap_true.
          t282->value = t277.
          t270 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t271 right = t282 op = `+` ).
          t263 = NEW zcl_lnt_position( i_row = t264 i_col = t270 ).
          result = t263.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t284 TYPE i.
      DATA(t286) = 1.
      t284 = t9 + t286.
      t9 = t284.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD check_cond.
    DATA(t1) = i_cond.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t3 = t1->get_all_tokens( ).
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    t6 = t1->find_all_expressions( i_type_9913 = t8 ).
    t5 = t6.
    DATA(t9) = VALUE i( ).
    t9 = 0.
    DO.
      DATA(t11) = VALUE abap_bool( ).
      DATA(t13) = VALUE i( ).
      DATA(t14) = VALUE i( ).
      t2->load( ).
      t14 = lines( t2->items ).
      DATA(t16) = 1.
      t13 = t14 - t16.
      t11 = xsdbool( t9 < t13 ).
      IF t11 = abap_false.
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
        CLEAR t23.
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
        CLEAR t32.
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
      DATA(t39) = VALUE string( ).
      t39 = t24->str.
      t36 = t39.
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
        DATA(t46) = VALUE abap_bool( ).
        DATA(t47) = VALUE f( ).
        DATA(t50) = VALUE f( ).
        DATA t52 TYPE REF TO zcl_lnt_position.
        CLEAR t52.
        t52 = t24->start.
        DATA(t54) = VALUE f( ).
        t54 = t52->row.
        t50 = t54.
        t47 = t50.
        DATA(t56) = VALUE f( ).
        DATA(t59) = VALUE f( ).
        DATA t61 TYPE REF TO zcl_lnt_position.
        CLEAR t61.
        t61 = t17->start.
        DATA(t63) = VALUE f( ).
        t63 = t61->row.
        t59 = t63.
        t56 = t59.
        t46 = xsdbool( t47 = t56 ).
        t34 = t46.
      ENDIF.
      t33 = t34.
      IF t34 = abap_true.
        DATA(t65) = VALUE abap_bool( ).
        DATA t66 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t66.
        DATA t71 TYPE REF TO zcl_lnt_position.
        CLEAR t71.
        t71 = t24->start.
        DATA t73 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t73.
        t73 = t71->col.
        t66 = t73.
        DATA t75 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t75.
        DATA t78 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t78.
        t78 = t17.
        DATA t80 TYPE REF TO zcl_lnt_position.
        CLEAR t80.
        DATA(t81) = VALUE f( ).
        DATA t83 TYPE REF TO zcl_lnt_position.
        CLEAR t83.
        t83 = t78->start.
        DATA(t85) = VALUE f( ).
        t85 = t83->row.
        t81 = t85.
        DATA t87 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t87.
        DATA t88 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t88.
        DATA t90 TYPE REF TO zcl_lnt_position.
        CLEAR t90.
        t90 = t78->start.
        DATA t92 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t92.
        t92 = t90->col.
        t88 = t92.
        DATA(t94) = VALUE f( ).
        DATA(t95) = VALUE i( ).
        DATA(t96) = VALUE string( ).
        t96 = t78->str.
        t95 = strlen( t96 ).
        t94 = t95.
        DATA(t99) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t99->has = abap_true.
        t99->value = t94.
        t87 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t88 right = t99 op = `+` ).
        t80 = NEW zcl_lnt_position( i_row = t81 i_col = t87 ).
        DATA t100 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t100.
        t100 = t80->col.
        t75 = t100.
        t65 = zlnt_runtime_numb_290eb04a9758=>compare( left = t66 right = t75 op = `==` ).
        t33 = t65.
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
            CLEAR t111.
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
              CLEAR t118.
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
              CLEAR t126.
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
              CLEAR t128.
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
                CLEAR t135.
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
                CLEAR t137.
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
          DATA(t140) = VALUE abap_bool( ).
          DATA(t142) = 1.
          t140 = xsdbool( t104 = t142 ).
          IF t140 = abap_true.
            EXIT.
          ENDIF.
          DATA(t143) = VALUE abap_bool( ).
          DATA(t145) = 2.
          t143 = xsdbool( t104 = t145 ).
          IF t143 = abap_true.
            t104 = 0.
            CONTINUE.
          ENDIF.
        ENDDO.
        DATA(t147) = VALUE abap_bool( ).
        t147 = xsdbool( t102 = abap_false ).
        IF t147 = abap_true.
          DATA t153 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t153.
          t153 = t17.
          DATA t155 TYPE REF TO zcl_lnt_position.
          CLEAR t155.
          DATA(t156) = VALUE f( ).
          DATA t158 TYPE REF TO zcl_lnt_position.
          CLEAR t158.
          t158 = t153->start.
          DATA(t160) = VALUE f( ).
          t160 = t158->row.
          t156 = t160.
          DATA t162 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t162.
          DATA t163 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t163.
          DATA t165 TYPE REF TO zcl_lnt_position.
          CLEAR t165.
          t165 = t153->start.
          DATA t167 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t167.
          t167 = t165->col.
          t163 = t167.
          DATA(t169) = VALUE f( ).
          DATA(t170) = VALUE i( ).
          DATA(t171) = VALUE string( ).
          t171 = t153->str.
          t170 = strlen( t171 ).
          t169 = t170.
          DATA(t174) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t174->has = abap_true.
          t174->value = t169.
          t162 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t163 right = t174 op = `+` ).
          t155 = NEW zcl_lnt_position( i_row = t156 i_col = t162 ).
          result = t155.
          RETURN.
        ENDIF.
      ENDIF.
      DATA(t176) = VALUE i( ).
      DATA(t178) = 1.
      t176 = t9 + t178.
      t9 = t176.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD check_source.
    DATA(t1) = i_cond.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t3 = t1->get_all_tokens( ).
    t2 = t3.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE i.
    t2->load( ).
    t6 = lines( t2->items ).
    DATA(t8) = 2.
    t5 = xsdbool( t6 < t8 ).
    IF t5 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t10 TYPE abap_bool.
    DATA t11 TYPE abap_bool.
    DATA t12 TYPE i.
    t2->load( ).
    t12 = lines( t2->items ).
    DATA(t14) = 4.
    t11 = xsdbool( t12 >= t14 ).
    t10 = t11.
    IF t11 = abap_true.
      DATA(t15) = VALUE abap_bool( ).
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
      DATA t24 TYPE string.
      t24 = t19->str.
      t17 = t24.
      DATA(t26) = strlen( t17 ).
      t16 = t17.
      IF t16 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t16 TO UPPER CASE.
      ELSE.
        t16 = zlnt_runtime_uppe_91169605024d=>full( t16 ).
      ENDIF.
      DATA(t27) = |CONV|.
      t15 = xsdbool( t16 = t27 ).
      t10 = t15.
    ENDIF.
    IF t10 = abap_true.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t31 TYPE REF TO zcl_lnt_abstract_node.
      t31 = t1.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t33 = t31->children.
      t30 = t33.
      t29 ?= t30.
      t28 = t29.
      DATA t35 TYPE REF TO zcl_lnt_abstract_token.
      DATA t37 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t38 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t40) = 2.
      DATA t41 TYPE REF TO object.
      t41 = t28->get( p0 = t40 ).
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
      DATA(t45) = xsdbool( t37 IS INITIAL ).
      IF t45 = abap_true.
      ELSE.
        DATA t48 TYPE REF TO zcl_lnt_abstract_token.
        DATA t49 TYPE REF TO zif_lnt_union_4cf1d054.
        t49 = t37.
        t48 = t49->get_last_token( ).
        t44 = t48.
      ENDIF.
      t35 = t44.
      DATA t51 TYPE REF TO zcl_lnt_abstract_token.
      DATA t53 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t54 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t56) = 3.
      DATA t57 TYPE REF TO object.
      t57 = t28->get( p0 = t56 ).
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
      DATA(t61) = xsdbool( t53 IS INITIAL ).
      IF t61 = abap_true.
      ELSE.
        DATA t64 TYPE REF TO zcl_lnt_abstract_token.
        DATA t65 TYPE REF TO zif_lnt_union_4cf1d054.
        t65 = t53.
        t64 = t65->get_first_token( ).
        t60 = t64.
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
        DATA t73 TYPE abap_bool.
        DATA t74 TYPE string.
        DATA t78 TYPE string.
        t78 = t35->str.
        t74 = t78.
        DATA(t80) = |(|.
        t73 = xsdbool( t74 = t80 ).
        t70 = t73.
      ENDIF.
      t69 = t70.
      IF t70 = abap_true.
        DATA t81 TYPE abap_bool.
        DATA t82 TYPE REF TO zcl_lnt_abstract_token.
        t82 = t51.
        t81 = xsdbool( t82 IS BOUND ).
        t69 = t81.
      ENDIF.
      t68 = t69.
      IF t69 = abap_true.
        DATA t84 TYPE abap_bool.
        DATA t85 TYPE f.
        DATA t91 TYPE REF TO zcl_lnt_position.
        t91 = t35->start.
        DATA t93 TYPE f.
        t93 = t91->row.
        t85 = t93.
        DATA t95 TYPE f.
        DATA t101 TYPE REF TO zcl_lnt_position.
        t101 = t51->start.
        DATA t103 TYPE f.
        t103 = t101->row.
        t95 = t103.
        t84 = xsdbool( t85 = t95 ).
        t68 = t84.
      ENDIF.
      t67 = t68.
      IF t68 = abap_true.
        DATA t105 TYPE abap_bool.
        DATA t106 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t107 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t113 TYPE REF TO zcl_lnt_position.
        t113 = t35->start.
        DATA t115 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t115 = t113->col.
        t107 = t115.
        DATA(t117) = CONV f( 1 ).
        DATA(t118) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t118->has = abap_true.
        t118->value = t117.
        t106 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t107 right = t118 op = `+` ).
        DATA t119 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t125 TYPE REF TO zcl_lnt_position.
        t125 = t51->start.
        DATA t127 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t127 = t125->col.
        t119 = t127.
        t105 = zlnt_runtime_numb_290eb04a9758=>compare( left = t106 right = t119 op = `==` ).
        t67 = t105.
      ENDIF.
      IF t67 = abap_true.
        DATA t135 TYPE REF TO zcl_lnt_position.
        t135 = t51->start.
        result = t135.
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
    DATA t164 TYPE string.
    t164 = t138->str.
    t161 = t164.
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
      DATA t171 TYPE abap_bool.
      DATA t172 TYPE f.
      DATA t177 TYPE REF TO zcl_lnt_position.
      t177 = t138->start.
      DATA t179 TYPE f.
      t179 = t177->row.
      t172 = t179.
      DATA t181 TYPE f.
      DATA t186 TYPE REF TO zcl_lnt_position.
      t186 = t148->start.
      DATA t188 TYPE f.
      t188 = t186->row.
      t181 = t188.
      t171 = xsdbool( t172 = t181 ).
      t159 = t171.
    ENDIF.
    t158 = t159.
    IF t159 = abap_true.
      DATA t190 TYPE abap_bool.
      DATA t191 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t194 TYPE REF TO zcl_lnt_abstract_token.
      t194 = t138.
      DATA t196 TYPE REF TO zcl_lnt_position.
      DATA t197 TYPE f.
      DATA t199 TYPE REF TO zcl_lnt_position.
      t199 = t194->start.
      DATA t201 TYPE f.
      t201 = t199->row.
      t197 = t201.
      DATA t203 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t204 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t206 TYPE REF TO zcl_lnt_position.
      t206 = t194->start.
      DATA t208 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t208 = t206->col.
      t204 = t208.
      DATA t210 TYPE f.
      DATA t212 TYPE string.
      t212 = t194->str.
      t210 = strlen( t212 ).
      DATA(t215) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t215->has = abap_true.
      t215->value = t210.
      t203 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t204 right = t215 op = `+` ).
      t196 = NEW zcl_lnt_position( i_row = t197 i_col = t203 ).
      DATA t216 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t216 = t196->col.
      t191 = t216.
      DATA t218 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t223 TYPE REF TO zcl_lnt_position.
      t223 = t148->start.
      DATA t225 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t225 = t223->col.
      t218 = t225.
      t190 = zlnt_runtime_numb_290eb04a9758=>compare( left = t191 right = t218 op = `==` ).
      t158 = t190.
    ENDIF.
    IF t158 = abap_true.
      DATA t230 TYPE REF TO zcl_lnt_abstract_token.
      t230 = t148.
      DATA t232 TYPE REF TO zcl_lnt_position.
      DATA t233 TYPE f.
      DATA t235 TYPE REF TO zcl_lnt_position.
      t235 = t230->start.
      DATA t237 TYPE f.
      t237 = t235->row.
      t233 = t237.
      DATA t239 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t240 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t242 TYPE REF TO zcl_lnt_position.
      t242 = t230->start.
      DATA t244 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t244 = t242->col.
      t240 = t244.
      DATA t246 TYPE f.
      DATA t248 TYPE string.
      t248 = t230->str.
      t246 = strlen( t248 ).
      DATA(t251) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t251->has = abap_true.
      t251->value = t246.
      t239 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t240 right = t251 op = `+` ).
      t232 = NEW zcl_lnt_position( i_row = t233 i_col = t239 ).
      result = t232.
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
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t7 = t5->children.
    t4 = t7.
    t3 ?= t4.
    t2 = t3.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    DATA t10 TYPE REF TO zcl_lnt_abstract_token.
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
    t10 = t11->get_first_token( ).
    t9 = t10.
    DATA t16 TYPE REF TO zcl_lnt_abstract_token.
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
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
    t17 = t18->get_first_token( ).
    t16 = t17.
    DATA t23 TYPE abap_bool.
    DATA t24 TYPE abap_bool.
    DATA t25 TYPE f.
    DATA t30 TYPE REF TO zcl_lnt_position.
    t30 = t9->start.
    DATA t32 TYPE f.
    t32 = t30->row.
    t25 = t32.
    DATA t34 TYPE f.
    DATA t39 TYPE REF TO zcl_lnt_position.
    t39 = t16->start.
    DATA t41 TYPE f.
    t41 = t39->row.
    t34 = t41.
    t24 = xsdbool( t25 = t34 ).
    t23 = t24.
    IF t24 = abap_true.
      DATA t43 TYPE abap_bool.
      DATA t44 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t45 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t50 TYPE REF TO zcl_lnt_position.
      t50 = t9->start.
      DATA t52 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t52 = t50->col.
      t45 = t52.
      DATA(t54) = CONV f( 1 ).
      DATA(t55) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t55->has = abap_true.
      t55->value = t54.
      t44 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t45 right = t55 op = `+` ).
      DATA t56 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t61 TYPE REF TO zcl_lnt_position.
      t61 = t16->start.
      DATA t63 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t63 = t61->col.
      t56 = t63.
      t43 = zlnt_runtime_numb_290eb04a9758=>compare( left = t44 right = t56 op = `==` ).
      t23 = t43.
    ENDIF.
    IF t23 = abap_true.
      DATA t70 TYPE REF TO zcl_lnt_position.
      t70 = t16->start.
      result = t70.
      RETURN.
    ENDIF.
    DATA t73 TYPE REF TO zcl_lnt_abstract_token.
    DATA t74 TYPE REF TO zcl_lnt_abstract_token.
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
    t74 = t75->get_last_token( ).
    t73 = t74.
    DATA t84 TYPE REF TO zcl_lnt_abstract_token.
    DATA t85 TYPE REF TO zcl_lnt_abstract_token.
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
    t85 = t86->get_first_token( ).
    t84 = t85.
    DATA t95 TYPE abap_bool.
    DATA t96 TYPE abap_bool.
    DATA t97 TYPE f.
    DATA t102 TYPE REF TO zcl_lnt_position.
    t102 = t73->start.
    DATA t104 TYPE f.
    t104 = t102->row.
    t97 = t104.
    DATA t106 TYPE f.
    DATA t111 TYPE REF TO zcl_lnt_position.
    t111 = t84->start.
    DATA t113 TYPE f.
    t113 = t111->row.
    t106 = t113.
    t96 = xsdbool( t97 = t106 ).
    t95 = t96.
    IF t96 = abap_true.
      DATA t115 TYPE abap_bool.
      DATA t116 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t119 TYPE REF TO zcl_lnt_abstract_token.
      t119 = t73.
      DATA t121 TYPE REF TO zcl_lnt_position.
      DATA t122 TYPE f.
      DATA t124 TYPE REF TO zcl_lnt_position.
      t124 = t119->start.
      DATA t126 TYPE f.
      t126 = t124->row.
      t122 = t126.
      DATA t128 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t129 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t131 TYPE REF TO zcl_lnt_position.
      t131 = t119->start.
      DATA t133 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t133 = t131->col.
      t129 = t133.
      DATA t135 TYPE f.
      DATA t137 TYPE string.
      t137 = t119->str.
      t135 = strlen( t137 ).
      DATA(t140) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t140->has = abap_true.
      t140->value = t135.
      t128 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t129 right = t140 op = `+` ).
      t121 = NEW zcl_lnt_position( i_row = t122 i_col = t128 ).
      DATA t141 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t141 = t121->col.
      t116 = t141.
      DATA t143 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t148 TYPE REF TO zcl_lnt_position.
      t148 = t84->start.
      DATA t150 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t150 = t148->col.
      t143 = t150.
      t115 = zlnt_runtime_numb_290eb04a9758=>compare( left = t116 right = t143 op = `==` ).
      t95 = t115.
    ENDIF.
    IF t95 = abap_true.
      DATA t157 TYPE REF TO zcl_lnt_position.
      t157 = t84->start.
      result = t157.
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
