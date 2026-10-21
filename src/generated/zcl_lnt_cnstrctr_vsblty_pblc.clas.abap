* TS: src/rules/constructor_visibility_public.ts:12:1 ConstructorVisibilityPublic
CLASS zcl_lnt_cnstrctr_vsblty_pblc DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_cnstrc_vsblty_pblc_cnf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_cn_vs_pb_ts_cn_vs_pb RETURNING VALUE(result) TYPE REF TO zcl_lnt_cnstrc_vsblty_pblc_cnf.
    METHODS i_i_sr_rl_cn_vs_pb_ts_cn_vs_pb IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_cnstrctr_vsblty_pblc.
    METHODS s_c_i_s_r_cn_vs_pb_ts_cn_vs_pb IMPORTING i_conf TYPE REF TO zcl_lnt_cnstrc_vsblty_pblc_cnf.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cnstrctr_vsblty_pblc IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_cnstrc_vsblty_pblc_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Constructor must be placed in the public section, even if th|.
    t7 = t7 && |e class is not CREATE PUBLIC.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |\nThis only applies to global classes.\n\nhttps://github.com/SA|.
    t11 = t11 && |P/styleguides/blob/main/clean-abap/CleanABAP.md#if-your-glob|.
    t11 = t11 && |al-class-is-create-private-leave-the-constructor-public\nhttp|.
    t11 = t11 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
    t11 = t11 && |abeninstance_constructor_guidl.html|.
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
    DATA(t29) = |CLASS zcl_foo DEFINITION PUBLIC CREATE PRIVATE.\n  PRIVATE SE|.
    t29 = t29 && |CTION.\n    METHODS constructor.\nENDCLASS.|.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t29.
    t26 = t30.
    DATA(t35) = |CLASS zcl_foo DEFINITION PUBLIC CREATE PRIVATE.\n  PUBLIC SEC|.
    t35 = t35 && |TION.\n    METHODS constructor.\nENDCLASS.|.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = t35.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |constructor_visibility_public| i_title = |Check constructor visibility is public| i_short_description = t6 i_bad_example = t26 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
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

  METHOD get_message.
    result = |Constructor visibility should be public|.

  ENDMETHOD.

  METHOD g_c_i_s_r_cn_vs_pb_ts_cn_vs_pb.
    result = me->conf.

  ENDMETHOD.

  METHOD i_i_sr_rl_cn_vs_pb_ts_cn_vs_pb.
    DATA(t1) = i_reg_d009.
    result = me.

  ENDMETHOD.

  METHOD s_c_i_s_r_cn_vs_pb_ts_cn_vs_pb.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    IF xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_class ) = abap_false ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t8 TYPE REF TO zcl_lnt_info_class_definition.
    DATA t10 TYPE REF TO zcl_lnt_class.
    DATA t11 TYPE REF TO zcl_lnt_class.
    t11 ?= t1.
    t10 = t11.
    DATA t15 TYPE REF TO zif_lnt_abap_file_information.
    DATA t17 TYPE REF TO zcl_lnt_abap_file.
    t17 = t10->get_main_abap_file( ).
    DATA t20 TYPE REF TO zif_lnt_abap_file_information.
    IF xsdbool( t17 IS INITIAL ) = abap_true.
    ELSE.
      t20 = t17->info.
    ENDIF.
    t15 = t20.
    DATA t30 TYPE REF TO zcl_lnt_info_class_definition.
    IF xsdbool( t15 IS INITIAL ) = abap_true.
    ELSE.
      DATA t35 TYPE REF TO zif_lnt_abap_file_information.
      t35 = t15.
      DATA t37 TYPE string.
      DATA t38 TYPE REF TO zcl_lnt_abstract_object.
      t38 = t10.
      t37 = t38->name.
      t30 = t35->get_class_definition_by_name( i_name = t37 ).
    ENDIF.
    t8 = t30.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t8 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t50 = t8->methods.
    DATA t53 TYPE REF TO zcl_lnt_info_method_definition.
    DATA t54 TYPE REF TO object.
    DATA(t55) = VALUE i( ).
    DO.
      t50->load( ).
      IF t55 >= lines( t50->items ).
        EXIT.
      ENDIF.
      CLEAR t54.
      READ TABLE t50->items INDEX t55 + 1 INTO t54.
      t55 = t55 + 1.
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t56.
      CLEAR t53.
      IF t54 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t56 ?= t54.
        DATA t57 TYPE REF TO object.
        t57 = t56->as_ref( ).
        t53 ?= t57.
      ELSE.
        t53 ?= t54.
      ENDIF.
      DATA(t58) = VALUE abap_bool( ).
      DATA(t59) = VALUE abap_bool( ).
      DATA t60 TYPE string.
      DATA t61 TYPE string.
      t61 = t53->name.
      DATA(t63) = strlen( t61 ).
      t60 = t61.
      IF t60 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t60 TO UPPER CASE.
      ELSE.
        t60 = zlnt_runtime_uppe_91169605024d=>full( t60 ).
      ENDIF.
      t59 = xsdbool( t60 = |CONSTRUCTOR| ).
      t58 = t59.
      IF t59 = abap_true.
        t58 = xsdbool( t53->visibility <> CONV f( 3 ) ).
      ENDIF.
      IF t58 = abap_true.
        DATA t70 TYPE REF TO zcl_lnt_issue.
        CLEAR t70.
        DATA t71 TYPE REF TO zcl_lnt_fi_identifier.
        t71 = t53->identifier.
        DATA(t74) = VALUE string( ).
        DATA t75 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t80 TYPE string.
        DATA(t81) = |Constructor must be placed in the public section, even if th|.
        t81 = t81 && |e class is not CREATE PUBLIC.|.
        t80 = t81.
        DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t82.
        DATA(t85) = |\nThis only applies to global classes.\n\nhttps://github.com/SA|.
        t85 = t85 && |P/styleguides/blob/main/clean-abap/CleanABAP.md#if-your-glob|.
        t85 = t85 && |al-class-is-create-private-leave-the-constructor-public\nhttp|.
        t85 = t85 && |s://help.sap.com/doc/abapdocu_latest_index_htm/latest/en-US/|.
        t85 = t85 && |abeninstance_constructor_guidl.html|.
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
        DATA(t103) = |CLASS zcl_foo DEFINITION PUBLIC CREATE PRIVATE.\n  PRIVATE SE|.
        t103 = t103 && |CTION.\n    METHODS constructor.\nENDCLASS.|.
        DATA(t104) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t104->has = abap_true.
        t104->value = t103.
        t100 = t104.
        DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t106.
        DATA(t109) = |CLASS zcl_foo DEFINITION PUBLIC CREATE PRIVATE.\n  PUBLIC SEC|.
        t109 = t109 && |TION.\n    METHODS constructor.\nENDCLASS.|.
        DATA(t110) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t110->has = abap_true.
        t110->value = t109.
        t106 = t110.
        DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t112.
        DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t114.
        t75 = NEW zcl_lnt_irule_metadata( i_key = |constructor_visibility_public| i_title = |Check constructor visibility is public| i_short_description = t80 i_bad_example = t100 i_good_example = t106 i_extended_information = t82 i_tags = t88 i_pragma = t112 i_pseudo_comment = t114 ).
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
        t137 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t139 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t139.
        t70 = zcl_lnt_issue=>at_identifier( i_identifier = t71 i_message_26cb = |Constructor visibility should be public| i_key = t74 i_severity = t137 i_fix = t139 ).
        t2->load( ).
        APPEND t70 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_cnstrc_vsblty_pblc_cnf( me->g_c_i_s_r_cn_vs_pb_ts_cn_vs_pb( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_cnstrc_vsblty_pblc_cnf( me->g_c_i_s_r_cn_vs_pb_ts_cn_vs_pb( ) ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t3) = i_reg_f149.
    result = me->i_i_sr_rl_cn_vs_pb_ts_cn_vs_pb( i_reg_d009 = t3 ).

  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_cnstrc_vsblty_pblc_cnf.
    IF t1 IS BOUND.
      IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t2 ?= t1->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t2 IS NOT BOUND.
        IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t4 TYPE REF TO zlnt_view_storage_74017ca272ac.
          IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t4 ?= t1->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t4->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t2 = NEW zcl_lnt_cnstrc_vsblty_pblc_cnf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_cn_vs_pb_ts_cn_vs_pb( i_conf = t2 ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1465_1d098da1d2a1.
  ENDMETHOD.

  METHOD zif_lnt_rule~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_metadata.
    result = me->get_metadata( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_config.
    me->get_config( ).
  ENDMETHOD.

  METHOD zif_lnt_rule~set_config.
    me->set_config( i_conf = i_conf ).
  ENDMETHOD.

  METHOD zif_lnt_rule~initialize.
    result = me->initialize( i_reg_f149 = i_reg_f149 ).
  ENDMETHOD.

  METHOD zif_lnt_rule~run.
    result = me->run( i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.

  METHOD zif_lnt_rule~get_config_value.
    result = me->get_config_value( ).
  ENDMETHOD.
ENDCLASS.
