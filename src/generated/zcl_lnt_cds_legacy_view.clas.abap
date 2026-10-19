* TS: src/rules/cds_legacy_view.ts:13:1 CDSLegacyView
CLASS zcl_lnt_cds_legacy_view DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_cds_legacy_view_conf.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS g_c_i_s_r_cd_lg_vw_ts_cd_lg_vw RETURNING VALUE(result) TYPE REF TO zcl_lnt_cds_legacy_view_conf.
    METHODS s_c_i_s_r_cd_lg_vw_ts_cd_lg_vw IMPORTING i_conf TYPE REF TO zcl_lnt_cds_legacy_view_conf.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS r_i_sr_rl_cd_lg_vw_ts_cd_lg_vw IMPORTING i_o TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_legacy_view IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_cds_legacy_view_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |cds_legacy_view|.
    DATA t4 TYPE string.
    t4 = |CDS Legacy View|.
    DATA t6 TYPE string.
    t6 = |Identify CDS Legacy Views|.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Use DEFINE VIEW ENTITY instead of DEFINE VIEW\n\nhttps://blogs|.
    t11 = t11 && |.sap.com/2021/10/16/a-new-generation-of-cds-views-how-to-mig|.
    t11 = t11 && |rate-your-cds-views-to-cds-view-entities/\n\nv755 and up|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t19.
    t18 = t19.
    DATA(t21) = |SingleFile|.
    t18->load( ).
    APPEND t21 TO t18->items.
    t18->save( ).
    DATA(t23) = |Upport|.
    t18->load( ).
    APPEND t23 TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t26 i_good_example = t28 i_extended_information = t8 i_tags = t14 i_pragma = t30 i_pseudo_comment = t32 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t34 ).
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t36 ).
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t38 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t39) = |key|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    DATA(t41) = |title|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
    ENDIF.
    DATA(t43) = |shortDescription|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
    ENDIF.
    DATA(t45) = |extendedInformation|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
    ENDIF.
    DATA(t47) = |tags|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_cd_lg_vw_ts_cd_lg_vw.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_cd_lg_vw_ts_cd_lg_vw.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD initialize.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    result = me.

  ENDMETHOD.

  METHOD r_i_sr_rl_cd_lg_vw_ts_cd_lg_vw.
    DATA(t1) = i_o.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zcl_lnt_abap_release.
    DATA t8 TYPE REF TO zif_lnt_configuration.
    t8 = me->reg->get_config( ).
    t7 = t8->get_release( ).
    DATA t10 TYPE REF TO zcl_lnt_abap_release.
    DATA t11 TYPE REF TO zcl_lnt_abap_release.
    DATA t12 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t12 = zcl_lnt_version_module=>release_b8cd.
    DATA(t13) = |v755|.
    t11 = t12->get( p0 = t13 ).
    t10 = t11.
    t6 = zcl_lnt_version_module=>release_at_least( i_running = t7 i_required = t10 ).
    t5 = xsdbool( t6 = abap_false ).
    t4 = t5.
    IF t5 = abap_true.
      DATA t14 TYPE abap_bool.
      DATA t15 TYPE string.
      DATA t16 TYPE REF TO zif_lnt_configuration.
      t16 = me->reg->get_config( ).
      t15 = t16->get_language_version( ).
      DATA(t18) = |Cloud|.
      t14 = xsdbool( t15 <> t18 ).
      t4 = t14.
    ENDIF.
    IF t4 = abap_true.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t19.
      result = t19.
      RETURN.
    ENDIF.
    DATA t20 TYPE abap_bool.
    DATA t21 TYPE abap_bool.
    DATA t22 TYPE string.
    t22 = t1->get_type( ).
    DATA(t24) = |DDLS|.
    t21 = xsdbool( t22 <> t24 ).
    t20 = t21.
    IF t21 = abap_false.
      DATA t25 TYPE abap_bool.
      DATA t26 TYPE abap_bool.
      t26 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_data_definition ).
      t25 = xsdbool( t26 = abap_false ).
      t20 = t25.
    ENDIF.
    IF t20 = abap_true.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t28.
      result = t28.
      RETURN.
    ENDIF.
    DATA t29 TYPE REF TO zcl_lnt_expression_node.
    DATA t32 TYPE REF TO zcl_lnt_ob_data_definition.
    DATA t34 TYPE REF TO object.
    t34 = t1.
    t32 ?= t34.
    DATA t36 TYPE REF TO zcl_lnt_parsed_data_definition.
    DATA t37 TYPE REF TO zcl_lnt_parsed_data_definition.
    t37 = t32->parsed_data.
    t36 = t37.
    DATA t39 TYPE REF TO zcl_lnt_expression_node.
    DATA(t40) = xsdbool( t36 IS INITIAL ).
    IF t40 = abap_true.
    ELSE.
      DATA t43 TYPE REF TO zcl_lnt_expression_node.
      DATA t44 TYPE REF TO zcl_lnt_parsed_data_definition.
      t44 = t36.
      t43 = t44->tree.
      t39 = t43.
    ENDIF.
    t29 = t39.
    DATA(t46) = VALUE abap_bool( ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t46 = xsdbool( t29 IS INITIAL ).
    IF t46 = abap_true.
      DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t53.
      result = t53.
      RETURN.
    ENDIF.
    DATA t54 TYPE abap_bool.
    DATA t55 TYPE abap_bool.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    DATA t57 TYPE REF TO zcl_lnt_expression_node.
    t57 = t29.
    t56 = t57->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
    t55 = xsdbool( t56 IS BOUND AND t56 IS INSTANCE OF zcl_lnt_cds_define_view ).
    t54 = t55.
    IF t55 = abap_true.
      DATA(t59) = VALUE abap_bool( ).
      DATA t61 TYPE REF TO zcl_lnt_abstract_token.
      DATA t62 TYPE REF TO zcl_lnt_expression_node.
      t62 = t29.
      DATA(t64) = |ENTITY|.
      t61 = t62->find_direct_token_by_text( i_text = t64 ).
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t59 = xsdbool( t61 IS INITIAL ).
      t54 = t59.
    ENDIF.
    IF t54 = abap_true.
      DATA t69 TYPE REF TO zif_lnt_file.
      DATA t70 TYPE REF TO zif_lnt_file.
      DATA t71 TYPE REF TO zcl_lnt_ob_data_definition.
      DATA t73 TYPE REF TO object.
      t73 = t1.
      t71 ?= t73.
      t70 = t71->find_source_file( ).
      t69 = t70.
      DATA t74 TYPE abap_bool.
      t74 = xsdbool( t69 IS BOUND ).
      IF t74 = abap_true.
        DATA t77 TYPE REF TO zcl_lnt_issue.
        DATA t78 TYPE REF TO zif_lnt_file.
        t78 = t69.
        DATA(t80) = CONV f( 1 ).
        DATA(t81) = |CDS Legacy View|.
        DATA(t82) = VALUE string( ).
        DATA t83 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t84 TYPE string.
        t84 = |cds_legacy_view|.
        DATA t86 TYPE string.
        t86 = |CDS Legacy View|.
        DATA t88 TYPE string.
        t88 = |Identify CDS Legacy Views|.
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t93) = |Use DEFINE VIEW ENTITY instead of DEFINE VIEW\n\nhttps://blogs|.
        t93 = t93 && |.sap.com/2021/10/16/a-new-generation-of-cds-views-how-to-mig|.
        t93 = t93 && |rate-your-cds-views-to-cds-view-entities/\n\nv755 and up|.
        DATA(t94) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t94->has = abap_true.
        t94->value = t93.
        t90 = t94.
        DATA t96 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t100 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t101 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t101.
        t100 = t101.
        DATA(t103) = |SingleFile|.
        t100->load( ).
        APPEND t103 TO t100->items.
        t100->save( ).
        DATA(t105) = |Upport|.
        t100->load( ).
        APPEND t105 TO t100->items.
        t100->save( ).
        t96 = t100.
        DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t83 = NEW zcl_lnt_irule_metadata( i_key = t84 i_title = t86 i_short_description = t88 i_bad_example = t108 i_good_example = t110 i_extended_information = t90 i_tags = t96 i_pragma = t112 i_pseudo_comment = t114 ).
        CREATE OBJECT t83->zlnt_view_ownkeys_b0e8086400eb.
        t83->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t83->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t116 ).
        DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t83->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t83->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t117 ).
        ENDIF.
        DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t83->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t83->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t118 ).
        ENDIF.
        DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t83->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t83->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t119 ).
        ENDIF.
        DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t83->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t83->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t120 ).
        ENDIF.
        CREATE OBJECT t83->zlnt_json_ownkeys_70e5fd461788.
        t83->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t121) = |key|.
        DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t83->zlnt_json_ownkeys_70e5fd461788->put( p0 = t121 p1 = t122 ).
        DATA(t123) = |title|.
        DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t83->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t83->zlnt_json_ownkeys_70e5fd461788->put( p0 = t123 p1 = t124 ).
        ENDIF.
        DATA(t125) = |shortDescription|.
        DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t83->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t83->zlnt_json_ownkeys_70e5fd461788->put( p0 = t125 p1 = t126 ).
        ENDIF.
        DATA(t127) = |extendedInformation|.
        DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t83->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t83->zlnt_json_ownkeys_70e5fd461788->put( p0 = t127 p1 = t128 ).
        ENDIF.
        DATA(t129) = |tags|.
        DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t83->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t83->zlnt_json_ownkeys_70e5fd461788->put( p0 = t129 p1 = t130 ).
        ENDIF.
        t82 = t83->key.
        DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t132) = CAST zcl_lnt_cds_legacy_view_conf( me->g_c_i_s_r_cd_lg_vw_ts_cd_lg_vw( ) ).
        t131 = t132->zlnt_view_read_sr_15c06369f827( ).
        t77 = zcl_lnt_issue=>at_row( i_file = t78 i_row = t80 i_message_26cb = t81 i_key = t82 i_severity = t131 ).
        t2->load( ).
        APPEND t77 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_cds_legacy_view_conf( me->g_c_i_s_r_cd_lg_vw_ts_cd_lg_vw( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_cds_legacy_view_conf( me->g_c_i_s_r_cd_lg_vw_ts_cd_lg_vw( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_cds_legacy_view_conf.
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
        t2 = NEW zcl_lnt_cds_legacy_view_conf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_cd_lg_vw_ts_cd_lg_vw( i_conf = t2 ).
  ENDMETHOD.

  METHOD run.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = i_obj_1ed0.
    t2 = me->r_i_sr_rl_cd_lg_vw_ts_cd_lg_vw( i_o = t3 ).
    result = t2.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1424_61d043fed81a.
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
