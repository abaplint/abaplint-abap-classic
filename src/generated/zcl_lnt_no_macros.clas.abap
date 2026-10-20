* TS: src/rules/no_macros.ts:11:1 NoMacros
CLASS zcl_lnt_no_macros DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_no_macros_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rls_n_mcr_ts_n_mcr RETURNING VALUE(result) TYPE REF TO zcl_lnt_no_macros_conf.
    METHODS st_cn_in_sr_rls_n_mcr_ts_n_mcr IMPORTING i_conf TYPE REF TO zcl_lnt_no_macros_conf.
    METHODS rn_pr_in_sr_rls_n_mcr_ts_n_mcr IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_no_macros IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_no_macros_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Macros reduce readability and are difficult to debug, use me|.
    t11 = t11 && |thods or form routines instead.\n\nhttps://help.sap.com/doc/ab|.
    t11 = t11 && |apdocu_latest_index_htm/latest/en-US/abenmacros_guidl.html|.
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
    t14 = t18.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = |DEFINE _macro.\n  WRITE 'hello'.\nEND-OF-DEFINITION.|.
    t24 = t28.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = |WRITE 'hello'.|.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |no_macros| i_title = |No macros| i_short_description = |Checks that macros are not used| i_bad_example = t24 i_good_example = t34 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t38 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t46 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t48 ).
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t50 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t52 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t54 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t60 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rls_n_mcr_ts_n_mcr.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rls_n_mcr_ts_n_mcr.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rls_n_mcr_ts_n_mcr.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = t1->statements.
    DATA t9 TYPE REF TO zcl_lnt_statement_node.
    DATA t10 TYPE REF TO object.
    DATA(t11) = VALUE i( ).
    DO.
      t4->load( ).
      IF t11 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t4->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA t15 TYPE REF TO zif_lnt_statement.
      t15 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      IF xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_st_define ) = abap_true.
        DATA t18 TYPE REF TO zcl_lnt_issue.
        CLEAR t18.
        DATA(t22) = VALUE string( ).
        DATA t23 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t30.
        DATA(t33) = |Macros reduce readability and are difficult to debug, use me|.
        t33 = t33 && |thods or form routines instead.\n\nhttps://help.sap.com/doc/ab|.
        t33 = t33 && |apdocu_latest_index_htm/latest/en-US/abenmacros_guidl.html|.
        DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t34->has = abap_true.
        t34->value = t33.
        t30 = t34.
        DATA t36 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t36.
        DATA t40 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t40.
        t40->load( ).
        APPEND |SingleFile| TO t40->items.
        t40->save( ).
        t36 = t40.
        DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t46.
        DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t50->has = abap_true.
        t50->value = |DEFINE _macro.\n  WRITE 'hello'.\nEND-OF-DEFINITION.|.
        t46 = t50.
        DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t52.
        DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t56->has = abap_true.
        t56->value = |WRITE 'hello'.|.
        t52 = t56.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t58.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t60.
        t23 = NEW zcl_lnt_irule_metadata( i_key = |no_macros| i_title = |No macros| i_short_description = |Checks that macros are not used| i_bad_example = t46 i_good_example = t52 i_extended_information = t30 i_tags = t36 i_pragma = t58 i_pseudo_comment = t60 ).
        CREATE OBJECT t23->zlnt_view_ownkeys_b0e8086400eb.
        t23->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t62.
        t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t62 ).
        DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t63.
        IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t63 ).
        ENDIF.
        DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t64.
        IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t64 ).
        ENDIF.
        DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t65.
        IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t65 ).
        ENDIF.
        DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t66.
        IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t66 ).
        ENDIF.
        DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t67.
        IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t67 ).
        ENDIF.
        DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t68.
        IF t23->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t23->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t68 ).
        ENDIF.
        CREATE OBJECT t23->zlnt_json_ownkeys_70e5fd461788.
        t23->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t70.
        t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t70 ).
        DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t72.
        IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t72 ).
        ENDIF.
        DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t74.
        IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t74 ).
        ENDIF.
        DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t76.
        IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t76 ).
        ENDIF.
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t78.
        IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t78 ).
        ENDIF.
        DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t80.
        IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t80 ).
        ENDIF.
        DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t82.
        IF t23->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t23->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t82 ).
        ENDIF.
        t22 = t23->key.
        DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t83 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t85 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t85.
        DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t86.
        t18 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t9 i_message_26cb = |Do not define macros| i_key = t22 i_severity = t83 i_fix = t85 i_alternative_fixes = t86 ).
        t2->load( ).
        APPEND t18 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_no_macros_conf( me->gt_cn_in_sr_rls_n_mcr_ts_n_mcr( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_no_macros_conf( me->gt_cn_in_sr_rls_n_mcr_ts_n_mcr( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_no_macros_conf.
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
        t1 = NEW zcl_lnt_no_macros_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rls_n_mcr_ts_n_mcr( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rls_n_mcr_ts_n_mcr( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1619_81b56ad176aa.
  ENDMETHOD.
ENDCLASS.
