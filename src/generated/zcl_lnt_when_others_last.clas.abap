* TS: src/rules/when_others_last.ts:12:1 WhenOthersLast
CLASS zcl_lnt_when_others_last DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_when_others_last_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS r_p_i_s_r_wh_ot_ls_ts_wh_ot_ls IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS g_c_i_s_r_wh_ot_ls_ts_wh_ot_ls RETURNING VALUE(result) TYPE REF TO zcl_lnt_when_others_last_conf.
    METHODS s_c_i_s_r_wh_ot_ls_ts_wh_ot_ls IMPORTING i_conf TYPE REF TO zcl_lnt_when_others_last_conf.
    METHODS run_parsed REDEFINITION.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_when_others_last IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_when_others_last_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that WHEN OTHERS is placed the last within a CASE sta|.
    t7 = t7 && |tement.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t12.
    t12->load( ).
    APPEND |SingleFile| TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t22->has = abap_true.
    t22->value = |CASE bar.\n  WHEN OTHERS.\n  WHEN 2.\nENDCASE.|.
    t18 = t22.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = |CASE bar.\n  WHEN 2.\n  WHEN OTHERS.\nENDCASE.|.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |when_others_last| i_title = |WHEN OTHERS last| i_short_description = t6 i_bad_example = t18 i_good_example = t28 i_extended_information = t30 i_tags = t8 i_pragma = t32 i_pseudo_comment = t34 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t36 ).
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t41 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t43 ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t45 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t47 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t49 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t51 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t53 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    result = |WHEN OTHERS should be the last branch in a CASE statement.|.

  ENDMETHOD.

  METHOD r_p_i_s_r_wh_ot_ls_ts_wh_ot_ls.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    t4 = t1->structure.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zcl_lnt_structure_node.
    t20 = t4.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d709_9d7d29fb0565.
    t18 = t20->find_all_structures( i_type_9913 = t22 ).
    DATA t24 TYPE REF TO zcl_lnt_structure_node.
    DATA t25 TYPE REF TO object.
    DATA(t26) = VALUE i( ).
    DO.
      t18->load( ).
      IF t26 >= lines( t18->items ).
        EXIT.
      ENDIF.
      CLEAR t25.
      READ TABLE t18->items INDEX t26 + 1 INTO t25.
      t26 = t26 + 1.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      CLEAR t24.
      IF t25 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t27 ?= t25.
        DATA t28 TYPE REF TO object.
        t28 = t27->as_ref( ).
        t24 ?= t28.
      ELSE.
        t24 ?= t25.
      ENDIF.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t32) = zlnt_runtime_desc_78196487750d=>zlnt_member_d708_dde8d9743472.
      t29 = t24->find_direct_structures( i_type_9913 = t32 ).
      DATA t33 TYPE i.
      t33 = 0.
      DO.
        DATA t37 TYPE i.
        DATA t38 TYPE i.
        t29->load( ).
        t38 = lines( t29->items ).
        DATA(t40) = 1.
        t37 = t38 - t40.
        IF xsdbool( t33 < t37 ) = abap_false.
          EXIT.
        ENDIF.
        DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t41.
        DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t43.
        DATA t44 TYPE REF TO zcl_lnt_structure_node.
        CLEAR t44.
        DATA(t46) = t33.
        t46 = t46 + 1.
        DATA t47 TYPE REF TO object.
        CLEAR t47.
        t29->load( ).
        CLEAR t47.
        READ TABLE t29->items INDEX t46 INTO t47.
        DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t48.
        CLEAR t44.
        IF t47 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t48 ?= t47.
          DATA t49 TYPE REF TO object.
          t49 = t48->as_ref( ).
          t44 ?= t49.
        ELSE.
          t44 ?= t47.
        ENDIF.
        DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d679_3af40033658c.
        t43 = t44->find_direct_statements( i_type_9913 = t50 ).
        DATA t52 TYPE REF TO zcl_lnt_structure_node.
        CLEAR t52.
        DATA(t54) = t33.
        t54 = t54 + 1.
        DATA t55 TYPE REF TO object.
        CLEAR t55.
        t29->load( ).
        CLEAR t55.
        READ TABLE t29->items INDEX t54 INTO t55.
        DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t56.
        CLEAR t52.
        IF t55 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t56 ?= t55.
          DATA t57 TYPE REF TO object.
          t57 = t56->as_ref( ).
          t52 ?= t57.
        ELSE.
          t52 ?= t55.
        ENDIF.
        DATA(t58) = zlnt_runtime_desc_78196487750d=>zlnt_member_d680_7b1b0c92e5ad.
        t41 = t43->concat( p0 = t52->find_direct_statements( i_type_9913 = t58 ) ).
        DATA t60 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t60.
        DATA t61 TYPE REF TO object.
        CLEAR t61.
        DATA(t62) = VALUE i( ).
        DO.
          t41->load( ).
          IF t62 >= lines( t41->items ).
            EXIT.
          ENDIF.
          CLEAR t61.
          READ TABLE t41->items INDEX t62 + 1 INTO t61.
          t62 = t62 + 1.
          DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t63.
          CLEAR t60.
          IF t61 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t63 ?= t61.
            DATA t64 TYPE REF TO object.
            t64 = t63->as_ref( ).
            t60 ?= t64.
          ELSE.
            t60 ?= t61.
          ENDIF.
          DATA t66 TYPE REF TO zif_lnt_statement.
          t66 = t60->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          IF xsdbool( t66 IS BOUND AND t66 IS INSTANCE OF zcl_lnt_when_others ) = abap_true.
            DATA t73 TYPE REF TO zcl_lnt_position.
            t73 = t60->get_first_token( )->start.
            DATA t76 TYPE REF TO zcl_lnt_issue.
            CLEAR t76.
            DATA(t80) = VALUE string( ).
            DATA t81 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t81.
            DATA t86 TYPE string.
            DATA(t87) = |Checks that WHEN OTHERS is placed the last within a CASE sta|.
            t87 = t87 && |tement.|.
            t86 = t87.
            DATA t88 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t88.
            DATA t92 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t92.
            t92->load( ).
            APPEND |SingleFile| TO t92->items.
            t92->save( ).
            t88 = t92.
            DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t98.
            DATA(t102) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t102->has = abap_true.
            t102->value = |CASE bar.\n  WHEN OTHERS.\n  WHEN 2.\nENDCASE.|.
            t98 = t102.
            DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t104.
            DATA(t108) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t108->has = abap_true.
            t108->value = |CASE bar.\n  WHEN 2.\n  WHEN OTHERS.\nENDCASE.|.
            t104 = t108.
            DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t110.
            DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t112.
            DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t114.
            t81 = NEW zcl_lnt_irule_metadata( i_key = |when_others_last| i_title = |WHEN OTHERS last| i_short_description = t86 i_bad_example = t98 i_good_example = t104 i_extended_information = t110 i_tags = t88 i_pragma = t112 i_pseudo_comment = t114 ).
            CREATE OBJECT t81->zlnt_view_ownkeys_b0e8086400eb.
            t81->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t116.
            t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t116 ).
            DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t117.
            IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t117 ).
            ENDIF.
            DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t118.
            IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t118 ).
            ENDIF.
            DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t119.
            IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t119 ).
            ENDIF.
            DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t120.
            IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t120 ).
            ENDIF.
            DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t121.
            IF t81->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t121 ).
            ENDIF.
            CREATE OBJECT t81->zlnt_json_ownkeys_70e5fd461788.
            t81->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t123.
            t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t123 ).
            DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t125.
            IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t125 ).
            ENDIF.
            DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t127.
            IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t127 ).
            ENDIF.
            DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t129.
            IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t129 ).
            ENDIF.
            DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t131.
            IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t131 ).
            ENDIF.
            DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t133.
            IF t81->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t133 ).
            ENDIF.
            t80 = t81->key.
            DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t134 = me->conf->zlnt_view_read_sr_15c06369f827( ).
            DATA t136 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t136.
            t76 = zcl_lnt_issue=>at_position( i_file = t1 i_start = t73 i_message_26cb = |WHEN OTHERS should be the last branch in a CASE statement.| i_key = t80 i_severity = t134 i_fix = t136 ).
            t2->load( ).
            APPEND t76 TO t2->items.
            t2->save( ).
          ENDIF.
        ENDDO.
        DATA(t141) = 1.
        t33 = t33 + t141.
      ENDDO.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD g_c_i_s_r_wh_ot_ls_ts_wh_ot_ls.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_wh_ot_ls_ts_wh_ot_ls.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_wh_ot_ls_ts_wh_ot_ls( i_file = i_file ) ).

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_when_others_last_conf( me->g_c_i_s_r_wh_ot_ls_ts_wh_ot_ls( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_when_others_last_conf( me->g_c_i_s_r_wh_ot_ls_ts_wh_ot_ls( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_when_others_last_conf.
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
        t1 = NEW zcl_lnt_when_others_last_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_wh_ot_ls_ts_wh_ot_ls( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1773_77e382a8afbc.
  ENDMETHOD.
ENDCLASS.
