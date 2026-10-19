* TS: src/rules/no_exclamation_escape.ts:12:1 NoExclamationEscape
CLASS zcl_lnt_no_exclamation_escape DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_n_exclmtn_escp_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_sr_rl_n_ex_es_ts_n_ex_es RETURNING VALUE(result) TYPE REF TO zcl_lnt_n_exclmtn_escp_cnf.
    METHODS s_c_i_sr_rl_n_ex_es_ts_n_ex_es IMPORTING i_conf TYPE REF TO zcl_lnt_n_exclmtn_escp_cnf.
    METHODS r_p_i_sr_rl_n_ex_es_ts_n_ex_es IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_no_exclamation_escape IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_n_exclmtn_escp_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Detects and removes exclamation marks (!) used to escape ide|.
    t7 = t7 && |ntifiers|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Exclamation marks are not needed when the identifier is not |.
    t11 = t11 && |a reserved keyword, or could be avoided by renaming.|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Quickfix| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t29) = |methods CONVERT changing !CO_sdf type ref to ZCL_sdf optiona|.
    t29 = t29 && |l.|.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t29.
    t26 = t30.
    DATA(t35) = |methods CONVERT changing CO_sdf type ref to ZCL_sdf optional|.
    t35 = t35 && |.|.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = t35.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |no_exclamation_escape| i_title = |No exclamation escape| i_short_description = t6 i_bad_example = t26 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
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

  METHOD g_c_i_sr_rl_n_ex_es_ts_n_ex_es.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_sr_rl_n_ex_es_ts_n_ex_es.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_sr_rl_n_ex_es_ts_n_ex_es.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    t4 = t1->get_tokens( i_with_pragmas = t6 ).
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    DATA t8 TYPE REF TO object.
    DATA(t9) = VALUE i( ).
    DO.
      t4->load( ).
      IF t9 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t4->items INDEX t9 + 1 INTO t8.
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
      IF xsdbool( t7 IS BOUND AND t7 IS INSTANCE OF zcl_lnt_lx_identifier ) = abap_true.
        DATA t14 TYPE string.
        DATA t16 TYPE REF TO zcl_lnt_abstract_token.
        DATA t17 TYPE REF TO zcl_lnt_lx_identifier.
        t17 ?= t7.
        t16 = t17.
        t14 = t16->str.
        DATA(t21) = VALUE abap_bool( ).
        DATA(t23) = |!|.
        DATA(t24) = strlen( t14 ).
        DATA t25 TYPE i.
        DATA(t26) = VALUE i( ).
        DATA(t27) = VALUE string( ).
        t25 = strlen( t23 ).
        IF t25 = 0.
          t21 = abap_true.
        ELSEIF t25 <= t24.
          t26 = 0.
          t27 = t14+t26(t25).
          IF t27 = t23.
            t21 = abap_true.
          ENDIF.
        ENDIF.
        IF t21 = abap_true.
          DATA(t28) = VALUE string( ).
          DATA t30 TYPE string.
          t30 = t14.
          DATA(t32) = VALUE string( ).
          DATA(t34) = 1.
          DATA t35 TYPE i.
          t35 = strlen( t30 ).
          DATA(t38) = strlen( t30 ).
          t34 = COND i( WHEN t34 < 0 THEN 0 WHEN t34 > t38 THEN t38 ELSE t34 ).
          t35 = COND i( WHEN t35 < 0 THEN 0 WHEN t35 > t38 THEN t38 ELSE t35 ).
          IF t34 > t35.
            t38 = t34.
            t34 = t35.
            t35 = t38.
          ENDIF.
          t38 = t35 - t34.
          t32 = t30+t34(t38).
          t28 = t32.
          DATA t40 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t42 TYPE REF TO zcl_lnt_lx_identifier.
          t42 ?= t7.
          t40 = zcl_lnt_edit_helper=>replace_token( i_file = t1 i_token = t42 i_text = t28 ).
          DATA t46 TYPE REF TO zcl_lnt_issue.
          CLEAR t46.
          DATA t48 TYPE REF TO zcl_lnt_lx_identifier.
          t48 ?= t7.
          DATA(t51) = VALUE string( ).
          DATA t52 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t52.
          DATA t57 TYPE string.
          DATA(t58) = |Detects and removes exclamation marks (!) used to escape ide|.
          t58 = t58 && |ntifiers|.
          t57 = t58.
          DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t59.
          DATA(t62) = |Exclamation marks are not needed when the identifier is not |.
          t62 = t62 && |a reserved keyword, or could be avoided by renaming.|.
          DATA(t63) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t63->has = abap_true.
          t63->value = t62.
          t59 = t63.
          DATA t65 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t65.
          DATA t69 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t69.
          t69->load( ).
          APPEND |SingleFile| TO t69->items.
          t69->save( ).
          t69->load( ).
          APPEND |Quickfix| TO t69->items.
          t69->save( ).
          t65 = t69.
          DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t77.
          DATA(t80) = |methods CONVERT changing !CO_sdf type ref to ZCL_sdf optiona|.
          t80 = t80 && |l.|.
          DATA(t81) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t81->has = abap_true.
          t81->value = t80.
          t77 = t81.
          DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t83.
          DATA(t86) = |methods CONVERT changing CO_sdf type ref to ZCL_sdf optional|.
          t86 = t86 && |.|.
          DATA(t87) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t87->has = abap_true.
          t87->value = t86.
          t83 = t87.
          DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t89.
          DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t91.
          t52 = NEW zcl_lnt_irule_metadata( i_key = |no_exclamation_escape| i_title = |No exclamation escape| i_short_description = t57 i_bad_example = t77 i_good_example = t83 i_extended_information = t59 i_tags = t65 i_pragma = t89 i_pseudo_comment = t91 ).
          CREATE OBJECT t52->zlnt_view_ownkeys_b0e8086400eb.
          t52->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t93.
          t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t93 ).
          DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t94.
          IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t94 ).
          ENDIF.
          DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t95.
          IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t95 ).
          ENDIF.
          DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t96.
          IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t96 ).
          ENDIF.
          DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t97.
          IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t97 ).
          ENDIF.
          DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t98.
          IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t98 ).
          ENDIF.
          DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t99.
          IF t52->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t52->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t99 ).
          ENDIF.
          CREATE OBJECT t52->zlnt_json_ownkeys_70e5fd461788.
          t52->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t101.
          t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t101 ).
          DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t103.
          IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t103 ).
          ENDIF.
          DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t105.
          IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t105 ).
          ENDIF.
          DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t107.
          IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t107 ).
          ENDIF.
          DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t109.
          IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t109 ).
          ENDIF.
          DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t111.
          IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t111 ).
          ENDIF.
          DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t113.
          IF t52->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t52->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t113 ).
          ENDIF.
          t51 = t52->key.
          t46 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t48 i_message_26cb = |Do not use exclamation mark to escape identifiers| i_key = t51 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t40 ).
          t2->load( ).
          APPEND t46 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_n_exclmtn_escp_cnf( me->g_c_i_sr_rl_n_ex_es_ts_n_ex_es( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_n_exclmtn_escp_cnf( me->g_c_i_sr_rl_n_ex_es_ts_n_ex_es( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_n_exclmtn_escp_cnf.
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
        t1 = NEW zcl_lnt_n_exclmtn_escp_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_sr_rl_n_ex_es_ts_n_ex_es( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_sr_rl_n_ex_es_ts_n_ex_es( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1613_f437d01b6342.
  ENDMETHOD.
ENDCLASS.
