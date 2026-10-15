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
    DATA(t1) = NEW zcl_lnt_cds_legacy_view_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |cds_legacy_view|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |CDS Legacy View|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Identify CDS Legacy Views|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Use DEFINE VIEW ENTITY instead of DEFINE VIEW\n\nhttps://blogs|.
      t11 = t11 && |.sap.com/2021/10/16/a-new-generation-of-cds-views-how-to-mig|.
      t11 = t11 && |rate-your-cds-views-to-cds-view-entities/\n\nv755 and up|.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = t11.
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t9 = t13.
    ENDIF.
    t8 = t9.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t19.
      t18 = t19.
      DATA(t20) = t18.
      DATA(t21) = |SingleFile|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      DATA(t23) = |Upport|.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = t18.
      t17 = t24.
      t15 = t17.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t25.
      t15 = t25.
    ENDIF.
    t14 = t15.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    t26 = t27.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    t28 = t29.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    t30 = t31.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    t32 = t33.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t26 i_good_example = t28 i_extended_information = t8 i_tags = t14 i_pragma = t30 i_pseudo_comment = t32 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t36 ).
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t38 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t39) = |key|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    ENDIF.
    DATA(t41) = |title|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
    ENDIF.
    DATA(t43) = |shortDescription|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
    ENDIF.
    DATA(t45) = |extendedInformation|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
    ENDIF.
    DATA(t47) = |tags|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_cd_lg_vw_ts_cd_lg_vw.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_cd_lg_vw_ts_cd_lg_vw.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA(t3) = me.
    result = t3.

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
    DATA(t9) = me->reg.
    t8 = t9->get_config( ).
    t7 = t8->get_release( ).
    DATA t10 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t12.
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
      DATA(t17) = me->reg.
      t16 = t17->get_config( ).
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
    DATA(t23) = t1.
    t22 = t23->get_type( ).
    DATA(t24) = |DDLS|.
    t21 = xsdbool( t22 <> t24 ).
    t20 = t21.
    IF t21 = abap_false.
      DATA t25 TYPE abap_bool.
      DATA t26 TYPE abap_bool.
      DATA(t27) = t1.
      t26 = xsdbool( t27 IS BOUND AND t27 IS INSTANCE OF zcl_lnt_ob_data_definition ).
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
    CLEAR t29.
    DATA t30 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t30.
    DATA t31 TYPE REF TO zcl_lnt_ob_data_definition.
    DATA t32 TYPE REF TO zcl_lnt_ob_data_definition.
    DATA(t33) = t1.
    DATA t34 TYPE REF TO object.
    t34 = t33.
    t32 ?= t34.
    t31 = t32.
    DATA t35 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t35.
    DATA t36 TYPE REF TO zcl_lnt_parsed_data_definition.
    DATA t37 TYPE REF TO zcl_lnt_parsed_data_definition.
    DATA(t38) = t31.
    t37 = t38->parsed_data.
    t36 = t37.
    DATA t39 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t39.
    DATA(t40) = VALUE abap_bool( ).
    DATA(t41) = t36.
    IF t41 IS INITIAL.
      t40 = abap_true.
    ENDIF.
    IF t40 = abap_true.
      DATA t42 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t42.
      t39 = t42.
    ELSE.
      DATA t43 TYPE REF TO zcl_lnt_expression_node.
      DATA t44 TYPE REF TO zcl_lnt_parsed_data_definition.
      DATA(t45) = t36.
      t44 = t45.
      t43 = t44->tree.
      t39 = t43.
    ENDIF.
    t35 = t39.
    t30 = t35.
    t29 = t30.
    DATA(t46) = VALUE abap_bool( ).
    DATA t47 TYPE REF TO zcl_lnt_expression_node.
    DATA(t48) = t29.
    t47 = t48.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    t49 = t50.
    DATA(t51) = VALUE abap_bool( ).
    DATA(t52) = t47.
    IF t52 IS INITIAL.
      t51 = abap_true.
    ENDIF.
    t46 = t51.
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
    DATA(t58) = t29.
    t57 = t58.
    t56 = t57->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
    t55 = xsdbool( t56 IS BOUND AND t56 IS INSTANCE OF zcl_lnt_cds_define_view ).
    t54 = t55.
    IF t55 = abap_true.
      DATA(t59) = VALUE abap_bool( ).
      DATA t60 TYPE REF TO zcl_lnt_abstract_token.
      DATA t61 TYPE REF TO zcl_lnt_abstract_token.
      DATA t62 TYPE REF TO zcl_lnt_expression_node.
      DATA(t63) = t29.
      t62 = t63.
      DATA(t64) = |ENTITY|.
      t61 = t62->find_direct_token_by_text( i_text = t64 ).
      t60 = t61.
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t66.
      t65 = t66.
      DATA(t67) = VALUE abap_bool( ).
      DATA(t68) = t60.
      IF t68 IS INITIAL.
        t67 = abap_true.
      ENDIF.
      t59 = t67.
      t54 = t59.
    ENDIF.
    IF t54 = abap_true.
      DATA t69 TYPE REF TO zif_lnt_file.
      DATA t70 TYPE REF TO zif_lnt_file.
      DATA t71 TYPE REF TO zcl_lnt_ob_data_definition.
      DATA(t72) = t1.
      DATA t73 TYPE REF TO object.
      t73 = t72.
      t71 ?= t73.
      t70 = t71->find_source_file( ).
      t69 = t70.
      DATA t74 TYPE abap_bool.
      DATA(t75) = t69.
      t74 = xsdbool( t75 IS BOUND ).
      IF t74 = abap_true.
        DATA(t76) = t2.
        DATA t77 TYPE REF TO zcl_lnt_issue.
        CLEAR t77.
        DATA t78 TYPE REF TO zif_lnt_file.
        DATA(t79) = t69.
        t78 = t79.
        DATA(t80) = CONV f( 1 ).
        DATA(t81) = |CDS Legacy View|.
        DATA(t82) = VALUE string( ).
        DATA t83 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t83.
        DATA t84 TYPE string.
        DATA(t85) = |cds_legacy_view|.
        t84 = t85.
        DATA t86 TYPE string.
        DATA(t87) = |CDS Legacy View|.
        t86 = t87.
        DATA t88 TYPE string.
        DATA(t89) = |Identify CDS Legacy Views|.
        t88 = t89.
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t90.
        DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t91.
        DATA(t92) = abap_true.
        IF t92 = abap_true.
          DATA(t93) = |Use DEFINE VIEW ENTITY instead of DEFINE VIEW\n\nhttps://blogs|.
          t93 = t93 && |.sap.com/2021/10/16/a-new-generation-of-cds-views-how-to-mig|.
          t93 = t93 && |rate-your-cds-views-to-cds-view-entities/\n\nv755 and up|.
          DATA(t94) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t94->has = abap_true.
          t94->value = t93.
          t91 = t94.
        ELSE.
          DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t95.
          t91 = t95.
        ENDIF.
        t90 = t91.
        DATA t96 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t96.
        DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t97.
        DATA(t98) = abap_true.
        IF t98 = abap_true.
          DATA t99 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t100 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t101 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t101.
          t100 = t101.
          DATA(t102) = t100.
          DATA(t103) = |SingleFile|.
          t102->load( ).
          APPEND t103 TO t102->items.
          t102->save( ).
          DATA(t104) = t100.
          DATA(t105) = |Upport|.
          t104->load( ).
          APPEND t105 TO t104->items.
          t104->save( ).
          DATA(t106) = t100.
          t99 = t106.
          t97 = t99.
        ELSE.
          DATA t107 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t107.
          t97 = t107.
        ENDIF.
        t96 = t97.
        DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t109.
        t108 = t109.
        DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t111.
        t110 = t111.
        DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t113.
        t112 = t113.
        DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t115.
        t114 = t115.
        t83 = NEW zcl_lnt_irule_metadata( i_key = t84 i_title = t86 i_short_description = t88 i_bad_example = t108 i_good_example = t110 i_extended_information = t90 i_tags = t96 i_pragma = t112 i_pseudo_comment = t114 ).
        CREATE OBJECT t83->zlnt_view_ownkeys_b0e8086400eb.
        t83->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t116.
        IF t83->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t83->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t116 ).
        ENDIF.
        DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t117.
        IF t83->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t83->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t117 ).
        ENDIF.
        DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t118.
        IF t83->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t83->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t118 ).
        ENDIF.
        DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t119.
        IF t83->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t83->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t119 ).
        ENDIF.
        DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t120.
        IF t83->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t83->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t120 ).
        ENDIF.
        CREATE OBJECT t83->zlnt_json_ownkeys_70e5fd461788.
        t83->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t121) = |key|.
        DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t122.
        IF t83->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t83->zlnt_json_ownkeys_70e5fd461788->put( p0 = t121 p1 = t122 ).
        ENDIF.
        DATA(t123) = |title|.
        DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t124.
        IF t83->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t83->zlnt_json_ownkeys_70e5fd461788->put( p0 = t123 p1 = t124 ).
        ENDIF.
        DATA(t125) = |shortDescription|.
        DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t126.
        IF t83->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t83->zlnt_json_ownkeys_70e5fd461788->put( p0 = t125 p1 = t126 ).
        ENDIF.
        DATA(t127) = |extendedInformation|.
        DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t128.
        IF t83->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t83->zlnt_json_ownkeys_70e5fd461788->put( p0 = t127 p1 = t128 ).
        ENDIF.
        DATA(t129) = |tags|.
        DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t130.
        IF t83->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t83->zlnt_json_ownkeys_70e5fd461788->put( p0 = t129 p1 = t130 ).
        ENDIF.
        t82 = t83->key.
        DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t132) = CAST zcl_lnt_cds_legacy_view_conf( me->g_c_i_s_r_cd_lg_vw_ts_cd_lg_vw( ) ).
        t131 = t132->zlnt_view_read_sr_15c06369f827( ).
        t77 = zcl_lnt_issue=>at_row( i_file = t78 i_row = t80 i_message_26cb = t81 i_key = t82 i_severity = t131 ).
        t76->load( ).
        APPEND t77 TO t76->items.
        t76->save( ).
      ENDIF.
    ENDIF.
    DATA(t133) = t2.
    result = t133.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_cds_legacy_view_conf( me->g_c_i_s_r_cd_lg_vw_ts_cd_lg_vw( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_cds_legacy_view_conf( me->g_c_i_s_r_cd_lg_vw_ts_cd_lg_vw( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_cds_legacy_view_conf.
    CLEAR t2.
    DATA(t3) = t1.
    CLEAR t2.
    IF t3 IS BOUND.
      IF t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t2 ?= t3->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t2 IS NOT BOUND.
        IF t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t4 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t4.
          IF t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t4 ?= t3->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t4->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t2 = NEW zcl_lnt_cds_legacy_view_conf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_cd_lg_vw_ts_cd_lg_vw( i_conf = t2 ).
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = t1.
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
