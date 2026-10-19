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
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Use DEFINE VIEW ENTITY instead of DEFINE VIEW\n\nhttps://blogs|.
    t11 = t11 && |.sap.com/2021/10/16/a-new-generation-of-cds-views-how-to-mig|.
    t11 = t11 && |rate-your-cds-views-to-cds-view-entities/\n\nv755 and up|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Upport| TO t18->items.
    t18->save( ).
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |cds_legacy_view| i_title = |CDS Legacy View| i_short_description = |Identify CDS Legacy Views| i_bad_example = t26 i_good_example = t28 i_extended_information = t8 i_tags = t18 i_pragma = t30 i_pseudo_comment = t32 ).
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
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t40 ).
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t42 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t44 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t46 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t48 ).
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
    CREATE OBJECT t2.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zcl_lnt_abap_release.
    t7 = me->reg->get_config( )->get_release( ).
    DATA t12 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t12 = zcl_lnt_version_module=>release_b8cd.
    t5 = xsdbool( zcl_lnt_version_module=>release_at_least( i_running = t7 i_required = t12->get( p0 = |v755| ) ) = abap_false ).
    t4 = t5.
    IF t5 = abap_true.
      DATA t15 TYPE string.
      t15 = me->reg->get_config( )->get_language_version( ).
      t4 = xsdbool( t15 <> |Cloud| ).
    ENDIF.
    IF t4 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t20 TYPE abap_bool.
    DATA t21 TYPE abap_bool.
    t21 = xsdbool( t1->get_type( ) <> |DDLS| ).
    t20 = t21.
    IF t21 = abap_false.
      t20 = xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_data_definition ) = abap_false ).
    ENDIF.
    IF t20 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t29 TYPE REF TO zcl_lnt_expression_node.
    DATA t32 TYPE REF TO zcl_lnt_ob_data_definition.
    DATA t34 TYPE REF TO object.
    t34 = t1.
    t32 ?= t34.
    DATA t36 TYPE REF TO zcl_lnt_parsed_data_definition.
    t36 = t32->parsed_data.
    DATA t39 TYPE REF TO zcl_lnt_expression_node.
    IF xsdbool( t36 IS INITIAL ) = abap_true.
    ELSE.
      t39 = t36->tree.
    ENDIF.
    t29 = t39.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t29 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t54 TYPE abap_bool.
    DATA t55 TYPE abap_bool.
    DATA t56 TYPE REF TO zif_lnt_statement_runnable.
    t56 = t29->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
    t55 = xsdbool( t56 IS BOUND AND t56 IS INSTANCE OF zcl_lnt_cds_define_view ).
    t54 = t55.
    IF t55 = abap_true.
      DATA t61 TYPE REF TO zcl_lnt_abstract_token.
      t61 = t29->find_direct_token_by_text( i_text = |ENTITY| ).
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t54 = xsdbool( t61 IS INITIAL ).
    ENDIF.
    IF t54 = abap_true.
      DATA t69 TYPE REF TO zif_lnt_file.
      DATA t71 TYPE REF TO zcl_lnt_ob_data_definition.
      DATA t73 TYPE REF TO object.
      t73 = t1.
      t71 ?= t73.
      t69 = t71->find_source_file( ).
      IF xsdbool( t69 IS BOUND ) = abap_true.
        DATA t77 TYPE REF TO zcl_lnt_issue.
        DATA t78 TYPE REF TO zif_lnt_file.
        t78 = t69.
        DATA(t82) = VALUE string( ).
        DATA t83 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t93) = |Use DEFINE VIEW ENTITY instead of DEFINE VIEW\n\nhttps://blogs|.
        t93 = t93 && |.sap.com/2021/10/16/a-new-generation-of-cds-views-how-to-mig|.
        t93 = t93 && |rate-your-cds-views-to-cds-view-entities/\n\nv755 and up|.
        DATA(t94) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t94->has = abap_true.
        t94->value = t93.
        t90 = t94.
        DATA t100 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t100.
        t100->load( ).
        APPEND |SingleFile| TO t100->items.
        t100->save( ).
        t100->load( ).
        APPEND |Upport| TO t100->items.
        t100->save( ).
        DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t83 = NEW zcl_lnt_irule_metadata( i_key = |cds_legacy_view| i_title = |CDS Legacy View| i_short_description = |Identify CDS Legacy Views| i_bad_example = t108 i_good_example = t110 i_extended_information = t90 i_tags = t100 i_pragma = t112 i_pseudo_comment = t114 ).
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
        DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t83->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t122 ).
        DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t83->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t83->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t124 ).
        ENDIF.
        DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t83->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t83->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t126 ).
        ENDIF.
        DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t83->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t83->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t128 ).
        ENDIF.
        DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t83->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t83->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t130 ).
        ENDIF.
        t82 = t83->key.
        DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t131 = CAST zcl_lnt_cds_legacy_view_conf( me->g_c_i_s_r_cd_lg_vw_ts_cd_lg_vw( ) )->zlnt_view_read_sr_15c06369f827( ).
        t77 = zcl_lnt_issue=>at_row( i_file = t78 i_row = CONV f( 1 ) i_message_26cb = |CDS Legacy View| i_key = t82 i_severity = t131 ).
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
    DATA(t3) = i_obj_1ed0.
    result = me->r_i_sr_rl_cd_lg_vw_ts_cd_lg_vw( i_o = t3 ).

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
