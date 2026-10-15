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
    DATA(t1) = NEW zcl_lnt_prsr_mssng_spc_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |parser_missing_space|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Parser Error, missing space|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |In special cases the ABAP language allows for not having spa|.
    t7 = t7 && |ces before or after string literals.\nThis rule makes sure th|.
    t7 = t7 && |e spaces are consistently required across the language.|.
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
      DATA(t17) = |Whitespace|.
      t16->load( ).
      APPEND t17 TO t16->items.
      t16->save( ).
      DATA(t18) = t12.
      DATA(t19) = |SingleFile|.
      t18->load( ).
      APPEND t19 TO t18->items.
      t18->save( ).
      DATA(t20) = t12.
      t11 = t20.
      t9 = t11.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t21.
      t9 = t21.
    ENDIF.
    t8 = t9.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    DATA(t24) = abap_true.
    IF t24 = abap_true.
      DATA(t25) = |IF ( foo = 'bar').|.
      DATA(t26) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t26->has = abap_true.
      t26->value = t25.
      t23 = t26.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      t23 = t27.
    ENDIF.
    t22 = t23.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    DATA(t30) = abap_true.
    IF t30 = abap_true.
      DATA(t31) = |IF ( foo = 'bar' ).|.
      DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t32->has = abap_true.
      t32->value = t31.
      t29 = t32.
    ELSE.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      t29 = t33.
    ENDIF.
    t28 = t29.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    t34 = t35.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t36 = t37.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t22 i_good_example = t28 i_extended_information = t34 i_tags = t8 i_pragma = t36 i_pseudo_comment = t38 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t45 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t46) = |key|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = |title|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |shortDescription|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |tags|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    DATA(t54) = |badExample|.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
    ENDIF.
    DATA(t56) = |goodExample|.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t56 p1 = t57 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_pr_ms_sp_ts_pr_ms_sp.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_pr_ms_sp_ts_pr_ms_sp.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
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
    DATA t10 TYPE REF TO zcl_lnt_abap_file.
    DATA(t11) = t1.
    t10 = t11.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t13) = t10.
    t12 = t13->statements.
    t9 = t12.
    DATA t14 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t14.
    DATA t15 TYPE REF TO object.
    CLEAR t15.
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
      DATA(t21) = t14.
      t20 = me->missing_space( i_statement = t21 ).
      t19 = t20.
      DATA t22 TYPE abap_bool.
      DATA(t23) = t19.
      t22 = xsdbool( t23 IS BOUND ).
      IF t22 = abap_true.
        DATA t24 TYPE string.
        DATA(t25) = |Missing space between string or character literal and parent|.
        t25 = t25 && |heses|.
        t24 = t25.
        DATA t26 TYPE REF TO zcl_lnt_position.
        DATA(t27) = t19.
        t26 = t27.
        t4 = t26.
        DATA t28 TYPE REF TO zcl_lnt_issue.
        CLEAR t28.
        DATA t29 TYPE REF TO zcl_lnt_issue.
        CLEAR t29.
        DATA(t30) = t1.
        DATA(t31) = t4.
        DATA(t32) = t24.
        DATA(t33) = VALUE string( ).
        DATA t34 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t34.
        DATA t35 TYPE string.
        DATA(t36) = |parser_missing_space|.
        t35 = t36.
        DATA t37 TYPE string.
        DATA(t38) = |Parser Error, missing space|.
        t37 = t38.
        DATA t39 TYPE string.
        DATA(t40) = |In special cases the ABAP language allows for not having spa|.
        t40 = t40 && |ces before or after string literals.\nThis rule makes sure th|.
        t40 = t40 && |e spaces are consistently required across the language.|.
        t39 = t40.
        DATA t41 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t41.
        DATA t42 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t42.
        DATA(t43) = abap_true.
        IF t43 = abap_true.
          DATA t44 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t45 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t46 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t46.
          t45 = t46.
          DATA(t47) = t45.
          DATA(t48) = |Syntax|.
          t47->load( ).
          APPEND t48 TO t47->items.
          t47->save( ).
          DATA(t49) = t45.
          DATA(t50) = |Whitespace|.
          t49->load( ).
          APPEND t50 TO t49->items.
          t49->save( ).
          DATA(t51) = t45.
          DATA(t52) = |SingleFile|.
          t51->load( ).
          APPEND t52 TO t51->items.
          t51->save( ).
          DATA(t53) = t45.
          t44 = t53.
          t42 = t44.
        ELSE.
          DATA t54 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t54.
          t42 = t54.
        ENDIF.
        t41 = t42.
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t55.
        DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t56.
        DATA(t57) = abap_true.
        IF t57 = abap_true.
          DATA(t58) = |IF ( foo = 'bar').|.
          DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t59->has = abap_true.
          t59->value = t58.
          t56 = t59.
        ELSE.
          DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t60.
          t56 = t60.
        ENDIF.
        t55 = t56.
        DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t61.
        DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t62.
        DATA(t63) = abap_true.
        IF t63 = abap_true.
          DATA(t64) = |IF ( foo = 'bar' ).|.
          DATA(t65) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t65->has = abap_true.
          t65->value = t64.
          t62 = t65.
        ELSE.
          DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t66.
          t62 = t66.
        ENDIF.
        t61 = t62.
        DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t68.
        t67 = t68.
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t70.
        t69 = t70.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t72.
        t71 = t72.
        t34 = NEW zcl_lnt_irule_metadata( i_key = t35 i_title = t37 i_short_description = t39 i_bad_example = t55 i_good_example = t61 i_extended_information = t67 i_tags = t41 i_pragma = t69 i_pseudo_comment = t71 ).
        CREATE OBJECT t34->zlnt_view_ownkeys_b0e8086400eb.
        t34->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t73.
        IF t34->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t34->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t73 ).
        ENDIF.
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
        IF t34->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t34->zlnt_json_ownkeys_70e5fd461788->put( p0 = t79 p1 = t80 ).
        ENDIF.
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
        DATA(t92) = me->conf.
        t91 = t92->zlnt_view_read_sr_15c06369f827( ).
        DATA t93 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t93.
        t29 = zcl_lnt_issue=>at_position( i_file = t30 i_start = t31 i_message_26cb = t32 i_key = t33 i_severity = t91 i_fix = t93 ).
        t28 = t29.
        DATA(t94) = t2.
        DATA(t95) = t28.
        t94->load( ).
        APPEND t95 TO t94->items.
        t94->save( ).
      ENDIF.
    ENDDO.
    DATA(t96) = t2.
    result = t96.

  ENDMETHOD.

  METHOD missing_space.
    DATA(t1) = i_statement.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t1.
    t3 = t4->get_tokens( ).
    t2 = t3.
    DATA t5 TYPE i.
    DATA(t6) = 1.
    t5 = t6.
    DO.
      DATA t7 TYPE abap_bool.
      DATA(t8) = t5.
      DATA t9 TYPE i.
      DATA(t10) = t2.
      t10->load( ).
      t9 = lines( t10->items ).
      t7 = xsdbool( t8 < t9 ).
      IF t7 = abap_false.
        EXIT.
      ENDIF.
      DATA t11 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t12.
      DATA(t13) = t2.
      DATA t14 TYPE i.
      DATA(t15) = t5.
      DATA(t16) = 1.
      t14 = t15 - t16.
      t14 = t14 + 1.
      DATA t17 TYPE REF TO object.
      CLEAR t17.
      t13->load( ).
      CLEAR t17.
      READ TABLE t13->items INDEX t14 INTO t17.
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
      DATA(t22) = t2.
      DATA(t23) = t5.
      t23 = t23 + 1.
      DATA t24 TYPE REF TO object.
      CLEAR t24.
      t22->load( ).
      CLEAR t24.
      READ TABLE t22->items INDEX t23 INTO t24.
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
      DATA t32 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t33) = t11.
      t32 = t33.
      DATA t34 TYPE string.
      DATA(t35) = t32.
      t34 = t35->str.
      t31 = t34.
      DATA(t36) = |)|.
      t30 = xsdbool( t31 = t36 ).
      t29 = t30.
      IF t30 = abap_true.
        DATA t37 TYPE abap_bool.
        DATA t38 TYPE string.
        DATA t39 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t40) = t20.
        t39 = t40.
        DATA t41 TYPE string.
        DATA(t42) = t39.
        t41 = t42->str.
        t38 = t41.
        DATA(t43) = |=|.
        t37 = xsdbool( t38 = t43 ).
        t29 = t37.
      ENDIF.
      t28 = t29.
      IF t29 = abap_true.
        DATA t44 TYPE abap_bool.
        DATA t45 TYPE f.
        DATA t46 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t47) = t11.
        t46 = t47.
        DATA t48 TYPE f.
        DATA t49 TYPE REF TO zcl_lnt_position.
        DATA t50 TYPE REF TO zcl_lnt_position.
        DATA(t51) = t46.
        t50 = t51->start.
        t49 = t50.
        DATA t52 TYPE f.
        DATA(t53) = t49.
        t52 = t53->row.
        t48 = t52.
        t45 = t48.
        DATA t54 TYPE f.
        DATA t55 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t56) = t20.
        t55 = t56.
        DATA t57 TYPE f.
        DATA t58 TYPE REF TO zcl_lnt_position.
        DATA t59 TYPE REF TO zcl_lnt_position.
        DATA(t60) = t55.
        t59 = t60->start.
        t58 = t59.
        DATA t61 TYPE f.
        DATA(t62) = t58.
        t61 = t62->row.
        t57 = t61.
        t54 = t57.
        t44 = xsdbool( t45 = t54 ).
        t28 = t44.
      ENDIF.
      t27 = t28.
      IF t28 = abap_true.
        DATA t63 TYPE abap_bool.
        DATA t64 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t65 TYPE REF TO zcl_lnt_position.
        DATA t66 TYPE REF TO zcl_lnt_position.
        DATA t67 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t68) = t11.
        t67 = t68.
        DATA t69 TYPE REF TO zcl_lnt_position.
        DATA t70 TYPE f.
        DATA t71 TYPE REF TO zcl_lnt_position.
        DATA t72 TYPE REF TO zcl_lnt_position.
        DATA(t73) = t67.
        t72 = t73->start.
        t71 = t72.
        DATA t74 TYPE f.
        DATA(t75) = t71.
        t74 = t75->row.
        t70 = t74.
        DATA t76 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t77 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t78 TYPE REF TO zcl_lnt_position.
        DATA t79 TYPE REF TO zcl_lnt_position.
        DATA(t80) = t67.
        t79 = t80->start.
        t78 = t79.
        DATA t81 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t82) = t78.
        t81 = t82->col.
        t77 = t81.
        DATA t83 TYPE f.
        DATA t84 TYPE i.
        DATA t85 TYPE string.
        DATA(t86) = t67.
        t85 = t86->str.
        DATA(t87) = strlen( t85 ).
        t84 = t87.
        t83 = t84.
        DATA(t88) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t88->has = abap_true.
        t88->value = t83.
        t76 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t77 right = t88 op = `+` ).
        t69 = NEW zcl_lnt_position( i_row = t70 i_col = t76 ).
        t66 = t69.
        t65 = t66.
        DATA t89 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t90) = t65.
        t89 = t90->col.
        t64 = t89.
        DATA t91 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t92 TYPE REF TO zcl_lnt_position.
        DATA t93 TYPE REF TO zcl_lnt_position.
        DATA t94 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t95) = t20.
        t94 = t95.
        DATA t96 TYPE REF TO zcl_lnt_position.
        DATA(t97) = t94.
        t96 = t97->start.
        t93 = t96.
        t92 = t93.
        DATA t98 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t99) = t92.
        t98 = t99->col.
        t91 = t98.
        t63 = zlnt_runtime_numb_290eb04a9758=>compare( left = t64 right = t91 op = `==` ).
        t27 = t63.
      ENDIF.
      IF t27 = abap_true.
        DATA t100 TYPE REF TO zcl_lnt_position.
        CLEAR t100.
        DATA(t101) = abap_true.
        IF t101 = abap_true.
          DATA t102 TYPE REF TO zcl_lnt_position.
          DATA t103 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t104) = t20.
          t103 = t104.
          DATA t105 TYPE REF TO zcl_lnt_position.
          DATA(t106) = t103.
          t105 = t106->start.
          t102 = t105.
          t100 = t102.
        ELSE.
          DATA t107 TYPE REF TO zcl_lnt_position.
          CLEAR t107.
          t100 = t107.
        ENDIF.
        result = t100.
        RETURN.
      ENDIF.
      DATA t108 TYPE i.
      DATA(t109) = t5.
      DATA(t110) = 1.
      t108 = t109 + t110.
      t5 = t108.
    ENDDO.
    DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t111.
    DATA t112 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t112.
    DATA(t113) = t1.
    DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t116 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t116.
    t115 = t116.
    DATA(t117) = t115.
    DATA(t118) = zlnt_runtime_desc_78196487750d=>zlnt_member_d135_0d084eddc054.
    t117->load( ).
    APPEND t118 TO t117->items.
    t117->save( ).
    DATA(t119) = t115.
    DATA(t120) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
    t119->load( ).
    APPEND t120 TO t119->items.
    t119->save( ).
    DATA(t121) = t115.
    DATA(t122) = zlnt_runtime_desc_78196487750d=>zlnt_member_d355_f5f8042a98ef.
    t121->load( ).
    APPEND t122 TO t121->items.
    t121->save( ).
    DATA(t123) = t115.
    DATA(t124) = zlnt_runtime_desc_78196487750d=>zlnt_member_d224_4e54f441ad62.
    t123->load( ).
    APPEND t124 TO t123->items.
    t123->save( ).
    DATA(t125) = t115.
    DATA(t126) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
    t125->load( ).
    APPEND t126 TO t125->items.
    t125->save( ).
    DATA(t127) = t115.
    DATA(t128) = zlnt_runtime_desc_78196487750d=>zlnt_member_d133_716522bf3a6a.
    t127->load( ).
    APPEND t128 TO t127->items.
    t127->save( ).
    DATA(t129) = t115.
    DATA(t130) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t129->load( ).
    APPEND t130 TO t129->items.
    t129->save( ).
    DATA(t131) = t115.
    DATA(t132) = zlnt_runtime_desc_78196487750d=>zlnt_member_d132_568147cc297b.
    t131->load( ).
    APPEND t132 TO t131->items.
    t131->save( ).
    DATA(t133) = t115.
    DATA(t134) = zlnt_runtime_desc_78196487750d=>zlnt_member_d220_2984eb665ddb.
    t133->load( ).
    APPEND t134 TO t133->items.
    t133->save( ).
    DATA(t135) = t115.
    t114 = t135.
    DATA t136 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t136.
    DATA(t137) = abap_true.
    IF t137 = abap_true.
      DATA(t138) = abap_true.
      DATA(t139) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t139->has = abap_true.
      t139->value = t138.
      t136 = t139.
    ELSE.
      DATA t140 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t140.
      t136 = t140.
    ENDIF.
    t112 = t113->find_all_expressions_multi( i_type_9913 = t114 i_recursive = t136 ).
    t111 = t112.
    DATA t141 TYPE REF TO zcl_lnt_position.
    DATA t142 TYPE REF TO zcl_lnt_position.
    CLEAR t142.
    t141 = t142.
    DATA(t143) = t111.
    DATA t144 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t144.
    DATA t145 TYPE REF TO object.
    CLEAR t145.
    DATA(t146) = VALUE i( ).
    DO.
      t143->load( ).
      IF t146 >= lines( t143->items ).
        EXIT.
      ENDIF.
      CLEAR t145.
      READ TABLE t143->items INDEX t146 + 1 INTO t145.
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
      DATA(t151) = t144.
      t150 = t151->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      t149 = t150.
      DATA t152 TYPE abap_bool.
      DATA(t153) = t149.
      t152 = xsdbool( t153 IS BOUND AND t153 IS INSTANCE OF zcl_lnt_st_cond ).
      IF t152 = abap_true.
        DATA t154 TYPE REF TO zcl_lnt_position.
        DATA(t155) = t144.
        t154 = me->check_cond( i_cond = t155 ).
        t141 = t154.
      ELSE.
        DATA t156 TYPE abap_bool.
        DATA(t157) = t149.
        t156 = xsdbool( t157 IS BOUND AND t157 IS INSTANCE OF zcl_lnt_st_source ).
        IF t156 = abap_true.
          DATA t158 TYPE REF TO zcl_lnt_position.
          DATA(t159) = t144.
          t158 = me->check_source( i_cond = t159 ).
          t141 = t158.
        ELSE.
          DATA t160 TYPE abap_bool.
          DATA(t161) = t149.
          t160 = xsdbool( t161 IS BOUND AND t161 IS INSTANCE OF zcl_lnt_cond_sub ).
          IF t160 = abap_true.
            DATA t162 TYPE REF TO zcl_lnt_position.
            DATA(t163) = t144.
            t162 = me->check_cond_sub( i_cond = t163 ).
            t141 = t162.
          ELSE.
            DATA t164 TYPE abap_bool.
            DATA(t165) = t149.
            t164 = xsdbool( t165 IS BOUND AND t165 IS INSTANCE OF zcl_lnt_st_component_cond ).
            IF t164 = abap_true.
              DATA t166 TYPE REF TO zcl_lnt_position.
              DATA(t167) = t144.
              t166 = me->check_component_cond( i_cond = t167 ).
              t141 = t166.
            ELSE.
              DATA t168 TYPE abap_bool.
              DATA(t169) = t149.
              t168 = xsdbool( t169 IS BOUND AND t169 IS INSTANCE OF zcl_lnt_component_cond_sub ).
              IF t168 = abap_true.
                DATA t170 TYPE REF TO zcl_lnt_position.
                DATA(t171) = t144.
                t170 = me->check_component_cond_sub( i_cond = t171 ).
                t141 = t170.
              ELSE.
                DATA t172 TYPE abap_bool.
                DATA(t173) = t149.
                t172 = xsdbool( t173 IS BOUND AND t173 IS INSTANCE OF zcl_lnt_sql_cond ).
                IF t172 = abap_true.
                  DATA t174 TYPE REF TO zcl_lnt_position.
                  DATA(t175) = t144.
                  t174 = me->check_sql_cond( i_cond = t175 ).
                  t141 = t174.
                ELSE.
                  DATA t176 TYPE abap_bool.
                  DATA(t177) = t149.
                  t176 = xsdbool( t177 IS BOUND AND t177 IS INSTANCE OF zcl_lnt_value_body_line ).
                  IF t176 = abap_true.
                    DATA t178 TYPE REF TO zcl_lnt_position.
                    DATA(t179) = t144.
                    t178 = me->check_value_body_line( i_vb = t179 ).
                    t141 = t178.
                  ELSE.
                    DATA t180 TYPE abap_bool.
                    DATA(t181) = t149.
                    t180 = xsdbool( t181 IS BOUND AND t181 IS INSTANCE OF zcl_lnt_st_new_object ).
                    IF t180 = abap_true.
                      DATA t182 TYPE REF TO zcl_lnt_position.
                      CLEAR t182.
                      DATA t183 TYPE REF TO zcl_lnt_expression_node.
                      DATA(t184) = t144.
                      t183 = t184.
                      DATA t185 TYPE REF TO zcl_lnt_position.
                      CLEAR t185.
                      DATA t186 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                      DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                      DATA t188 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                      DATA t189 TYPE REF TO zcl_lnt_abstract_node.
                      DATA(t190) = t183.
                      t189 = t190.
                      DATA t191 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                      DATA(t192) = t189.
                      t191 = t192->children.
                      t188 = t191.
                      t187 ?= t188.
                      t186 = t187.
                      DATA t193 TYPE REF TO zcl_lnt_position.
                      CLEAR t193.
                      DATA t194 TYPE REF TO zcl_lnt_abstract_token.
                      CLEAR t194.
                      DATA t195 TYPE REF TO zcl_lnt_abstract_token.
                      CLEAR t195.
                      DATA t196 TYPE REF TO zif_lnt_union_4cf1d054.
                      CLEAR t196.
                      DATA(t197) = t186.
                      DATA t198 TYPE i.
                      DATA t199 TYPE i.
                      DATA(t200) = t186.
                      t200->load( ).
                      t199 = lines( t200->items ).
                      DATA(t201) = 2.
                      t198 = t199 - t201.
                      t198 = t198 + 1.
                      DATA t202 TYPE REF TO object.
                      CLEAR t202.
                      t197->load( ).
                      CLEAR t202.
                      READ TABLE t197->items INDEX t198 INTO t202.
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
                      DATA(t208) = t186.
                      DATA t209 TYPE i.
                      DATA t210 TYPE i.
                      DATA(t211) = t186.
                      t211->load( ).
                      t210 = lines( t211->items ).
                      DATA(t212) = 1.
                      t209 = t210 - t212.
                      t209 = t209 + 1.
                      DATA t213 TYPE REF TO object.
                      CLEAR t213.
                      t208->load( ).
                      CLEAR t213.
                      READ TABLE t208->items INDEX t209 INTO t213.
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
                      DATA t220 TYPE REF TO zcl_lnt_abstract_token.
                      DATA(t221) = t194.
                      t220 = t221.
                      DATA t222 TYPE f.
                      DATA t223 TYPE REF TO zcl_lnt_position.
                      DATA t224 TYPE REF TO zcl_lnt_position.
                      DATA(t225) = t220.
                      t224 = t225->start.
                      t223 = t224.
                      DATA t226 TYPE f.
                      DATA(t227) = t223.
                      t226 = t227->row.
                      t222 = t226.
                      t219 = t222.
                      DATA t228 TYPE f.
                      DATA t229 TYPE REF TO zcl_lnt_abstract_token.
                      DATA(t230) = t205.
                      t229 = t230.
                      DATA t231 TYPE f.
                      DATA t232 TYPE REF TO zcl_lnt_position.
                      DATA t233 TYPE REF TO zcl_lnt_position.
                      DATA(t234) = t229.
                      t233 = t234->start.
                      t232 = t233.
                      DATA t235 TYPE f.
                      DATA(t236) = t232.
                      t235 = t236->row.
                      t231 = t235.
                      t228 = t231.
                      t218 = xsdbool( t219 = t228 ).
                      t217 = t218.
                      IF t218 = abap_true.
                        DATA t237 TYPE abap_bool.
                        DATA t238 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                        DATA t239 TYPE REF TO zcl_lnt_position.
                        DATA t240 TYPE REF TO zcl_lnt_position.
                        DATA t241 TYPE REF TO zcl_lnt_abstract_token.
                        DATA(t242) = t194.
                        t241 = t242.
                        DATA t243 TYPE REF TO zcl_lnt_position.
                        DATA t244 TYPE f.
                        DATA t245 TYPE REF TO zcl_lnt_position.
                        DATA t246 TYPE REF TO zcl_lnt_position.
                        DATA(t247) = t241.
                        t246 = t247->start.
                        t245 = t246.
                        DATA t248 TYPE f.
                        DATA(t249) = t245.
                        t248 = t249->row.
                        t244 = t248.
                        DATA t250 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                        DATA t251 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                        DATA t252 TYPE REF TO zcl_lnt_position.
                        DATA t253 TYPE REF TO zcl_lnt_position.
                        DATA(t254) = t241.
                        t253 = t254->start.
                        t252 = t253.
                        DATA t255 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                        DATA(t256) = t252.
                        t255 = t256->col.
                        t251 = t255.
                        DATA t257 TYPE f.
                        DATA t258 TYPE i.
                        DATA t259 TYPE string.
                        DATA(t260) = t241.
                        t259 = t260->str.
                        DATA(t261) = strlen( t259 ).
                        t258 = t261.
                        t257 = t258.
                        DATA(t262) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                        t262->has = abap_true.
                        t262->value = t257.
                        t250 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t251 right = t262 op = `+` ).
                        t243 = NEW zcl_lnt_position( i_row = t244 i_col = t250 ).
                        t240 = t243.
                        t239 = t240.
                        DATA t263 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                        DATA(t264) = t239.
                        t263 = t264->col.
                        t238 = t263.
                        DATA t265 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                        DATA t266 TYPE REF TO zcl_lnt_position.
                        DATA t267 TYPE REF TO zcl_lnt_position.
                        DATA t268 TYPE REF TO zcl_lnt_abstract_token.
                        DATA(t269) = t205.
                        t268 = t269.
                        DATA t270 TYPE REF TO zcl_lnt_position.
                        DATA(t271) = t268.
                        t270 = t271->start.
                        t267 = t270.
                        t266 = t267.
                        DATA t272 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                        DATA(t273) = t266.
                        t272 = t273->col.
                        t265 = t272.
                        t237 = zlnt_runtime_numb_290eb04a9758=>compare( left = t238 right = t265 op = `==` ).
                        t217 = t237.
                      ENDIF.
                      IF t217 = abap_true.
                        DATA t274 TYPE REF TO zcl_lnt_position.
                        CLEAR t274.
                        DATA(t275) = abap_true.
                        IF t275 = abap_true.
                          DATA t276 TYPE REF TO zcl_lnt_position.
                          DATA t277 TYPE REF TO zcl_lnt_abstract_token.
                          DATA(t278) = t205.
                          t277 = t278.
                          DATA t279 TYPE REF TO zcl_lnt_position.
                          DATA(t280) = t277.
                          t279 = t280->start.
                          t276 = t279.
                          t274 = t276.
                        ELSE.
                          DATA t281 TYPE REF TO zcl_lnt_position.
                          CLEAR t281.
                          t274 = t281.
                        ENDIF.
                        t216 = t274.
                      ELSE.
                        DATA t282 TYPE REF TO zcl_lnt_position.
                        CLEAR t282.
                        t216 = t282.
                      ENDIF.
                      t193 = t216.
                      t185 = t193.
                      t182 = t185.
                      t141 = t182.
                    ELSE.
                      DATA t283 TYPE abap_bool.
                      DATA(t284) = t149.
                      t283 = xsdbool( t284 IS BOUND AND t284 IS INSTANCE OF zcl_lnt_st_method_call_param ).
                      IF t283 = abap_true.
                        DATA t285 TYPE REF TO zcl_lnt_position.
                        CLEAR t285.
                        DATA t286 TYPE REF TO zcl_lnt_expression_node.
                        DATA(t287) = t144.
                        t286 = t287.
                        DATA t288 TYPE REF TO zcl_lnt_position.
                        CLEAR t288.
                        DATA t289 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                        DATA t290 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                        DATA t291 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                        DATA t292 TYPE REF TO zcl_lnt_abstract_node.
                        DATA(t293) = t286.
                        t292 = t293.
                        DATA t294 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                        DATA(t295) = t292.
                        t294 = t295->children.
                        t291 = t294.
                        t290 ?= t291.
                        t289 = t290.
                        DATA t296 TYPE REF TO zcl_lnt_position.
                        CLEAR t296.
                        DATA t297 TYPE REF TO zcl_lnt_abstract_token.
                        CLEAR t297.
                        DATA t298 TYPE REF TO zcl_lnt_abstract_token.
                        CLEAR t298.
                        DATA t299 TYPE REF TO zif_lnt_union_4cf1d054.
                        CLEAR t299.
                        DATA(t300) = t289.
                        DATA t301 TYPE REF TO object.
                        CLEAR t301.
                        t300->load( ).
                        CLEAR t301.
                        READ TABLE t300->items INDEX 1 INTO t301.
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
                        DATA(t307) = t289.
                        DATA t308 TYPE REF TO object.
                        CLEAR t308.
                        t307->load( ).
                        CLEAR t308.
                        READ TABLE t307->items INDEX 2 INTO t308.
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
                        DATA t315 TYPE REF TO zcl_lnt_abstract_token.
                        DATA(t316) = t297.
                        t315 = t316.
                        DATA t317 TYPE f.
                        DATA t318 TYPE REF TO zcl_lnt_position.
                        DATA t319 TYPE REF TO zcl_lnt_position.
                        DATA(t320) = t315.
                        t319 = t320->start.
                        t318 = t319.
                        DATA t321 TYPE f.
                        DATA(t322) = t318.
                        t321 = t322->row.
                        t317 = t321.
                        t314 = t317.
                        DATA t323 TYPE f.
                        DATA t324 TYPE REF TO zcl_lnt_abstract_token.
                        DATA(t325) = t304.
                        t324 = t325.
                        DATA t326 TYPE f.
                        DATA t327 TYPE REF TO zcl_lnt_position.
                        DATA t328 TYPE REF TO zcl_lnt_position.
                        DATA(t329) = t324.
                        t328 = t329->start.
                        t327 = t328.
                        DATA t330 TYPE f.
                        DATA(t331) = t327.
                        t330 = t331->row.
                        t326 = t330.
                        t323 = t326.
                        t313 = xsdbool( t314 = t323 ).
                        t312 = t313.
                        IF t313 = abap_true.
                          DATA t332 TYPE abap_bool.
                          DATA t333 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                          DATA t334 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                          DATA t335 TYPE REF TO zcl_lnt_abstract_token.
                          DATA(t336) = t297.
                          t335 = t336.
                          DATA t337 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                          DATA t338 TYPE REF TO zcl_lnt_position.
                          DATA t339 TYPE REF TO zcl_lnt_position.
                          DATA(t340) = t335.
                          t339 = t340->start.
                          t338 = t339.
                          DATA t341 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                          DATA(t342) = t338.
                          t341 = t342->col.
                          t337 = t341.
                          t334 = t337.
                          DATA(t343) = CONV f( 1 ).
                          DATA(t344) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                          t344->has = abap_true.
                          t344->value = t343.
                          t333 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t334 right = t344 op = `+` ).
                          DATA t345 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                          DATA t346 TYPE REF TO zcl_lnt_position.
                          DATA t347 TYPE REF TO zcl_lnt_position.
                          DATA t348 TYPE REF TO zcl_lnt_abstract_token.
                          DATA(t349) = t304.
                          t348 = t349.
                          DATA t350 TYPE REF TO zcl_lnt_position.
                          DATA(t351) = t348.
                          t350 = t351->start.
                          t347 = t350.
                          t346 = t347.
                          DATA t352 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                          DATA(t353) = t346.
                          t352 = t353->col.
                          t345 = t352.
                          t332 = zlnt_runtime_numb_290eb04a9758=>compare( left = t333 right = t345 op = `==` ).
                          t312 = t332.
                        ENDIF.
                        IF t312 = abap_true.
                          DATA t354 TYPE REF TO zcl_lnt_position.
                          CLEAR t354.
                          DATA(t355) = abap_true.
                          IF t355 = abap_true.
                            DATA t356 TYPE REF TO zcl_lnt_position.
                            DATA t357 TYPE REF TO zcl_lnt_abstract_token.
                            DATA(t358) = t304.
                            t357 = t358.
                            DATA t359 TYPE REF TO zcl_lnt_position.
                            DATA(t360) = t357.
                            t359 = t360->start.
                            t356 = t359.
                            t354 = t356.
                          ELSE.
                            DATA t361 TYPE REF TO zcl_lnt_position.
                            CLEAR t361.
                            t354 = t361.
                          ENDIF.
                          t311 = t354.
                        ELSE.
                          DATA t362 TYPE REF TO zcl_lnt_position.
                          CLEAR t362.
                          DATA t363 TYPE REF TO zcl_lnt_abstract_token.
                          CLEAR t363.
                          DATA t364 TYPE REF TO zcl_lnt_abstract_token.
                          CLEAR t364.
                          DATA t365 TYPE REF TO zif_lnt_union_4cf1d054.
                          CLEAR t365.
                          DATA(t366) = t289.
                          DATA t367 TYPE i.
                          DATA t368 TYPE i.
                          DATA(t369) = t289.
                          t369->load( ).
                          t368 = lines( t369->items ).
                          DATA(t370) = 2.
                          t367 = t368 - t370.
                          t367 = t367 + 1.
                          DATA t371 TYPE REF TO object.
                          CLEAR t371.
                          t366->load( ).
                          CLEAR t371.
                          READ TABLE t366->items INDEX t367 INTO t371.
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
                          DATA(t377) = t289.
                          DATA t378 TYPE i.
                          DATA t379 TYPE i.
                          DATA(t380) = t289.
                          t380->load( ).
                          t379 = lines( t380->items ).
                          DATA(t381) = 1.
                          t378 = t379 - t381.
                          t378 = t378 + 1.
                          DATA t382 TYPE REF TO object.
                          CLEAR t382.
                          t377->load( ).
                          CLEAR t382.
                          READ TABLE t377->items INDEX t378 INTO t382.
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
                          DATA t389 TYPE REF TO zcl_lnt_abstract_token.
                          DATA(t390) = t363.
                          t389 = t390.
                          DATA t391 TYPE f.
                          DATA t392 TYPE REF TO zcl_lnt_position.
                          DATA t393 TYPE REF TO zcl_lnt_position.
                          DATA(t394) = t389.
                          t393 = t394->start.
                          t392 = t393.
                          DATA t395 TYPE f.
                          DATA(t396) = t392.
                          t395 = t396->row.
                          t391 = t395.
                          t388 = t391.
                          DATA t397 TYPE f.
                          DATA t398 TYPE REF TO zcl_lnt_abstract_token.
                          DATA(t399) = t374.
                          t398 = t399.
                          DATA t400 TYPE f.
                          DATA t401 TYPE REF TO zcl_lnt_position.
                          DATA t402 TYPE REF TO zcl_lnt_position.
                          DATA(t403) = t398.
                          t402 = t403->start.
                          t401 = t402.
                          DATA t404 TYPE f.
                          DATA(t405) = t401.
                          t404 = t405->row.
                          t400 = t404.
                          t397 = t400.
                          t387 = xsdbool( t388 = t397 ).
                          t386 = t387.
                          IF t387 = abap_true.
                            DATA t406 TYPE abap_bool.
                            DATA t407 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                            DATA t408 TYPE REF TO zcl_lnt_position.
                            DATA t409 TYPE REF TO zcl_lnt_position.
                            DATA t410 TYPE REF TO zcl_lnt_abstract_token.
                            DATA(t411) = t363.
                            t410 = t411.
                            DATA t412 TYPE REF TO zcl_lnt_position.
                            DATA t413 TYPE f.
                            DATA t414 TYPE REF TO zcl_lnt_position.
                            DATA t415 TYPE REF TO zcl_lnt_position.
                            DATA(t416) = t410.
                            t415 = t416->start.
                            t414 = t415.
                            DATA t417 TYPE f.
                            DATA(t418) = t414.
                            t417 = t418->row.
                            t413 = t417.
                            DATA t419 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                            DATA t420 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                            DATA t421 TYPE REF TO zcl_lnt_position.
                            DATA t422 TYPE REF TO zcl_lnt_position.
                            DATA(t423) = t410.
                            t422 = t423->start.
                            t421 = t422.
                            DATA t424 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                            DATA(t425) = t421.
                            t424 = t425->col.
                            t420 = t424.
                            DATA t426 TYPE f.
                            DATA t427 TYPE i.
                            DATA t428 TYPE string.
                            DATA(t429) = t410.
                            t428 = t429->str.
                            DATA(t430) = strlen( t428 ).
                            t427 = t430.
                            t426 = t427.
                            DATA(t431) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                            t431->has = abap_true.
                            t431->value = t426.
                            t419 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t420 right = t431 op = `+` ).
                            t412 = NEW zcl_lnt_position( i_row = t413 i_col = t419 ).
                            t409 = t412.
                            t408 = t409.
                            DATA t432 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                            DATA(t433) = t408.
                            t432 = t433->col.
                            t407 = t432.
                            DATA t434 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                            DATA t435 TYPE REF TO zcl_lnt_position.
                            DATA t436 TYPE REF TO zcl_lnt_position.
                            DATA t437 TYPE REF TO zcl_lnt_abstract_token.
                            DATA(t438) = t374.
                            t437 = t438.
                            DATA t439 TYPE REF TO zcl_lnt_position.
                            DATA(t440) = t437.
                            t439 = t440->start.
                            t436 = t439.
                            t435 = t436.
                            DATA t441 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                            DATA(t442) = t435.
                            t441 = t442->col.
                            t434 = t441.
                            t406 = zlnt_runtime_numb_290eb04a9758=>compare( left = t407 right = t434 op = `==` ).
                            t386 = t406.
                          ENDIF.
                          IF t386 = abap_true.
                            DATA t443 TYPE REF TO zcl_lnt_position.
                            CLEAR t443.
                            DATA(t444) = abap_true.
                            IF t444 = abap_true.
                              DATA t445 TYPE REF TO zcl_lnt_position.
                              DATA t446 TYPE REF TO zcl_lnt_abstract_token.
                              DATA(t447) = t374.
                              t446 = t447.
                              DATA t448 TYPE REF TO zcl_lnt_position.
                              DATA(t449) = t446.
                              t448 = t449->start.
                              t445 = t448.
                              t443 = t445.
                            ELSE.
                              DATA t450 TYPE REF TO zcl_lnt_position.
                              CLEAR t450.
                              t443 = t450.
                            ENDIF.
                            t385 = t443.
                          ELSE.
                            DATA t451 TYPE REF TO zcl_lnt_position.
                            CLEAR t451.
                            t385 = t451.
                          ENDIF.
                          t362 = t385.
                          t311 = t362.
                        ENDIF.
                        t296 = t311.
                        t288 = t296.
                        t285 = t288.
                        t141 = t285.
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
      DATA(t453) = t141.
      t452 = xsdbool( t453 IS BOUND ).
      IF t452 = abap_true.
        DATA t454 TYPE REF TO zcl_lnt_position.
        CLEAR t454.
        DATA(t455) = abap_true.
        IF t455 = abap_true.
          DATA t456 TYPE REF TO zcl_lnt_position.
          DATA(t457) = t141.
          t456 = t457.
          t454 = t456.
        ELSE.
          DATA t458 TYPE REF TO zcl_lnt_position.
          CLEAR t458.
          t454 = t458.
        ENDIF.
        result = t454.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t459 TYPE REF TO zcl_lnt_position.
    CLEAR t459.
    result = t459.

  ENDMETHOD.

  METHOD check_sql_cond.
    DATA(t1) = i_cond.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = t5.
    t7 = t8->children.
    t4 = t7.
    t3 ?= t4.
    t2 = t3.
    DATA t9 TYPE i.
    DATA(t10) = 0.
    t9 = t10.
    DO.
      DATA t11 TYPE abap_bool.
      DATA(t12) = t9.
      DATA t13 TYPE i.
      DATA(t14) = t2.
      t14->load( ).
      t13 = lines( t14->items ).
      t11 = xsdbool( t12 < t13 ).
      IF t11 = abap_false.
        EXIT.
      ENDIF.
      DATA(t15) = VALUE abap_bool( ).
      DATA t16 TYPE REF TO object.
      CLEAR t16.
      DATA t17 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t17.
      DATA(t18) = t2.
      DATA(t19) = t9.
      t19 = t19 + 1.
      DATA t20 TYPE REF TO object.
      CLEAR t20.
      t18->load( ).
      CLEAR t20.
      READ TABLE t18->items INDEX t19 INTO t20.
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
        DATA(t25) = t2.
        DATA(t26) = t9.
        t26 = t26 + 1.
        DATA t27 TYPE REF TO object.
        CLEAR t27.
        t25->load( ).
        CLEAR t27.
        READ TABLE t25->items INDEX t26 INTO t27.
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
        DATA(t33) = t2.
        DATA t34 TYPE i.
        DATA(t35) = t9.
        DATA(t36) = 1.
        t34 = t35 - t36.
        t34 = t34 + 1.
        DATA t37 TYPE REF TO object.
        CLEAR t37.
        t33->load( ).
        CLEAR t37.
        READ TABLE t33->items INDEX t34 INTO t37.
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
        DATA(t43) = t2.
        DATA t44 TYPE i.
        DATA(t45) = t9.
        DATA(t46) = 1.
        t44 = t45 + t46.
        t44 = t44 + 1.
        DATA t47 TYPE REF TO object.
        CLEAR t47.
        t43->load( ).
        CLEAR t47.
        READ TABLE t43->items INDEX t44 INTO t47.
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
        DATA t54 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t55) = t30.
        t54 = t55.
        DATA t56 TYPE string.
        DATA(t57) = t54.
        t56 = t57->str.
        t53 = t56.
        DATA(t58) = |(|.
        t52 = xsdbool( t53 = t58 ).
        t51 = t52.
        IF t52 = abap_true.
          DATA t59 TYPE abap_bool.
          DATA t60 TYPE f.
          DATA t61 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t62) = t30.
          t61 = t62.
          DATA t63 TYPE f.
          DATA t64 TYPE REF TO zcl_lnt_position.
          DATA t65 TYPE REF TO zcl_lnt_position.
          DATA(t66) = t61.
          t65 = t66->start.
          t64 = t65.
          DATA t67 TYPE f.
          DATA(t68) = t64.
          t67 = t68->row.
          t63 = t67.
          t60 = t63.
          DATA t69 TYPE f.
          DATA t70 TYPE REF TO zcl_lnt_abstract_token.
          DATA t71 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t72) = t23.
          t71 = t72->get_first_token( ).
          t70 = t71.
          DATA t73 TYPE f.
          DATA t74 TYPE REF TO zcl_lnt_position.
          DATA t75 TYPE REF TO zcl_lnt_position.
          DATA(t76) = t70.
          t75 = t76->start.
          t74 = t75.
          DATA t77 TYPE f.
          DATA(t78) = t74.
          t77 = t78->row.
          t73 = t77.
          t69 = t73.
          t59 = xsdbool( t60 = t69 ).
          t51 = t59.
        ENDIF.
        t50 = t51.
        IF t51 = abap_true.
          DATA t79 TYPE abap_bool.
          DATA t80 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t81 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t82 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t83) = t30.
          t82 = t83.
          DATA t84 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t85 TYPE REF TO zcl_lnt_position.
          DATA t86 TYPE REF TO zcl_lnt_position.
          DATA(t87) = t82.
          t86 = t87->start.
          t85 = t86.
          DATA t88 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t89) = t85.
          t88 = t89->col.
          t84 = t88.
          t81 = t84.
          DATA(t90) = CONV f( 1 ).
          DATA(t91) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t91->has = abap_true.
          t91->value = t90.
          t80 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t81 right = t91 op = `+` ).
          DATA t92 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t93 TYPE REF TO zcl_lnt_position.
          DATA t94 TYPE REF TO zcl_lnt_position.
          DATA t95 TYPE REF TO zcl_lnt_abstract_token.
          DATA t96 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t97) = t23.
          t96 = t97->get_first_token( ).
          t95 = t96.
          DATA t98 TYPE REF TO zcl_lnt_position.
          DATA(t99) = t95.
          t98 = t99->start.
          t94 = t98.
          t93 = t94.
          DATA t100 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t101) = t93.
          t100 = t101->col.
          t92 = t100.
          t79 = zlnt_runtime_numb_290eb04a9758=>compare( left = t80 right = t92 op = `==` ).
          t50 = t79.
        ENDIF.
        IF t50 = abap_true.
          DATA t102 TYPE REF TO zcl_lnt_position.
          CLEAR t102.
          DATA(t103) = abap_true.
          IF t103 = abap_true.
            DATA t104 TYPE REF TO zcl_lnt_position.
            DATA t105 TYPE REF TO zcl_lnt_abstract_token.
            DATA t106 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t107) = t23.
            t106 = t107->get_first_token( ).
            t105 = t106.
            DATA t108 TYPE REF TO zcl_lnt_position.
            DATA(t109) = t105.
            t108 = t109->start.
            t104 = t108.
            t102 = t104.
          ELSE.
            DATA t110 TYPE REF TO zcl_lnt_position.
            CLEAR t110.
            t102 = t110.
          ENDIF.
          result = t102.
          RETURN.
        ENDIF.
        DATA(t111) = VALUE abap_bool( ).
        DATA t112 TYPE abap_bool.
        DATA t113 TYPE abap_bool.
        DATA t114 TYPE string.
        DATA t115 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t116) = t40.
        t115 = t116.
        DATA t117 TYPE string.
        DATA(t118) = t115.
        t117 = t118->str.
        t114 = t117.
        DATA(t119) = |)|.
        t113 = xsdbool( t114 = t119 ).
        t112 = t113.
        IF t113 = abap_true.
          DATA t120 TYPE abap_bool.
          DATA t121 TYPE f.
          DATA t122 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t123) = t40.
          t122 = t123.
          DATA t124 TYPE f.
          DATA t125 TYPE REF TO zcl_lnt_position.
          DATA t126 TYPE REF TO zcl_lnt_position.
          DATA(t127) = t122.
          t126 = t127->start.
          t125 = t126.
          DATA t128 TYPE f.
          DATA(t129) = t125.
          t128 = t129->row.
          t124 = t128.
          t121 = t124.
          DATA t130 TYPE f.
          DATA t131 TYPE REF TO zcl_lnt_abstract_token.
          DATA t132 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t133) = t23.
          t132 = t133->get_last_token( ).
          t131 = t132.
          DATA t134 TYPE f.
          DATA t135 TYPE REF TO zcl_lnt_position.
          DATA t136 TYPE REF TO zcl_lnt_position.
          DATA(t137) = t131.
          t136 = t137->start.
          t135 = t136.
          DATA t138 TYPE f.
          DATA(t139) = t135.
          t138 = t139->row.
          t134 = t138.
          t130 = t134.
          t120 = xsdbool( t121 = t130 ).
          t112 = t120.
        ENDIF.
        t111 = t112.
        IF t112 = abap_true.
          DATA t140 TYPE abap_bool.
          DATA t141 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t142 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t143) = t40.
          t142 = t143.
          DATA t144 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t145 TYPE REF TO zcl_lnt_position.
          DATA t146 TYPE REF TO zcl_lnt_position.
          DATA(t147) = t142.
          t146 = t147->start.
          t145 = t146.
          DATA t148 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t149) = t145.
          t148 = t149->col.
          t144 = t148.
          t141 = t144.
          DATA t150 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t151 TYPE REF TO zcl_lnt_position.
          DATA t152 TYPE REF TO zcl_lnt_position.
          DATA t153 TYPE REF TO zcl_lnt_abstract_token.
          DATA t154 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t155) = t23.
          t154 = t155->get_last_token( ).
          t153 = t154.
          DATA t156 TYPE REF TO zcl_lnt_position.
          DATA t157 TYPE f.
          DATA t158 TYPE REF TO zcl_lnt_position.
          DATA t159 TYPE REF TO zcl_lnt_position.
          DATA(t160) = t153.
          t159 = t160->start.
          t158 = t159.
          DATA t161 TYPE f.
          DATA(t162) = t158.
          t161 = t162->row.
          t157 = t161.
          DATA t163 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t164 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t165 TYPE REF TO zcl_lnt_position.
          DATA t166 TYPE REF TO zcl_lnt_position.
          DATA(t167) = t153.
          t166 = t167->start.
          t165 = t166.
          DATA t168 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t169) = t165.
          t168 = t169->col.
          t164 = t168.
          DATA t170 TYPE f.
          DATA t171 TYPE i.
          DATA t172 TYPE string.
          DATA(t173) = t153.
          t172 = t173->str.
          DATA(t174) = strlen( t172 ).
          t171 = t174.
          t170 = t171.
          DATA(t175) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t175->has = abap_true.
          t175->value = t170.
          t163 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t164 right = t175 op = `+` ).
          t156 = NEW zcl_lnt_position( i_row = t157 i_col = t163 ).
          t152 = t156.
          t151 = t152.
          DATA t176 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t177) = t151.
          t176 = t177->col.
          t150 = t176.
          t140 = zlnt_runtime_numb_290eb04a9758=>compare( left = t141 right = t150 op = `==` ).
          t111 = t140.
        ENDIF.
        IF t111 = abap_true.
          DATA t178 TYPE REF TO zcl_lnt_position.
          CLEAR t178.
          DATA(t179) = abap_true.
          IF t179 = abap_true.
            DATA t180 TYPE REF TO zcl_lnt_position.
            DATA t181 TYPE REF TO zcl_lnt_abstract_token.
            DATA t182 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t183) = t23.
            t182 = t183->get_last_token( ).
            t181 = t182.
            DATA t184 TYPE REF TO zcl_lnt_position.
            DATA t185 TYPE f.
            DATA t186 TYPE REF TO zcl_lnt_position.
            DATA t187 TYPE REF TO zcl_lnt_position.
            DATA(t188) = t181.
            t187 = t188->start.
            t186 = t187.
            DATA t189 TYPE f.
            DATA(t190) = t186.
            t189 = t190->row.
            t185 = t189.
            DATA t191 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t192 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t193 TYPE REF TO zcl_lnt_position.
            DATA t194 TYPE REF TO zcl_lnt_position.
            DATA(t195) = t181.
            t194 = t195->start.
            t193 = t194.
            DATA t196 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t197) = t193.
            t196 = t197->col.
            t192 = t196.
            DATA t198 TYPE f.
            DATA t199 TYPE i.
            DATA t200 TYPE string.
            DATA(t201) = t181.
            t200 = t201->str.
            DATA(t202) = strlen( t200 ).
            t199 = t202.
            t198 = t199.
            DATA(t203) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t203->has = abap_true.
            t203->value = t198.
            t191 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t192 right = t203 op = `+` ).
            t184 = NEW zcl_lnt_position( i_row = t185 i_col = t191 ).
            t180 = t184.
            t178 = t180.
          ELSE.
            DATA t204 TYPE REF TO zcl_lnt_position.
            CLEAR t204.
            t178 = t204.
          ENDIF.
          result = t178.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t205 TYPE i.
      DATA(t206) = t9.
      DATA(t207) = 1.
      t205 = t206 + t207.
      t9 = t205.
    ENDDO.
    DATA t208 TYPE REF TO zcl_lnt_position.
    CLEAR t208.
    result = t208.

  ENDMETHOD.

  METHOD check_new_object.
    DATA(t1) = i_cond.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = t5.
    t7 = t8->children.
    t4 = t7.
    t3 ?= t4.
    t2 = t3.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t10.
    DATA t11 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t11.
    DATA(t12) = t2.
    DATA t13 TYPE i.
    DATA t14 TYPE i.
    DATA(t15) = t2.
    t15->load( ).
    t14 = lines( t15->items ).
    DATA(t16) = 2.
    t13 = t14 - t16.
    t13 = t13 + 1.
    DATA t17 TYPE REF TO object.
    CLEAR t17.
    t12->load( ).
    CLEAR t17.
    READ TABLE t12->items INDEX t13 INTO t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    CLEAR t11.
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
    CLEAR t20.
    DATA t21 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t21.
    DATA t22 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t22.
    DATA(t23) = t2.
    DATA t24 TYPE i.
    DATA t25 TYPE i.
    DATA(t26) = t2.
    t26->load( ).
    t25 = lines( t26->items ).
    DATA(t27) = 1.
    t24 = t25 - t27.
    t24 = t24 + 1.
    DATA t28 TYPE REF TO object.
    CLEAR t28.
    t23->load( ).
    CLEAR t28.
    READ TABLE t23->items INDEX t24 INTO t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    CLEAR t22.
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
    DATA t34 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t35) = t9.
    t34 = t35.
    DATA t36 TYPE f.
    DATA t37 TYPE REF TO zcl_lnt_position.
    DATA t38 TYPE REF TO zcl_lnt_position.
    DATA(t39) = t34.
    t38 = t39->start.
    t37 = t38.
    DATA t40 TYPE f.
    DATA(t41) = t37.
    t40 = t41->row.
    t36 = t40.
    t33 = t36.
    DATA t42 TYPE f.
    DATA t43 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t44) = t20.
    t43 = t44.
    DATA t45 TYPE f.
    DATA t46 TYPE REF TO zcl_lnt_position.
    DATA t47 TYPE REF TO zcl_lnt_position.
    DATA(t48) = t43.
    t47 = t48->start.
    t46 = t47.
    DATA t49 TYPE f.
    DATA(t50) = t46.
    t49 = t50->row.
    t45 = t49.
    t42 = t45.
    t32 = xsdbool( t33 = t42 ).
    t31 = t32.
    IF t32 = abap_true.
      DATA t51 TYPE abap_bool.
      DATA t52 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t53 TYPE REF TO zcl_lnt_position.
      DATA t54 TYPE REF TO zcl_lnt_position.
      DATA t55 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t56) = t9.
      t55 = t56.
      DATA t57 TYPE REF TO zcl_lnt_position.
      DATA t58 TYPE f.
      DATA t59 TYPE REF TO zcl_lnt_position.
      DATA t60 TYPE REF TO zcl_lnt_position.
      DATA(t61) = t55.
      t60 = t61->start.
      t59 = t60.
      DATA t62 TYPE f.
      DATA(t63) = t59.
      t62 = t63->row.
      t58 = t62.
      DATA t64 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t65 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t66 TYPE REF TO zcl_lnt_position.
      DATA t67 TYPE REF TO zcl_lnt_position.
      DATA(t68) = t55.
      t67 = t68->start.
      t66 = t67.
      DATA t69 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t70) = t66.
      t69 = t70->col.
      t65 = t69.
      DATA t71 TYPE f.
      DATA t72 TYPE i.
      DATA t73 TYPE string.
      DATA(t74) = t55.
      t73 = t74->str.
      DATA(t75) = strlen( t73 ).
      t72 = t75.
      t71 = t72.
      DATA(t76) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t76->has = abap_true.
      t76->value = t71.
      t64 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t65 right = t76 op = `+` ).
      t57 = NEW zcl_lnt_position( i_row = t58 i_col = t64 ).
      t54 = t57.
      t53 = t54.
      DATA t77 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t78) = t53.
      t77 = t78->col.
      t52 = t77.
      DATA t79 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t80 TYPE REF TO zcl_lnt_position.
      DATA t81 TYPE REF TO zcl_lnt_position.
      DATA t82 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t83) = t20.
      t82 = t83.
      DATA t84 TYPE REF TO zcl_lnt_position.
      DATA(t85) = t82.
      t84 = t85->start.
      t81 = t84.
      t80 = t81.
      DATA t86 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t87) = t80.
      t86 = t87->col.
      t79 = t86.
      t51 = zlnt_runtime_numb_290eb04a9758=>compare( left = t52 right = t79 op = `==` ).
      t31 = t51.
    ENDIF.
    IF t31 = abap_true.
      DATA t88 TYPE REF TO zcl_lnt_position.
      CLEAR t88.
      DATA(t89) = abap_true.
      IF t89 = abap_true.
        DATA t90 TYPE REF TO zcl_lnt_position.
        DATA t91 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t92) = t20.
        t91 = t92.
        DATA t93 TYPE REF TO zcl_lnt_position.
        DATA(t94) = t91.
        t93 = t94->start.
        t90 = t93.
        t88 = t90.
      ELSE.
        DATA t95 TYPE REF TO zcl_lnt_position.
        CLEAR t95.
        t88 = t95.
      ENDIF.
      result = t88.
      RETURN.
    ENDIF.
    DATA t96 TYPE REF TO zcl_lnt_position.
    CLEAR t96.
    result = t96.

  ENDMETHOD.

  METHOD check_cond_sub.
    DATA(t1) = i_cond.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = t5.
    t7 = t8->children.
    t4 = t7.
    t3 ?= t4.
    t2 = t3.
    DATA t9 TYPE i.
    DATA(t10) = 0.
    t9 = t10.
    DO.
      DATA t11 TYPE abap_bool.
      DATA(t12) = t9.
      DATA t13 TYPE i.
      DATA(t14) = t2.
      t14->load( ).
      t13 = lines( t14->items ).
      t11 = xsdbool( t12 < t13 ).
      IF t11 = abap_false.
        EXIT.
      ENDIF.
      DATA(t15) = VALUE abap_bool( ).
      DATA t16 TYPE REF TO object.
      CLEAR t16.
      DATA t17 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t17.
      DATA(t18) = t2.
      DATA(t19) = t9.
      t19 = t19 + 1.
      DATA t20 TYPE REF TO object.
      CLEAR t20.
      t18->load( ).
      CLEAR t20.
      READ TABLE t18->items INDEX t19 INTO t20.
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
        DATA(t25) = t2.
        DATA(t26) = t9.
        t26 = t26 + 1.
        DATA t27 TYPE REF TO object.
        CLEAR t27.
        t25->load( ).
        CLEAR t27.
        READ TABLE t25->items INDEX t26 INTO t27.
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
        DATA(t33) = t2.
        DATA t34 TYPE i.
        DATA(t35) = t9.
        DATA(t36) = 1.
        t34 = t35 - t36.
        t34 = t34 + 1.
        DATA t37 TYPE REF TO object.
        CLEAR t37.
        t33->load( ).
        CLEAR t37.
        READ TABLE t33->items INDEX t34 INTO t37.
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
        DATA(t43) = t2.
        DATA t44 TYPE i.
        DATA(t45) = t9.
        DATA(t46) = 1.
        t44 = t45 + t46.
        t44 = t44 + 1.
        DATA t47 TYPE REF TO object.
        CLEAR t47.
        t43->load( ).
        CLEAR t47.
        READ TABLE t43->items INDEX t44 INTO t47.
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
        DATA t54 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t55) = t30.
        t54 = t55.
        DATA t56 TYPE string.
        DATA(t57) = t54.
        t56 = t57->str.
        t53 = t56.
        DATA(t58) = |(|.
        t52 = xsdbool( t53 = t58 ).
        t51 = t52.
        IF t52 = abap_true.
          DATA t59 TYPE abap_bool.
          DATA t60 TYPE f.
          DATA t61 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t62) = t30.
          t61 = t62.
          DATA t63 TYPE f.
          DATA t64 TYPE REF TO zcl_lnt_position.
          DATA t65 TYPE REF TO zcl_lnt_position.
          DATA(t66) = t61.
          t65 = t66->start.
          t64 = t65.
          DATA t67 TYPE f.
          DATA(t68) = t64.
          t67 = t68->row.
          t63 = t67.
          t60 = t63.
          DATA t69 TYPE f.
          DATA t70 TYPE REF TO zcl_lnt_abstract_token.
          DATA t71 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t72) = t23.
          t71 = t72->get_first_token( ).
          t70 = t71.
          DATA t73 TYPE f.
          DATA t74 TYPE REF TO zcl_lnt_position.
          DATA t75 TYPE REF TO zcl_lnt_position.
          DATA(t76) = t70.
          t75 = t76->start.
          t74 = t75.
          DATA t77 TYPE f.
          DATA(t78) = t74.
          t77 = t78->row.
          t73 = t77.
          t69 = t73.
          t59 = xsdbool( t60 = t69 ).
          t51 = t59.
        ENDIF.
        t50 = t51.
        IF t51 = abap_true.
          DATA t79 TYPE abap_bool.
          DATA t80 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t81 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t82 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t83) = t30.
          t82 = t83.
          DATA t84 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t85 TYPE REF TO zcl_lnt_position.
          DATA t86 TYPE REF TO zcl_lnt_position.
          DATA(t87) = t82.
          t86 = t87->start.
          t85 = t86.
          DATA t88 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t89) = t85.
          t88 = t89->col.
          t84 = t88.
          t81 = t84.
          DATA(t90) = CONV f( 1 ).
          DATA(t91) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t91->has = abap_true.
          t91->value = t90.
          t80 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t81 right = t91 op = `+` ).
          DATA t92 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t93 TYPE REF TO zcl_lnt_position.
          DATA t94 TYPE REF TO zcl_lnt_position.
          DATA t95 TYPE REF TO zcl_lnt_abstract_token.
          DATA t96 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t97) = t23.
          t96 = t97->get_first_token( ).
          t95 = t96.
          DATA t98 TYPE REF TO zcl_lnt_position.
          DATA(t99) = t95.
          t98 = t99->start.
          t94 = t98.
          t93 = t94.
          DATA t100 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t101) = t93.
          t100 = t101->col.
          t92 = t100.
          t79 = zlnt_runtime_numb_290eb04a9758=>compare( left = t80 right = t92 op = `==` ).
          t50 = t79.
        ENDIF.
        IF t50 = abap_true.
          DATA t102 TYPE REF TO zcl_lnt_position.
          CLEAR t102.
          DATA(t103) = abap_true.
          IF t103 = abap_true.
            DATA t104 TYPE REF TO zcl_lnt_position.
            DATA t105 TYPE REF TO zcl_lnt_abstract_token.
            DATA t106 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t107) = t23.
            t106 = t107->get_first_token( ).
            t105 = t106.
            DATA t108 TYPE REF TO zcl_lnt_position.
            DATA(t109) = t105.
            t108 = t109->start.
            t104 = t108.
            t102 = t104.
          ELSE.
            DATA t110 TYPE REF TO zcl_lnt_position.
            CLEAR t110.
            t102 = t110.
          ENDIF.
          result = t102.
          RETURN.
        ENDIF.
        DATA(t111) = VALUE abap_bool( ).
        DATA t112 TYPE abap_bool.
        DATA t113 TYPE abap_bool.
        DATA t114 TYPE string.
        DATA t115 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t116) = t40.
        t115 = t116.
        DATA t117 TYPE string.
        DATA(t118) = t115.
        t117 = t118->str.
        t114 = t117.
        DATA(t119) = |)|.
        t113 = xsdbool( t114 = t119 ).
        t112 = t113.
        IF t113 = abap_true.
          DATA t120 TYPE abap_bool.
          DATA t121 TYPE f.
          DATA t122 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t123) = t40.
          t122 = t123.
          DATA t124 TYPE f.
          DATA t125 TYPE REF TO zcl_lnt_position.
          DATA t126 TYPE REF TO zcl_lnt_position.
          DATA(t127) = t122.
          t126 = t127->start.
          t125 = t126.
          DATA t128 TYPE f.
          DATA(t129) = t125.
          t128 = t129->row.
          t124 = t128.
          t121 = t124.
          DATA t130 TYPE f.
          DATA t131 TYPE REF TO zcl_lnt_abstract_token.
          DATA t132 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t133) = t23.
          t132 = t133->get_last_token( ).
          t131 = t132.
          DATA t134 TYPE f.
          DATA t135 TYPE REF TO zcl_lnt_position.
          DATA t136 TYPE REF TO zcl_lnt_position.
          DATA(t137) = t131.
          t136 = t137->start.
          t135 = t136.
          DATA t138 TYPE f.
          DATA(t139) = t135.
          t138 = t139->row.
          t134 = t138.
          t130 = t134.
          t120 = xsdbool( t121 = t130 ).
          t112 = t120.
        ENDIF.
        t111 = t112.
        IF t112 = abap_true.
          DATA t140 TYPE abap_bool.
          DATA t141 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t142 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t143) = t40.
          t142 = t143.
          DATA t144 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t145 TYPE REF TO zcl_lnt_position.
          DATA t146 TYPE REF TO zcl_lnt_position.
          DATA(t147) = t142.
          t146 = t147->start.
          t145 = t146.
          DATA t148 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t149) = t145.
          t148 = t149->col.
          t144 = t148.
          t141 = t144.
          DATA t150 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t151 TYPE REF TO zcl_lnt_position.
          DATA t152 TYPE REF TO zcl_lnt_position.
          DATA t153 TYPE REF TO zcl_lnt_abstract_token.
          DATA t154 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t155) = t23.
          t154 = t155->get_last_token( ).
          t153 = t154.
          DATA t156 TYPE REF TO zcl_lnt_position.
          DATA t157 TYPE f.
          DATA t158 TYPE REF TO zcl_lnt_position.
          DATA t159 TYPE REF TO zcl_lnt_position.
          DATA(t160) = t153.
          t159 = t160->start.
          t158 = t159.
          DATA t161 TYPE f.
          DATA(t162) = t158.
          t161 = t162->row.
          t157 = t161.
          DATA t163 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t164 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t165 TYPE REF TO zcl_lnt_position.
          DATA t166 TYPE REF TO zcl_lnt_position.
          DATA(t167) = t153.
          t166 = t167->start.
          t165 = t166.
          DATA t168 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t169) = t165.
          t168 = t169->col.
          t164 = t168.
          DATA t170 TYPE f.
          DATA t171 TYPE i.
          DATA t172 TYPE string.
          DATA(t173) = t153.
          t172 = t173->str.
          DATA(t174) = strlen( t172 ).
          t171 = t174.
          t170 = t171.
          DATA(t175) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t175->has = abap_true.
          t175->value = t170.
          t163 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t164 right = t175 op = `+` ).
          t156 = NEW zcl_lnt_position( i_row = t157 i_col = t163 ).
          t152 = t156.
          t151 = t152.
          DATA t176 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t177) = t151.
          t176 = t177->col.
          t150 = t176.
          t140 = zlnt_runtime_numb_290eb04a9758=>compare( left = t141 right = t150 op = `==` ).
          t111 = t140.
        ENDIF.
        IF t111 = abap_true.
          DATA t178 TYPE REF TO zcl_lnt_position.
          CLEAR t178.
          DATA(t179) = abap_true.
          IF t179 = abap_true.
            DATA t180 TYPE REF TO zcl_lnt_position.
            DATA t181 TYPE REF TO zcl_lnt_abstract_token.
            DATA t182 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t183) = t23.
            t182 = t183->get_last_token( ).
            t181 = t182.
            DATA t184 TYPE REF TO zcl_lnt_position.
            DATA t185 TYPE f.
            DATA t186 TYPE REF TO zcl_lnt_position.
            DATA t187 TYPE REF TO zcl_lnt_position.
            DATA(t188) = t181.
            t187 = t188->start.
            t186 = t187.
            DATA t189 TYPE f.
            DATA(t190) = t186.
            t189 = t190->row.
            t185 = t189.
            DATA t191 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t192 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t193 TYPE REF TO zcl_lnt_position.
            DATA t194 TYPE REF TO zcl_lnt_position.
            DATA(t195) = t181.
            t194 = t195->start.
            t193 = t194.
            DATA t196 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t197) = t193.
            t196 = t197->col.
            t192 = t196.
            DATA t198 TYPE f.
            DATA t199 TYPE i.
            DATA t200 TYPE string.
            DATA(t201) = t181.
            t200 = t201->str.
            DATA(t202) = strlen( t200 ).
            t199 = t202.
            t198 = t199.
            DATA(t203) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t203->has = abap_true.
            t203->value = t198.
            t191 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t192 right = t203 op = `+` ).
            t184 = NEW zcl_lnt_position( i_row = t185 i_col = t191 ).
            t180 = t184.
            t178 = t180.
          ELSE.
            DATA t204 TYPE REF TO zcl_lnt_position.
            CLEAR t204.
            t178 = t204.
          ENDIF.
          result = t178.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t205 TYPE i.
      DATA(t206) = t9.
      DATA(t207) = 1.
      t205 = t206 + t207.
      t9 = t205.
    ENDDO.
    DATA t208 TYPE REF TO zcl_lnt_position.
    CLEAR t208.
    result = t208.

  ENDMETHOD.

  METHOD check_component_cond_sub.
    DATA(t1) = i_cond.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = t5.
    t7 = t8->children.
    t4 = t7.
    t3 ?= t4.
    t2 = t3.
    DATA t9 TYPE i.
    DATA(t10) = 0.
    t9 = t10.
    DO.
      DATA t11 TYPE abap_bool.
      DATA(t12) = t9.
      DATA t13 TYPE i.
      DATA(t14) = t2.
      t14->load( ).
      t13 = lines( t14->items ).
      t11 = xsdbool( t12 < t13 ).
      IF t11 = abap_false.
        EXIT.
      ENDIF.
      DATA(t15) = VALUE abap_bool( ).
      DATA t16 TYPE REF TO object.
      CLEAR t16.
      DATA t17 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t17.
      DATA(t18) = t2.
      DATA(t19) = t9.
      t19 = t19 + 1.
      DATA t20 TYPE REF TO object.
      CLEAR t20.
      t18->load( ).
      CLEAR t20.
      READ TABLE t18->items INDEX t19 INTO t20.
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
        DATA(t25) = t2.
        DATA(t26) = t9.
        t26 = t26 + 1.
        DATA t27 TYPE REF TO object.
        CLEAR t27.
        t25->load( ).
        CLEAR t27.
        READ TABLE t25->items INDEX t26 INTO t27.
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
        DATA(t33) = t2.
        DATA t34 TYPE i.
        DATA(t35) = t9.
        DATA(t36) = 1.
        t34 = t35 - t36.
        t34 = t34 + 1.
        DATA t37 TYPE REF TO object.
        CLEAR t37.
        t33->load( ).
        CLEAR t37.
        READ TABLE t33->items INDEX t34 INTO t37.
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
        DATA(t43) = t2.
        DATA t44 TYPE i.
        DATA(t45) = t9.
        DATA(t46) = 1.
        t44 = t45 + t46.
        t44 = t44 + 1.
        DATA t47 TYPE REF TO object.
        CLEAR t47.
        t43->load( ).
        CLEAR t47.
        READ TABLE t43->items INDEX t44 INTO t47.
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
        DATA t54 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t55) = t30.
        t54 = t55.
        DATA t56 TYPE string.
        DATA(t57) = t54.
        t56 = t57->str.
        t53 = t56.
        DATA(t58) = |(|.
        t52 = xsdbool( t53 = t58 ).
        t51 = t52.
        IF t52 = abap_true.
          DATA t59 TYPE abap_bool.
          DATA t60 TYPE f.
          DATA t61 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t62) = t30.
          t61 = t62.
          DATA t63 TYPE f.
          DATA t64 TYPE REF TO zcl_lnt_position.
          DATA t65 TYPE REF TO zcl_lnt_position.
          DATA(t66) = t61.
          t65 = t66->start.
          t64 = t65.
          DATA t67 TYPE f.
          DATA(t68) = t64.
          t67 = t68->row.
          t63 = t67.
          t60 = t63.
          DATA t69 TYPE f.
          DATA t70 TYPE REF TO zcl_lnt_abstract_token.
          DATA t71 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t72) = t23.
          t71 = t72->get_first_token( ).
          t70 = t71.
          DATA t73 TYPE f.
          DATA t74 TYPE REF TO zcl_lnt_position.
          DATA t75 TYPE REF TO zcl_lnt_position.
          DATA(t76) = t70.
          t75 = t76->start.
          t74 = t75.
          DATA t77 TYPE f.
          DATA(t78) = t74.
          t77 = t78->row.
          t73 = t77.
          t69 = t73.
          t59 = xsdbool( t60 = t69 ).
          t51 = t59.
        ENDIF.
        t50 = t51.
        IF t51 = abap_true.
          DATA t79 TYPE abap_bool.
          DATA t80 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t81 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t82 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t83) = t30.
          t82 = t83.
          DATA t84 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t85 TYPE REF TO zcl_lnt_position.
          DATA t86 TYPE REF TO zcl_lnt_position.
          DATA(t87) = t82.
          t86 = t87->start.
          t85 = t86.
          DATA t88 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t89) = t85.
          t88 = t89->col.
          t84 = t88.
          t81 = t84.
          DATA(t90) = CONV f( 1 ).
          DATA(t91) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t91->has = abap_true.
          t91->value = t90.
          t80 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t81 right = t91 op = `+` ).
          DATA t92 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t93 TYPE REF TO zcl_lnt_position.
          DATA t94 TYPE REF TO zcl_lnt_position.
          DATA t95 TYPE REF TO zcl_lnt_abstract_token.
          DATA t96 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t97) = t23.
          t96 = t97->get_first_token( ).
          t95 = t96.
          DATA t98 TYPE REF TO zcl_lnt_position.
          DATA(t99) = t95.
          t98 = t99->start.
          t94 = t98.
          t93 = t94.
          DATA t100 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t101) = t93.
          t100 = t101->col.
          t92 = t100.
          t79 = zlnt_runtime_numb_290eb04a9758=>compare( left = t80 right = t92 op = `==` ).
          t50 = t79.
        ENDIF.
        IF t50 = abap_true.
          DATA t102 TYPE REF TO zcl_lnt_position.
          CLEAR t102.
          DATA(t103) = abap_true.
          IF t103 = abap_true.
            DATA t104 TYPE REF TO zcl_lnt_position.
            DATA t105 TYPE REF TO zcl_lnt_abstract_token.
            DATA t106 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t107) = t23.
            t106 = t107->get_first_token( ).
            t105 = t106.
            DATA t108 TYPE REF TO zcl_lnt_position.
            DATA(t109) = t105.
            t108 = t109->start.
            t104 = t108.
            t102 = t104.
          ELSE.
            DATA t110 TYPE REF TO zcl_lnt_position.
            CLEAR t110.
            t102 = t110.
          ENDIF.
          result = t102.
          RETURN.
        ENDIF.
        DATA(t111) = VALUE abap_bool( ).
        DATA t112 TYPE abap_bool.
        DATA t113 TYPE abap_bool.
        DATA t114 TYPE string.
        DATA t115 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t116) = t40.
        t115 = t116.
        DATA t117 TYPE string.
        DATA(t118) = t115.
        t117 = t118->str.
        t114 = t117.
        DATA(t119) = |)|.
        t113 = xsdbool( t114 = t119 ).
        t112 = t113.
        IF t113 = abap_true.
          DATA t120 TYPE abap_bool.
          DATA t121 TYPE f.
          DATA t122 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t123) = t40.
          t122 = t123.
          DATA t124 TYPE f.
          DATA t125 TYPE REF TO zcl_lnt_position.
          DATA t126 TYPE REF TO zcl_lnt_position.
          DATA(t127) = t122.
          t126 = t127->start.
          t125 = t126.
          DATA t128 TYPE f.
          DATA(t129) = t125.
          t128 = t129->row.
          t124 = t128.
          t121 = t124.
          DATA t130 TYPE f.
          DATA t131 TYPE REF TO zcl_lnt_abstract_token.
          DATA t132 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t133) = t23.
          t132 = t133->get_last_token( ).
          t131 = t132.
          DATA t134 TYPE f.
          DATA t135 TYPE REF TO zcl_lnt_position.
          DATA t136 TYPE REF TO zcl_lnt_position.
          DATA(t137) = t131.
          t136 = t137->start.
          t135 = t136.
          DATA t138 TYPE f.
          DATA(t139) = t135.
          t138 = t139->row.
          t134 = t138.
          t130 = t134.
          t120 = xsdbool( t121 = t130 ).
          t112 = t120.
        ENDIF.
        t111 = t112.
        IF t112 = abap_true.
          DATA t140 TYPE abap_bool.
          DATA t141 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t142 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t143) = t40.
          t142 = t143.
          DATA t144 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t145 TYPE REF TO zcl_lnt_position.
          DATA t146 TYPE REF TO zcl_lnt_position.
          DATA(t147) = t142.
          t146 = t147->start.
          t145 = t146.
          DATA t148 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t149) = t145.
          t148 = t149->col.
          t144 = t148.
          t141 = t144.
          DATA t150 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t151 TYPE REF TO zcl_lnt_position.
          DATA t152 TYPE REF TO zcl_lnt_position.
          DATA t153 TYPE REF TO zcl_lnt_abstract_token.
          DATA t154 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t155) = t23.
          t154 = t155->get_last_token( ).
          t153 = t154.
          DATA t156 TYPE REF TO zcl_lnt_position.
          DATA t157 TYPE f.
          DATA t158 TYPE REF TO zcl_lnt_position.
          DATA t159 TYPE REF TO zcl_lnt_position.
          DATA(t160) = t153.
          t159 = t160->start.
          t158 = t159.
          DATA t161 TYPE f.
          DATA(t162) = t158.
          t161 = t162->row.
          t157 = t161.
          DATA t163 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t164 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t165 TYPE REF TO zcl_lnt_position.
          DATA t166 TYPE REF TO zcl_lnt_position.
          DATA(t167) = t153.
          t166 = t167->start.
          t165 = t166.
          DATA t168 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t169) = t165.
          t168 = t169->col.
          t164 = t168.
          DATA t170 TYPE f.
          DATA t171 TYPE i.
          DATA t172 TYPE string.
          DATA(t173) = t153.
          t172 = t173->str.
          DATA(t174) = strlen( t172 ).
          t171 = t174.
          t170 = t171.
          DATA(t175) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t175->has = abap_true.
          t175->value = t170.
          t163 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t164 right = t175 op = `+` ).
          t156 = NEW zcl_lnt_position( i_row = t157 i_col = t163 ).
          t152 = t156.
          t151 = t152.
          DATA t176 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t177) = t151.
          t176 = t177->col.
          t150 = t176.
          t140 = zlnt_runtime_numb_290eb04a9758=>compare( left = t141 right = t150 op = `==` ).
          t111 = t140.
        ENDIF.
        IF t111 = abap_true.
          DATA t178 TYPE REF TO zcl_lnt_position.
          CLEAR t178.
          DATA(t179) = abap_true.
          IF t179 = abap_true.
            DATA t180 TYPE REF TO zcl_lnt_position.
            DATA t181 TYPE REF TO zcl_lnt_abstract_token.
            DATA t182 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t183) = t23.
            t182 = t183->get_last_token( ).
            t181 = t182.
            DATA t184 TYPE REF TO zcl_lnt_position.
            DATA t185 TYPE f.
            DATA t186 TYPE REF TO zcl_lnt_position.
            DATA t187 TYPE REF TO zcl_lnt_position.
            DATA(t188) = t181.
            t187 = t188->start.
            t186 = t187.
            DATA t189 TYPE f.
            DATA(t190) = t186.
            t189 = t190->row.
            t185 = t189.
            DATA t191 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t192 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t193 TYPE REF TO zcl_lnt_position.
            DATA t194 TYPE REF TO zcl_lnt_position.
            DATA(t195) = t181.
            t194 = t195->start.
            t193 = t194.
            DATA t196 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t197) = t193.
            t196 = t197->col.
            t192 = t196.
            DATA t198 TYPE f.
            DATA t199 TYPE i.
            DATA t200 TYPE string.
            DATA(t201) = t181.
            t200 = t201->str.
            DATA(t202) = strlen( t200 ).
            t199 = t202.
            t198 = t199.
            DATA(t203) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t203->has = abap_true.
            t203->value = t198.
            t191 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t192 right = t203 op = `+` ).
            t184 = NEW zcl_lnt_position( i_row = t185 i_col = t191 ).
            t180 = t184.
            t178 = t180.
          ELSE.
            DATA t204 TYPE REF TO zcl_lnt_position.
            CLEAR t204.
            t178 = t204.
          ENDIF.
          result = t178.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t205 TYPE i.
      DATA(t206) = t9.
      DATA(t207) = 1.
      t205 = t206 + t207.
      t9 = t205.
    ENDDO.
    DATA t208 TYPE REF TO zcl_lnt_position.
    CLEAR t208.
    result = t208.

  ENDMETHOD.

  METHOD check_component_cond.
    DATA(t1) = i_cond.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t1.
    t3 = t4->get_all_tokens( ).
    t2 = t3.
    DATA t5 TYPE i.
    DATA(t6) = 0.
    t5 = t6.
    DO.
      DATA t7 TYPE abap_bool.
      DATA(t8) = t5.
      DATA t9 TYPE i.
      DATA t10 TYPE i.
      DATA(t11) = t2.
      t11->load( ).
      t10 = lines( t11->items ).
      DATA(t12) = 1.
      t9 = t10 - t12.
      t7 = xsdbool( t8 < t9 ).
      IF t7 = abap_false.
        EXIT.
      ENDIF.
      DATA t13 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t13.
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t14.
      DATA(t15) = t2.
      DATA(t16) = t5.
      t16 = t16 + 1.
      DATA t17 TYPE REF TO object.
      CLEAR t17.
      t15->load( ).
      CLEAR t17.
      READ TABLE t15->items INDEX t16 INTO t17.
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
      DATA(t22) = t2.
      DATA t23 TYPE i.
      DATA(t24) = t5.
      DATA(t25) = 1.
      t23 = t24 + t25.
      t23 = t23 + 1.
      DATA t26 TYPE REF TO object.
      CLEAR t26.
      t22->load( ).
      CLEAR t26.
      READ TABLE t22->items INDEX t23 INTO t26.
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
      DATA t33 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t34) = t20.
      t33 = t34.
      DATA t35 TYPE string.
      DATA(t36) = t33.
      t35 = t36->str.
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
        DATA t44 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t45) = t20.
        t44 = t45.
        DATA t46 TYPE f.
        DATA t47 TYPE REF TO zcl_lnt_position.
        DATA t48 TYPE REF TO zcl_lnt_position.
        DATA(t49) = t44.
        t48 = t49->start.
        t47 = t48.
        DATA t50 TYPE f.
        DATA(t51) = t47.
        t50 = t51->row.
        t46 = t50.
        t43 = t46.
        DATA t52 TYPE f.
        DATA t53 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t54) = t13.
        t53 = t54.
        DATA t55 TYPE f.
        DATA t56 TYPE REF TO zcl_lnt_position.
        DATA t57 TYPE REF TO zcl_lnt_position.
        DATA(t58) = t53.
        t57 = t58->start.
        t56 = t57.
        DATA t59 TYPE f.
        DATA(t60) = t56.
        t59 = t60->row.
        t55 = t59.
        t52 = t55.
        t42 = xsdbool( t43 = t52 ).
        t30 = t42.
      ENDIF.
      t29 = t30.
      IF t30 = abap_true.
        DATA t61 TYPE abap_bool.
        DATA t62 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t63 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t64) = t20.
        t63 = t64.
        DATA t65 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t66 TYPE REF TO zcl_lnt_position.
        DATA t67 TYPE REF TO zcl_lnt_position.
        DATA(t68) = t63.
        t67 = t68->start.
        t66 = t67.
        DATA t69 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t70) = t66.
        t69 = t70->col.
        t65 = t69.
        t62 = t65.
        DATA t71 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t72 TYPE REF TO zcl_lnt_position.
        DATA t73 TYPE REF TO zcl_lnt_position.
        DATA t74 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t75) = t13.
        t74 = t75.
        DATA t76 TYPE REF TO zcl_lnt_position.
        DATA t77 TYPE f.
        DATA t78 TYPE REF TO zcl_lnt_position.
        DATA t79 TYPE REF TO zcl_lnt_position.
        DATA(t80) = t74.
        t79 = t80->start.
        t78 = t79.
        DATA t81 TYPE f.
        DATA(t82) = t78.
        t81 = t82->row.
        t77 = t81.
        DATA t83 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t84 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t85 TYPE REF TO zcl_lnt_position.
        DATA t86 TYPE REF TO zcl_lnt_position.
        DATA(t87) = t74.
        t86 = t87->start.
        t85 = t86.
        DATA t88 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t89) = t85.
        t88 = t89->col.
        t84 = t88.
        DATA t90 TYPE f.
        DATA t91 TYPE i.
        DATA t92 TYPE string.
        DATA(t93) = t74.
        t92 = t93->str.
        DATA(t94) = strlen( t92 ).
        t91 = t94.
        t90 = t91.
        DATA(t95) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t95->has = abap_true.
        t95->value = t90.
        t83 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t84 right = t95 op = `+` ).
        t76 = NEW zcl_lnt_position( i_row = t77 i_col = t83 ).
        t73 = t76.
        t72 = t73.
        DATA t96 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t97) = t72.
        t96 = t97->col.
        t71 = t96.
        t61 = zlnt_runtime_numb_290eb04a9758=>compare( left = t62 right = t71 op = `==` ).
        t29 = t61.
      ENDIF.
      IF t29 = abap_true.
        DATA t98 TYPE REF TO zcl_lnt_position.
        CLEAR t98.
        DATA(t99) = abap_true.
        IF t99 = abap_true.
          DATA t100 TYPE REF TO zcl_lnt_position.
          DATA t101 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t102) = t13.
          t101 = t102.
          DATA t103 TYPE REF TO zcl_lnt_position.
          DATA t104 TYPE f.
          DATA t105 TYPE REF TO zcl_lnt_position.
          DATA t106 TYPE REF TO zcl_lnt_position.
          DATA(t107) = t101.
          t106 = t107->start.
          t105 = t106.
          DATA t108 TYPE f.
          DATA(t109) = t105.
          t108 = t109->row.
          t104 = t108.
          DATA t110 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t111 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t112 TYPE REF TO zcl_lnt_position.
          DATA t113 TYPE REF TO zcl_lnt_position.
          DATA(t114) = t101.
          t113 = t114->start.
          t112 = t113.
          DATA t115 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t116) = t112.
          t115 = t116->col.
          t111 = t115.
          DATA t117 TYPE f.
          DATA t118 TYPE i.
          DATA t119 TYPE string.
          DATA(t120) = t101.
          t119 = t120->str.
          DATA(t121) = strlen( t119 ).
          t118 = t121.
          t117 = t118.
          DATA(t122) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t122->has = abap_true.
          t122->value = t117.
          t110 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t111 right = t122 op = `+` ).
          t103 = NEW zcl_lnt_position( i_row = t104 i_col = t110 ).
          t100 = t103.
          t98 = t100.
        ELSE.
          DATA t123 TYPE REF TO zcl_lnt_position.
          CLEAR t123.
          t98 = t123.
        ENDIF.
        result = t98.
        RETURN.
      ENDIF.
      DATA t124 TYPE i.
      DATA(t125) = t5.
      DATA(t126) = 1.
      t124 = t125 + t126.
      t5 = t124.
    ENDDO.
    DATA t127 TYPE REF TO zcl_lnt_position.
    CLEAR t127.
    result = t127.

  ENDMETHOD.

  METHOD check_value_body_line.
    DATA(t1) = i_vb.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = t5.
    t7 = t8->children.
    t4 = t7.
    t3 ?= t4.
    t2 = t3.
    DATA t9 TYPE i.
    DATA(t10) = 0.
    t9 = t10.
    DO.
      DATA t11 TYPE abap_bool.
      DATA(t12) = t9.
      DATA t13 TYPE i.
      DATA(t14) = t2.
      t14->load( ).
      t13 = lines( t14->items ).
      t11 = xsdbool( t12 < t13 ).
      IF t11 = abap_false.
        EXIT.
      ENDIF.
      DATA t15 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t15.
      DATA t16 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t16.
      DATA(t17) = t2.
      DATA(t18) = t9.
      t18 = t18 + 1.
      DATA t19 TYPE REF TO object.
      CLEAR t19.
      t17->load( ).
      CLEAR t19.
      READ TABLE t17->items INDEX t18 INTO t19.
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
      DATA(t23) = t15.
      t22 = xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_token_node ).
      IF t22 = abap_true.
        DATA t24 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t24.
        DATA t25 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t25.
        DATA t26 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t26.
        DATA t27 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t27.
        DATA(t28) = t2.
        DATA t29 TYPE i.
        DATA(t30) = t9.
        DATA(t31) = 1.
        t29 = t30 - t31.
        DATA t32 TYPE REF TO object.
        t32 = t28->get( p0 = t29 ).
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
        DATA(t36) = VALUE abap_bool( ).
        DATA(t37) = t26.
        IF t37 IS INITIAL.
          t36 = abap_true.
        ENDIF.
        IF t36 = abap_true.
          DATA t38 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t38.
          t35 = t38.
        ELSE.
          DATA t39 TYPE REF TO zcl_lnt_abstract_token.
          DATA t40 TYPE REF TO zif_lnt_union_4cf1d054.
          DATA(t41) = t26.
          t40 = t41.
          t39 = t40->get_last_token( ).
          t35 = t39.
        ENDIF.
        t25 = t35.
        t24 = t25.
        DATA t42 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t42.
        DATA t43 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t43.
        DATA t44 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t44.
        DATA t45 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t45.
        DATA(t46) = t2.
        DATA t47 TYPE i.
        DATA(t48) = t9.
        DATA(t49) = 1.
        t47 = t48 + t49.
        DATA t50 TYPE REF TO object.
        t50 = t46->get( p0 = t47 ).
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
        DATA(t54) = VALUE abap_bool( ).
        DATA(t55) = t44.
        IF t55 IS INITIAL.
          t54 = abap_true.
        ENDIF.
        IF t54 = abap_true.
          DATA t56 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t56.
          t53 = t56.
        ELSE.
          DATA t57 TYPE REF TO zcl_lnt_abstract_token.
          DATA t58 TYPE REF TO zif_lnt_union_4cf1d054.
          DATA(t59) = t44.
          t58 = t59.
          t57 = t58->get_first_token( ).
          t53 = t57.
        ENDIF.
        t43 = t53.
        t42 = t43.
        DATA(t60) = VALUE abap_bool( ).
        DATA(t61) = VALUE abap_bool( ).
        DATA t62 TYPE abap_bool.
        DATA t63 TYPE abap_bool.
        DATA t64 TYPE string.
        DATA t65 TYPE REF TO zcl_lnt_abstract_token.
        DATA t66 TYPE REF TO zcl_lnt_abstract_token.
        DATA t67 TYPE REF TO zcl_lnt_token_node.
        DATA t68 TYPE REF TO zcl_lnt_token_node.
        DATA(t69) = t15.
        DATA t70 TYPE REF TO object.
        t70 = t69.
        t68 ?= t70.
        t67 = t68.
        DATA t71 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t72) = t67.
        t71 = t72->token.
        t66 = t71.
        t65 = t66.
        DATA t73 TYPE string.
        DATA(t74) = t65.
        t73 = t74->str.
        t64 = t73.
        DATA(t75) = |(|.
        t63 = xsdbool( t64 = t75 ).
        t62 = t63.
        IF t63 = abap_true.
          DATA t76 TYPE abap_bool.
          DATA t77 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t78) = t42.
          t77 = t78.
          t76 = xsdbool( t77 IS BOUND ).
          t62 = t76.
        ENDIF.
        t61 = t62.
        IF t62 = abap_true.
          DATA t79 TYPE abap_bool.
          DATA t80 TYPE f.
          DATA t81 TYPE REF TO zcl_lnt_abstract_token.
          DATA t82 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t83) = t42.
          t82 = t83.
          t81 = t82.
          DATA t84 TYPE f.
          DATA t85 TYPE REF TO zcl_lnt_position.
          DATA t86 TYPE REF TO zcl_lnt_position.
          DATA(t87) = t81.
          t86 = t87->start.
          t85 = t86.
          DATA t88 TYPE f.
          DATA(t89) = t85.
          t88 = t89->row.
          t84 = t88.
          t80 = t84.
          DATA t90 TYPE f.
          DATA t91 TYPE REF TO zcl_lnt_abstract_token.
          DATA t92 TYPE REF TO zcl_lnt_abstract_token.
          DATA t93 TYPE REF TO zcl_lnt_token_node.
          DATA t94 TYPE REF TO zcl_lnt_token_node.
          DATA(t95) = t15.
          DATA t96 TYPE REF TO object.
          t96 = t95.
          t94 ?= t96.
          t93 = t94.
          DATA t97 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t98) = t93.
          t97 = t98->token.
          t92 = t97.
          t91 = t92.
          DATA t99 TYPE f.
          DATA t100 TYPE REF TO zcl_lnt_position.
          DATA t101 TYPE REF TO zcl_lnt_position.
          DATA(t102) = t91.
          t101 = t102->start.
          t100 = t101.
          DATA t103 TYPE f.
          DATA(t104) = t100.
          t103 = t104->row.
          t99 = t103.
          t90 = t99.
          t79 = xsdbool( t80 = t90 ).
          t61 = t79.
        ENDIF.
        t60 = t61.
        IF t61 = abap_true.
          DATA t105 TYPE abap_bool.
          DATA t106 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t107 TYPE REF TO zcl_lnt_abstract_token.
          DATA t108 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t109) = t42.
          t108 = t109.
          t107 = t108.
          DATA t110 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t111 TYPE REF TO zcl_lnt_position.
          DATA t112 TYPE REF TO zcl_lnt_position.
          DATA(t113) = t107.
          t112 = t113->start.
          t111 = t112.
          DATA t114 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t115) = t111.
          t114 = t115->col.
          t110 = t114.
          t106 = t110.
          DATA t116 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t117 TYPE REF TO zcl_lnt_position.
          DATA t118 TYPE REF TO zcl_lnt_position.
          DATA t119 TYPE REF TO zcl_lnt_abstract_token.
          DATA t120 TYPE REF TO zcl_lnt_abstract_token.
          DATA t121 TYPE REF TO zcl_lnt_token_node.
          DATA t122 TYPE REF TO zcl_lnt_token_node.
          DATA(t123) = t15.
          DATA t124 TYPE REF TO object.
          t124 = t123.
          t122 ?= t124.
          t121 = t122.
          DATA t125 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t126) = t121.
          t125 = t126->token.
          t120 = t125.
          t119 = t120.
          DATA t127 TYPE REF TO zcl_lnt_position.
          DATA t128 TYPE f.
          DATA t129 TYPE REF TO zcl_lnt_position.
          DATA t130 TYPE REF TO zcl_lnt_position.
          DATA(t131) = t119.
          t130 = t131->start.
          t129 = t130.
          DATA t132 TYPE f.
          DATA(t133) = t129.
          t132 = t133->row.
          t128 = t132.
          DATA t134 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t135 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t136 TYPE REF TO zcl_lnt_position.
          DATA t137 TYPE REF TO zcl_lnt_position.
          DATA(t138) = t119.
          t137 = t138->start.
          t136 = t137.
          DATA t139 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t140) = t136.
          t139 = t140->col.
          t135 = t139.
          DATA t141 TYPE f.
          DATA t142 TYPE i.
          DATA t143 TYPE string.
          DATA(t144) = t119.
          t143 = t144->str.
          DATA(t145) = strlen( t143 ).
          t142 = t145.
          t141 = t142.
          DATA(t146) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t146->has = abap_true.
          t146->value = t141.
          t134 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t135 right = t146 op = `+` ).
          t127 = NEW zcl_lnt_position( i_row = t128 i_col = t134 ).
          t118 = t127.
          t117 = t118.
          DATA t147 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t148) = t117.
          t147 = t148->col.
          t116 = t147.
          t105 = zlnt_runtime_numb_290eb04a9758=>compare( left = t106 right = t116 op = `==` ).
          t60 = t105.
        ENDIF.
        IF t60 = abap_true.
          DATA t149 TYPE REF TO zcl_lnt_position.
          CLEAR t149.
          DATA(t150) = abap_true.
          IF t150 = abap_true.
            DATA t151 TYPE REF TO zcl_lnt_position.
            DATA t152 TYPE REF TO zcl_lnt_abstract_token.
            DATA t153 TYPE REF TO zcl_lnt_abstract_token.
            DATA t154 TYPE REF TO zcl_lnt_token_node.
            DATA t155 TYPE REF TO zcl_lnt_token_node.
            DATA(t156) = t15.
            DATA t157 TYPE REF TO object.
            t157 = t156.
            t155 ?= t157.
            t154 = t155.
            DATA t158 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t159) = t154.
            t158 = t159->token.
            t153 = t158.
            t152 = t153.
            DATA t160 TYPE REF TO zcl_lnt_position.
            DATA(t161) = t152.
            t160 = t161->start.
            t151 = t160.
            t149 = t151.
          ELSE.
            DATA t162 TYPE REF TO zcl_lnt_position.
            CLEAR t162.
            t149 = t162.
          ENDIF.
          result = t149.
          RETURN.
        ENDIF.
        DATA(t163) = VALUE abap_bool( ).
        DATA(t164) = VALUE abap_bool( ).
        DATA t165 TYPE abap_bool.
        DATA t166 TYPE abap_bool.
        DATA t167 TYPE string.
        DATA t168 TYPE REF TO zcl_lnt_abstract_token.
        DATA t169 TYPE REF TO zcl_lnt_abstract_token.
        DATA t170 TYPE REF TO zcl_lnt_token_node.
        DATA t171 TYPE REF TO zcl_lnt_token_node.
        DATA(t172) = t15.
        DATA t173 TYPE REF TO object.
        t173 = t172.
        t171 ?= t173.
        t170 = t171.
        DATA t174 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t175) = t170.
        t174 = t175->token.
        t169 = t174.
        t168 = t169.
        DATA t176 TYPE string.
        DATA(t177) = t168.
        t176 = t177->str.
        t167 = t176.
        DATA(t178) = |)|.
        t166 = xsdbool( t167 = t178 ).
        t165 = t166.
        IF t166 = abap_true.
          DATA t179 TYPE abap_bool.
          DATA t180 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t181) = t24.
          t180 = t181.
          t179 = xsdbool( t180 IS BOUND ).
          t165 = t179.
        ENDIF.
        t164 = t165.
        IF t165 = abap_true.
          DATA t182 TYPE abap_bool.
          DATA t183 TYPE f.
          DATA t184 TYPE REF TO zcl_lnt_abstract_token.
          DATA t185 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t186) = t24.
          t185 = t186.
          t184 = t185.
          DATA t187 TYPE f.
          DATA t188 TYPE REF TO zcl_lnt_position.
          DATA t189 TYPE REF TO zcl_lnt_position.
          DATA(t190) = t184.
          t189 = t190->start.
          t188 = t189.
          DATA t191 TYPE f.
          DATA(t192) = t188.
          t191 = t192->row.
          t187 = t191.
          t183 = t187.
          DATA t193 TYPE f.
          DATA t194 TYPE REF TO zcl_lnt_abstract_token.
          DATA t195 TYPE REF TO zcl_lnt_abstract_token.
          DATA t196 TYPE REF TO zcl_lnt_token_node.
          DATA t197 TYPE REF TO zcl_lnt_token_node.
          DATA(t198) = t15.
          DATA t199 TYPE REF TO object.
          t199 = t198.
          t197 ?= t199.
          t196 = t197.
          DATA t200 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t201) = t196.
          t200 = t201->token.
          t195 = t200.
          t194 = t195.
          DATA t202 TYPE f.
          DATA t203 TYPE REF TO zcl_lnt_position.
          DATA t204 TYPE REF TO zcl_lnt_position.
          DATA(t205) = t194.
          t204 = t205->start.
          t203 = t204.
          DATA t206 TYPE f.
          DATA(t207) = t203.
          t206 = t207->row.
          t202 = t206.
          t193 = t202.
          t182 = xsdbool( t183 = t193 ).
          t164 = t182.
        ENDIF.
        t163 = t164.
        IF t164 = abap_true.
          DATA t208 TYPE abap_bool.
          DATA t209 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t210 TYPE REF TO zcl_lnt_position.
          DATA t211 TYPE REF TO zcl_lnt_position.
          DATA t212 TYPE REF TO zcl_lnt_abstract_token.
          DATA t213 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t214) = t24.
          t213 = t214.
          t212 = t213.
          DATA t215 TYPE REF TO zcl_lnt_position.
          DATA t216 TYPE f.
          DATA t217 TYPE REF TO zcl_lnt_position.
          DATA t218 TYPE REF TO zcl_lnt_position.
          DATA(t219) = t212.
          t218 = t219->start.
          t217 = t218.
          DATA t220 TYPE f.
          DATA(t221) = t217.
          t220 = t221->row.
          t216 = t220.
          DATA t222 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t223 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t224 TYPE REF TO zcl_lnt_position.
          DATA t225 TYPE REF TO zcl_lnt_position.
          DATA(t226) = t212.
          t225 = t226->start.
          t224 = t225.
          DATA t227 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t228) = t224.
          t227 = t228->col.
          t223 = t227.
          DATA t229 TYPE f.
          DATA t230 TYPE i.
          DATA t231 TYPE string.
          DATA(t232) = t212.
          t231 = t232->str.
          DATA(t233) = strlen( t231 ).
          t230 = t233.
          t229 = t230.
          DATA(t234) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t234->has = abap_true.
          t234->value = t229.
          t222 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t223 right = t234 op = `+` ).
          t215 = NEW zcl_lnt_position( i_row = t216 i_col = t222 ).
          t211 = t215.
          t210 = t211.
          DATA t235 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t236) = t210.
          t235 = t236->col.
          t209 = t235.
          DATA t237 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t238 TYPE REF TO zcl_lnt_position.
          DATA t239 TYPE REF TO zcl_lnt_position.
          DATA t240 TYPE REF TO zcl_lnt_abstract_token.
          DATA t241 TYPE REF TO zcl_lnt_abstract_token.
          DATA t242 TYPE REF TO zcl_lnt_token_node.
          DATA t243 TYPE REF TO zcl_lnt_token_node.
          DATA(t244) = t15.
          DATA t245 TYPE REF TO object.
          t245 = t244.
          t243 ?= t245.
          t242 = t243.
          DATA t246 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t247) = t242.
          t246 = t247->token.
          t241 = t246.
          t240 = t241.
          DATA t248 TYPE REF TO zcl_lnt_position.
          DATA(t249) = t240.
          t248 = t249->start.
          t239 = t248.
          t238 = t239.
          DATA t250 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t251) = t238.
          t250 = t251->col.
          t237 = t250.
          t208 = zlnt_runtime_numb_290eb04a9758=>compare( left = t209 right = t237 op = `==` ).
          t163 = t208.
        ENDIF.
        IF t163 = abap_true.
          DATA t252 TYPE REF TO zcl_lnt_position.
          CLEAR t252.
          DATA(t253) = abap_true.
          IF t253 = abap_true.
            DATA t254 TYPE REF TO zcl_lnt_position.
            DATA t255 TYPE REF TO zcl_lnt_abstract_token.
            DATA t256 TYPE REF TO zcl_lnt_abstract_token.
            DATA t257 TYPE REF TO zcl_lnt_token_node.
            DATA t258 TYPE REF TO zcl_lnt_token_node.
            DATA(t259) = t15.
            DATA t260 TYPE REF TO object.
            t260 = t259.
            t258 ?= t260.
            t257 = t258.
            DATA t261 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t262) = t257.
            t261 = t262->token.
            t256 = t261.
            t255 = t256.
            DATA t263 TYPE REF TO zcl_lnt_position.
            DATA t264 TYPE f.
            DATA t265 TYPE REF TO zcl_lnt_position.
            DATA t266 TYPE REF TO zcl_lnt_position.
            DATA(t267) = t255.
            t266 = t267->start.
            t265 = t266.
            DATA t268 TYPE f.
            DATA(t269) = t265.
            t268 = t269->row.
            t264 = t268.
            DATA t270 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t271 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t272 TYPE REF TO zcl_lnt_position.
            DATA t273 TYPE REF TO zcl_lnt_position.
            DATA(t274) = t255.
            t273 = t274->start.
            t272 = t273.
            DATA t275 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t276) = t272.
            t275 = t276->col.
            t271 = t275.
            DATA t277 TYPE f.
            DATA t278 TYPE i.
            DATA t279 TYPE string.
            DATA(t280) = t255.
            t279 = t280->str.
            DATA(t281) = strlen( t279 ).
            t278 = t281.
            t277 = t278.
            DATA(t282) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t282->has = abap_true.
            t282->value = t277.
            t270 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t271 right = t282 op = `+` ).
            t263 = NEW zcl_lnt_position( i_row = t264 i_col = t270 ).
            t254 = t263.
            t252 = t254.
          ELSE.
            DATA t283 TYPE REF TO zcl_lnt_position.
            CLEAR t283.
            t252 = t283.
          ENDIF.
          result = t252.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t284 TYPE i.
      DATA(t285) = t9.
      DATA(t286) = 1.
      t284 = t285 + t286.
      t9 = t284.
    ENDDO.
    DATA t287 TYPE REF TO zcl_lnt_position.
    CLEAR t287.
    result = t287.

  ENDMETHOD.

  METHOD check_cond.
    DATA(t1) = i_cond.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA(t4) = t1.
    t3 = t4->get_all_tokens( ).
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA(t7) = t1.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d96_026ea9c145a633.
    t6 = t7->find_all_expressions( i_type_9913 = t8 ).
    t5 = t6.
    DATA(t9) = VALUE i( ).
    DATA(t10) = 0.
    t9 = t10.
    DO.
      DATA(t11) = VALUE abap_bool( ).
      DATA(t12) = t9.
      DATA(t13) = VALUE i( ).
      DATA(t14) = VALUE i( ).
      DATA(t15) = t2.
      t15->load( ).
      t14 = lines( t15->items ).
      DATA(t16) = 1.
      t13 = t14 - t16.
      t11 = xsdbool( t12 < t13 ).
      IF t11 = abap_false.
        EXIT.
      ENDIF.
      DATA t17 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t17.
      DATA t18 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t18.
      DATA(t19) = t2.
      DATA(t20) = t9.
      t20 = t20 + 1.
      DATA t21 TYPE REF TO object.
      CLEAR t21.
      t19->load( ).
      CLEAR t21.
      READ TABLE t19->items INDEX t20 INTO t21.
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
      DATA(t26) = t2.
      DATA(t27) = VALUE i( ).
      DATA(t28) = t9.
      DATA(t29) = 1.
      t27 = t28 + t29.
      t27 = t27 + 1.
      DATA t30 TYPE REF TO object.
      CLEAR t30.
      t26->load( ).
      CLEAR t30.
      READ TABLE t26->items INDEX t27 INTO t30.
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
      DATA t37 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t37.
      DATA(t38) = t24.
      t37 = t38.
      DATA(t39) = VALUE string( ).
      DATA(t40) = t37.
      t39 = t40->str.
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
        DATA t48 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t48.
        DATA(t49) = t24.
        t48 = t49.
        DATA(t50) = VALUE f( ).
        DATA t51 TYPE REF TO zcl_lnt_position.
        CLEAR t51.
        DATA t52 TYPE REF TO zcl_lnt_position.
        CLEAR t52.
        DATA(t53) = t48.
        t52 = t53->start.
        t51 = t52.
        DATA(t54) = VALUE f( ).
        DATA(t55) = t51.
        t54 = t55->row.
        t50 = t54.
        t47 = t50.
        DATA(t56) = VALUE f( ).
        DATA t57 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t57.
        DATA(t58) = t17.
        t57 = t58.
        DATA(t59) = VALUE f( ).
        DATA t60 TYPE REF TO zcl_lnt_position.
        CLEAR t60.
        DATA t61 TYPE REF TO zcl_lnt_position.
        CLEAR t61.
        DATA(t62) = t57.
        t61 = t62->start.
        t60 = t61.
        DATA(t63) = VALUE f( ).
        DATA(t64) = t60.
        t63 = t64->row.
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
        DATA t67 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t67.
        DATA(t68) = t24.
        t67 = t68.
        DATA t69 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t69.
        DATA t70 TYPE REF TO zcl_lnt_position.
        CLEAR t70.
        DATA t71 TYPE REF TO zcl_lnt_position.
        CLEAR t71.
        DATA(t72) = t67.
        t71 = t72->start.
        t70 = t71.
        DATA t73 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t73.
        DATA(t74) = t70.
        t73 = t74->col.
        t69 = t73.
        t66 = t69.
        DATA t75 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t75.
        DATA t76 TYPE REF TO zcl_lnt_position.
        CLEAR t76.
        DATA t77 TYPE REF TO zcl_lnt_position.
        CLEAR t77.
        DATA t78 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t78.
        DATA(t79) = t17.
        t78 = t79.
        DATA t80 TYPE REF TO zcl_lnt_position.
        CLEAR t80.
        DATA(t81) = VALUE f( ).
        DATA t82 TYPE REF TO zcl_lnt_position.
        CLEAR t82.
        DATA t83 TYPE REF TO zcl_lnt_position.
        CLEAR t83.
        DATA(t84) = t78.
        t83 = t84->start.
        t82 = t83.
        DATA(t85) = VALUE f( ).
        DATA(t86) = t82.
        t85 = t86->row.
        t81 = t85.
        DATA t87 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t87.
        DATA t88 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t88.
        DATA t89 TYPE REF TO zcl_lnt_position.
        CLEAR t89.
        DATA t90 TYPE REF TO zcl_lnt_position.
        CLEAR t90.
        DATA(t91) = t78.
        t90 = t91->start.
        t89 = t90.
        DATA t92 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t92.
        DATA(t93) = t89.
        t92 = t93->col.
        t88 = t92.
        DATA(t94) = VALUE f( ).
        DATA(t95) = VALUE i( ).
        DATA(t96) = VALUE string( ).
        DATA(t97) = t78.
        t96 = t97->str.
        DATA(t98) = strlen( t96 ).
        t95 = t98.
        t94 = t95.
        DATA(t99) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t99->has = abap_true.
        t99->value = t94.
        t87 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t88 right = t99 op = `+` ).
        t80 = NEW zcl_lnt_position( i_row = t81 i_col = t87 ).
        t77 = t80.
        t76 = t77.
        DATA t100 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t100.
        DATA(t101) = t76.
        t100 = t101->col.
        t75 = t100.
        t65 = zlnt_runtime_numb_290eb04a9758=>compare( left = t66 right = t75 op = `==` ).
        t33 = t65.
      ENDIF.
      IF t33 = abap_true.
        DATA(t102) = VALUE abap_bool( ).
        DATA(t103) = abap_false.
        t102 = t103.
        DATA(t104) = VALUE i( ).
        DATA(t105) = 0.
        t104 = t105.
        DATA(t106) = t5.
        DATA t107 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t107.
        DATA t108 TYPE REF TO object.
        CLEAR t108.
        DATA(t109) = VALUE i( ).
        DO.
          t106->load( ).
          IF t109 >= lines( t106->items ).
            EXIT.
          ENDIF.
          CLEAR t108.
          READ TABLE t106->items INDEX t109 + 1 INTO t108.
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
          DATA(t113) = t107.
          t112 = t113->get_all_tokens( ).
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
            DATA(t121) = t114.
            DATA(t122) = t24.
            DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t123.
            DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t124.
            CLEAR t123.
            IF t121 IS BOUND.
              DATA t125 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t125.
              DATA t126 TYPE REF TO object.
              CLEAR t126.
              CLEAR t125.
              t126 = t121.
              TRY.
                  t123 ?= t126.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t123 IS NOT BOUND.
                TRY.
                    t125 ?= t121.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t125 IS BOUND.
                  t123 = t125->source( ).
                ENDIF.
                IF t123 IS NOT BOUND.
                  CREATE OBJECT t123.
                  t123->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t123->oval = t121.
                ENDIF.
              ENDIF.
            ENDIF.
            CLEAR t124.
            IF t122 IS BOUND.
              DATA t127 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t127.
              DATA t128 TYPE REF TO object.
              CLEAR t128.
              CLEAR t127.
              t128 = t122.
              TRY.
                  t124 ?= t128.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t124 IS NOT BOUND.
                TRY.
                    t127 ?= t122.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t127 IS BOUND.
                  t124 = t127->source( ).
                ENDIF.
                IF t124 IS NOT BOUND.
                  CREATE OBJECT t124.
                  t124->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t124->oval = t122.
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
              DATA(t130) = t114.
              DATA(t131) = t17.
              DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t132.
              DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t133.
              CLEAR t132.
              IF t130 IS BOUND.
                DATA t134 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t134.
                DATA t135 TYPE REF TO object.
                CLEAR t135.
                CLEAR t134.
                t135 = t130.
                TRY.
                    t132 ?= t135.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t132 IS NOT BOUND.
                  TRY.
                      t134 ?= t130.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t134 IS BOUND.
                    t132 = t134->source( ).
                  ENDIF.
                  IF t132 IS NOT BOUND.
                    CREATE OBJECT t132.
                    t132->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    t132->oval = t130.
                  ENDIF.
                ENDIF.
              ENDIF.
              CLEAR t133.
              IF t131 IS BOUND.
                DATA t136 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t136.
                DATA t137 TYPE REF TO object.
                CLEAR t137.
                CLEAR t136.
                t137 = t131.
                TRY.
                    t133 ?= t137.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t133 IS NOT BOUND.
                  TRY.
                      t136 ?= t131.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t136 IS BOUND.
                    t133 = t136->source( ).
                  ENDIF.
                  IF t133 IS NOT BOUND.
                    CREATE OBJECT t133.
                    t133->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    t133->oval = t131.
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
              DATA(t138) = abap_true.
              t102 = t138.
              DATA(t139) = 1.
              t104 = t139.
              EXIT.
            ENDIF.
          ENDDO.
          DATA(t140) = VALUE abap_bool( ).
          DATA(t141) = t104.
          DATA(t142) = 1.
          t140 = xsdbool( t141 = t142 ).
          IF t140 = abap_true.
            EXIT.
          ENDIF.
          DATA(t143) = VALUE abap_bool( ).
          DATA(t144) = t104.
          DATA(t145) = 2.
          t143 = xsdbool( t144 = t145 ).
          IF t143 = abap_true.
            DATA(t146) = 0.
            t104 = t146.
            CONTINUE.
          ENDIF.
        ENDDO.
        DATA(t147) = VALUE abap_bool( ).
        DATA(t148) = t102.
        DATA(t149) = abap_false.
        t147 = xsdbool( t148 = t149 ).
        IF t147 = abap_true.
          DATA t150 TYPE REF TO zcl_lnt_position.
          CLEAR t150.
          DATA(t151) = abap_true.
          IF t151 = abap_true.
            DATA t152 TYPE REF TO zcl_lnt_position.
            CLEAR t152.
            DATA t153 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t153.
            DATA(t154) = t17.
            t153 = t154.
            DATA t155 TYPE REF TO zcl_lnt_position.
            CLEAR t155.
            DATA(t156) = VALUE f( ).
            DATA t157 TYPE REF TO zcl_lnt_position.
            CLEAR t157.
            DATA t158 TYPE REF TO zcl_lnt_position.
            CLEAR t158.
            DATA(t159) = t153.
            t158 = t159->start.
            t157 = t158.
            DATA(t160) = VALUE f( ).
            DATA(t161) = t157.
            t160 = t161->row.
            t156 = t160.
            DATA t162 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t162.
            DATA t163 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t163.
            DATA t164 TYPE REF TO zcl_lnt_position.
            CLEAR t164.
            DATA t165 TYPE REF TO zcl_lnt_position.
            CLEAR t165.
            DATA(t166) = t153.
            t165 = t166->start.
            t164 = t165.
            DATA t167 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t167.
            DATA(t168) = t164.
            t167 = t168->col.
            t163 = t167.
            DATA(t169) = VALUE f( ).
            DATA(t170) = VALUE i( ).
            DATA(t171) = VALUE string( ).
            DATA(t172) = t153.
            t171 = t172->str.
            DATA(t173) = strlen( t171 ).
            t170 = t173.
            t169 = t170.
            DATA(t174) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t174->has = abap_true.
            t174->value = t169.
            t162 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t163 right = t174 op = `+` ).
            t155 = NEW zcl_lnt_position( i_row = t156 i_col = t162 ).
            t152 = t155.
            t150 = t152.
          ELSE.
            DATA t175 TYPE REF TO zcl_lnt_position.
            CLEAR t175.
            t150 = t175.
          ENDIF.
          result = t150.
          RETURN.
        ENDIF.
      ENDIF.
      DATA(t176) = VALUE i( ).
      DATA(t177) = t9.
      DATA(t178) = 1.
      t176 = t177 + t178.
      t9 = t176.
    ENDDO.
    DATA t179 TYPE REF TO zcl_lnt_position.
    CLEAR t179.
    result = t179.

  ENDMETHOD.

  METHOD check_source.
    DATA(t1) = i_cond.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t1.
    t3 = t4->get_all_tokens( ).
    t2 = t3.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE i.
    DATA(t7) = t2.
    t7->load( ).
    t6 = lines( t7->items ).
    DATA(t8) = 2.
    t5 = xsdbool( t6 < t8 ).
    IF t5 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_position.
      CLEAR t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE abap_bool.
    DATA t11 TYPE abap_bool.
    DATA t12 TYPE i.
    DATA(t13) = t2.
    t13->load( ).
    t12 = lines( t13->items ).
    DATA(t14) = 4.
    t11 = xsdbool( t12 >= t14 ).
    t10 = t11.
    IF t11 = abap_true.
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = VALUE string( ).
      DATA(t17) = VALUE string( ).
      DATA t18 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t18.
      DATA t19 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t19.
      DATA(t20) = t2.
      DATA t21 TYPE REF TO object.
      CLEAR t21.
      t20->load( ).
      CLEAR t21.
      READ TABLE t20->items INDEX 1 INTO t21.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t22.
      CLEAR t19.
      IF t21 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t22 ?= t21.
        DATA t23 TYPE REF TO object.
        t23 = t22->as_ref( ).
        t19 ?= t23.
      ELSE.
        t19 ?= t21.
      ENDIF.
      t18 = t19.
      DATA t24 TYPE string.
      DATA(t25) = t18.
      t24 = t25->str.
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
      DATA(t32) = t1.
      t31 = t32.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t34) = t31.
      t33 = t34->children.
      t30 = t33.
      t29 ?= t30.
      t28 = t29.
      DATA t35 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t35.
      DATA t36 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t36.
      DATA t37 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t37.
      DATA t38 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t38.
      DATA(t39) = t28.
      DATA(t40) = 2.
      DATA t41 TYPE REF TO object.
      t41 = t39->get( p0 = t40 ).
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t42.
      CLEAR t38.
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
      CLEAR t44.
      DATA(t45) = VALUE abap_bool( ).
      DATA(t46) = t37.
      IF t46 IS INITIAL.
        t45 = abap_true.
      ENDIF.
      IF t45 = abap_true.
        DATA t47 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t47.
        t44 = t47.
      ELSE.
        DATA t48 TYPE REF TO zcl_lnt_abstract_token.
        DATA t49 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA(t50) = t37.
        t49 = t50.
        t48 = t49->get_last_token( ).
        t44 = t48.
      ENDIF.
      t36 = t44.
      t35 = t36.
      DATA t51 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t51.
      DATA t52 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t52.
      DATA t53 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t53.
      DATA t54 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t54.
      DATA(t55) = t28.
      DATA(t56) = 3.
      DATA t57 TYPE REF TO object.
      t57 = t55->get( p0 = t56 ).
      DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t58.
      CLEAR t54.
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
      CLEAR t60.
      DATA(t61) = VALUE abap_bool( ).
      DATA(t62) = t53.
      IF t62 IS INITIAL.
        t61 = abap_true.
      ENDIF.
      IF t61 = abap_true.
        DATA t63 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t63.
        t60 = t63.
      ELSE.
        DATA t64 TYPE REF TO zcl_lnt_abstract_token.
        DATA t65 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA(t66) = t53.
        t65 = t66.
        t64 = t65->get_first_token( ).
        t60 = t64.
      ENDIF.
      t52 = t60.
      t51 = t52.
      DATA(t67) = VALUE abap_bool( ).
      DATA(t68) = VALUE abap_bool( ).
      DATA(t69) = VALUE abap_bool( ).
      DATA t70 TYPE abap_bool.
      DATA t71 TYPE abap_bool.
      DATA(t72) = t35.
      t71 = xsdbool( t72 IS BOUND ).
      t70 = t71.
      IF t71 = abap_true.
        DATA t73 TYPE abap_bool.
        DATA t74 TYPE string.
        DATA t75 TYPE REF TO zcl_lnt_abstract_token.
        DATA t76 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t77) = t35.
        t76 = t77.
        t75 = t76.
        DATA t78 TYPE string.
        DATA(t79) = t75.
        t78 = t79->str.
        t74 = t78.
        DATA(t80) = |(|.
        t73 = xsdbool( t74 = t80 ).
        t70 = t73.
      ENDIF.
      t69 = t70.
      IF t70 = abap_true.
        DATA t81 TYPE abap_bool.
        DATA t82 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t83) = t51.
        t82 = t83.
        t81 = xsdbool( t82 IS BOUND ).
        t69 = t81.
      ENDIF.
      t68 = t69.
      IF t69 = abap_true.
        DATA t84 TYPE abap_bool.
        DATA t85 TYPE f.
        DATA t86 TYPE REF TO zcl_lnt_abstract_token.
        DATA t87 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t88) = t35.
        t87 = t88.
        t86 = t87.
        DATA t89 TYPE f.
        DATA t90 TYPE REF TO zcl_lnt_position.
        DATA t91 TYPE REF TO zcl_lnt_position.
        DATA(t92) = t86.
        t91 = t92->start.
        t90 = t91.
        DATA t93 TYPE f.
        DATA(t94) = t90.
        t93 = t94->row.
        t89 = t93.
        t85 = t89.
        DATA t95 TYPE f.
        DATA t96 TYPE REF TO zcl_lnt_abstract_token.
        DATA t97 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t98) = t51.
        t97 = t98.
        t96 = t97.
        DATA t99 TYPE f.
        DATA t100 TYPE REF TO zcl_lnt_position.
        DATA t101 TYPE REF TO zcl_lnt_position.
        DATA(t102) = t96.
        t101 = t102->start.
        t100 = t101.
        DATA t103 TYPE f.
        DATA(t104) = t100.
        t103 = t104->row.
        t99 = t103.
        t95 = t99.
        t84 = xsdbool( t85 = t95 ).
        t68 = t84.
      ENDIF.
      t67 = t68.
      IF t68 = abap_true.
        DATA t105 TYPE abap_bool.
        DATA t106 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t107 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t108 TYPE REF TO zcl_lnt_abstract_token.
        DATA t109 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t110) = t35.
        t109 = t110.
        t108 = t109.
        DATA t111 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t112 TYPE REF TO zcl_lnt_position.
        DATA t113 TYPE REF TO zcl_lnt_position.
        DATA(t114) = t108.
        t113 = t114->start.
        t112 = t113.
        DATA t115 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t116) = t112.
        t115 = t116->col.
        t111 = t115.
        t107 = t111.
        DATA(t117) = CONV f( 1 ).
        DATA(t118) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t118->has = abap_true.
        t118->value = t117.
        t106 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t107 right = t118 op = `+` ).
        DATA t119 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t120 TYPE REF TO zcl_lnt_position.
        DATA t121 TYPE REF TO zcl_lnt_position.
        DATA t122 TYPE REF TO zcl_lnt_abstract_token.
        DATA t123 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t124) = t51.
        t123 = t124.
        t122 = t123.
        DATA t125 TYPE REF TO zcl_lnt_position.
        DATA(t126) = t122.
        t125 = t126->start.
        t121 = t125.
        t120 = t121.
        DATA t127 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t128) = t120.
        t127 = t128->col.
        t119 = t127.
        t105 = zlnt_runtime_numb_290eb04a9758=>compare( left = t106 right = t119 op = `==` ).
        t67 = t105.
      ENDIF.
      IF t67 = abap_true.
        DATA t129 TYPE REF TO zcl_lnt_position.
        CLEAR t129.
        DATA(t130) = abap_true.
        IF t130 = abap_true.
          DATA t131 TYPE REF TO zcl_lnt_position.
          DATA t132 TYPE REF TO zcl_lnt_abstract_token.
          DATA t133 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t134) = t51.
          t133 = t134.
          t132 = t133.
          DATA t135 TYPE REF TO zcl_lnt_position.
          DATA(t136) = t132.
          t135 = t136->start.
          t131 = t135.
          t129 = t131.
        ELSE.
          DATA t137 TYPE REF TO zcl_lnt_position.
          CLEAR t137.
          t129 = t137.
        ENDIF.
        result = t129.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t138 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t138.
    DATA t139 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t139.
    DATA(t140) = t2.
    DATA t141 TYPE i.
    DATA t142 TYPE i.
    DATA(t143) = t2.
    t143->load( ).
    t142 = lines( t143->items ).
    DATA(t144) = 2.
    t141 = t142 - t144.
    t141 = t141 + 1.
    DATA t145 TYPE REF TO object.
    CLEAR t145.
    t140->load( ).
    CLEAR t145.
    READ TABLE t140->items INDEX t141 INTO t145.
    DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t146.
    CLEAR t139.
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
    CLEAR t148.
    DATA t149 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t149.
    DATA(t150) = t2.
    DATA t151 TYPE i.
    DATA t152 TYPE i.
    DATA(t153) = t2.
    t153->load( ).
    t152 = lines( t153->items ).
    DATA(t154) = 1.
    t151 = t152 - t154.
    t151 = t151 + 1.
    DATA t155 TYPE REF TO object.
    CLEAR t155.
    t150->load( ).
    CLEAR t155.
    READ TABLE t150->items INDEX t151 INTO t155.
    DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t156.
    CLEAR t149.
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
    DATA t162 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t163) = t138.
    t162 = t163.
    DATA t164 TYPE string.
    DATA(t165) = t162.
    t164 = t165->str.
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
      DATA t173 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t174) = t138.
      t173 = t174.
      DATA t175 TYPE f.
      DATA t176 TYPE REF TO zcl_lnt_position.
      DATA t177 TYPE REF TO zcl_lnt_position.
      DATA(t178) = t173.
      t177 = t178->start.
      t176 = t177.
      DATA t179 TYPE f.
      DATA(t180) = t176.
      t179 = t180->row.
      t175 = t179.
      t172 = t175.
      DATA t181 TYPE f.
      DATA t182 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t183) = t148.
      t182 = t183.
      DATA t184 TYPE f.
      DATA t185 TYPE REF TO zcl_lnt_position.
      DATA t186 TYPE REF TO zcl_lnt_position.
      DATA(t187) = t182.
      t186 = t187->start.
      t185 = t186.
      DATA t188 TYPE f.
      DATA(t189) = t185.
      t188 = t189->row.
      t184 = t188.
      t181 = t184.
      t171 = xsdbool( t172 = t181 ).
      t159 = t171.
    ENDIF.
    t158 = t159.
    IF t159 = abap_true.
      DATA t190 TYPE abap_bool.
      DATA t191 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t192 TYPE REF TO zcl_lnt_position.
      DATA t193 TYPE REF TO zcl_lnt_position.
      DATA t194 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t195) = t138.
      t194 = t195.
      DATA t196 TYPE REF TO zcl_lnt_position.
      DATA t197 TYPE f.
      DATA t198 TYPE REF TO zcl_lnt_position.
      DATA t199 TYPE REF TO zcl_lnt_position.
      DATA(t200) = t194.
      t199 = t200->start.
      t198 = t199.
      DATA t201 TYPE f.
      DATA(t202) = t198.
      t201 = t202->row.
      t197 = t201.
      DATA t203 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t204 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t205 TYPE REF TO zcl_lnt_position.
      DATA t206 TYPE REF TO zcl_lnt_position.
      DATA(t207) = t194.
      t206 = t207->start.
      t205 = t206.
      DATA t208 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t209) = t205.
      t208 = t209->col.
      t204 = t208.
      DATA t210 TYPE f.
      DATA t211 TYPE i.
      DATA t212 TYPE string.
      DATA(t213) = t194.
      t212 = t213->str.
      DATA(t214) = strlen( t212 ).
      t211 = t214.
      t210 = t211.
      DATA(t215) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t215->has = abap_true.
      t215->value = t210.
      t203 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t204 right = t215 op = `+` ).
      t196 = NEW zcl_lnt_position( i_row = t197 i_col = t203 ).
      t193 = t196.
      t192 = t193.
      DATA t216 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t217) = t192.
      t216 = t217->col.
      t191 = t216.
      DATA t218 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t219 TYPE REF TO zcl_lnt_position.
      DATA t220 TYPE REF TO zcl_lnt_position.
      DATA t221 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t222) = t148.
      t221 = t222.
      DATA t223 TYPE REF TO zcl_lnt_position.
      DATA(t224) = t221.
      t223 = t224->start.
      t220 = t223.
      t219 = t220.
      DATA t225 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t226) = t219.
      t225 = t226->col.
      t218 = t225.
      t190 = zlnt_runtime_numb_290eb04a9758=>compare( left = t191 right = t218 op = `==` ).
      t158 = t190.
    ENDIF.
    IF t158 = abap_true.
      DATA t227 TYPE REF TO zcl_lnt_position.
      CLEAR t227.
      DATA(t228) = abap_true.
      IF t228 = abap_true.
        DATA t229 TYPE REF TO zcl_lnt_position.
        DATA t230 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t231) = t148.
        t230 = t231.
        DATA t232 TYPE REF TO zcl_lnt_position.
        DATA t233 TYPE f.
        DATA t234 TYPE REF TO zcl_lnt_position.
        DATA t235 TYPE REF TO zcl_lnt_position.
        DATA(t236) = t230.
        t235 = t236->start.
        t234 = t235.
        DATA t237 TYPE f.
        DATA(t238) = t234.
        t237 = t238->row.
        t233 = t237.
        DATA t239 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t240 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t241 TYPE REF TO zcl_lnt_position.
        DATA t242 TYPE REF TO zcl_lnt_position.
        DATA(t243) = t230.
        t242 = t243->start.
        t241 = t242.
        DATA t244 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t245) = t241.
        t244 = t245->col.
        t240 = t244.
        DATA t246 TYPE f.
        DATA t247 TYPE i.
        DATA t248 TYPE string.
        DATA(t249) = t230.
        t248 = t249->str.
        DATA(t250) = strlen( t248 ).
        t247 = t250.
        t246 = t247.
        DATA(t251) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t251->has = abap_true.
        t251->value = t246.
        t239 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t240 right = t251 op = `+` ).
        t232 = NEW zcl_lnt_position( i_row = t233 i_col = t239 ).
        t229 = t232.
        t227 = t229.
      ELSE.
        DATA t252 TYPE REF TO zcl_lnt_position.
        CLEAR t252.
        t227 = t252.
      ENDIF.
      result = t227.
      RETURN.
    ENDIF.
    DATA t253 TYPE REF TO zcl_lnt_position.
    CLEAR t253.
    result = t253.

  ENDMETHOD.

  METHOD check_method_call_param.
    DATA(t1) = i_call_bc15.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = t5.
    t7 = t8->children.
    t4 = t7.
    t3 ?= t4.
    t2 = t3.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t10.
    DATA t11 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t11.
    DATA(t12) = t2.
    DATA t13 TYPE REF TO object.
    CLEAR t13.
    t12->load( ).
    CLEAR t13.
    READ TABLE t12->items INDEX 1 INTO t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    CLEAR t11.
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
    CLEAR t16.
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t17.
    DATA t18 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t18.
    DATA(t19) = t2.
    DATA t20 TYPE REF TO object.
    CLEAR t20.
    t19->load( ).
    CLEAR t20.
    READ TABLE t19->items INDEX 2 INTO t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    CLEAR t18.
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
    DATA t26 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t27) = t9.
    t26 = t27.
    DATA t28 TYPE f.
    DATA t29 TYPE REF TO zcl_lnt_position.
    DATA t30 TYPE REF TO zcl_lnt_position.
    DATA(t31) = t26.
    t30 = t31->start.
    t29 = t30.
    DATA t32 TYPE f.
    DATA(t33) = t29.
    t32 = t33->row.
    t28 = t32.
    t25 = t28.
    DATA t34 TYPE f.
    DATA t35 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t36) = t16.
    t35 = t36.
    DATA t37 TYPE f.
    DATA t38 TYPE REF TO zcl_lnt_position.
    DATA t39 TYPE REF TO zcl_lnt_position.
    DATA(t40) = t35.
    t39 = t40->start.
    t38 = t39.
    DATA t41 TYPE f.
    DATA(t42) = t38.
    t41 = t42->row.
    t37 = t41.
    t34 = t37.
    t24 = xsdbool( t25 = t34 ).
    t23 = t24.
    IF t24 = abap_true.
      DATA t43 TYPE abap_bool.
      DATA t44 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t45 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t46 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t47) = t9.
      t46 = t47.
      DATA t48 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t49 TYPE REF TO zcl_lnt_position.
      DATA t50 TYPE REF TO zcl_lnt_position.
      DATA(t51) = t46.
      t50 = t51->start.
      t49 = t50.
      DATA t52 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t53) = t49.
      t52 = t53->col.
      t48 = t52.
      t45 = t48.
      DATA(t54) = CONV f( 1 ).
      DATA(t55) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t55->has = abap_true.
      t55->value = t54.
      t44 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t45 right = t55 op = `+` ).
      DATA t56 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t57 TYPE REF TO zcl_lnt_position.
      DATA t58 TYPE REF TO zcl_lnt_position.
      DATA t59 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t60) = t16.
      t59 = t60.
      DATA t61 TYPE REF TO zcl_lnt_position.
      DATA(t62) = t59.
      t61 = t62->start.
      t58 = t61.
      t57 = t58.
      DATA t63 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t64) = t57.
      t63 = t64->col.
      t56 = t63.
      t43 = zlnt_runtime_numb_290eb04a9758=>compare( left = t44 right = t56 op = `==` ).
      t23 = t43.
    ENDIF.
    IF t23 = abap_true.
      DATA t65 TYPE REF TO zcl_lnt_position.
      CLEAR t65.
      DATA(t66) = abap_true.
      IF t66 = abap_true.
        DATA t67 TYPE REF TO zcl_lnt_position.
        DATA t68 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t69) = t16.
        t68 = t69.
        DATA t70 TYPE REF TO zcl_lnt_position.
        DATA(t71) = t68.
        t70 = t71->start.
        t67 = t70.
        t65 = t67.
      ELSE.
        DATA t72 TYPE REF TO zcl_lnt_position.
        CLEAR t72.
        t65 = t72.
      ENDIF.
      result = t65.
      RETURN.
    ENDIF.
    DATA t73 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t73.
    DATA t74 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t74.
    DATA t75 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t75.
    DATA(t76) = t2.
    DATA t77 TYPE i.
    DATA t78 TYPE i.
    DATA(t79) = t2.
    t79->load( ).
    t78 = lines( t79->items ).
    DATA(t80) = 2.
    t77 = t78 - t80.
    t77 = t77 + 1.
    DATA t81 TYPE REF TO object.
    CLEAR t81.
    t76->load( ).
    CLEAR t81.
    READ TABLE t76->items INDEX t77 INTO t81.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    CLEAR t75.
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
    CLEAR t84.
    DATA t85 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t85.
    DATA t86 TYPE REF TO zif_lnt_union_4cf1d054.
    CLEAR t86.
    DATA(t87) = t2.
    DATA t88 TYPE i.
    DATA t89 TYPE i.
    DATA(t90) = t2.
    t90->load( ).
    t89 = lines( t90->items ).
    DATA(t91) = 1.
    t88 = t89 - t91.
    t88 = t88 + 1.
    DATA t92 TYPE REF TO object.
    CLEAR t92.
    t87->load( ).
    CLEAR t92.
    READ TABLE t87->items INDEX t88 INTO t92.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    CLEAR t86.
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
    DATA t98 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t99) = t73.
    t98 = t99.
    DATA t100 TYPE f.
    DATA t101 TYPE REF TO zcl_lnt_position.
    DATA t102 TYPE REF TO zcl_lnt_position.
    DATA(t103) = t98.
    t102 = t103->start.
    t101 = t102.
    DATA t104 TYPE f.
    DATA(t105) = t101.
    t104 = t105->row.
    t100 = t104.
    t97 = t100.
    DATA t106 TYPE f.
    DATA t107 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t108) = t84.
    t107 = t108.
    DATA t109 TYPE f.
    DATA t110 TYPE REF TO zcl_lnt_position.
    DATA t111 TYPE REF TO zcl_lnt_position.
    DATA(t112) = t107.
    t111 = t112->start.
    t110 = t111.
    DATA t113 TYPE f.
    DATA(t114) = t110.
    t113 = t114->row.
    t109 = t113.
    t106 = t109.
    t96 = xsdbool( t97 = t106 ).
    t95 = t96.
    IF t96 = abap_true.
      DATA t115 TYPE abap_bool.
      DATA t116 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t117 TYPE REF TO zcl_lnt_position.
      DATA t118 TYPE REF TO zcl_lnt_position.
      DATA t119 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t120) = t73.
      t119 = t120.
      DATA t121 TYPE REF TO zcl_lnt_position.
      DATA t122 TYPE f.
      DATA t123 TYPE REF TO zcl_lnt_position.
      DATA t124 TYPE REF TO zcl_lnt_position.
      DATA(t125) = t119.
      t124 = t125->start.
      t123 = t124.
      DATA t126 TYPE f.
      DATA(t127) = t123.
      t126 = t127->row.
      t122 = t126.
      DATA t128 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t129 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t130 TYPE REF TO zcl_lnt_position.
      DATA t131 TYPE REF TO zcl_lnt_position.
      DATA(t132) = t119.
      t131 = t132->start.
      t130 = t131.
      DATA t133 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t134) = t130.
      t133 = t134->col.
      t129 = t133.
      DATA t135 TYPE f.
      DATA t136 TYPE i.
      DATA t137 TYPE string.
      DATA(t138) = t119.
      t137 = t138->str.
      DATA(t139) = strlen( t137 ).
      t136 = t139.
      t135 = t136.
      DATA(t140) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t140->has = abap_true.
      t140->value = t135.
      t128 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t129 right = t140 op = `+` ).
      t121 = NEW zcl_lnt_position( i_row = t122 i_col = t128 ).
      t118 = t121.
      t117 = t118.
      DATA t141 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t142) = t117.
      t141 = t142->col.
      t116 = t141.
      DATA t143 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t144 TYPE REF TO zcl_lnt_position.
      DATA t145 TYPE REF TO zcl_lnt_position.
      DATA t146 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t147) = t84.
      t146 = t147.
      DATA t148 TYPE REF TO zcl_lnt_position.
      DATA(t149) = t146.
      t148 = t149->start.
      t145 = t148.
      t144 = t145.
      DATA t150 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t151) = t144.
      t150 = t151->col.
      t143 = t150.
      t115 = zlnt_runtime_numb_290eb04a9758=>compare( left = t116 right = t143 op = `==` ).
      t95 = t115.
    ENDIF.
    IF t95 = abap_true.
      DATA t152 TYPE REF TO zcl_lnt_position.
      CLEAR t152.
      DATA(t153) = abap_true.
      IF t153 = abap_true.
        DATA t154 TYPE REF TO zcl_lnt_position.
        DATA t155 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t156) = t84.
        t155 = t156.
        DATA t157 TYPE REF TO zcl_lnt_position.
        DATA(t158) = t155.
        t157 = t158->start.
        t154 = t157.
        t152 = t154.
      ELSE.
        DATA t159 TYPE REF TO zcl_lnt_position.
        CLEAR t159.
        t152 = t159.
      ENDIF.
      result = t152.
      RETURN.
    ENDIF.
    DATA t160 TYPE REF TO zcl_lnt_position.
    CLEAR t160.
    result = t160.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_prsr_mssng_spc_cnf( me->g_c_i_s_r_pr_ms_sp_ts_pr_ms_sp( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_prsr_mssng_spc_cnf( me->g_c_i_s_r_pr_ms_sp_ts_pr_ms_sp( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_prsr_mssng_spc_cnf.
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
        t1 = NEW zcl_lnt_prsr_mssng_spc_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_pr_ms_sp_ts_pr_ms_sp( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_pr_ms_sp_ts_pr_ms_sp( i_file = i_file ) ).
    result = t1.

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
