* TS: src/rules/empty_statement.ts:13:1 EmptyStatement
CLASS zcl_lnt_empty_statement DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_empty_statement_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_em_st_ts_em_stt RETURNING VALUE(result) TYPE REF TO zcl_lnt_empty_statement_conf.
    METHODS st_cn_in_sr_rl_em_st_ts_em_stt IMPORTING i_conf TYPE REF TO zcl_lnt_empty_statement_conf.
    METHODS rn_pr_in_sr_rl_em_st_ts_em_stt IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_empty_statement IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_empty_statement_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |empty_statement|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Remove empty statement|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for empty statements (an empty statement is a single |.
    t7 = t7 && |dot)|.
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
      DATA(t15) = |Quickfix|.
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
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA(t22) = abap_true.
    IF t22 = abap_true.
      DATA(t23) = |WRITE 'hello world'..|.
      DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t24->has = abap_true.
      t24->value = t23.
      t21 = t24.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      t21 = t25.
    ENDIF.
    t20 = t21.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA(t29) = |WRITE 'hello world'.|.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t29.
      t27 = t30.
    ELSE.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      t27 = t31.
    ENDIF.
    t26 = t27.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    t32 = t33.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    t34 = t35.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t36 = t37.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t20 i_good_example = t26 i_extended_information = t32 i_tags = t8 i_pragma = t34 i_pseudo_comment = t36 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t43 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t44) = |key|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
    ENDIF.
    DATA(t46) = |title|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = |shortDescription|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |tags|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |badExample|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    DATA(t54) = |goodExample|.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_em_st_ts_em_stt.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_em_st_ts_em_stt.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_em_st_ts_em_stt.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = t6.
    t8 = t9->statements.
    t5 = t8.
    t4 = t5.
    DATA t10 TYPE REF TO zcl_lnt_position.
    DATA t11 TYPE REF TO zcl_lnt_position.
    DATA(t12) = CONV f( 1 ).
    DATA(t13) = CONV f( 1 ).
    DATA(t14) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t14->has = abap_true.
    t14->value = t13.
    t11 = NEW zcl_lnt_position( i_row = t12 i_col = t14 ).
    t10 = t11.
    DATA(t15) = t4.
    DATA t16 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t16.
    DATA t17 TYPE REF TO object.
    CLEAR t17.
    DATA(t18) = VALUE i( ).
    DO.
      t15->load( ).
      IF t18 >= lines( t15->items ).
        EXIT.
      ENDIF.
      CLEAR t17.
      READ TABLE t15->items INDEX t18 + 1 INTO t17.
      t18 = t18 + 1.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t19.
      CLEAR t16.
      IF t17 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t19 ?= t17.
        DATA t20 TYPE REF TO object.
        t20 = t19->as_ref( ).
        t16 ?= t20.
      ELSE.
        t16 ?= t17.
      ENDIF.
      DATA t21 TYPE abap_bool.
      DATA t22 TYPE REF TO zif_lnt_statement.
      DATA(t23) = t16.
      t22 = t23->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t21 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_empty ).
      IF t21 = abap_true.
        DATA t24 TYPE REF TO zcl_lnt_abstract_token.
        DATA t25 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t26) = t16.
        t25 = t26->get_first_token( ).
        t24 = t25.
        DATA t27 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t28 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA(t29) = t1.
        DATA(t30) = t10.
        DATA t31 TYPE REF TO zcl_lnt_position.
        DATA t32 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t33) = t24.
        t32 = t33.
        DATA t34 TYPE REF TO zcl_lnt_position.
        DATA t35 TYPE f.
        DATA t36 TYPE REF TO zcl_lnt_position.
        DATA t37 TYPE REF TO zcl_lnt_position.
        DATA(t38) = t32.
        t37 = t38->start.
        t36 = t37.
        DATA t39 TYPE f.
        DATA(t40) = t36.
        t39 = t40->row.
        t35 = t39.
        DATA t41 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t42 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t43 TYPE REF TO zcl_lnt_position.
        DATA t44 TYPE REF TO zcl_lnt_position.
        DATA(t45) = t32.
        t44 = t45->start.
        t43 = t44.
        DATA t46 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t47) = t43.
        t46 = t47->col.
        t42 = t46.
        DATA t48 TYPE f.
        DATA t49 TYPE i.
        DATA t50 TYPE string.
        DATA(t51) = t32.
        t50 = t51->str.
        DATA(t52) = strlen( t50 ).
        t49 = t52.
        t48 = t49.
        DATA(t53) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t53->has = abap_true.
        t53->value = t48.
        t41 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t42 right = t53 op = `+` ).
        t34 = NEW zcl_lnt_position( i_row = t35 i_col = t41 ).
        t31 = t34.
        t28 = zcl_lnt_edit_helper=>delete_range( i_file = t29 i_start = t30 i_end = t31 ).
        t27 = t28.
        DATA t54 TYPE REF TO zcl_lnt_issue.
        CLEAR t54.
        DATA t55 TYPE REF TO zcl_lnt_issue.
        CLEAR t55.
        DATA(t56) = t1.
        DATA(t57) = t16.
        DATA(t58) = |Remove empty statement|.
        DATA(t59) = VALUE string( ).
        DATA t60 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t60.
        DATA t61 TYPE string.
        DATA(t62) = |empty_statement|.
        t61 = t62.
        DATA t63 TYPE string.
        DATA(t64) = |Remove empty statement|.
        t63 = t64.
        DATA t65 TYPE string.
        DATA(t66) = |Checks for empty statements (an empty statement is a single |.
        t66 = t66 && |dot)|.
        t65 = t66.
        DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t67.
        DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t68.
        DATA(t69) = abap_true.
        IF t69 = abap_true.
          DATA t70 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t71 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t72 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t72.
          t71 = t72.
          DATA(t73) = t71.
          DATA(t74) = |Quickfix|.
          t73->load( ).
          APPEND t74 TO t73->items.
          t73->save( ).
          DATA(t75) = t71.
          DATA(t76) = |SingleFile|.
          t75->load( ).
          APPEND t76 TO t75->items.
          t75->save( ).
          DATA(t77) = t71.
          t70 = t77.
          t68 = t70.
        ELSE.
          DATA t78 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t78.
          t68 = t78.
        ENDIF.
        t67 = t68.
        DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t79.
        DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t80.
        DATA(t81) = abap_true.
        IF t81 = abap_true.
          DATA(t82) = |WRITE 'hello world'..|.
          DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t83->has = abap_true.
          t83->value = t82.
          t80 = t83.
        ELSE.
          DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t84.
          t80 = t84.
        ENDIF.
        t79 = t80.
        DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t85.
        DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t86.
        DATA(t87) = abap_true.
        IF t87 = abap_true.
          DATA(t88) = |WRITE 'hello world'.|.
          DATA(t89) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t89->has = abap_true.
          t89->value = t88.
          t86 = t89.
        ELSE.
          DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t90.
          t86 = t90.
        ENDIF.
        t85 = t86.
        DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t92.
        t91 = t92.
        DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t94.
        t93 = t94.
        DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t96.
        t95 = t96.
        t60 = NEW zcl_lnt_irule_metadata( i_key = t61 i_title = t63 i_short_description = t65 i_bad_example = t79 i_good_example = t85 i_extended_information = t91 i_tags = t67 i_pragma = t93 i_pseudo_comment = t95 ).
        CREATE OBJECT t60->zlnt_view_ownkeys_b0e8086400eb.
        t60->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t97.
        IF t60->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t60->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t97 ).
        ENDIF.
        DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t98.
        IF t60->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t60->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t98 ).
        ENDIF.
        DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t99.
        IF t60->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t60->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t99 ).
        ENDIF.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t100.
        IF t60->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t60->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t100 ).
        ENDIF.
        DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t101.
        IF t60->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t60->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t101 ).
        ENDIF.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        IF t60->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t60->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t102 ).
        ENDIF.
        CREATE OBJECT t60->zlnt_json_ownkeys_70e5fd461788.
        t60->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t103) = |key|.
        DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t104.
        IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = t103 p1 = t104 ).
        ENDIF.
        DATA(t105) = |title|.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = t105 p1 = t106 ).
        ENDIF.
        DATA(t107) = |shortDescription|.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t108.
        IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = t107 p1 = t108 ).
        ENDIF.
        DATA(t109) = |tags|.
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t110.
        IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = t109 p1 = t110 ).
        ENDIF.
        DATA(t111) = |badExample|.
        DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t112.
        IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = t111 p1 = t112 ).
        ENDIF.
        DATA(t113) = |goodExample|.
        DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t114.
        IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = t113 p1 = t114 ).
        ENDIF.
        t59 = t60->key.
        DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t116) = me->conf.
        t115 = t116->zlnt_view_read_sr_15c06369f827( ).
        DATA t117 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t117.
        DATA(t118) = abap_true.
        IF t118 = abap_true.
          DATA(t119) = t27.
          t117 = t119.
        ELSE.
          DATA t120 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t120.
          t117 = t120.
        ENDIF.
        DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t121.
        t55 = zcl_lnt_issue=>at_statement( i_file = t56 i_statement = t57 i_message_26cb = t58 i_key = t59 i_severity = t115 i_fix = t117 i_alternative_fixes = t121 ).
        t54 = t55.
        DATA(t122) = t2.
        DATA(t123) = t54.
        t122->load( ).
        APPEND t123 TO t122->items.
        t122->save( ).
      ENDIF.
      DATA t124 TYPE REF TO zcl_lnt_position.
      DATA t125 TYPE REF TO zcl_lnt_abstract_token.
      DATA t126 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t127) = t16.
      t126 = t127->get_last_token( ).
      t125 = t126.
      DATA t128 TYPE REF TO zcl_lnt_position.
      DATA t129 TYPE f.
      DATA t130 TYPE REF TO zcl_lnt_position.
      DATA t131 TYPE REF TO zcl_lnt_position.
      DATA(t132) = t125.
      t131 = t132->start.
      t130 = t131.
      DATA t133 TYPE f.
      DATA(t134) = t130.
      t133 = t134->row.
      t129 = t133.
      DATA t135 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t136 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t137 TYPE REF TO zcl_lnt_position.
      DATA t138 TYPE REF TO zcl_lnt_position.
      DATA(t139) = t125.
      t138 = t139->start.
      t137 = t138.
      DATA t140 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t141) = t137.
      t140 = t141->col.
      t136 = t140.
      DATA t142 TYPE f.
      DATA t143 TYPE i.
      DATA t144 TYPE string.
      DATA(t145) = t125.
      t144 = t145->str.
      DATA(t146) = strlen( t144 ).
      t143 = t146.
      t142 = t143.
      DATA(t147) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t147->has = abap_true.
      t147->value = t142.
      t135 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t136 right = t147 op = `+` ).
      t128 = NEW zcl_lnt_position( i_row = t129 i_col = t135 ).
      t124 = t128.
      t10 = t124.
    ENDDO.
    DATA(t148) = t2.
    result = t148.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_empty_statement_conf( me->gt_cn_in_sr_rl_em_st_ts_em_stt( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_empty_statement_conf( me->gt_cn_in_sr_rl_em_st_ts_em_stt( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_empty_statement_conf.
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
        t1 = NEW zcl_lnt_empty_statement_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_em_st_ts_em_stt( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_em_st_ts_em_stt( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1494_60b9e2ec294e.
  ENDMETHOD.
ENDCLASS.
