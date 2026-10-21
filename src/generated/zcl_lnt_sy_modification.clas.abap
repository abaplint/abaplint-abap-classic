* TS: src/rules/sy_modification.ts:12:1 SyModification
CLASS zcl_lnt_sy_modification DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_sy_modification_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_sy_md_ts_sy_mdf RETURNING VALUE(result) TYPE REF TO zcl_lnt_sy_modification_conf.
    METHODS st_cn_in_sr_rl_sy_md_ts_sy_mdf IMPORTING i_conf TYPE REF TO zcl_lnt_sy_modification_conf.
    METHODS run_parsed REDEFINITION.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_modification IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_sy_modification_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
    t11 = t11 && |-US/abensystem_fields.html\n\nChanges to SY-TVAR* fields are n|.
    t11 = t11 && |ot reported\n\nModification of SY fields is not allwed in ABAP|.
    t11 = t11 && | Cloud language version,\nhttps://help.sap.com/doc/abapdocu_c|.
    t11 = t11 && |p_index_htm/CLOUD/en-US/ABENSYSTEM_FIELDS.html|.
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
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = |sy-uname = 2.\nsy = sy.|.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |sy_modification| i_title = |Modification of SY fields| i_short_description = |Finds modification of sy fields| i_bad_example = t28 i_good_example = t30 i_extended_information = t8 i_tags = t14 i_pragma = t32 i_pseudo_comment = t34 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t41 ).
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
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t49 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t51 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t53 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_sy_md_ts_sy_mdf.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_sy_md_ts_sy_mdf.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    IF xsdbool( t2->get_type( ) = |INTF| ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t13 TYPE REF TO zcl_lnt_structure_node.
    t13 = t1->structure.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t13 IS INITIAL ) = abap_true.
    ELSE.
      DATA t24 TYPE REF TO zcl_lnt_structure_node.
      t24 = t13.
      DATA(t26) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
      t19 = t24->find_all_expressions( i_type_9913 = t26 ).
    ENDIF.
    t11 = t19.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t11 IS BOUND ) = abap_true.
      t27 = t11.
    ELSE.
      CREATE OBJECT t27.
    ENDIF.
    t10 = t27.
    DATA t33 TYPE REF TO zcl_lnt_expression_node.
    DATA t34 TYPE REF TO object.
    DATA(t35) = VALUE i( ).
    DO.
      t10->load( ).
      IF t35 >= lines( t10->items ).
        EXIT.
      ENDIF.
      CLEAR t34.
      READ TABLE t10->items INDEX t35 + 1 INTO t34.
      t35 = t35 + 1.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t36.
      CLEAR t33.
      IF t34 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t36 ?= t34.
        DATA t37 TYPE REF TO object.
        t37 = t36->as_ref( ).
        t33 ?= t37.
      ELSE.
        t33 ?= t34.
      ENDIF.
      DATA t38 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t38.
      DATA t39 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t39.
      DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t42 TYPE REF TO zcl_lnt_abstract_node.
      t42 = t33.
      t40 ?= t42->children.
      DATA t46 TYPE REF TO object.
      CLEAR t46.
      t40->load( ).
      CLEAR t46.
      READ TABLE t40->items INDEX 1 INTO t46.
      DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t47.
      CLEAR t39.
      IF t46 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t47 ?= t46.
        DATA t48 TYPE REF TO object.
        t48 = t47->as_ref( ).
        t39 ?= t48.
      ELSE.
        t39 ?= t46.
      ENDIF.
      t38 = t39.
      DATA t49 TYPE abap_bool.
      DATA t50 TYPE abap_bool.
      DATA t51 TYPE REF TO object.
      t51 = t38->get_db65( ).
      t50 = xsdbool( t51 IS BOUND AND t51 IS INSTANCE OF zcl_lnt_target_field ).
      t49 = t50.
      IF t50 = abap_true.
        DATA t54 TYPE string.
        DATA t55 TYPE string.
        t55 = t38->get_first_token( )->str.
        DATA(t61) = strlen( t55 ).
        t54 = t55.
        IF t54 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t54 TO UPPER CASE.
        ELSE.
          t54 = zlnt_runtime_uppe_91169605024d=>full( t54 ).
        ENDIF.
        t49 = xsdbool( t54 = |SY| ).
      ENDIF.
      IF t49 = abap_true.
        DATA(t63) = VALUE abap_bool( ).
        DATA t64 TYPE string.
        DATA t65 TYPE string.
        t65 = t33->concat_tokens( ).
        DATA(t67) = strlen( t65 ).
        t64 = t65.
        IF t64 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t64 TO UPPER CASE.
        ELSE.
          t64 = zlnt_runtime_uppe_91169605024d=>full( t64 ).
        ENDIF.
        DATA(t68) = |SY-TVAR|.
        DATA(t69) = strlen( t64 ).
        DATA t70 TYPE i.
        DATA(t71) = VALUE i( ).
        DATA(t72) = VALUE string( ).
        t70 = strlen( t68 ).
        IF t70 = 0.
          t63 = abap_true.
        ELSEIF t70 <= t69.
          t71 = 0.
          t72 = t64+t71(t70).
          IF t72 = t68.
            t63 = abap_true.
          ENDIF.
        ENDIF.
        IF t63 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t76 TYPE REF TO zcl_lnt_issue.
        CLEAR t76.
        DATA t78 TYPE REF TO zcl_lnt_abstract_token.
        t78 = t38->get_first_token( ).
        DATA(t81) = VALUE string( ).
        DATA t82 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t89.
        DATA(t92) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
        t92 = t92 && |-US/abensystem_fields.html\n\nChanges to SY-TVAR* fields are n|.
        t92 = t92 && |ot reported\n\nModification of SY fields is not allwed in ABAP|.
        t92 = t92 && | Cloud language version,\nhttps://help.sap.com/doc/abapdocu_c|.
        t92 = t92 && |p_index_htm/CLOUD/en-US/ABENSYSTEM_FIELDS.html|.
        DATA(t93) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t93->has = abap_true.
        t93->value = t92.
        t89 = t93.
        DATA t95 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t95.
        DATA t99 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t99.
        t99->load( ).
        APPEND |SingleFile| TO t99->items.
        t99->save( ).
        t95 = t99.
        DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t105.
        DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t109->has = abap_true.
        t109->value = |sy-uname = 2.\nsy = sy.|.
        t105 = t109.
        DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t111.
        DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t113.
        DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t115.
        t82 = NEW zcl_lnt_irule_metadata( i_key = |sy_modification| i_title = |Modification of SY fields| i_short_description = |Finds modification of sy fields| i_bad_example = t105 i_good_example = t111 i_extended_information = t89 i_tags = t95 i_pragma = t113 i_pseudo_comment = t115 ).
        CREATE OBJECT t82->zlnt_view_ownkeys_b0e8086400eb.
        t82->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t117.
        t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t117 ).
        DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t118.
        IF t82->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t118 ).
        ENDIF.
        DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t119.
        IF t82->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t119 ).
        ENDIF.
        DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t120.
        IF t82->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t120 ).
        ENDIF.
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t121.
        IF t82->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t121 ).
        ENDIF.
        DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t122.
        IF t82->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t122 ).
        ENDIF.
        CREATE OBJECT t82->zlnt_json_ownkeys_70e5fd461788.
        t82->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t124.
        t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t124 ).
        DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t126.
        IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t126 ).
        ENDIF.
        DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t128.
        IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t128 ).
        ENDIF.
        DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t130.
        IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t130 ).
        ENDIF.
        DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t132.
        IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t132 ).
        ENDIF.
        DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t134.
        IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t134 ).
        ENDIF.
        t81 = t82->key.
        DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t135 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t137 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t137.
        t76 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t78 i_message_26cb = |Modification of SY field| i_key = t81 i_severity = t135 i_fix = t137 ).
        t3->load( ).
        APPEND t76 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_sy_modification_conf( me->gt_cn_in_sr_rl_sy_md_ts_sy_mdf( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_sy_modification_conf( me->gt_cn_in_sr_rl_sy_md_ts_sy_mdf( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_sy_modification_conf.
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
        t1 = NEW zcl_lnt_sy_modification_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_sy_md_ts_sy_mdf( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1724_0c5cc4c83046.
  ENDMETHOD.
ENDCLASS.
