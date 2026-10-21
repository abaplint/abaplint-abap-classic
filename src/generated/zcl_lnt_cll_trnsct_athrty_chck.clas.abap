* TS: src/rules/call_transaction_authority_check.ts:12:1 CallTransactionAuthorityCheck
CLASS zcl_lnt_cll_trnsct_athrty_chck DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_cll_trns_athr_chck_cnf.
    DATA minimum_version TYPE REF TO zcl_lnt_abap_release.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_c_t_a_c_t_c_tr_at_ch RETURNING VALUE(result) TYPE REF TO zcl_lnt_cll_trns_athr_chck_cnf.
    METHODS s_c_i_s_r_c_t_a_c_t_c_tr_at_ch IMPORTING i_conf TYPE REF TO zcl_lnt_cll_trns_athr_chck_cnf.
    METHODS run_parsed REDEFINITION.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cll_trnsct_athrty_chck IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_cll_trns_athr_chck_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    me->minimum_version = zcl_lnt_version_module=>release_b8cd->get( p0 = |v740sp02| ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `MINIMUM_VERSION`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that usages of CALL TRANSACTION contain an authority-|.
    t7 = t7 && |check.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = |https://docs.abapopenchecks.org/checks/54/|.
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
    t18->load( ).
    APPEND |Security| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = |CALL TRANSACTION 'FOO'.|.
    t28 = t32.
    DATA(t37) = |TRY.\n    CALL TRANSACTION 'FOO' WITH AUTHORITY-CHECK.\n  CATC|.
    t37 = t37 && |H cx_sy_authorization_error.\nENDTRY.|.
    DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t38->has = abap_true.
    t38->value = t37.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |call_transaction_authority_check| i_title = |Call Transaction Authority-Check| i_short_description = t6 i_bad_example = t28 i_good_example = t38 i_extended_information = t8 i_tags = t14 i_pragma = t40 i_pseudo_comment = t42 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t44 ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t50 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t52 ).
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t54 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t60 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t62 ).
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t64 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    result = |Add an authority check to CALL TRANSACTION|.

  ENDMETHOD.

  METHOD g_c_i_s_r_c_t_a_c_t_c_tr_at_ch.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_c_t_a_c_t_c_tr_at_ch.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    DATA t6 TYPE REF TO zcl_lnt_abap_release.
    t6 = me->reg->get_config( )->get_release( ).
    DATA(t9) = me->minimum_version.
    t4 = xsdbool( zcl_lnt_version_module=>release_at_least( i_running = t6 i_required = t9 ) = abap_false ).
    t3 = t4.
    IF t4 = abap_false.
      DATA t11 TYPE string.
      t11 = me->reg->get_config( )->get_language_version( ).
      t3 = xsdbool( t11 = |Cloud| ).
    ENDIF.
    IF t3 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t16.
    IF xsdbool( t2->get_type( ) = |INTF| ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t23 = t1->statements.
    DATA t28 TYPE REF TO zcl_lnt_statement_node.
    DATA t29 TYPE REF TO object.
    DATA(t30) = VALUE i( ).
    DO.
      t23->load( ).
      IF t30 >= lines( t23->items ).
        EXIT.
      ENDIF.
      CLEAR t29.
      READ TABLE t23->items INDEX t30 + 1 INTO t29.
      t30 = t30 + 1.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      CLEAR t28.
      IF t29 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t31 ?= t29.
        DATA t32 TYPE REF TO object.
        t32 = t31->as_ref( ).
        t28 ?= t32.
      ELSE.
        t28 ?= t29.
      ENDIF.
      DATA t33 TYPE REF TO zif_lnt_statement.
      t33 = t28->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      DATA t36 TYPE abap_bool.
      DATA t37 TYPE abap_bool.
      t37 = xsdbool( t33 IS BOUND AND t33 IS INSTANCE OF zcl_lnt_st_call_transaction ).
      t36 = t37.
      IF t37 = abap_true.
        DATA(t41) = VALUE i( ).
        DATA t42 TYPE string.
        DATA t43 TYPE string.
        t43 = t28->cnct_tkns_wtht_strng_and_cmmnt( ).
        DATA(t45) = strlen( t43 ).
        t42 = t43.
        IF t42 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t42 TO UPPER CASE.
        ELSE.
          t42 = zlnt_runtime_uppe_91169605024d=>full( t42 ).
        ENDIF.
        DATA(t46) = |WITH AUTHORITY-CHECK|.
        DATA(t47) = strlen( t42 ).
        IF t46 IS INITIAL.
          t41 = 0.
        ELSE.
          FIND t46 IN t42 MATCH OFFSET t41.
          IF sy-subrc <> 0.
            t41 = -1.
          ENDIF.
        ENDIF.
        t36 = xsdbool( xsdbool( t41 >= 0 ) = abap_false ).
      ENDIF.
      IF t36 = abap_true.
        DATA t50 TYPE REF TO zcl_lnt_issue.
        CLEAR t50.
        DATA(t54) = VALUE string( ).
        DATA t55 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t60 TYPE string.
        DATA(t61) = |Checks that usages of CALL TRANSACTION contain an authority-|.
        t61 = t61 && |check.|.
        t60 = t61.
        DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t62.
        DATA(t66) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t66->has = abap_true.
        t66->value = |https://docs.abapopenchecks.org/checks/54/|.
        t62 = t66.
        DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t68.
        DATA t72 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t72.
        t72->load( ).
        APPEND |Styleguide| TO t72->items.
        t72->save( ).
        t72->load( ).
        APPEND |SingleFile| TO t72->items.
        t72->save( ).
        t72->load( ).
        APPEND |Security| TO t72->items.
        t72->save( ).
        t68 = t72.
        DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t82.
        DATA(t86) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t86->has = abap_true.
        t86->value = |CALL TRANSACTION 'FOO'.|.
        t82 = t86.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t88.
        DATA(t91) = |TRY.\n    CALL TRANSACTION 'FOO' WITH AUTHORITY-CHECK.\n  CATC|.
        t91 = t91 && |H cx_sy_authorization_error.\nENDTRY.|.
        DATA(t92) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t92->has = abap_true.
        t92->value = t91.
        t88 = t92.
        DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t94.
        DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t96.
        t55 = NEW zcl_lnt_irule_metadata( i_key = |call_transaction_authority_check| i_title = |Call Transaction Authority-Check| i_short_description = t60 i_bad_example = t82 i_good_example = t88 i_extended_information = t62 i_tags = t68 i_pragma = t94 i_pseudo_comment = t96 ).
        CREATE OBJECT t55->zlnt_view_ownkeys_b0e8086400eb.
        t55->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t98.
        t55->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t98 ).
        DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t99.
        IF t55->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t55->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t99 ).
        ENDIF.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t100.
        IF t55->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t55->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t100 ).
        ENDIF.
        DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t101.
        IF t55->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t55->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t101 ).
        ENDIF.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        IF t55->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t55->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t102 ).
        ENDIF.
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t103.
        IF t55->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t55->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t103 ).
        ENDIF.
        DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t104.
        IF t55->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t55->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t104 ).
        ENDIF.
        CREATE OBJECT t55->zlnt_json_ownkeys_70e5fd461788.
        t55->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        t55->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t106 ).
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t108.
        IF t55->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t55->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t108 ).
        ENDIF.
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t110.
        IF t55->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t55->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t110 ).
        ENDIF.
        DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t112.
        IF t55->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t55->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t112 ).
        ENDIF.
        DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t114.
        IF t55->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t55->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t114 ).
        ENDIF.
        DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t116.
        IF t55->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t55->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t116 ).
        ENDIF.
        DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t118.
        IF t55->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t55->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t118 ).
        ENDIF.
        t54 = t55->key.
        DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t119 = CAST zcl_lnt_cll_trns_athr_chck_cnf( me->g_c_i_s_r_c_t_a_c_t_c_tr_at_ch( ) )->zlnt_view_read_sr_15c06369f827( ).
        DATA t121 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t121.
        DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t122.
        t50 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t28 i_message_26cb = |Add an authority check to CALL TRANSACTION| i_key = t54 i_severity = t119 i_fix = t121 i_alternative_fixes = t122 ).
        t16->load( ).
        APPEND t50 TO t16->items.
        t16->save( ).
      ENDIF.
    ENDDO.
    result = t16.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_cll_trns_athr_chck_cnf( me->g_c_i_s_r_c_t_a_c_t_c_tr_at_ch( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_cll_trns_athr_chck_cnf( me->g_c_i_s_r_c_t_a_c_t_c_tr_at_ch( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_cll_trns_athr_chck_cnf.
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
        t1 = NEW zcl_lnt_cll_trns_athr_chck_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_c_t_a_c_t_c_tr_at_ch( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1412_36b5ee023dfc.
  ENDMETHOD.
ENDCLASS.
