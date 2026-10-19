* TS: src/rules/macro_naming.ts:16:1 MacroNaming
CLASS zcl_lnt_macro_naming DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_macro_naming_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_mc_nm_ts_mc_nmn RETURNING VALUE(result) TYPE REF TO zcl_lnt_macro_naming_conf.
    METHODS st_cn_in_sr_rl_mc_nm_ts_mc_nmn IMPORTING i_conf TYPE REF TO zcl_lnt_macro_naming_conf.
    METHODS run_parsed REDEFINITION.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_macro_naming IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_macro_naming_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = |Use rule "avoid_use" to avoid macros altogether.|.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Naming| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = |DEFINE something.\nEND-OF-DEFINITION.|.
    t26 = t30.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = |DEFINE _something.\nEND-OF-DEFINITION.|.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |macro_naming| i_title = |Macro naming conventions| i_short_description = |Allows you to enforce a pattern for macro definitions| i_bad_example = t26 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
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

  METHOD gt_cn_in_sr_rl_mc_nm_ts_mc_nmn.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_mc_nm_ts_mc_nmn.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t5 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = me->conf->zlnt_view_read_sr_9e75020a19aa( ) flags = |i|.
    IF xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_ob_type_pool ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t13 = t1->statements.
    DATA t18 TYPE REF TO zcl_lnt_statement_node.
    DATA t19 TYPE REF TO object.
    DATA(t20) = VALUE i( ).
    DO.
      t13->load( ).
      IF t20 >= lines( t13->items ).
        EXIT.
      ENDIF.
      CLEAR t19.
      READ TABLE t13->items INDEX t20 + 1 INTO t19.
      t20 = t20 + 1.
      DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t21.
      CLEAR t18.
      IF t19 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t21 ?= t19.
        DATA t22 TYPE REF TO object.
        t22 = t21->as_ref( ).
        t18 ?= t22.
      ELSE.
        t18 ?= t19.
      ENDIF.
      DATA t25 TYPE REF TO zif_lnt_statement.
      t25 = t18->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      IF xsdbool( xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_st_define ) = abap_false ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d214_4a4b8612d221.
      t27 = t18->find_direct_expression( i_type_9913 = t30 ).
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      IF xsdbool( t27 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t38 TYPE REF TO zcl_lnt_abstract_token.
      t38 = t27->get_first_token( ).
      DATA t44 TYPE string.
      t44 = t38->str.
      IF t5->test( p0 = t44 ) = abap_true.
        CONTINUE.
      ELSE.
        DATA t50 TYPE string.
        DATA t51 TYPE string.
        DATA t52 TYPE string.
        DATA t53 TYPE string.
        DATA(t54) = |Bad macro name naming, expected "|.
        DATA t55 TYPE string.
        t55 = me->conf->zlnt_view_read_sr_9e75020a19aa( ).
        DATA(t57) = strlen( t54 ).
        t53 = |{ t54 }{ t55 }|.
        DATA(t59) = strlen( t53 ).
        t52 = |{ t53 }{ |", got "| }|.
        DATA t60 TYPE string.
        t60 = t38->str.
        DATA(t65) = strlen( t52 ).
        t51 = |{ t52 }{ t60 }|.
        DATA(t67) = strlen( t51 ).
        t50 = |{ t51 }{ |"| }|.
        DATA t69 TYPE REF TO zcl_lnt_issue.
        CLEAR t69.
        DATA(t73) = VALUE string( ).
        DATA t74 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t74.
        DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t81.
        DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t85->has = abap_true.
        t85->value = |Use rule "avoid_use" to avoid macros altogether.|.
        t81 = t85.
        DATA t87 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t87.
        DATA t91 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t91.
        t91->load( ).
        APPEND |Naming| TO t91->items.
        t91->save( ).
        t91->load( ).
        APPEND |SingleFile| TO t91->items.
        t91->save( ).
        t87 = t91.
        DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t99.
        DATA(t103) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t103->has = abap_true.
        t103->value = |DEFINE something.\nEND-OF-DEFINITION.|.
        t99 = t103.
        DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t105.
        DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t109->has = abap_true.
        t109->value = |DEFINE _something.\nEND-OF-DEFINITION.|.
        t105 = t109.
        DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t111.
        DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t113.
        t74 = NEW zcl_lnt_irule_metadata( i_key = |macro_naming| i_title = |Macro naming conventions| i_short_description = |Allows you to enforce a pattern for macro definitions| i_bad_example = t99 i_good_example = t105 i_extended_information = t81 i_tags = t87 i_pragma = t111 i_pseudo_comment = t113 ).
        CREATE OBJECT t74->zlnt_view_ownkeys_b0e8086400eb.
        t74->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t115.
        t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t115 ).
        DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t116.
        IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t116 ).
        ENDIF.
        DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t117.
        IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t117 ).
        ENDIF.
        DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t118.
        IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t118 ).
        ENDIF.
        DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t119.
        IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t119 ).
        ENDIF.
        DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t120.
        IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t120 ).
        ENDIF.
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t121.
        IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t121 ).
        ENDIF.
        CREATE OBJECT t74->zlnt_json_ownkeys_70e5fd461788.
        t74->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t123.
        t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t123 ).
        DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t125.
        IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t125 ).
        ENDIF.
        DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t127.
        IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t127 ).
        ENDIF.
        DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t129.
        IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t129 ).
        ENDIF.
        DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t131.
        IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t131 ).
        ENDIF.
        DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t133.
        IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t133 ).
        ENDIF.
        DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t135.
        IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t135 ).
        ENDIF.
        t73 = t74->key.
        DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t136 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t138 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t138.
        t69 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t38 i_message_26cb = t50 i_key = t73 i_severity = t136 i_fix = t138 ).
        t3->load( ).
        APPEND t69 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_macro_naming_conf( me->gt_cn_in_sr_rl_mc_nm_ts_mc_nmn( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_macro_naming_conf( me->gt_cn_in_sr_rl_mc_nm_ts_mc_nmn( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_macro_naming_conf.
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
        t1 = NEW zcl_lnt_macro_naming_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_mc_nm_ts_mc_nmn( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1573_992fcd7fda56.
  ENDMETHOD.
ENDCLASS.
