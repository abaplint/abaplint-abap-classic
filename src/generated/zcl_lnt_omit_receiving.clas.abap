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
    me->conf = NEW zcl_lnt_omit_receiving_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t11 = t11 && |nABAP.md#omit-receiving|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Styleguide| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t29) = |\n      upload_pack(\n        EXPORTING\n          io_client   |.
    t29 = t29 && |    = lo_client\n          iv_url          = iv_url\n         |.
    t29 = t29 && | iv_deepen_level = iv_deepen_level\n          it_hashes      |.
    t29 = t29 && | = lt_hashes\n        RECEIVING\n          rt_objects      = e|.
    t29 = t29 && |t_objects ).|.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t29.
    t26 = t30.
    DATA(t35) = |\n      et_objects = upload_pack(\n        io_client       = l|.
    t35 = t35 && |o_client\n        iv_url          = iv_url\n        iv_deepen_|.
    t35 = t35 && |level = iv_deepen_level\n        it_hashes       = lt_hashes |.
    t35 = t35 && |).|.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = t35.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |omit_receiving| i_title = |Omit RECEIVING| i_short_description = |Omit RECEIVING| i_bad_example = t26 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t42 ).
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t48 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t50 ).
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t52 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t54 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t60 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t62 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_om_rc_ts_om_rcv.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_om_rc_ts_om_rcv.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_om_rc_ts_om_rcv.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zcl_lnt_structure_node.
    t7 = t1->structure.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t7 IS INITIAL ) = abap_true.
    ELSE.
      DATA t18 TYPE REF TO zcl_lnt_structure_node.
      t18 = t7.
      DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d220_2984eb665ddb.
      t13 = t18->find_all_expressions( i_type_9913 = t20 ).
    ENDIF.
    t5 = t13.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t5 IS BOUND ) = abap_true.
      t21 = t5.
    ELSE.
      CREATE OBJECT t21.
    ENDIF.
    t4 = t21.
    DATA t27 TYPE REF TO zcl_lnt_expression_node.
    DATA t28 TYPE REF TO object.
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
      DATA(t35) = zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470.
      t32 = t27->find_direct_expression( i_type_9913 = t35 ).
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      IF xsdbool( t32 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t43 TYPE REF TO zcl_lnt_abstract_token.
      t43 = t32->find_direct_token_by_text( i_text = |RECEIVING| ).
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t51.
      IF xsdbool( t43 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t56 TYPE REF TO zcl_lnt_abstract_token.
      t56 = t32->find_direct_token_by_text( i_text = |EXCEPTIONS| ).
      DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t63.
      IF xsdbool( xsdbool( t56 IS INITIAL ) = abap_false ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t69 TYPE REF TO zcl_lnt_issue.
      CLEAR t69.
      DATA t71 TYPE REF TO zcl_lnt_abstract_token.
      t71 = t43.
      DATA(t74) = VALUE string( ).
      DATA t75 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t82.
      DATA(t85) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t85 = t85 && |nABAP.md#omit-receiving|.
      DATA(t86) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t86->has = abap_true.
      t86->value = t85.
      t82 = t86.
      DATA t88 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t88.
      DATA t92 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t92.
      t92->load( ).
      APPEND |Styleguide| TO t92->items.
      t92->save( ).
      t92->load( ).
      APPEND |SingleFile| TO t92->items.
      t92->save( ).
      t88 = t92.
      DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t100.
      DATA(t103) = |\n      upload_pack(\n        EXPORTING\n          io_client   |.
      t103 = t103 && |    = lo_client\n          iv_url          = iv_url\n         |.
      t103 = t103 && | iv_deepen_level = iv_deepen_level\n          it_hashes      |.
      t103 = t103 && | = lt_hashes\n        RECEIVING\n          rt_objects      = e|.
      t103 = t103 && |t_objects ).|.
      DATA(t104) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t104->has = abap_true.
      t104->value = t103.
      t100 = t104.
      DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t106.
      DATA(t109) = |\n      et_objects = upload_pack(\n        io_client       = l|.
      t109 = t109 && |o_client\n        iv_url          = iv_url\n        iv_deepen_|.
      t109 = t109 && |level = iv_deepen_level\n        it_hashes       = lt_hashes |.
      t109 = t109 && |).|.
      DATA(t110) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t110->has = abap_true.
      t110->value = t109.
      t106 = t110.
      DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t112.
      DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t114.
      t75 = NEW zcl_lnt_irule_metadata( i_key = |omit_receiving| i_title = |Omit RECEIVING| i_short_description = |Omit RECEIVING| i_bad_example = t100 i_good_example = t106 i_extended_information = t82 i_tags = t88 i_pragma = t112 i_pseudo_comment = t114 ).
      CREATE OBJECT t75->zlnt_view_ownkeys_b0e8086400eb.
      t75->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t116.
      t75->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t116 ).
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
      DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t124.
      t75->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t124 ).
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t126.
      IF t75->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t75->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t126 ).
      ENDIF.
      DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t128.
      IF t75->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t75->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t128 ).
      ENDIF.
      DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t130.
      IF t75->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t75->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t130 ).
      ENDIF.
      DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t132.
      IF t75->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t75->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t132 ).
      ENDIF.
      DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t134.
      IF t75->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t75->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t134 ).
      ENDIF.
      DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t136.
      IF t75->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t75->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t136 ).
      ENDIF.
      t74 = t75->key.
      DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t137 = CAST zcl_lnt_omit_receiving_conf( me->gt_cn_in_sr_rl_om_rc_ts_om_rcv( ) )->zlnt_view_read_sr_15c06369f827( ).
      DATA t139 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t139.
      t69 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t71 i_message_26cb = |Omit RECEIVING| i_key = t74 i_severity = t137 i_fix = t139 ).
      t2->load( ).
      APPEND t69 TO t2->items.
      t2->save( ).
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_omit_receiving_conf( me->gt_cn_in_sr_rl_om_rc_ts_om_rcv( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_omit_receiving_conf( me->gt_cn_in_sr_rl_om_rc_ts_om_rcv( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_omit_receiving_conf.
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
        t1 = NEW zcl_lnt_omit_receiving_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_om_rc_ts_om_rcv( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_om_rc_ts_om_rcv( i_file = i_file ) ).

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
