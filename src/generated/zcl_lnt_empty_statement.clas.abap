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
    me->conf = NEW zcl_lnt_empty_statement_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for empty statements (an empty statement is a single |.
    t7 = t7 && |dot)|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t12.
    t12->load( ).
    APPEND |Quickfix| TO t12->items.
    t12->save( ).
    t12->load( ).
    APPEND |SingleFile| TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t24->has = abap_true.
    t24->value = |WRITE 'hello world'..|.
    t20 = t24.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = |WRITE 'hello world'.|.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |empty_statement| i_title = |Remove empty statement| i_short_description = t6 i_bad_example = t20 i_good_example = t30 i_extended_information = t32 i_tags = t8 i_pragma = t34 i_pseudo_comment = t36 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t38 ).
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t43 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t45 ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t47 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t49 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t51 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t53 ).
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t55 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_em_st_ts_em_stt.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_em_st_ts_em_stt.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_em_st_ts_em_stt.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = t1->statements.
    DATA t10 TYPE REF TO zcl_lnt_position.
    DATA(t14) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t14->has = abap_true.
    t14->value = CONV f( 1 ).
    t10 = NEW zcl_lnt_position( i_row = CONV f( 1 ) i_col = t14 ).
    DATA t16 TYPE REF TO zcl_lnt_statement_node.
    DATA t17 TYPE REF TO object.
    DATA(t18) = VALUE i( ).
    DO.
      t4->load( ).
      IF t18 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t17.
      READ TABLE t4->items INDEX t18 + 1 INTO t17.
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
      DATA t22 TYPE REF TO zif_lnt_statement.
      t22 = t16->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      IF xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_empty ) = abap_true.
        DATA t28 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t32 TYPE REF TO zcl_lnt_abstract_token.
        t32 = t16->get_first_token( ).
        DATA t35 TYPE f.
        t35 = t32->start->row.
        DATA t42 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t42 = t32->start->col.
        DATA t48 TYPE f.
        t48 = strlen( t32->str ).
        DATA(t53) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t53->has = abap_true.
        t53->value = t48.
        t28 = zcl_lnt_edit_helper=>delete_range( i_file = t1 i_start = t10 i_end = NEW zcl_lnt_position( i_row = t35 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t42 right = t53 op = `+` ) ) ).
        DATA t55 TYPE REF TO zcl_lnt_issue.
        CLEAR t55.
        DATA(t59) = VALUE string( ).
        DATA t60 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t65 TYPE string.
        DATA(t66) = |Checks for empty statements (an empty statement is a single |.
        t66 = t66 && |dot)|.
        t65 = t66.
        DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t67.
        DATA t71 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t71.
        t71->load( ).
        APPEND |Quickfix| TO t71->items.
        t71->save( ).
        t71->load( ).
        APPEND |SingleFile| TO t71->items.
        t71->save( ).
        t67 = t71.
        DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t79.
        DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t83->has = abap_true.
        t83->value = |WRITE 'hello world'..|.
        t79 = t83.
        DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t85.
        DATA(t89) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t89->has = abap_true.
        t89->value = |WRITE 'hello world'.|.
        t85 = t89.
        DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t91.
        DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t93.
        DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t95.
        t60 = NEW zcl_lnt_irule_metadata( i_key = |empty_statement| i_title = |Remove empty statement| i_short_description = t65 i_bad_example = t79 i_good_example = t85 i_extended_information = t91 i_tags = t67 i_pragma = t93 i_pseudo_comment = t95 ).
        CREATE OBJECT t60->zlnt_view_ownkeys_b0e8086400eb.
        t60->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t97.
        t60->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t97 ).
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
        DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t104.
        t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t104 ).
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t106 ).
        ENDIF.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t108.
        IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t108 ).
        ENDIF.
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t110.
        IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t110 ).
        ENDIF.
        DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t112.
        IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t112 ).
        ENDIF.
        DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t114.
        IF t60->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t60->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t114 ).
        ENDIF.
        t59 = t60->key.
        DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t115 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t117 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t117.
        t117 = t28.
        DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t121.
        t55 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t16 i_message_26cb = |Remove empty statement| i_key = t59 i_severity = t115 i_fix = t117 i_alternative_fixes = t121 ).
        t2->load( ).
        APPEND t55 TO t2->items.
        t2->save( ).
      ENDIF.
      DATA t125 TYPE REF TO zcl_lnt_abstract_token.
      t125 = t16->get_last_token( ).
      DATA t129 TYPE f.
      t129 = t125->start->row.
      DATA t136 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t136 = t125->start->col.
      DATA t142 TYPE f.
      t142 = strlen( t125->str ).
      DATA(t147) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t147->has = abap_true.
      t147->value = t142.
      t10 = NEW zcl_lnt_position( i_row = t129 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t136 right = t147 op = `+` ) ).
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_empty_statement_conf( me->gt_cn_in_sr_rl_em_st_ts_em_stt( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_empty_statement_conf( me->gt_cn_in_sr_rl_em_st_ts_em_stt( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_empty_statement_conf.
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
        t1 = NEW zcl_lnt_empty_statement_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_em_st_ts_em_stt( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_em_st_ts_em_stt( i_file = i_file ) ).

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
