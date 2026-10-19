* TS: src/rules/forbidden_identifier.ts:17:1 ForbiddenIdentifier
CLASS zcl_lnt_forbidden_identifier DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_frbddn_idntfr_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_fr_id_ts_fr_idn RETURNING VALUE(result) TYPE REF TO zcl_lnt_frbddn_idntfr_cnf.
    METHODS st_cn_in_sr_rl_fr_id_ts_fr_idn IMPORTING i_conf TYPE REF TO zcl_lnt_frbddn_idntfr_cnf.
    METHODS rn_pr_in_sr_rl_fr_id_ts_fr_idn IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS traverse IMPORTING i_node TYPE REF TO zif_lnt_node i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_bf6e IMPORTING i_token TYPE REF TO zcl_lnt_abstract_token i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_forbidden_identifier IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_frbddn_idntfr_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Used in the transpiler to find javascript keywords in ABAP i|.
    t11 = t11 && |dentifiers,\nhttps://github.com/abaplint/transpiler/blob/bda9|.
    t11 = t11 && |4b8b56e2b7f2f87be2168f12361aa530220e/packages/transpiler/src|.
    t11 = t11 && |/validation.ts#L44|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |forbidden_identifier| i_title = |Forbidden Identifier| i_short_description = |Forbid use of specified identifiers, list of regex.| i_bad_example = t24 i_good_example = t26 i_extended_information = t8 i_tags = t18 i_pragma = t28 i_pseudo_comment = t30 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t32 ).
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t33 ).
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t36 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t38 ).
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t40 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t42 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t44 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t46 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_fr_id_ts_fr_idn.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_fr_id_ts_fr_idn.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t5 = me->conf->zlnt_view_read_sr_6120f6e2490c( ).
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t5 IS INITIAL ) = abap_true.
      DATA(t11) = me->conf.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t12.
      t11->zlnt_view_write_s_c44fd5c5d977( p0 = t12 ).
    ENDIF.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_fr_id_ts_fr_idn.
    DATA(t1) = i_file.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t4 = me->conf->zlnt_view_read_sr_6120f6e2490c( ).
    t4->load( ).
    IF xsdbool( lines( t4->items ) = 0 ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t8.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t10 = t1->statements.
    DATA t15 TYPE REF TO zcl_lnt_statement_node.
    DATA t16 TYPE REF TO object.
    DATA(t17) = VALUE i( ).
    DO.
      t10->load( ).
      IF t17 >= lines( t10->items ).
        EXIT.
      ENDIF.
      CLEAR t16.
      READ TABLE t10->items INDEX t17 + 1 INTO t16.
      t17 = t17 + 1.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      CLEAR t15.
      IF t16 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t18 ?= t16.
        DATA t19 TYPE REF TO object.
        t19 = t18->as_ref( ).
        t15 ?= t19.
      ELSE.
        t15 ?= t16.
      ENDIF.
      t8 = t8->concat( p0 = me->traverse( i_node = t15 i_file = t1 ) ).
    ENDDO.
    result = t8.

  ENDMETHOD.

  METHOD traverse.
    DATA(t1) = i_node.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t5 = t1->get_children( ).
    DATA t7 TYPE REF TO zif_lnt_node.
    DATA t8 TYPE REF TO object.
    DATA(t9) = VALUE i( ).
    DO.
      t5->load( ).
      IF t9 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t5->items INDEX t9 + 1 INTO t8.
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
      IF xsdbool( t7 IS BOUND AND t7 IS INSTANCE OF zcl_lnt_token_node_regex ) = abap_true.
        DATA t17 TYPE REF TO zcl_lnt_abstract_token.
        DATA t18 TYPE REF TO object.
        DATA t19 TYPE REF TO zcl_lnt_token_node_regex.
        DATA t21 TYPE REF TO object.
        t21 = t7.
        t19 ?= t21.
        t18 = t19->get_db65( ).
        t17 ?= t18.
        t3 = t3->concat( p0 = me->check_bf6e( i_token = t17 i_file = t2 ) ).
      ELSE.
        IF xsdbool( t7 IS BOUND AND t7 IS INSTANCE OF zcl_lnt_token_node ) = abap_true.
          CONTINUE.
        ELSE.
          t3 = t3->concat( p0 = me->traverse( i_node = t7 i_file = t2 ) ).
        ENDIF.
      ENDIF.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD check_bf6e.
    DATA(t1) = i_token.
    DATA(t2) = i_file.
    DATA t3 TYPE string.
    t3 = t1->str.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t11 = me->conf->zlnt_view_read_sr_6120f6e2490c( ).
    DATA(t13) = VALUE string( ).
    t11->dense( ).
    DATA(t14) = VALUE i( ).
    DO.
      t11->load( ).
      IF t14 >= lines( t11->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t11->items INDEX t14 + 1 INTO t13.
      IF t11->has( t14 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t14 = t14 + 1.
      DATA t16 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t16.
      CREATE OBJECT t16 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t13 flags = |i|.
      IF t16->test( p0 = t3 ) = abap_true.
        DATA t23 TYPE string.
        DATA t24 TYPE string.
        DATA(t25) = |Identifer "|.
        DATA(t27) = strlen( t25 ).
        t24 = |{ t25 }{ t3 }|.
        DATA(t29) = strlen( t24 ).
        t23 = |{ t24 }{ |" not allowed| }|.
        DATA t31 TYPE REF TO zcl_lnt_issue.
        CLEAR t31.
        DATA(t35) = VALUE string( ).
        DATA t36 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t36.
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t43.
        DATA(t46) = |Used in the transpiler to find javascript keywords in ABAP i|.
        t46 = t46 && |dentifiers,\nhttps://github.com/abaplint/transpiler/blob/bda9|.
        t46 = t46 && |4b8b56e2b7f2f87be2168f12361aa530220e/packages/transpiler/src|.
        t46 = t46 && |/validation.ts#L44|.
        DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t47->has = abap_true.
        t47->value = t46.
        t43 = t47.
        DATA t49 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t49.
        DATA t53 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t53.
        t53->load( ).
        APPEND |SingleFile| TO t53->items.
        t53->save( ).
        t49 = t53.
        DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t59.
        DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t61.
        DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t63.
        DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t65.
        t36 = NEW zcl_lnt_irule_metadata( i_key = |forbidden_identifier| i_title = |Forbidden Identifier| i_short_description = |Forbid use of specified identifiers, list of regex.| i_bad_example = t59 i_good_example = t61 i_extended_information = t43 i_tags = t49 i_pragma = t63 i_pseudo_comment = t65 ).
        CREATE OBJECT t36->zlnt_view_ownkeys_b0e8086400eb.
        t36->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t67.
        t36->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t67 ).
        DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t68.
        IF t36->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t36->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t68 ).
        ENDIF.
        DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t69.
        IF t36->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t36->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t69 ).
        ENDIF.
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t70.
        IF t36->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t36->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t70 ).
        ENDIF.
        DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t71.
        IF t36->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t36->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t71 ).
        ENDIF.
        CREATE OBJECT t36->zlnt_json_ownkeys_70e5fd461788.
        t36->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t73.
        t36->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t73 ).
        DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t75.
        IF t36->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t36->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t75 ).
        ENDIF.
        DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t77.
        IF t36->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t36->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t77 ).
        ENDIF.
        DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t79.
        IF t36->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t36->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t79 ).
        ENDIF.
        DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t81.
        IF t36->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t36->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t81 ).
        ENDIF.
        t35 = t36->key.
        DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t82 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t84 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t84.
        t31 = zcl_lnt_issue=>at_token( i_file = t2 i_token = t1 i_message_26cb = t23 i_key = t35 i_severity = t82 i_fix = t84 ).
        t9->load( ).
        APPEND t31 TO t9->items.
        t9->save( ).
      ENDIF.
    ENDDO.
    result = t9.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_frbddn_idntfr_cnf( me->gt_cn_in_sr_rl_fr_id_ts_fr_idn( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_frbddn_idntfr_cnf( me->gt_cn_in_sr_rl_fr_id_ts_fr_idn( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_frbddn_idntfr_cnf.
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
        t1 = NEW zcl_lnt_frbddn_idntfr_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_fr_id_ts_fr_idn( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_fr_id_ts_fr_idn( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1506_3ad9b6fd14bd.
  ENDMETHOD.
ENDCLASS.
