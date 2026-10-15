* TS: src/rules/omit_receiving.ts:11:1 OmitReceiving
CLASS zcl_lnt_omit_receiving DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_omit_receiving_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_om_rc_ts_om_rcv RETURNING VALUE(result) TYPE REF TO zcl_lnt_omit_receiving_conf.
    METHODS st_cn_in_sr_rl_om_rc_ts_om_rcv IMPORTING i_conf TYPE REF TO zcl_lnt_omit_receiving_conf.
    METHODS rn_pr_in_sr_rl_om_rc_ts_om_rcv IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_omit_receiving IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_omit_receiving_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |omit_receiving|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Omit RECEIVING|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Omit RECEIVING|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t11 = t11 && |nABAP.md#omit-receiving|.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = t11.
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t9 = t13.
    ENDIF.
    t8 = t9.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t19.
      t18 = t19.
      DATA(t20) = t18.
      DATA(t21) = |Styleguide|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      DATA(t23) = |SingleFile|.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = t18.
      t17 = t24.
      t15 = t17.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t25.
      t15 = t25.
    ENDIF.
    t14 = t15.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA(t29) = |\n      upload_pack(\n        EXPORTING\n          io_client   |.
      t29 = t29 && |    = lo_client\n          iv_url          = iv_url\n         |.
      t29 = t29 && | iv_deepen_level = iv_deepen_level\n          it_hashes      |.
      t29 = t29 && | = lt_hashes\n        RECEIVING\n          rt_objects      = e|.
      t29 = t29 && |t_objects ).|.
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
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    DATA(t34) = abap_true.
    IF t34 = abap_true.
      DATA(t35) = |\n      et_objects = upload_pack(\n        io_client       = l|.
      t35 = t35 && |o_client\n        iv_url          = iv_url\n        iv_deepen_|.
      t35 = t35 && |level = iv_deepen_level\n        it_hashes       = lt_hashes |.
      t35 = t35 && |).|.
      DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t36->has = abap_true.
      t36->value = t35.
      t33 = t36.
    ELSE.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      t33 = t37.
    ENDIF.
    t32 = t33.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    t40 = t41.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t26 i_good_example = t32 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t48 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t49) = |key|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |title|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |shortDescription|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |extendedInformation|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |tags|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |badExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |goodExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_om_rc_ts_om_rcv.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_om_rc_ts_om_rcv.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_om_rc_ts_om_rcv.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_structure_node.
    DATA t8 TYPE REF TO zcl_lnt_structure_node.
    DATA t9 TYPE REF TO zcl_lnt_abap_file.
    DATA(t10) = t1.
    t9 = t10.
    DATA t11 TYPE REF TO zcl_lnt_structure_node.
    DATA(t12) = t9.
    t11 = t12->structure.
    t8 = t11.
    t7 = t8.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = t7.
    IF t15 IS INITIAL.
      t14 = abap_true.
    ENDIF.
    IF t14 = abap_true.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t16.
      t13 = t16.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t18 TYPE REF TO zcl_lnt_structure_node.
      DATA(t19) = t7.
      t18 = t19.
      DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d220_2984eb665ddb.
      t17 = t18->find_all_expressions( i_type_9913 = t20 ).
      t13 = t17.
    ENDIF.
    t6 = t13.
    t5 = t6.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t21.
    DATA t22 TYPE abap_bool.
    DATA(t23) = t5.
    t22 = xsdbool( t23 IS BOUND ).
    IF t22 = abap_true.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t25) = t5.
      t24 = t25.
      t21 = t24.
    ELSE.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t26.
      t21 = t26.
    ENDIF.
    t4 = t21.
    DATA t27 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t27.
    DATA t28 TYPE REF TO object.
    CLEAR t28.
    DATA(t29) = VALUE i( ).
    DO.
      t4->load( ).
      IF t29 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t28.
      READ TABLE t4->items INDEX t29 + 1 INTO t28.
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
      DATA t32 TYPE REF TO zcl_lnt_expression_node.
      DATA t33 TYPE REF TO zcl_lnt_expression_node.
      DATA(t34) = t27.
      DATA(t35) = zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470.
      t33 = t34->find_direct_expression( i_type_9913 = t35 ).
      t32 = t33.
      DATA(t36) = VALUE abap_bool( ).
      DATA t37 TYPE REF TO zcl_lnt_expression_node.
      DATA(t38) = t32.
      t37 = t38.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t40.
      t39 = t40.
      DATA(t41) = VALUE abap_bool( ).
      DATA(t42) = t37.
      IF t42 IS INITIAL.
        t41 = abap_true.
      ENDIF.
      t36 = t41.
      IF t36 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t43 TYPE REF TO zcl_lnt_abstract_token.
      DATA t44 TYPE REF TO zcl_lnt_abstract_token.
      DATA t45 TYPE REF TO zcl_lnt_expression_node.
      DATA(t46) = t32.
      t45 = t46.
      DATA(t47) = |RECEIVING|.
      t44 = t45->find_direct_token_by_text( i_text = t47 ).
      t43 = t44.
      DATA(t48) = VALUE abap_bool( ).
      DATA t49 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t50) = t43.
      t49 = t50.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t52.
      t51 = t52.
      DATA(t53) = VALUE abap_bool( ).
      DATA(t54) = t49.
      IF t54 IS INITIAL.
        t53 = abap_true.
      ENDIF.
      t48 = t53.
      IF t48 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t55 TYPE REF TO zcl_lnt_abstract_token.
      DATA t56 TYPE REF TO zcl_lnt_abstract_token.
      DATA t57 TYPE REF TO zcl_lnt_expression_node.
      DATA(t58) = t32.
      t57 = t58.
      DATA(t59) = |EXCEPTIONS|.
      t56 = t57->find_direct_token_by_text( i_text = t59 ).
      t55 = t56.
      DATA(t60) = VALUE abap_bool( ).
      DATA t61 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t62) = t55.
      t61 = t62.
      DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t64.
      t63 = t64.
      DATA(t65) = VALUE abap_bool( ).
      DATA(t66) = VALUE abap_bool( ).
      DATA(t67) = t61.
      IF t67 IS INITIAL.
        t66 = abap_true.
      ENDIF.
      t65 = xsdbool( t66 = abap_false ).
      t60 = t65.
      IF t60 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t68) = t2.
      DATA t69 TYPE REF TO zcl_lnt_issue.
      CLEAR t69.
      DATA(t70) = t1.
      DATA t71 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t72) = t43.
      t71 = t72.
      DATA(t73) = |Omit RECEIVING|.
      DATA(t74) = VALUE string( ).
      DATA t75 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t75.
      DATA t76 TYPE string.
      DATA(t77) = |omit_receiving|.
      t76 = t77.
      DATA t78 TYPE string.
      DATA(t79) = |Omit RECEIVING|.
      t78 = t79.
      DATA t80 TYPE string.
      DATA(t81) = |Omit RECEIVING|.
      t80 = t81.
      DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t82.
      DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t83.
      DATA(t84) = abap_true.
      IF t84 = abap_true.
        DATA(t85) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
        t85 = t85 && |nABAP.md#omit-receiving|.
        DATA(t86) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t86->has = abap_true.
        t86->value = t85.
        t83 = t86.
      ELSE.
        DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t87.
        t83 = t87.
      ENDIF.
      t82 = t83.
      DATA t88 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t88.
      DATA t89 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t89.
      DATA(t90) = abap_true.
      IF t90 = abap_true.
        DATA t91 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t92 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t93 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t93.
        t92 = t93.
        DATA(t94) = t92.
        DATA(t95) = |Styleguide|.
        t94->load( ).
        APPEND t95 TO t94->items.
        t94->save( ).
        DATA(t96) = t92.
        DATA(t97) = |SingleFile|.
        t96->load( ).
        APPEND t97 TO t96->items.
        t96->save( ).
        DATA(t98) = t92.
        t91 = t98.
        t89 = t91.
      ELSE.
        DATA t99 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t99.
        t89 = t99.
      ENDIF.
      t88 = t89.
      DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t100.
      DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t101.
      DATA(t102) = abap_true.
      IF t102 = abap_true.
        DATA(t103) = |\n      upload_pack(\n        EXPORTING\n          io_client   |.
        t103 = t103 && |    = lo_client\n          iv_url          = iv_url\n         |.
        t103 = t103 && | iv_deepen_level = iv_deepen_level\n          it_hashes      |.
        t103 = t103 && | = lt_hashes\n        RECEIVING\n          rt_objects      = e|.
        t103 = t103 && |t_objects ).|.
        DATA(t104) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t104->has = abap_true.
        t104->value = t103.
        t101 = t104.
      ELSE.
        DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t105.
        t101 = t105.
      ENDIF.
      t100 = t101.
      DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t106.
      DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t107.
      DATA(t108) = abap_true.
      IF t108 = abap_true.
        DATA(t109) = |\n      et_objects = upload_pack(\n        io_client       = l|.
        t109 = t109 && |o_client\n        iv_url          = iv_url\n        iv_deepen_|.
        t109 = t109 && |level = iv_deepen_level\n        it_hashes       = lt_hashes |.
        t109 = t109 && |).|.
        DATA(t110) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t110->has = abap_true.
        t110->value = t109.
        t107 = t110.
      ELSE.
        DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t111.
        t107 = t111.
      ENDIF.
      t106 = t107.
      DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t113.
      t112 = t113.
      DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t115.
      t114 = t115.
      t75 = NEW zcl_lnt_irule_metadata( i_key = t76 i_title = t78 i_short_description = t80 i_bad_example = t100 i_good_example = t106 i_extended_information = t82 i_tags = t88 i_pragma = t112 i_pseudo_comment = t114 ).
      CREATE OBJECT t75->zlnt_view_ownkeys_b0e8086400eb.
      t75->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t116.
      IF t75->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t75->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t116 ).
      ENDIF.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t117.
      IF t75->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t75->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t117 ).
      ENDIF.
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t118.
      IF t75->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t75->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t118 ).
      ENDIF.
      DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t119.
      IF t75->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t75->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t119 ).
      ENDIF.
      DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t120.
      IF t75->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t75->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t120 ).
      ENDIF.
      DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t121.
      IF t75->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t75->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t121 ).
      ENDIF.
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t122.
      IF t75->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t75->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t122 ).
      ENDIF.
      CREATE OBJECT t75->zlnt_json_ownkeys_70e5fd461788.
      t75->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t123) = |key|.
      DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t124.
      IF t75->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t75->zlnt_json_ownkeys_70e5fd461788->put( p0 = t123 p1 = t124 ).
      ENDIF.
      DATA(t125) = |title|.
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t126.
      IF t75->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t75->zlnt_json_ownkeys_70e5fd461788->put( p0 = t125 p1 = t126 ).
      ENDIF.
      DATA(t127) = |shortDescription|.
      DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t128.
      IF t75->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t75->zlnt_json_ownkeys_70e5fd461788->put( p0 = t127 p1 = t128 ).
      ENDIF.
      DATA(t129) = |extendedInformation|.
      DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t130.
      IF t75->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t75->zlnt_json_ownkeys_70e5fd461788->put( p0 = t129 p1 = t130 ).
      ENDIF.
      DATA(t131) = |tags|.
      DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t132.
      IF t75->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t75->zlnt_json_ownkeys_70e5fd461788->put( p0 = t131 p1 = t132 ).
      ENDIF.
      DATA(t133) = |badExample|.
      DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t134.
      IF t75->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t75->zlnt_json_ownkeys_70e5fd461788->put( p0 = t133 p1 = t134 ).
      ENDIF.
      DATA(t135) = |goodExample|.
      DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t136.
      IF t75->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t75->zlnt_json_ownkeys_70e5fd461788->put( p0 = t135 p1 = t136 ).
      ENDIF.
      t74 = t75->key.
      DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t138) = CAST zcl_lnt_omit_receiving_conf( me->gt_cn_in_sr_rl_om_rc_ts_om_rcv( ) ).
      t137 = t138->zlnt_view_read_sr_15c06369f827( ).
      DATA t139 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t139.
      t69 = zcl_lnt_issue=>at_token( i_file = t70 i_token = t71 i_message_26cb = t73 i_key = t74 i_severity = t137 i_fix = t139 ).
      t68->load( ).
      APPEND t69 TO t68->items.
      t68->save( ).
    ENDDO.
    DATA(t140) = t2.
    result = t140.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_omit_receiving_conf( me->gt_cn_in_sr_rl_om_rc_ts_om_rcv( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_omit_receiving_conf( me->gt_cn_in_sr_rl_om_rc_ts_om_rcv( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_omit_receiving_conf.
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
        t1 = NEW zcl_lnt_omit_receiving_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_om_rc_ts_om_rcv( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_om_rc_ts_om_rcv( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1639_4abe594ee35d.
  ENDMETHOD.
ENDCLASS.
