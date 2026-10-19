* TS: src/rules/cds_check_syntax.ts:36:1 CDSCheckSyntax
CLASS zcl_lnt_cds_check_syntax DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA conf TYPE REF TO zcl_lnt_cds_check_syntax_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS g_c_i_s_r_cd_ch_sy_ts_cd_ch_sy RETURNING VALUE(result) TYPE REF TO zcl_lnt_cds_check_syntax_conf.
    METHODS s_c_i_s_r_cd_ch_sy_ts_cd_ch_sy IMPORTING i_conf TYPE REF TO zcl_lnt_cds_check_syntax_conf.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS r_i_sr_rl_cd_ch_sy_ts_cd_ch_sy IMPORTING i_object_19cd TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_sources IMPORTING i_tree TYPE REF TO zcl_lnt_expression_node i_ddic TYPE REF TO zcl_lnt_ddic i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_file TYPE REF TO zif_lnt_file RETURNING VALUE(result) TYPE REF TO
    zlnt_runtime_arra_c22708faf2e3.
    METHODS check_relations IMPORTING i_tree TYPE REF TO zcl_lnt_expression_node i_ddic TYPE REF TO zcl_lnt_ddic i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_file TYPE REF TO zif_lnt_file.
    METHODS check_types IMPORTING i_tree TYPE REF TO zcl_lnt_expression_node i_ddic TYPE REF TO zcl_lnt_ddic i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_file TYPE REF TO zif_lnt_file.
    METHODS check_root_projection IMPORTING i_tree TYPE REF TO zcl_lnt_expression_node i_ddic TYPE REF TO zcl_lnt_ddic i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_file TYPE REF TO zif_lnt_file.
    METHODS check_field_annotations IMPORTING i_tree TYPE REF TO zcl_lnt_expression_node i_ddic TYPE REF TO zcl_lnt_ddic i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_file TYPE REF TO zif_lnt_file.
    METHODS determine_semantic_type IMPORTING i_type_node TYPE REF TO zcl_lnt_expression_node i_ddic TYPE REF TO zcl_lnt_ddic RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS find_semantic_reference IMPORTING i_annotations TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 i_type_9913 TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS has_companion_annotation IMPORTING i_annotations TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 i_type_9913 TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS check_labels IMPORTING i_tree TYPE REF TO zcl_lnt_expression_node i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_file TYPE REF TO zif_lnt_file.
    METHODS check_view_entity_annotations IMPORTING i_tree TYPE REF TO zcl_lnt_expression_node i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_file TYPE REF TO zif_lnt_file.
    METHODS check_searchable IMPORTING i_tree TYPE REF TO zcl_lnt_expression_node i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_file TYPE REF TO zif_lnt_file.
    METHODS has_search_annotation IMPORTING i_normalized TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_name TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS check_reserved_names IMPORTING i_tree TYPE REF TO zcl_lnt_expression_node i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_file TYPE REF TO zif_lnt_file.
    METHODS check_fields IMPORTING i_tree TYPE REF TO zcl_lnt_expression_node i_sources TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_object_19cd TYPE REF TO zcl_lnt_ob_data_definition i_issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3
    i_file TYPE REF TO zif_lnt_file.
    METHODS name IMPORTING i_node TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE string.
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
CLASS zcl_lnt_cds_check_syntax IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_cds_check_syntax_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |cds_check_syntax|.
    DATA t4 TYPE string.
    t4 = |CDS Check Syntax|.
    DATA t6 TYPE string.
    DATA(t7) = |Checks CDS source, field, type, and semantic annotation refe|.
    t7 = t7 && |rences|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Performs semantic checks which require other DDIC objects to|.
    t11 = t11 && | be available.\n\nMissing objects are only reported when their|.
    t11 = t11 && | names match the configured errorNamespace.|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t19.
    t18 = t19.
    DATA(t21) = |Syntax|.
    t18->load( ).
    APPEND t21 TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t24 i_good_example = t26 i_extended_information = t8 i_tags = t14 i_pragma = t28 i_pseudo_comment = t30 ).
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
    DATA(t37) = |key|.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t37 p1 = t38 ).
    DATA(t39) = |title|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    ENDIF.
    DATA(t41) = |shortDescription|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
    ENDIF.
    DATA(t43) = |extendedInformation|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
    ENDIF.
    DATA(t45) = |tags|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_cd_ch_sy_ts_cd_ch_sy.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_cd_ch_sy_ts_cd_ch_sy.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD initialize.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    result = me.

  ENDMETHOD.

  METHOD r_i_sr_rl_cd_ch_sy_ts_cd_ch_sy.
    DATA(t1) = i_object_19cd.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    t3 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_data_definition ).
    t2 = xsdbool( t3 = abap_false ).
    IF t2 = abap_true.
      DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t5.
      result = t5.
      RETURN.
    ENDIF.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA t9 TYPE REF TO zcl_lnt_ob_data_definition.
    DATA t11 TYPE REF TO object.
    t11 = t1.
    t9 ?= t11.
    DATA t13 TYPE REF TO zcl_lnt_parsed_data_definition.
    DATA t14 TYPE REF TO zcl_lnt_parsed_data_definition.
    t14 = t9->parsed_data.
    t13 = t14.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    DATA(t17) = xsdbool( t13 IS INITIAL ).
    IF t17 = abap_true.
    ELSE.
      DATA t20 TYPE REF TO zcl_lnt_expression_node.
      DATA t21 TYPE REF TO zcl_lnt_parsed_data_definition.
      t21 = t13.
      t20 = t21->tree.
      t16 = t20.
    ENDIF.
    t6 = t16.
    DATA t23 TYPE REF TO zif_lnt_file.
    DATA t24 TYPE REF TO zif_lnt_file.
    DATA t25 TYPE REF TO zcl_lnt_ob_data_definition.
    DATA t27 TYPE REF TO object.
    t27 = t1.
    t25 ?= t27.
    t24 = t25->find_source_file( ).
    t23 = t24.
    DATA(t28) = VALUE abap_bool( ).
    DATA(t29) = VALUE abap_bool( ).
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t29 = xsdbool( t6 IS INITIAL ).
    t28 = t29.
    IF t29 = abap_false.
      DATA(t36) = VALUE abap_bool( ).
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t36 = xsdbool( t23 IS INITIAL ).
      t28 = t36.
    ENDIF.
    IF t28 = abap_true.
      DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t43.
      result = t43.
      RETURN.
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t45.
    t44 = t45.
    DATA t46 TYPE REF TO zcl_lnt_ddic.
    DATA t47 TYPE REF TO zcl_lnt_ddic.
    DATA(t48) = me->reg.
    t47 = NEW zcl_lnt_ddic( i_reg_f149 = t48 ).
    t46 = t47.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t51 TYPE REF TO zcl_lnt_expression_node.
    t51 = t6.
    DATA t55 TYPE REF TO zif_lnt_file.
    t55 = t23.
    t50 = me->find_sources( i_tree = t51 i_ddic = t46 i_issues = t44 i_file = t55 ).
    DATA t57 TYPE REF TO zcl_lnt_expression_node.
    t57 = t6.
    DATA t61 TYPE REF TO zif_lnt_file.
    t61 = t23.
    me->check_relations( i_tree = t57 i_ddic = t46 i_issues = t44 i_file = t61 ).
    DATA t63 TYPE REF TO zcl_lnt_expression_node.
    t63 = t6.
    DATA t67 TYPE REF TO zif_lnt_file.
    t67 = t23.
    me->check_types( i_tree = t63 i_ddic = t46 i_issues = t44 i_file = t67 ).
    DATA t69 TYPE REF TO zcl_lnt_expression_node.
    t69 = t6.
    DATA t73 TYPE REF TO zif_lnt_file.
    t73 = t23.
    me->check_root_projection( i_tree = t69 i_ddic = t46 i_issues = t44 i_file = t73 ).
    DATA t75 TYPE REF TO zcl_lnt_expression_node.
    t75 = t6.
    DATA t79 TYPE REF TO zif_lnt_file.
    t79 = t23.
    me->check_field_annotations( i_tree = t75 i_ddic = t46 i_issues = t44 i_file = t79 ).
    DATA t81 TYPE REF TO zcl_lnt_expression_node.
    t81 = t6.
    DATA t84 TYPE REF TO zif_lnt_file.
    t84 = t23.
    me->check_labels( i_tree = t81 i_issues = t44 i_file = t84 ).
    DATA t86 TYPE REF TO zcl_lnt_expression_node.
    t86 = t6.
    DATA t89 TYPE REF TO zif_lnt_file.
    t89 = t23.
    me->check_view_entity_annotations( i_tree = t86 i_issues = t44 i_file = t89 ).
    DATA t91 TYPE REF TO zcl_lnt_expression_node.
    t91 = t6.
    DATA t94 TYPE REF TO zif_lnt_file.
    t94 = t23.
    me->check_searchable( i_tree = t91 i_issues = t44 i_file = t94 ).
    DATA t96 TYPE REF TO zcl_lnt_expression_node.
    t96 = t6.
    DATA t99 TYPE REF TO zif_lnt_file.
    t99 = t23.
    me->check_reserved_names( i_tree = t96 i_issues = t44 i_file = t99 ).
    DATA t101 TYPE REF TO zcl_lnt_expression_node.
    t101 = t6.
    DATA t104 TYPE REF TO zcl_lnt_ob_data_definition.
    DATA t106 TYPE REF TO object.
    t106 = t1.
    t104 ?= t106.
    DATA t108 TYPE REF TO zif_lnt_file.
    t108 = t23.
    me->check_fields( i_tree = t101 i_sources = t50 i_object_19cd = t104 i_issues = t44 i_file = t108 ).
    result = t44.

  ENDMETHOD.

  METHOD find_sources.
    DATA(t1) = i_tree.
    DATA(t2) = i_ddic.
    DATA(t3) = i_issues.
    DATA(t4) = i_file.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1107_afe2bbfbbd93.
    t7 = t1->find_all_expressions_recursive( i_type_9913 = t9 ).
    DATA t10 TYPE REF TO zcl_lnt_expression_node.
    DATA t11 TYPE REF TO object.
    DATA(t12) = VALUE i( ).
    DO.
      t7->load( ).
      IF t12 >= lines( t7->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t7->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      DATA t16 TYPE REF TO zcl_lnt_expression_node.
      DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
      t16 = t10->find_direct_expression( i_type_9913 = t18 ).
      DATA t19 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t19.
      DATA t21 TYPE REF TO zcl_lnt_expression_node.
      t21 = t16.
      DATA t23 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t23.
      DATA(t24) = xsdbool( t21 IS INITIAL ).
      IF t24 = abap_true.
        CLEAR t23.
      ELSE.
        DATA t27 TYPE REF TO zcl_lnt_expression_node.
        DATA t28 TYPE REF TO zcl_lnt_expression_node.
        t28 = t21.
        DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
        t27 = t28->find_direct_expression( i_type_9913 = t30 ).
        t23 = t27.
      ENDIF.
      t19 = t23.
      DATA(t31) = VALUE abap_bool( ).
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      t31 = xsdbool( t19 IS INITIAL ).
      IF t31 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t38 TYPE string.
      DATA t43 TYPE string.
      DATA t44 TYPE string.
      t44 = t19->concat_tokens( ).
      DATA t46 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t46.
      DATA(t47) = | |.
      DATA(t48) = |g|.
      CREATE OBJECT t46 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t47 flags = t48 checked = abap_true.
      DATA(t49) = ||.
      DATA(t50) = strlen( t44 ).
      t43 = t46->replace( p0 = t44 p1 = t49 ).
      t38 = t43.
      DATA t51 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t51.
      DATA t53 TYPE REF TO zcl_lnt_expression_node.
      DATA t54 TYPE REF TO zcl_lnt_expression_node.
      DATA(t56) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1091_2816df13f1ce.
      t54 = t10->find_direct_expression( i_type_9913 = t56 ).
      t53 = t54.
      DATA t57 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t57.
      DATA(t58) = xsdbool( t53 IS INITIAL ).
      IF t58 = abap_true.
        CLEAR t57.
      ELSE.
        DATA t61 TYPE REF TO zcl_lnt_expression_node.
        DATA t62 TYPE REF TO zcl_lnt_expression_node.
        t62 = t53.
        DATA(t64) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
        t61 = t62->find_direct_expression( i_type_9913 = t64 ).
        t57 = t61.
      ENDIF.
      t51 = t57.
      DATA t66 TYPE REF TO zcl_lnt_expression_node.
      DATA(t68) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
      t66 = t10->find_direct_expression( i_type_9913 = t68 ).
      DATA t69 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t69.
      DATA t70 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t70.
      DATA(t71) = VALUE abap_bool( ).
      DATA t74 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t74.
      t71 = xsdbool( t51 IS INITIAL ).
      IF t71 = abap_true.
        t70 = t66.
      ELSE.
        t70 = t51.
      ENDIF.
      t69 = t70.
      DATA t84 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t84.
      DATA t86 TYPE REF TO zcl_lnt_ddic.
      t86 = t2.
      DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t88.
      DATA(t92) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t92->has = abap_true.
      t92->value = t38.
      t88 = t92.
      DATA t94 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t94.
      DATA(t95) = VALUE abap_bool( ).
      DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t96 = t88.
      DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t98.
      DATA(t100) = VALUE abap_bool( ).
      IF t96 IS INITIAL.
        t100 = abap_true.
      ELSEIF t96->has = abap_false.
        t100 = abap_true.
      ENDIF.
      t95 = t100.
      IF t95 = abap_true.
        DATA t102 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t103 TYPE REF TO zcl_lnt_abstract_type.
        DATA t104 TYPE REF TO zcl_lnt_unknown_type.
        DATA(t105) = |undefined, lookupTableOrView|.
        DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t106.
        t104 = NEW zcl_lnt_unknown_type( i_error = t105 i_qualified_name = t106 ).
        t103 = t104.
        DATA t107 TYPE REF TO zif_lnt_object.
        CLEAR t107.
        t102 = NEW zcl_lnt_ilookup_result( i_type_9913 = t103 i_object_19cd = t107 ).
        CREATE OBJECT t102->zlnt_view_ownkeys_b0e8086400eb.
        t102->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t109.
        t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t109 ).
        CREATE OBJECT t102->zlnt_json_ownkeys_70e5fd461788.
        t102->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t110) = |type|.
        DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t111.
        t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = t110 p1 = t111 ).
        t94 = t102.
      ELSE.
        DATA t113 TYPE REF TO zcl_lnt_table.
        CLEAR t113.
        DATA t114 TYPE REF TO zcl_lnt_table.
        CLEAR t114.
        DATA t115 TYPE REF TO zif_lnt_object.
        CLEAR t115.
        DATA t116 TYPE REF TO zif_lnt_registry.
        t116 = t86->reg.
        DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t118.
        DATA(t120) = |TABL|.
        DATA(t121) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t121->has = abap_true.
        t121->value = t120.
        t118 = t121.
        DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t123.
        DATA t125 TYPE string.
        t125 = t88->value.
        DATA(t127) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t127->has = abap_true.
        t127->value = t125.
        t123 = t127.
        t115 = t116->get_object( i_type_9913 = t118 i_name = t123 ).
        DATA t129 TYPE REF TO object.
        t129 = t115.
        t114 ?= t129.
        t113 = t114.
        DATA t130 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t130.
        DATA t131 TYPE abap_bool.
        t131 = xsdbool( t113 IS BOUND ).
        IF t131 = abap_true.
          DATA t133 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t134 TYPE REF TO zcl_lnt_abstract_type.
          DATA t135 TYPE REF TO zcl_lnt_abstract_type.
          DATA t136 TYPE REF TO zcl_lnt_table.
          t136 = t113.
          DATA t138 TYPE REF TO zif_lnt_registry.
          t138 = t86->reg.
          DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t140.
          DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t141.
          t135 = t136->parse_type( i_reg_f149 = t138 i_data_element = t140 i_description = t141 ).
          t134 = t135.
          DATA t142 TYPE REF TO zif_lnt_object.
          t142 = t113.
          t133 = NEW zcl_lnt_ilookup_result( i_type_9913 = t134 i_object_19cd = t142 ).
          CREATE OBJECT t133->zlnt_view_ownkeys_b0e8086400eb.
          t133->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t145.
          t133->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t145 ).
          DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t146.
          IF t133->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t133->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t146 ).
          ENDIF.
          CREATE OBJECT t133->zlnt_json_ownkeys_70e5fd461788.
          t133->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t147) = |type|.
          DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t148.
          t133->zlnt_json_ownkeys_70e5fd461788->put( p0 = t147 p1 = t148 ).
          DATA(t149) = |object|.
          DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t150.
          IF t133->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t133->zlnt_json_ownkeys_70e5fd461788->put( p0 = t149 p1 = t150 ).
          ENDIF.
          t130 = t133.
        ELSE.
          DATA t152 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t152.
          DATA t153 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t153.
          DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t155.
          DATA t157 TYPE string.
          t157 = t88->value.
          DATA(t159) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t159->has = abap_true.
          t159->value = t157.
          t155 = t159.
          t153 = t86->lookup_ddls( i_name = t155 ).
          t152 = t153.
          DATA t161 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t161.
          DATA t162 TYPE abap_bool.
          t162 = xsdbool( t152 IS BOUND ).
          IF t162 = abap_true.
            t161 = t152.
          ELSE.
            DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t167.
            DATA t170 TYPE string.
            t170 = t88->value.
            DATA(t172) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t172->has = abap_true.
            t172->value = t170.
            t167 = t172.
            DATA t174 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t174.
            DATA(t175) = VALUE abap_bool( ).
            DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t176 = t167.
            DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t178.
            DATA(t180) = VALUE abap_bool( ).
            IF t176 IS INITIAL.
              t180 = abap_true.
            ELSEIF t176->has = abap_false.
              t180 = abap_true.
            ENDIF.
            t175 = t180.
            IF t175 = abap_true.
              DATA t182 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t183 TYPE REF TO zcl_lnt_abstract_type.
              DATA t184 TYPE REF TO zcl_lnt_unknown_type.
              DATA(t185) = |undefined, lookupView|.
              DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t186.
              t184 = NEW zcl_lnt_unknown_type( i_error = t185 i_qualified_name = t186 ).
              t183 = t184.
              DATA t187 TYPE REF TO zif_lnt_object.
              CLEAR t187.
              t182 = NEW zcl_lnt_ilookup_result( i_type_9913 = t183 i_object_19cd = t187 ).
              CREATE OBJECT t182->zlnt_view_ownkeys_b0e8086400eb.
              t182->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t189.
              t182->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t189 ).
              CREATE OBJECT t182->zlnt_json_ownkeys_70e5fd461788.
              t182->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t190) = |type|.
              DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t191.
              t182->zlnt_json_ownkeys_70e5fd461788->put( p0 = t190 p1 = t191 ).
              t174 = t182.
            ELSE.
              DATA t193 TYPE REF TO zcl_lnt_table.
              CLEAR t193.
              DATA t194 TYPE REF TO zcl_lnt_table.
              CLEAR t194.
              DATA t195 TYPE REF TO zif_lnt_object.
              CLEAR t195.
              DATA t196 TYPE REF TO zif_lnt_registry.
              t196 = t86->reg.
              DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t198.
              DATA(t200) = |VIEW|.
              DATA(t201) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t201->has = abap_true.
              t201->value = t200.
              t198 = t201.
              DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t203.
              DATA t205 TYPE string.
              t205 = t167->value.
              DATA(t207) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t207->has = abap_true.
              t207->value = t205.
              t203 = t207.
              t195 = t196->get_object( i_type_9913 = t198 i_name = t203 ).
              DATA t209 TYPE REF TO object.
              t209 = t195.
              t194 ?= t209.
              t193 = t194.
              DATA t210 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t210.
              DATA t211 TYPE abap_bool.
              t211 = xsdbool( t193 IS BOUND ).
              IF t211 = abap_true.
                DATA t213 TYPE REF TO zcl_lnt_ilookup_result.
                DATA t214 TYPE REF TO zcl_lnt_abstract_type.
                DATA t215 TYPE REF TO zcl_lnt_abstract_type.
                DATA t216 TYPE REF TO zcl_lnt_table.
                t216 = t193.
                DATA t218 TYPE REF TO zif_lnt_registry.
                t218 = t86->reg.
                DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t220.
                DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t221.
                t215 = t216->parse_type( i_reg_f149 = t218 i_data_element = t220 i_description = t221 ).
                t214 = t215.
                DATA t222 TYPE REF TO zif_lnt_object.
                t222 = t193.
                t213 = NEW zcl_lnt_ilookup_result( i_type_9913 = t214 i_object_19cd = t222 ).
                CREATE OBJECT t213->zlnt_view_ownkeys_b0e8086400eb.
                t213->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t225.
                t213->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t225 ).
                DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t226.
                IF t213->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t213->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t226 ).
                ENDIF.
                CREATE OBJECT t213->zlnt_json_ownkeys_70e5fd461788.
                t213->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t227) = |type|.
                DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t228.
                t213->zlnt_json_ownkeys_70e5fd461788->put( p0 = t227 p1 = t228 ).
                DATA(t229) = |object|.
                DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t230.
                IF t213->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t213->zlnt_json_ownkeys_70e5fd461788->put( p0 = t229 p1 = t230 ).
                ENDIF.
                t210 = t213.
              ELSE.
                DATA t231 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t231.
                DATA t232 TYPE abap_bool.
                DATA t233 TYPE REF TO zif_lnt_registry.
                t233 = t86->reg.
                DATA t235 TYPE string.
                t235 = t167->value.
                t232 = t233->in_error_namespace( i_name = t235 ).
                IF t232 = abap_true.
                  DATA t237 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t238 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t239 TYPE REF TO zcl_lnt_unknown_type.
                  DATA t240 TYPE string.
                  DATA t241 TYPE string.
                  t241 = t167->value.
                  DATA(t243) = | not found, lookupView|.
                  DATA(t244) = strlen( t241 ).
                  t240 = |{ t241 }{ t243 }|.
                  DATA t245 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t245.
                  t239 = NEW zcl_lnt_unknown_type( i_error = t240 i_qualified_name = t245 ).
                  t238 = t239.
                  DATA t246 TYPE REF TO zif_lnt_object.
                  CLEAR t246.
                  t237 = NEW zcl_lnt_ilookup_result( i_type_9913 = t238 i_object_19cd = t246 ).
                  CREATE OBJECT t237->zlnt_view_ownkeys_b0e8086400eb.
                  t237->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t248.
                  t237->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t248 ).
                  CREATE OBJECT t237->zlnt_json_ownkeys_70e5fd461788.
                  t237->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t249) = |type|.
                  DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t250.
                  t237->zlnt_json_ownkeys_70e5fd461788->put( p0 = t249 p1 = t250 ).
                  t231 = t237.
                ELSE.
                  DATA t251 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t251.
                  DATA t252 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t252.
                  DATA t253 TYPE REF TO zcl_lnt_void_type.
                  CLEAR t253.
                  DATA t254 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t254.
                  DATA t256 TYPE string.
                  t256 = t167->value.
                  DATA(t258) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t258->has = abap_true.
                  t258->value = t256.
                  t254 = t258.
                  DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t260.
                  t253 = zcl_lnt_void_type=>get_db65( i_voided = t254 i_qualified_name = t260 ).
                  t252 = t253.
                  DATA t261 TYPE REF TO zif_lnt_object.
                  CLEAR t261.
                  t251 = NEW zcl_lnt_ilookup_result( i_type_9913 = t252 i_object_19cd = t261 ).
                  CREATE OBJECT t251->zlnt_view_ownkeys_b0e8086400eb.
                  t251->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t263.
                  t251->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t263 ).
                  CREATE OBJECT t251->zlnt_json_ownkeys_70e5fd461788.
                  t251->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t264) = |type|.
                  DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t265.
                  t251->zlnt_json_ownkeys_70e5fd461788->put( p0 = t264 p1 = t265 ).
                  t231 = t251.
                ENDIF.
                t210 = t231.
              ENDIF.
              t174 = t210.
            ENDIF.
            t161 = t174.
          ENDIF.
          t130 = t161.
        ENDIF.
        t94 = t130.
      ENDIF.
      t84 = t94.
      DATA(t266) = VALUE abap_bool( ).
      DATA t267 TYPE abap_bool.
      DATA t268 TYPE abap_bool.
      DATA t269 TYPE REF TO zcl_lnt_abstract_type.
      t269 = t84->zlnt_view_read_sr_9be58e2d4893( ).
      t268 = xsdbool( t269 IS BOUND AND t269 IS INSTANCE OF zcl_lnt_unknown_type ).
      t267 = t268.
      IF t268 = abap_true.
        DATA(t271) = VALUE abap_bool( ).
        DATA t273 TYPE REF TO zif_lnt_object.
        t273 = t84->zlnt_view_read_sr_2de0200e6505( ).
        DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t275.
        t271 = xsdbool( t273 IS INITIAL ).
        t267 = t271.
      ENDIF.
      t266 = t267.
      IF t267 = abap_true.
        DATA t279 TYPE abap_bool.
        t279 = me->reg->in_error_namespace( i_name = t38 ).
        t266 = t279.
      ENDIF.
      IF t266 = abap_true.
        DATA t283 TYPE REF TO zcl_lnt_issue.
        CLEAR t283.
        DATA t285 TYPE REF TO zcl_lnt_abstract_token.
        DATA t286 TYPE REF TO zcl_lnt_expression_node.
        t286 = t19.
        t285 = t286->get_first_token( ).
        DATA t288 TYPE string.
        DATA t289 TYPE string.
        DATA(t290) = |CDS source "|.
        DATA(t292) = strlen( t290 ).
        t289 = |{ t290 }{ t38 }|.
        DATA(t293) = |" not found|.
        DATA(t294) = strlen( t289 ).
        t288 = |{ t289 }{ t293 }|.
        DATA(t295) = VALUE string( ).
        DATA t296 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t296.
        DATA t297 TYPE string.
        t297 = |cds_check_syntax|.
        DATA t299 TYPE string.
        t299 = |CDS Check Syntax|.
        DATA t301 TYPE string.
        DATA(t302) = |Checks CDS source, field, type, and semantic annotation refe|.
        t302 = t302 && |rences|.
        t301 = t302.
        DATA t303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t303.
        DATA(t306) = |Performs semantic checks which require other DDIC objects to|.
        t306 = t306 && | be available.\n\nMissing objects are only reported when their|.
        t306 = t306 && | names match the configured errorNamespace.|.
        DATA(t307) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t307->has = abap_true.
        t307->value = t306.
        t303 = t307.
        DATA t309 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t309.
        DATA t313 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t314 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t314.
        t313 = t314.
        DATA(t316) = |Syntax|.
        t313->load( ).
        APPEND t316 TO t313->items.
        t313->save( ).
        t309 = t313.
        DATA t319 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t319.
        DATA t321 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t321.
        DATA t323 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t323.
        DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t325.
        t296 = NEW zcl_lnt_irule_metadata( i_key = t297 i_title = t299 i_short_description = t301 i_bad_example = t319 i_good_example = t321 i_extended_information = t303 i_tags = t309 i_pragma = t323 i_pseudo_comment = t325 ).
        CREATE OBJECT t296->zlnt_view_ownkeys_b0e8086400eb.
        t296->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t327.
        t296->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t327 ).
        DATA t328 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t328.
        IF t296->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t296->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t328 ).
        ENDIF.
        DATA t329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t329.
        IF t296->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t296->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t329 ).
        ENDIF.
        DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t330.
        IF t296->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t296->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t330 ).
        ENDIF.
        DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t331.
        IF t296->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t296->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t331 ).
        ENDIF.
        CREATE OBJECT t296->zlnt_json_ownkeys_70e5fd461788.
        t296->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t332) = |key|.
        DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t333.
        t296->zlnt_json_ownkeys_70e5fd461788->put( p0 = t332 p1 = t333 ).
        DATA(t334) = |title|.
        DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t335.
        IF t296->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t296->zlnt_json_ownkeys_70e5fd461788->put( p0 = t334 p1 = t335 ).
        ENDIF.
        DATA(t336) = |shortDescription|.
        DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t337.
        IF t296->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t296->zlnt_json_ownkeys_70e5fd461788->put( p0 = t336 p1 = t337 ).
        ENDIF.
        DATA(t338) = |extendedInformation|.
        DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t339.
        IF t296->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t296->zlnt_json_ownkeys_70e5fd461788->put( p0 = t338 p1 = t339 ).
        ENDIF.
        DATA(t340) = |tags|.
        DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t341.
        IF t296->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t296->zlnt_json_ownkeys_70e5fd461788->put( p0 = t340 p1 = t341 ).
        ENDIF.
        t295 = t296->key.
        DATA t342 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t342 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t344 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t344.
        t283 = zcl_lnt_issue=>at_token( i_file = t4 i_token = t285 i_message_26cb = t288 i_key = t295 i_severity = t342 i_fix = t344 ).
        t3->load( ).
        APPEND t283 TO t3->items.
        t3->save( ).
      ENDIF.
      DATA(t345) = VALUE abap_bool( ).
      DATA t346 TYPE abap_bool.
      DATA t347 TYPE abap_bool.
      DATA t348 TYPE REF TO zcl_lnt_abstract_type.
      t348 = t84->zlnt_view_read_sr_9be58e2d4893( ).
      t347 = xsdbool( t348 IS BOUND AND t348 IS INSTANCE OF zcl_lnt_structure_type ).
      t346 = t347.
      IF t347 = abap_false.
        DATA t350 TYPE abap_bool.
        DATA t351 TYPE REF TO zcl_lnt_abstract_type.
        t351 = t84->zlnt_view_read_sr_9be58e2d4893( ).
        t350 = xsdbool( t351 IS BOUND AND t351 IS INSTANCE OF zcl_lnt_unknown_type ).
        t346 = t350.
      ENDIF.
      t345 = t346.
      IF t346 = abap_false.
        DATA t353 TYPE abap_bool.
        DATA t354 TYPE REF TO zcl_lnt_abstract_type.
        t354 = t84->zlnt_view_read_sr_9be58e2d4893( ).
        t353 = xsdbool( t354 IS BOUND AND t354 IS INSTANCE OF zcl_lnt_void_type ).
        t345 = t353.
      ENDIF.
      IF t345 = abap_true.
        DATA t356 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t356.
        DATA t358 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t359 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t359.
        t358 = t359.
        DATA t361 TYPE string.
        DATA(t363) = strlen( t38 ).
        t361 = t38.
        IF t361 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t361 TO UPPER CASE.
        ELSE.
          t361 = zlnt_runtime_uppe_91169605024d=>full( t361 ).
        ENDIF.
        t358->load( ).
        APPEND t361 TO t358->items.
        t358->save( ).
        t356 = t358.
        DATA t365 TYPE abap_bool.
        t365 = xsdbool( t69 IS BOUND ).
        IF t365 = abap_true.
          DATA t368 TYPE string.
          DATA t369 TYPE string.
          DATA t373 TYPE string.
          DATA t374 TYPE string.
          t374 = t69->concat_tokens( ).
          DATA t376 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CLEAR t376.
          DATA(t377) = | |.
          DATA(t378) = |g|.
          CREATE OBJECT t376 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t377 flags = t378 checked = abap_true.
          DATA(t379) = ||.
          DATA(t380) = strlen( t374 ).
          t373 = t376->replace( p0 = t374 p1 = t379 ).
          t369 = t373.
          DATA(t381) = strlen( t369 ).
          t368 = t369.
          IF t368 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t368 TO UPPER CASE.
          ELSE.
            t368 = zlnt_runtime_uppe_91169605024d=>full( t368 ).
          ENDIF.
          t356->load( ).
          APPEND t368 TO t356->items.
          t356->save( ).
        ENDIF.
        DATA t383 TYPE REF TO zcl_lnt_rl_source.
        DATA t384 TYPE string.
        t384 = t38.
        DATA t386 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t386 = t356.
        DATA t388 TYPE REF TO zif_lnt_union_48da8d64.
        DATA t389 TYPE REF TO zif_lnt_union_48da8d64.
        DATA t390 TYPE REF TO zcl_lnt_abstract_type.
        t390 = t84->zlnt_view_read_sr_9be58e2d4893( ).
        t389 ?= t390.
        t388 = t389.
        t383 = NEW zcl_lnt_rl_source( i_entity = t384 i_names = t386 i_type_9913 = t388 ).
        CREATE OBJECT t383->zlnt_view_ownkeys_b0e8086400eb.
        t383->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t392.
        t383->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `entity` p1 = t392 ).
        DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t393.
        IF t383->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t383->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `names` p1 = t393 ).
        ENDIF.
        DATA t394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t394.
        IF t383->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t383->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t394 ).
        ENDIF.
        CREATE OBJECT t383->zlnt_json_ownkeys_70e5fd461788.
        t383->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t395) = |entity|.
        DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t396.
        t383->zlnt_json_ownkeys_70e5fd461788->put( p0 = t395 p1 = t396 ).
        DATA(t397) = |names|.
        DATA t398 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t398.
        IF t383->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t383->zlnt_json_ownkeys_70e5fd461788->put( p0 = t397 p1 = t398 ).
        ENDIF.
        DATA(t399) = |type|.
        DATA t400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t400.
        IF t383->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t383->zlnt_json_ownkeys_70e5fd461788->put( p0 = t399 p1 = t400 ).
        ENDIF.
        t5->load( ).
        APPEND t383 TO t5->items.
        t5->save( ).
      ENDIF.
    ENDDO.
    result = t5.

  ENDMETHOD.

  METHOD check_relations.
    DATA(t2) = i_ddic.
    DATA(t3) = i_issues.
    DATA(t4) = i_file.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1092_b2702bebb604.
    t5 = i_tree->find_all_expressions_recursive( i_type_9913 = t7 ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA t9 TYPE REF TO object.
    DATA(t10) = VALUE i( ).
    DO.
      t5->load( ).
      IF t10 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t5->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t14 = t8->get_direct_tokens( ).
      t13 = t14.
      DATA t16 TYPE abap_bool.
      DATA t17 TYPE i.
      t13->load( ).
      t17 = lines( t13->items ).
      DATA(t19) = 0.
      t16 = xsdbool( t17 = t19 ).
      IF t16 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t20) = VALUE string( ).
      DATA(t21) = VALUE string( ).
      DATA t22 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t22.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t24.
      t23 = t24.
      DATA t26 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t26.
      DATA t27 TYPE REF TO object.
      CLEAR t27.
      DATA(t28) = VALUE i( ).
      DO.
        t13->load( ).
        IF t28 >= lines( t13->items ).
          EXIT.
        ENDIF.
        CLEAR t27.
        READ TABLE t13->items INDEX t28 + 1 INTO t27.
        t28 = t28 + 1.
        DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t29.
        CLEAR t26.
        IF t27 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t29 ?= t27.
          DATA t30 TYPE REF TO object.
          t30 = t29->as_ref( ).
          t26 ?= t30.
        ELSE.
          t26 ?= t27.
        ENDIF.
        DATA t32 TYPE string.
        DATA t35 TYPE string.
        t35 = t26->str.
        t32 = t35.
        t23->load( ).
        APPEND t32 TO t23->items.
        t23->save( ).
      ENDDO.
      t22 = t23.
      DATA(t38) = ||.
      DATA(t39) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t39->has = abap_true.
      t39->value = t38.
      t21 = t22->join( p0 = t39 ).
      t20 = t21.
      DATA t40 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t40.
      DATA t42 TYPE REF TO zcl_lnt_ddic.
      t42 = t2.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      DATA(t48) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t48->has = abap_true.
      t48->value = t20.
      t44 = t48.
      DATA t50 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t50.
      DATA(t51) = VALUE abap_bool( ).
      DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t52 = t44.
      DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t54.
      DATA(t56) = VALUE abap_bool( ).
      IF t52 IS INITIAL.
        t56 = abap_true.
      ELSEIF t52->has = abap_false.
        t56 = abap_true.
      ENDIF.
      t51 = t56.
      IF t51 = abap_true.
        DATA t58 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t59 TYPE REF TO zcl_lnt_abstract_type.
        DATA t60 TYPE REF TO zcl_lnt_unknown_type.
        DATA(t61) = |undefined, lookupTableOrView|.
        DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t62.
        t60 = NEW zcl_lnt_unknown_type( i_error = t61 i_qualified_name = t62 ).
        t59 = t60.
        DATA t63 TYPE REF TO zif_lnt_object.
        CLEAR t63.
        t58 = NEW zcl_lnt_ilookup_result( i_type_9913 = t59 i_object_19cd = t63 ).
        CREATE OBJECT t58->zlnt_view_ownkeys_b0e8086400eb.
        t58->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t65.
        t58->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t65 ).
        CREATE OBJECT t58->zlnt_json_ownkeys_70e5fd461788.
        t58->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t66) = |type|.
        DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t67.
        t58->zlnt_json_ownkeys_70e5fd461788->put( p0 = t66 p1 = t67 ).
        t50 = t58.
      ELSE.
        DATA t69 TYPE REF TO zcl_lnt_table.
        CLEAR t69.
        DATA t70 TYPE REF TO zcl_lnt_table.
        CLEAR t70.
        DATA t71 TYPE REF TO zif_lnt_object.
        CLEAR t71.
        DATA t72 TYPE REF TO zif_lnt_registry.
        t72 = t42->reg.
        DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t74.
        DATA(t76) = |TABL|.
        DATA(t77) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t77->has = abap_true.
        t77->value = t76.
        t74 = t77.
        DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t79.
        DATA t81 TYPE string.
        t81 = t44->value.
        DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t83->has = abap_true.
        t83->value = t81.
        t79 = t83.
        t71 = t72->get_object( i_type_9913 = t74 i_name = t79 ).
        DATA t85 TYPE REF TO object.
        t85 = t71.
        t70 ?= t85.
        t69 = t70.
        DATA t86 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t86.
        DATA t87 TYPE abap_bool.
        t87 = xsdbool( t69 IS BOUND ).
        IF t87 = abap_true.
          DATA t89 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t90 TYPE REF TO zcl_lnt_abstract_type.
          DATA t91 TYPE REF TO zcl_lnt_abstract_type.
          DATA t92 TYPE REF TO zcl_lnt_table.
          t92 = t69.
          DATA t94 TYPE REF TO zif_lnt_registry.
          t94 = t42->reg.
          DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t96.
          DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t97.
          t91 = t92->parse_type( i_reg_f149 = t94 i_data_element = t96 i_description = t97 ).
          t90 = t91.
          DATA t98 TYPE REF TO zif_lnt_object.
          t98 = t69.
          t89 = NEW zcl_lnt_ilookup_result( i_type_9913 = t90 i_object_19cd = t98 ).
          CREATE OBJECT t89->zlnt_view_ownkeys_b0e8086400eb.
          t89->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t101.
          t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t101 ).
          DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t102.
          IF t89->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t89->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t102 ).
          ENDIF.
          CREATE OBJECT t89->zlnt_json_ownkeys_70e5fd461788.
          t89->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t103) = |type|.
          DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t104.
          t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t103 p1 = t104 ).
          DATA(t105) = |object|.
          DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t106.
          IF t89->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t89->zlnt_json_ownkeys_70e5fd461788->put( p0 = t105 p1 = t106 ).
          ENDIF.
          t86 = t89.
        ELSE.
          DATA t108 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t108.
          DATA t109 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t109.
          DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t111.
          DATA t113 TYPE string.
          t113 = t44->value.
          DATA(t115) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t115->has = abap_true.
          t115->value = t113.
          t111 = t115.
          t109 = t42->lookup_ddls( i_name = t111 ).
          t108 = t109.
          DATA t117 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t117.
          DATA t118 TYPE abap_bool.
          t118 = xsdbool( t108 IS BOUND ).
          IF t118 = abap_true.
            t117 = t108.
          ELSE.
            DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t123.
            DATA t126 TYPE string.
            t126 = t44->value.
            DATA(t128) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t128->has = abap_true.
            t128->value = t126.
            t123 = t128.
            DATA t130 TYPE REF TO zcl_lnt_ilookup_result.
            CLEAR t130.
            DATA(t131) = VALUE abap_bool( ).
            DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t132 = t123.
            DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t134.
            DATA(t136) = VALUE abap_bool( ).
            IF t132 IS INITIAL.
              t136 = abap_true.
            ELSEIF t132->has = abap_false.
              t136 = abap_true.
            ENDIF.
            t131 = t136.
            IF t131 = abap_true.
              DATA t138 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t139 TYPE REF TO zcl_lnt_abstract_type.
              DATA t140 TYPE REF TO zcl_lnt_unknown_type.
              DATA(t141) = |undefined, lookupView|.
              DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t142.
              t140 = NEW zcl_lnt_unknown_type( i_error = t141 i_qualified_name = t142 ).
              t139 = t140.
              DATA t143 TYPE REF TO zif_lnt_object.
              CLEAR t143.
              t138 = NEW zcl_lnt_ilookup_result( i_type_9913 = t139 i_object_19cd = t143 ).
              CREATE OBJECT t138->zlnt_view_ownkeys_b0e8086400eb.
              t138->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t145.
              t138->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t145 ).
              CREATE OBJECT t138->zlnt_json_ownkeys_70e5fd461788.
              t138->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t146) = |type|.
              DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t147.
              t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = t146 p1 = t147 ).
              t130 = t138.
            ELSE.
              DATA t149 TYPE REF TO zcl_lnt_table.
              CLEAR t149.
              DATA t150 TYPE REF TO zcl_lnt_table.
              CLEAR t150.
              DATA t151 TYPE REF TO zif_lnt_object.
              CLEAR t151.
              DATA t152 TYPE REF TO zif_lnt_registry.
              t152 = t42->reg.
              DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t154.
              DATA(t156) = |VIEW|.
              DATA(t157) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t157->has = abap_true.
              t157->value = t156.
              t154 = t157.
              DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t159.
              DATA t161 TYPE string.
              t161 = t123->value.
              DATA(t163) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t163->has = abap_true.
              t163->value = t161.
              t159 = t163.
              t151 = t152->get_object( i_type_9913 = t154 i_name = t159 ).
              DATA t165 TYPE REF TO object.
              t165 = t151.
              t150 ?= t165.
              t149 = t150.
              DATA t166 TYPE REF TO zcl_lnt_ilookup_result.
              CLEAR t166.
              DATA t167 TYPE abap_bool.
              t167 = xsdbool( t149 IS BOUND ).
              IF t167 = abap_true.
                DATA t169 TYPE REF TO zcl_lnt_ilookup_result.
                DATA t170 TYPE REF TO zcl_lnt_abstract_type.
                DATA t171 TYPE REF TO zcl_lnt_abstract_type.
                DATA t172 TYPE REF TO zcl_lnt_table.
                t172 = t149.
                DATA t174 TYPE REF TO zif_lnt_registry.
                t174 = t42->reg.
                DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t176.
                DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t177.
                t171 = t172->parse_type( i_reg_f149 = t174 i_data_element = t176 i_description = t177 ).
                t170 = t171.
                DATA t178 TYPE REF TO zif_lnt_object.
                t178 = t149.
                t169 = NEW zcl_lnt_ilookup_result( i_type_9913 = t170 i_object_19cd = t178 ).
                CREATE OBJECT t169->zlnt_view_ownkeys_b0e8086400eb.
                t169->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t181.
                t169->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t181 ).
                DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t182.
                IF t169->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t169->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t182 ).
                ENDIF.
                CREATE OBJECT t169->zlnt_json_ownkeys_70e5fd461788.
                t169->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t183) = |type|.
                DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t184.
                t169->zlnt_json_ownkeys_70e5fd461788->put( p0 = t183 p1 = t184 ).
                DATA(t185) = |object|.
                DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t186.
                IF t169->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t169->zlnt_json_ownkeys_70e5fd461788->put( p0 = t185 p1 = t186 ).
                ENDIF.
                t166 = t169.
              ELSE.
                DATA t187 TYPE REF TO zcl_lnt_ilookup_result.
                CLEAR t187.
                DATA t188 TYPE abap_bool.
                DATA t189 TYPE REF TO zif_lnt_registry.
                t189 = t42->reg.
                DATA t191 TYPE string.
                t191 = t123->value.
                t188 = t189->in_error_namespace( i_name = t191 ).
                IF t188 = abap_true.
                  DATA t193 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t194 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t195 TYPE REF TO zcl_lnt_unknown_type.
                  DATA t196 TYPE string.
                  DATA t197 TYPE string.
                  t197 = t123->value.
                  DATA(t199) = | not found, lookupView|.
                  DATA(t200) = strlen( t197 ).
                  t196 = |{ t197 }{ t199 }|.
                  DATA t201 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t201.
                  t195 = NEW zcl_lnt_unknown_type( i_error = t196 i_qualified_name = t201 ).
                  t194 = t195.
                  DATA t202 TYPE REF TO zif_lnt_object.
                  CLEAR t202.
                  t193 = NEW zcl_lnt_ilookup_result( i_type_9913 = t194 i_object_19cd = t202 ).
                  CREATE OBJECT t193->zlnt_view_ownkeys_b0e8086400eb.
                  t193->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t204.
                  t193->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t204 ).
                  CREATE OBJECT t193->zlnt_json_ownkeys_70e5fd461788.
                  t193->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t205) = |type|.
                  DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t206.
                  t193->zlnt_json_ownkeys_70e5fd461788->put( p0 = t205 p1 = t206 ).
                  t187 = t193.
                ELSE.
                  DATA t207 TYPE REF TO zcl_lnt_ilookup_result.
                  CLEAR t207.
                  DATA t208 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t208.
                  DATA t209 TYPE REF TO zcl_lnt_void_type.
                  CLEAR t209.
                  DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t210.
                  DATA t212 TYPE string.
                  t212 = t123->value.
                  DATA(t214) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t214->has = abap_true.
                  t214->value = t212.
                  t210 = t214.
                  DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t216.
                  t209 = zcl_lnt_void_type=>get_db65( i_voided = t210 i_qualified_name = t216 ).
                  t208 = t209.
                  DATA t217 TYPE REF TO zif_lnt_object.
                  CLEAR t217.
                  t207 = NEW zcl_lnt_ilookup_result( i_type_9913 = t208 i_object_19cd = t217 ).
                  CREATE OBJECT t207->zlnt_view_ownkeys_b0e8086400eb.
                  t207->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t219.
                  t207->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t219 ).
                  CREATE OBJECT t207->zlnt_json_ownkeys_70e5fd461788.
                  t207->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t220) = |type|.
                  DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t221.
                  t207->zlnt_json_ownkeys_70e5fd461788->put( p0 = t220 p1 = t221 ).
                  t187 = t207.
                ENDIF.
                t166 = t187.
              ENDIF.
              t130 = t166.
            ENDIF.
            t117 = t130.
          ENDIF.
          t86 = t117.
        ENDIF.
        t50 = t86.
      ENDIF.
      t40 = t50.
      DATA(t222) = VALUE abap_bool( ).
      DATA t223 TYPE abap_bool.
      DATA t224 TYPE abap_bool.
      DATA t225 TYPE REF TO zcl_lnt_abstract_type.
      t225 = t40->zlnt_view_read_sr_9be58e2d4893( ).
      t224 = xsdbool( t225 IS BOUND AND t225 IS INSTANCE OF zcl_lnt_unknown_type ).
      t223 = t224.
      IF t224 = abap_true.
        DATA(t227) = VALUE abap_bool( ).
        DATA t229 TYPE REF TO zif_lnt_object.
        t229 = t40->zlnt_view_read_sr_2de0200e6505( ).
        DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t231.
        t227 = xsdbool( t229 IS INITIAL ).
        t223 = t227.
      ENDIF.
      t222 = t223.
      IF t223 = abap_true.
        DATA t235 TYPE abap_bool.
        t235 = me->reg->in_error_namespace( i_name = t20 ).
        t222 = t235.
      ENDIF.
      IF t222 = abap_true.
        DATA t239 TYPE REF TO zcl_lnt_issue.
        CLEAR t239.
        DATA t241 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t241.
        DATA t243 TYPE REF TO object.
        CLEAR t243.
        t13->load( ).
        CLEAR t243.
        READ TABLE t13->items INDEX 1 INTO t243.
        DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t244.
        CLEAR t241.
        IF t243 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t244 ?= t243.
          DATA t245 TYPE REF TO object.
          t245 = t244->as_ref( ).
          t241 ?= t245.
        ELSE.
          t241 ?= t243.
        ENDIF.
        DATA t246 TYPE string.
        DATA t247 TYPE string.
        DATA(t248) = |CDS source "|.
        DATA(t250) = strlen( t248 ).
        t247 = |{ t248 }{ t20 }|.
        DATA(t251) = |" not found|.
        DATA(t252) = strlen( t247 ).
        t246 = |{ t247 }{ t251 }|.
        DATA(t253) = VALUE string( ).
        DATA t254 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t254.
        DATA t255 TYPE string.
        t255 = |cds_check_syntax|.
        DATA t257 TYPE string.
        t257 = |CDS Check Syntax|.
        DATA t259 TYPE string.
        DATA(t260) = |Checks CDS source, field, type, and semantic annotation refe|.
        t260 = t260 && |rences|.
        t259 = t260.
        DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t261.
        DATA(t264) = |Performs semantic checks which require other DDIC objects to|.
        t264 = t264 && | be available.\n\nMissing objects are only reported when their|.
        t264 = t264 && | names match the configured errorNamespace.|.
        DATA(t265) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t265->has = abap_true.
        t265->value = t264.
        t261 = t265.
        DATA t267 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t267.
        DATA t271 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t272 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t272.
        t271 = t272.
        DATA(t274) = |Syntax|.
        t271->load( ).
        APPEND t274 TO t271->items.
        t271->save( ).
        t267 = t271.
        DATA t277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t277.
        DATA t279 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t279.
        DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t281.
        DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t283.
        t254 = NEW zcl_lnt_irule_metadata( i_key = t255 i_title = t257 i_short_description = t259 i_bad_example = t277 i_good_example = t279 i_extended_information = t261 i_tags = t267 i_pragma = t281 i_pseudo_comment = t283 ).
        CREATE OBJECT t254->zlnt_view_ownkeys_b0e8086400eb.
        t254->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t285.
        t254->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t285 ).
        DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t286.
        IF t254->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t254->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t286 ).
        ENDIF.
        DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t287.
        IF t254->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t254->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t287 ).
        ENDIF.
        DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t288.
        IF t254->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t254->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t288 ).
        ENDIF.
        DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t289.
        IF t254->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t254->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t289 ).
        ENDIF.
        CREATE OBJECT t254->zlnt_json_ownkeys_70e5fd461788.
        t254->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t290) = |key|.
        DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t291.
        t254->zlnt_json_ownkeys_70e5fd461788->put( p0 = t290 p1 = t291 ).
        DATA(t292) = |title|.
        DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t293.
        IF t254->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t254->zlnt_json_ownkeys_70e5fd461788->put( p0 = t292 p1 = t293 ).
        ENDIF.
        DATA(t294) = |shortDescription|.
        DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t295.
        IF t254->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t254->zlnt_json_ownkeys_70e5fd461788->put( p0 = t294 p1 = t295 ).
        ENDIF.
        DATA(t296) = |extendedInformation|.
        DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t297.
        IF t254->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t254->zlnt_json_ownkeys_70e5fd461788->put( p0 = t296 p1 = t297 ).
        ENDIF.
        DATA(t298) = |tags|.
        DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t299.
        IF t254->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t254->zlnt_json_ownkeys_70e5fd461788->put( p0 = t298 p1 = t299 ).
        ENDIF.
        t253 = t254->key.
        DATA t300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t300 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t302 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t302.
        t239 = zcl_lnt_issue=>at_token( i_file = t4 i_token = t241 i_message_26cb = t246 i_key = t253 i_severity = t300 i_fix = t302 ).
        t3->load( ).
        APPEND t239 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD check_types.
    DATA(t2) = i_ddic.
    DATA(t3) = i_issues.
    DATA(t4) = i_file.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1075_bb8c443f99f5.
    t5 = i_tree->find_all_expressions_recursive( i_type_9913 = t7 ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA t9 TYPE REF TO object.
    DATA(t10) = VALUE i( ).
    DO.
      t5->load( ).
      IF t10 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t5->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA(t13) = VALUE string( ).
      DATA(t14) = VALUE string( ).
      DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t15.
      DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t17.
      t16 = t17.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
      t18 = t8->find_direct_expressions( i_type_9913 = t20 ).
      DATA t21 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t21.
      DATA t22 TYPE REF TO object.
      CLEAR t22.
      DATA(t23) = VALUE i( ).
      DO.
        t18->load( ).
        IF t23 >= lines( t18->items ).
          EXIT.
        ENDIF.
        CLEAR t22.
        READ TABLE t18->items INDEX t23 + 1 INTO t22.
        t23 = t23 + 1.
        DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t24.
        CLEAR t21.
        IF t22 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t24 ?= t22.
          DATA t25 TYPE REF TO object.
          t25 = t24->as_ref( ).
          t21 ?= t25.
        ELSE.
          t21 ?= t22.
        ENDIF.
        DATA t27 TYPE string.
        DATA t30 TYPE string.
        DATA t31 TYPE string.
        t31 = t21->concat_tokens( ).
        DATA t33 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t33.
        DATA(t34) = | |.
        DATA(t35) = |g|.
        CREATE OBJECT t33 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t34 flags = t35 checked = abap_true.
        DATA(t36) = ||.
        DATA(t37) = strlen( t31 ).
        t30 = t33->replace( p0 = t31 p1 = t36 ).
        t27 = t30.
        t16->load( ).
        APPEND t27 TO t16->items.
        t16->save( ).
      ENDDO.
      t15 = t16.
      DATA(t39) = |.|.
      DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t40->has = abap_true.
      t40->value = t39.
      t14 = t15->join( p0 = t40 ).
      t13 = t14.
      DATA t41 TYPE abap_bool.
      DATA t42 TYPE abap_bool.
      DATA(t44) = ||.
      t42 = xsdbool( t13 = t44 ).
      t41 = t42.
      IF t42 = abap_false.
        DATA(t45) = VALUE abap_bool( ).
        DATA t46 TYPE string.
        DATA(t48) = strlen( t13 ).
        t46 = t13.
        IF t46 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t46 TO UPPER CASE.
        ELSE.
          t46 = zlnt_runtime_uppe_91169605024d=>full( t46 ).
        ENDIF.
        DATA(t49) = |ABAP.|.
        DATA(t50) = strlen( t46 ).
        DATA t51 TYPE i.
        DATA(t52) = VALUE i( ).
        DATA(t53) = VALUE string( ).
        t51 = strlen( t49 ).
        IF t51 = 0.
          t45 = abap_true.
        ELSEIF t51 <= t50.
          t52 = 0.
          t53 = t46+t52(t51).
          IF t53 = t49.
            t45 = abap_true.
          ENDIF.
        ENDIF.
        t41 = t45.
      ENDIF.
      IF t41 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t54 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t54.
      DATA t56 TYPE REF TO zcl_lnt_ddic.
      t56 = t2.
      DATA t58 TYPE string.
      t58 = t13.
      DATA t61 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t62 TYPE REF TO zcl_lnt_ilookup_result.
      t62 = t56->lookup_no_void( i_name = t58 ).
      t61 = t62.
      DATA t65 TYPE REF TO zcl_lnt_ilookup_result.
      CLEAR t65.
      DATA t66 TYPE abap_bool.
      t66 = xsdbool( t61 IS BOUND ).
      IF t66 = abap_true.
        t65 = t61.
      ELSE.
        DATA t70 TYPE REF TO zcl_lnt_ilookup_result.
        CLEAR t70.
        DATA t71 TYPE abap_bool.
        DATA t72 TYPE REF TO zif_lnt_registry.
        t72 = t56->reg.
        t71 = t72->in_error_namespace( i_name = t58 ).
        IF t71 = abap_true.
          DATA t75 TYPE REF TO zcl_lnt_ilookup_result.
          DATA t76 TYPE REF TO zcl_lnt_abstract_type.
          DATA t77 TYPE REF TO zcl_lnt_unknown_type.
          DATA t78 TYPE string.
          DATA(t80) = | not found, lookup|.
          DATA(t81) = strlen( t58 ).
          t78 = |{ t58 }{ t80 }|.
          DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t82.
          t77 = NEW zcl_lnt_unknown_type( i_error = t78 i_qualified_name = t82 ).
          t76 = t77.
          DATA t83 TYPE REF TO zif_lnt_object.
          CLEAR t83.
          t75 = NEW zcl_lnt_ilookup_result( i_type_9913 = t76 i_object_19cd = t83 ).
          CREATE OBJECT t75->zlnt_view_ownkeys_b0e8086400eb.
          t75->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t85.
          t75->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t85 ).
          CREATE OBJECT t75->zlnt_json_ownkeys_70e5fd461788.
          t75->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t86) = |type|.
          DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t87.
          t75->zlnt_json_ownkeys_70e5fd461788->put( p0 = t86 p1 = t87 ).
          t70 = t75.
        ELSE.
          DATA t88 TYPE REF TO zcl_lnt_ilookup_result.
          CLEAR t88.
          DATA t89 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t89.
          DATA t90 TYPE REF TO zcl_lnt_void_type.
          CLEAR t90.
          DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t91.
          DATA(t94) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t94->has = abap_true.
          t94->value = t58.
          t91 = t94.
          DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t96.
          t90 = zcl_lnt_void_type=>get_db65( i_voided = t91 i_qualified_name = t96 ).
          t89 = t90.
          DATA t97 TYPE REF TO zif_lnt_object.
          CLEAR t97.
          t88 = NEW zcl_lnt_ilookup_result( i_type_9913 = t89 i_object_19cd = t97 ).
          CREATE OBJECT t88->zlnt_view_ownkeys_b0e8086400eb.
          t88->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t99.
          t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t99 ).
          CREATE OBJECT t88->zlnt_json_ownkeys_70e5fd461788.
          t88->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t100) = |type|.
          DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t101.
          t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = t100 p1 = t101 ).
          t70 = t88.
        ENDIF.
        t65 = t70.
      ENDIF.
      t54 = t65.
      DATA(t102) = VALUE abap_bool( ).
      DATA t103 TYPE abap_bool.
      DATA t104 TYPE abap_bool.
      DATA t105 TYPE REF TO zcl_lnt_abstract_type.
      t105 = t54->zlnt_view_read_sr_9be58e2d4893( ).
      t104 = xsdbool( t105 IS BOUND AND t105 IS INSTANCE OF zcl_lnt_unknown_type ).
      t103 = t104.
      IF t104 = abap_true.
        DATA(t107) = VALUE abap_bool( ).
        DATA t109 TYPE REF TO zif_lnt_object.
        t109 = t54->zlnt_view_read_sr_2de0200e6505( ).
        DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t111.
        t107 = xsdbool( t109 IS INITIAL ).
        t103 = t107.
      ENDIF.
      t102 = t103.
      IF t103 = abap_true.
        DATA t115 TYPE abap_bool.
        t115 = me->reg->in_error_namespace( i_name = t13 ).
        t102 = t115.
      ENDIF.
      IF t102 = abap_true.
        DATA t119 TYPE REF TO zcl_lnt_issue.
        CLEAR t119.
        DATA t121 TYPE REF TO zcl_lnt_abstract_token.
        t121 = t8->get_first_token( ).
        DATA t123 TYPE string.
        DATA t124 TYPE string.
        DATA(t125) = |CDS type "|.
        DATA(t127) = strlen( t125 ).
        t124 = |{ t125 }{ t13 }|.
        DATA(t128) = |" not found|.
        DATA(t129) = strlen( t124 ).
        t123 = |{ t124 }{ t128 }|.
        DATA(t130) = VALUE string( ).
        DATA t131 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t131.
        DATA t132 TYPE string.
        t132 = |cds_check_syntax|.
        DATA t134 TYPE string.
        t134 = |CDS Check Syntax|.
        DATA t136 TYPE string.
        DATA(t137) = |Checks CDS source, field, type, and semantic annotation refe|.
        t137 = t137 && |rences|.
        t136 = t137.
        DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t138.
        DATA(t141) = |Performs semantic checks which require other DDIC objects to|.
        t141 = t141 && | be available.\n\nMissing objects are only reported when their|.
        t141 = t141 && | names match the configured errorNamespace.|.
        DATA(t142) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t142->has = abap_true.
        t142->value = t141.
        t138 = t142.
        DATA t144 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t144.
        DATA t148 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t149 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t149.
        t148 = t149.
        DATA(t151) = |Syntax|.
        t148->load( ).
        APPEND t151 TO t148->items.
        t148->save( ).
        t144 = t148.
        DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t154.
        DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t156.
        DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t158.
        DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t160.
        t131 = NEW zcl_lnt_irule_metadata( i_key = t132 i_title = t134 i_short_description = t136 i_bad_example = t154 i_good_example = t156 i_extended_information = t138 i_tags = t144 i_pragma = t158 i_pseudo_comment = t160 ).
        CREATE OBJECT t131->zlnt_view_ownkeys_b0e8086400eb.
        t131->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t162.
        t131->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t162 ).
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t163.
        IF t131->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t131->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t163 ).
        ENDIF.
        DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t164.
        IF t131->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t131->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t164 ).
        ENDIF.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t165.
        IF t131->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t131->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t165 ).
        ENDIF.
        DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t166.
        IF t131->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t131->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t166 ).
        ENDIF.
        CREATE OBJECT t131->zlnt_json_ownkeys_70e5fd461788.
        t131->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t167) = |key|.
        DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t168.
        t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = t167 p1 = t168 ).
        DATA(t169) = |title|.
        DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t170.
        IF t131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = t169 p1 = t170 ).
        ENDIF.
        DATA(t171) = |shortDescription|.
        DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t172.
        IF t131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = t171 p1 = t172 ).
        ENDIF.
        DATA(t173) = |extendedInformation|.
        DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t174.
        IF t131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = t173 p1 = t174 ).
        ENDIF.
        DATA(t175) = |tags|.
        DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t176.
        IF t131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = t175 p1 = t176 ).
        ENDIF.
        t130 = t131->key.
        DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t177 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t179 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t179.
        t119 = zcl_lnt_issue=>at_token( i_file = t4 i_token = t121 i_message_26cb = t123 i_key = t130 i_severity = t177 i_fix = t179 ).
        t3->load( ).
        APPEND t119 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD check_root_projection.
    DATA(t2) = i_ddic.
    DATA(t3) = i_issues.
    DATA(t4) = i_file.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1105_a133f02ea9f8.
    t6 = i_tree->find_first_expression( i_type_9913 = t8 ).
    t5 = t6.
    DATA t9 TYPE REF TO zcl_lnt_abstract_token.
    DATA t11 TYPE REF TO zcl_lnt_expression_node.
    t11 = t5.
    DATA t13 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t14) = xsdbool( t11 IS INITIAL ).
    IF t14 = abap_true.
    ELSE.
      DATA t17 TYPE REF TO zcl_lnt_abstract_token.
      DATA t18 TYPE REF TO zcl_lnt_expression_node.
      t18 = t11.
      DATA(t20) = |ROOT|.
      t17 = t18->find_direct_token_by_text( i_text = t20 ).
      t13 = t17.
    ENDIF.
    t9 = t13.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = VALUE abap_bool( ).
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t22 = xsdbool( t5 IS INITIAL ).
    t21 = t22.
    IF t22 = abap_false.
      DATA(t29) = VALUE abap_bool( ).
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t29 = xsdbool( t9 IS INITIAL ).
      t21 = t29.
    ENDIF.
    IF t21 = abap_true.
      RETURN.
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t38 TYPE REF TO zcl_lnt_expression_node.
    t38 = t5.
    DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    t37 = t38->find_direct_expressions( i_type_9913 = t40 ).
    t36 = t37.
    DATA t41 TYPE REF TO zcl_lnt_expression_node.
    DATA t42 TYPE REF TO zcl_lnt_expression_node.
    DATA t44 TYPE REF TO object.
    t36->load( ).
    READ TABLE t36->items INDEX 2 INTO t44.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t44 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t45 ?= t44.
      DATA t46 TYPE REF TO object.
      t46 = t45->as_ref( ).
      t42 ?= t46.
    ELSE.
      t42 ?= t44.
    ENDIF.
    t41 = t42.
    DATA(t47) = VALUE abap_bool( ).
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t47 = xsdbool( t41 IS INITIAL ).
    IF t47 = abap_true.
      RETURN.
    ENDIF.
    DATA t54 TYPE string.
    DATA t58 TYPE string.
    DATA t59 TYPE string.
    t59 = t41->concat_tokens( ).
    DATA t61 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t62) = | |.
    DATA(t63) = |g|.
    CREATE OBJECT t61 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t62 flags = t63 checked = abap_true.
    DATA(t64) = ||.
    DATA(t65) = strlen( t59 ).
    t58 = t61->replace( p0 = t59 p1 = t64 ).
    t54 = t58.
    DATA t66 TYPE REF TO zif_lnt_object.
    DATA t67 TYPE REF TO zif_lnt_object.
    DATA t68 TYPE REF TO zcl_lnt_ilookup_result.
    DATA t69 TYPE REF TO zcl_lnt_ddic.
    t69 = t2.
    DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t75) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t75->has = abap_true.
    t75->value = t54.
    t71 = t75.
    DATA t77 TYPE REF TO zcl_lnt_ilookup_result.
    DATA(t78) = VALUE abap_bool( ).
    DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t79 = t71.
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t83) = VALUE abap_bool( ).
    IF t79 IS INITIAL.
      t83 = abap_true.
    ELSEIF t79->has = abap_false.
      t83 = abap_true.
    ENDIF.
    t78 = t83.
    IF t78 = abap_true.
      DATA t85 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t86 TYPE REF TO zcl_lnt_abstract_type.
      DATA t87 TYPE REF TO zcl_lnt_unknown_type.
      DATA(t88) = |undefined, lookupTableOrView|.
      DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t87 = NEW zcl_lnt_unknown_type( i_error = t88 i_qualified_name = t89 ).
      t86 = t87.
      DATA t90 TYPE REF TO zif_lnt_object.
      t85 = NEW zcl_lnt_ilookup_result( i_type_9913 = t86 i_object_19cd = t90 ).
      CREATE OBJECT t85->zlnt_view_ownkeys_b0e8086400eb.
      t85->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t85->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t92 ).
      CREATE OBJECT t85->zlnt_json_ownkeys_70e5fd461788.
      t85->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t93) = |type|.
      DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t85->zlnt_json_ownkeys_70e5fd461788->put( p0 = t93 p1 = t94 ).
      t77 = t85.
    ELSE.
      DATA t96 TYPE REF TO zcl_lnt_table.
      DATA t97 TYPE REF TO zcl_lnt_table.
      DATA t98 TYPE REF TO zif_lnt_object.
      DATA t99 TYPE REF TO zif_lnt_registry.
      t99 = t69->reg.
      DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t103) = |TABL|.
      DATA(t104) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t104->has = abap_true.
      t104->value = t103.
      t101 = t104.
      DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t108 TYPE string.
      t108 = t71->value.
      DATA(t110) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t110->has = abap_true.
      t110->value = t108.
      t106 = t110.
      t98 = t99->get_object( i_type_9913 = t101 i_name = t106 ).
      DATA t112 TYPE REF TO object.
      t112 = t98.
      t97 ?= t112.
      t96 = t97.
      DATA t113 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t114 TYPE abap_bool.
      t114 = xsdbool( t96 IS BOUND ).
      IF t114 = abap_true.
        DATA t116 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t117 TYPE REF TO zcl_lnt_abstract_type.
        DATA t118 TYPE REF TO zcl_lnt_abstract_type.
        DATA t119 TYPE REF TO zcl_lnt_table.
        t119 = t96.
        DATA t121 TYPE REF TO zif_lnt_registry.
        t121 = t69->reg.
        DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t118 = t119->parse_type( i_reg_f149 = t121 i_data_element = t123 i_description = t124 ).
        t117 = t118.
        DATA t125 TYPE REF TO zif_lnt_object.
        t125 = t96.
        t116 = NEW zcl_lnt_ilookup_result( i_type_9913 = t117 i_object_19cd = t125 ).
        CREATE OBJECT t116->zlnt_view_ownkeys_b0e8086400eb.
        t116->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t128 ).
        DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t116->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t129 ).
        ENDIF.
        CREATE OBJECT t116->zlnt_json_ownkeys_70e5fd461788.
        t116->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t130) = |type|.
        DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = t130 p1 = t131 ).
        DATA(t132) = |object|.
        DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t116->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = t132 p1 = t133 ).
        ENDIF.
        t113 = t116.
      ELSE.
        DATA t135 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t136 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t140 TYPE string.
        t140 = t71->value.
        DATA(t142) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t142->has = abap_true.
        t142->value = t140.
        t138 = t142.
        t136 = t69->lookup_ddls( i_name = t138 ).
        t135 = t136.
        DATA t144 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t145 TYPE abap_bool.
        t145 = xsdbool( t135 IS BOUND ).
        IF t145 = abap_true.
          t144 = t135.
        ELSE.
          DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t153 TYPE string.
          t153 = t71->value.
          DATA(t155) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t155->has = abap_true.
          t155->value = t153.
          t150 = t155.
          DATA t157 TYPE REF TO zcl_lnt_ilookup_result.
          DATA(t158) = VALUE abap_bool( ).
          DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t159 = t150.
          DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t163) = VALUE abap_bool( ).
          IF t159 IS INITIAL.
            t163 = abap_true.
          ELSEIF t159->has = abap_false.
            t163 = abap_true.
          ENDIF.
          t158 = t163.
          IF t158 = abap_true.
            DATA t165 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t166 TYPE REF TO zcl_lnt_abstract_type.
            DATA t167 TYPE REF TO zcl_lnt_unknown_type.
            DATA(t168) = |undefined, lookupView|.
            DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t167 = NEW zcl_lnt_unknown_type( i_error = t168 i_qualified_name = t169 ).
            t166 = t167.
            DATA t170 TYPE REF TO zif_lnt_object.
            t165 = NEW zcl_lnt_ilookup_result( i_type_9913 = t166 i_object_19cd = t170 ).
            CREATE OBJECT t165->zlnt_view_ownkeys_b0e8086400eb.
            t165->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t165->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t172 ).
            CREATE OBJECT t165->zlnt_json_ownkeys_70e5fd461788.
            t165->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t173) = |type|.
            DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t165->zlnt_json_ownkeys_70e5fd461788->put( p0 = t173 p1 = t174 ).
            t157 = t165.
          ELSE.
            DATA t176 TYPE REF TO zcl_lnt_table.
            DATA t177 TYPE REF TO zcl_lnt_table.
            DATA t178 TYPE REF TO zif_lnt_object.
            DATA t179 TYPE REF TO zif_lnt_registry.
            t179 = t69->reg.
            DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t183) = |VIEW|.
            DATA(t184) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t184->has = abap_true.
            t184->value = t183.
            t181 = t184.
            DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t188 TYPE string.
            t188 = t150->value.
            DATA(t190) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t190->has = abap_true.
            t190->value = t188.
            t186 = t190.
            t178 = t179->get_object( i_type_9913 = t181 i_name = t186 ).
            DATA t192 TYPE REF TO object.
            t192 = t178.
            t177 ?= t192.
            t176 = t177.
            DATA t193 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t194 TYPE abap_bool.
            t194 = xsdbool( t176 IS BOUND ).
            IF t194 = abap_true.
              DATA t196 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t197 TYPE REF TO zcl_lnt_abstract_type.
              DATA t198 TYPE REF TO zcl_lnt_abstract_type.
              DATA t199 TYPE REF TO zcl_lnt_table.
              t199 = t176.
              DATA t201 TYPE REF TO zif_lnt_registry.
              t201 = t69->reg.
              DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t198 = t199->parse_type( i_reg_f149 = t201 i_data_element = t203 i_description = t204 ).
              t197 = t198.
              DATA t205 TYPE REF TO zif_lnt_object.
              t205 = t176.
              t196 = NEW zcl_lnt_ilookup_result( i_type_9913 = t197 i_object_19cd = t205 ).
              CREATE OBJECT t196->zlnt_view_ownkeys_b0e8086400eb.
              t196->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t208 ).
              DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              IF t196->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t196->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t209 ).
              ENDIF.
              CREATE OBJECT t196->zlnt_json_ownkeys_70e5fd461788.
              t196->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t210) = |type|.
              DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t210 p1 = t211 ).
              DATA(t212) = |object|.
              DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              IF t196->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t196->zlnt_json_ownkeys_70e5fd461788->put( p0 = t212 p1 = t213 ).
              ENDIF.
              t193 = t196.
            ELSE.
              DATA t214 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t215 TYPE abap_bool.
              DATA t216 TYPE REF TO zif_lnt_registry.
              t216 = t69->reg.
              DATA t218 TYPE string.
              t218 = t150->value.
              t215 = t216->in_error_namespace( i_name = t218 ).
              IF t215 = abap_true.
                DATA t220 TYPE REF TO zcl_lnt_ilookup_result.
                DATA t221 TYPE REF TO zcl_lnt_abstract_type.
                DATA t222 TYPE REF TO zcl_lnt_unknown_type.
                DATA t223 TYPE string.
                DATA t224 TYPE string.
                t224 = t150->value.
                DATA(t226) = | not found, lookupView|.
                DATA(t227) = strlen( t224 ).
                t223 = |{ t224 }{ t226 }|.
                DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t222 = NEW zcl_lnt_unknown_type( i_error = t223 i_qualified_name = t228 ).
                t221 = t222.
                DATA t229 TYPE REF TO zif_lnt_object.
                t220 = NEW zcl_lnt_ilookup_result( i_type_9913 = t221 i_object_19cd = t229 ).
                CREATE OBJECT t220->zlnt_view_ownkeys_b0e8086400eb.
                t220->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t220->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t231 ).
                CREATE OBJECT t220->zlnt_json_ownkeys_70e5fd461788.
                t220->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t232) = |type|.
                DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t220->zlnt_json_ownkeys_70e5fd461788->put( p0 = t232 p1 = t233 ).
                t214 = t220.
              ELSE.
                DATA t234 TYPE REF TO zcl_lnt_ilookup_result.
                DATA t235 TYPE REF TO zcl_lnt_abstract_type.
                DATA t236 TYPE REF TO zcl_lnt_void_type.
                DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t239 TYPE string.
                t239 = t150->value.
                DATA(t241) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t241->has = abap_true.
                t241->value = t239.
                t237 = t241.
                DATA t243 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t236 = zcl_lnt_void_type=>get_db65( i_voided = t237 i_qualified_name = t243 ).
                t235 = t236.
                DATA t244 TYPE REF TO zif_lnt_object.
                t234 = NEW zcl_lnt_ilookup_result( i_type_9913 = t235 i_object_19cd = t244 ).
                CREATE OBJECT t234->zlnt_view_ownkeys_b0e8086400eb.
                t234->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t234->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t246 ).
                CREATE OBJECT t234->zlnt_json_ownkeys_70e5fd461788.
                t234->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t247) = |type|.
                DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = t247 p1 = t248 ).
                t214 = t234.
              ENDIF.
              t193 = t214.
            ENDIF.
            t157 = t193.
          ENDIF.
          t144 = t157.
        ENDIF.
        t113 = t144.
      ENDIF.
      t77 = t113.
    ENDIF.
    t68 = t77.
    t67 = t68->zlnt_view_read_sr_2de0200e6505( ).
    t66 = t67.
    DATA t249 TYPE abap_bool.
    DATA t250 TYPE abap_bool.
    t250 = xsdbool( t66 IS BOUND AND t66 IS INSTANCE OF zcl_lnt_ob_data_definition ).
    t249 = t250.
    IF t250 = abap_true.
      DATA(t252) = VALUE abap_bool( ).
      DATA t255 TYPE REF TO zcl_lnt_expression_node.
      DATA t258 TYPE REF TO zcl_lnt_ob_data_definition.
      DATA t260 TYPE REF TO object.
      t260 = t66.
      t258 ?= t260.
      DATA t262 TYPE REF TO zcl_lnt_parsed_data_definition.
      DATA t263 TYPE REF TO zcl_lnt_parsed_data_definition.
      t263 = t258->parsed_data.
      t262 = t263.
      DATA t265 TYPE REF TO zcl_lnt_expression_node.
      DATA(t266) = xsdbool( t262 IS INITIAL ).
      IF t266 = abap_true.
      ELSE.
        DATA t269 TYPE REF TO zcl_lnt_expression_node.
        DATA t270 TYPE REF TO zcl_lnt_parsed_data_definition.
        t270 = t262.
        t269 = t270->tree.
        t265 = t269.
      ENDIF.
      t255 = t265.
      DATA t272 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t273) = xsdbool( t255 IS INITIAL ).
      IF t273 = abap_true.
      ELSE.
        DATA t276 TYPE REF TO zcl_lnt_abstract_token.
        DATA t277 TYPE REF TO zcl_lnt_expression_node.
        t277 = t255.
        DATA(t279) = |ROOT|.
        t276 = t277->find_direct_token_by_text( i_text = t279 ).
        t272 = t276.
      ENDIF.
      DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t252 = xsdbool( t272 IS INITIAL ).
      t249 = t252.
    ENDIF.
    IF t249 = abap_true.
      DATA t285 TYPE string.
      DATA t286 TYPE string.
      DATA(t287) = |ROOT keyword not valid since |.
      DATA(t289) = strlen( t287 ).
      t286 = |{ t287 }{ t54 }|.
      DATA(t290) = | is not a root property|.
      DATA(t291) = strlen( t286 ).
      t285 = |{ t286 }{ t290 }|.
      DATA t293 TYPE REF TO zcl_lnt_issue.
      DATA t295 TYPE REF TO zcl_lnt_abstract_token.
      t295 = t9.
      DATA(t298) = VALUE string( ).
      DATA t299 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t300 TYPE string.
      t300 = |cds_check_syntax|.
      DATA t302 TYPE string.
      t302 = |CDS Check Syntax|.
      DATA t304 TYPE string.
      DATA(t305) = |Checks CDS source, field, type, and semantic annotation refe|.
      t305 = t305 && |rences|.
      t304 = t305.
      DATA t306 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t309) = |Performs semantic checks which require other DDIC objects to|.
      t309 = t309 && | be available.\n\nMissing objects are only reported when their|.
      t309 = t309 && | names match the configured errorNamespace.|.
      DATA(t310) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t310->has = abap_true.
      t310->value = t309.
      t306 = t310.
      DATA t312 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t316 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t317 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t317.
      t316 = t317.
      DATA(t319) = |Syntax|.
      t316->load( ).
      APPEND t319 TO t316->items.
      t316->save( ).
      t312 = t316.
      DATA t322 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t324 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t326 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t328 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t299 = NEW zcl_lnt_irule_metadata( i_key = t300 i_title = t302 i_short_description = t304 i_bad_example = t322 i_good_example = t324 i_extended_information = t306 i_tags = t312 i_pragma = t326 i_pseudo_comment = t328 ).
      CREATE OBJECT t299->zlnt_view_ownkeys_b0e8086400eb.
      t299->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t330 ).
      DATA t331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t299->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t331 ).
      ENDIF.
      DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t299->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t332 ).
      ENDIF.
      DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t299->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t333 ).
      ENDIF.
      DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t299->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t299->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t334 ).
      ENDIF.
      CREATE OBJECT t299->zlnt_json_ownkeys_70e5fd461788.
      t299->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t335) = |key|.
      DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = t335 p1 = t336 ).
      DATA(t337) = |title|.
      DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t299->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = t337 p1 = t338 ).
      ENDIF.
      DATA(t339) = |shortDescription|.
      DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t299->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = t339 p1 = t340 ).
      ENDIF.
      DATA(t341) = |extendedInformation|.
      DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t299->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = t341 p1 = t342 ).
      ENDIF.
      DATA(t343) = |tags|.
      DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t299->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t299->zlnt_json_ownkeys_70e5fd461788->put( p0 = t343 p1 = t344 ).
      ENDIF.
      t298 = t299->key.
      DATA t345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t345 = me->conf->zlnt_view_read_sr_15c06369f827( ).
      DATA t347 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t293 = zcl_lnt_issue=>at_token( i_file = t4 i_token = t295 i_message_26cb = t285 i_key = t298 i_severity = t345 i_fix = t347 ).
      t3->load( ).
      APPEND t293 TO t3->items.
      t3->save( ).
    ENDIF.
  ENDMETHOD.

  METHOD check_field_annotations.
    DATA(t2) = i_ddic.
    DATA(t3) = i_issues.
    DATA(t4) = i_file.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1098_d8ec791aea73.
    t6 = i_tree->find_first_expression( i_type_9913 = t8 ).
    t5 = t6.
    DATA(t9) = VALUE abap_bool( ).
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t9 = xsdbool( t5 IS INITIAL ).
    IF t9 = abap_true.
      RETURN.
    ENDIF.
    DATA t16 TYPE abap_bool.
    t16 = abap_false.
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t20.
    t19 = t20.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t22.
    t21 = t22.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t25 TYPE REF TO zcl_lnt_abstract_node.
    t25 = t5.
    DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t28 = t25->children.
    t24 = t28.
    t23 ?= t24.
    DATA t30 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t31 TYPE REF TO object.
    DATA(t32) = VALUE i( ).
    DO.
      t23->load( ).
      IF t32 >= lines( t23->items ).
        EXIT.
      ENDIF.
      CLEAR t31.
      READ TABLE t23->items INDEX t32 + 1 INTO t31.
      t32 = t32 + 1.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      CLEAR t30.
      IF t31 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t33 ?= t31.
        DATA t34 TYPE REF TO object.
        t34 = t33->as_ref( ).
        t30 ?= t34.
      ELSE.
        t30 ?= t31.
      ENDIF.
      DATA t35 TYPE abap_bool.
      t35 = xsdbool( t30 IS BOUND AND t30 IS INSTANCE OF zcl_lnt_token_node ).
      IF t35 = abap_true.
        DATA t37 TYPE abap_bool.
        DATA t38 TYPE string.
        DATA t40 TYPE REF TO zcl_lnt_abstract_token.
        DATA t41 TYPE REF TO zcl_lnt_token_node.
        DATA t43 TYPE REF TO object.
        t43 = t30.
        t41 ?= t43.
        t40 = t41->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( ).
        DATA t44 TYPE string.
        t44 = t40->str.
        t38 = t44.
        DATA(t46) = |;|.
        t37 = xsdbool( t38 = t46 ).
        IF t37 = abap_true.
          CLEAR t18.
          DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t48.
          t19 = t48.
        ENDIF.
        CONTINUE.
      ELSE.
        DATA t49 TYPE abap_bool.
        DATA t50 TYPE REF TO zif_lnt_statement_runnable.
        DATA t51 TYPE REF TO zcl_lnt_expression_node.
        DATA t53 TYPE REF TO object.
        t53 = t30.
        t51 ?= t53.
        t50 = t51->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t49 = xsdbool( t50 IS BOUND AND t50 IS INSTANCE OF zcl_lnt_cds_annotation ).
        IF t49 = abap_true.
          DATA(t54) = t19.
          DATA t55 TYPE REF TO zcl_lnt_expression_node.
          DATA t57 TYPE REF TO object.
          t57 = t30.
          t55 ?= t57.
          t54->load( ).
          APPEND t55 TO t54->items.
          t54->save( ).
        ELSE.
          DATA t58 TYPE abap_bool.
          DATA t59 TYPE REF TO zif_lnt_statement_runnable.
          DATA t60 TYPE REF TO zcl_lnt_expression_node.
          DATA t62 TYPE REF TO object.
          t62 = t30.
          t60 ?= t62.
          t59 = t60->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          t58 = xsdbool( t59 IS BOUND AND t59 IS INSTANCE OF zcl_lnt_cds_name ).
          IF t58 = abap_true.
            DATA t63 TYPE abap_bool.
            t63 = xsdbool( t16 = abap_false ).
            IF t63 = abap_true.
              t16 = abap_true.
              DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CREATE OBJECT t67.
              t19 = t67.
            ELSE.
              DATA t70 TYPE REF TO zcl_lnt_expression_node.
              DATA t72 TYPE REF TO object.
              t72 = t30.
              t70 ?= t72.
              t18 = t70.
            ENDIF.
          ELSE.
            DATA t74 TYPE abap_bool.
            DATA t75 TYPE abap_bool.
            DATA t76 TYPE REF TO zif_lnt_statement_runnable.
            DATA t77 TYPE REF TO zcl_lnt_expression_node.
            DATA t79 TYPE REF TO object.
            t79 = t30.
            t77 ?= t79.
            t76 = t77->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
            t75 = xsdbool( t76 IS BOUND AND t76 IS INSTANCE OF zcl_lnt_cd_cds_type ).
            t74 = t75.
            IF t75 = abap_true.
              DATA(t80) = VALUE abap_bool( ).
              DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t83.
              DATA(t85) = VALUE abap_bool( ).
              DATA(t86) = xsdbool( t18 IS INITIAL ).
              t85 = xsdbool( t86 = abap_false ).
              t80 = t85.
              t74 = t80.
            ENDIF.
            IF t74 = abap_true.
              DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t90 TYPE REF TO zcl_lnt_expression_node.
              DATA t92 TYPE REF TO object.
              t92 = t30.
              t90 ?= t92.
              t89 = me->determine_semantic_type( i_type_node = t90 i_ddic = t2 ).
              DATA t96 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t97.
              t96 = t97.
              DATA(t98) = t19.
              DATA t99 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t99.
              DATA t100 TYPE REF TO object.
              CLEAR t100.
              DATA(t101) = VALUE i( ).
              DO.
                t98->load( ).
                IF t101 >= lines( t98->items ).
                  EXIT.
                ENDIF.
                CLEAR t100.
                READ TABLE t98->items INDEX t101 + 1 INTO t100.
                t101 = t101 + 1.
                DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t102.
                CLEAR t99.
                IF t100 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t102 ?= t100.
                  DATA t103 TYPE REF TO object.
                  t103 = t102->as_ref( ).
                  t99 ?= t103.
                ELSE.
                  t99 ?= t100.
                ENDIF.
                DATA t105 TYPE string.
                DATA t106 TYPE string.
                t106 = t99->concat_tokens( ).
                DATA t108 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
                CLEAR t108.
                DATA(t109) = `\s`.
                DATA(t110) = |g|.
                CREATE OBJECT t108 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t109 flags = t110 checked = abap_true.
                DATA(t111) = ||.
                DATA(t112) = strlen( t106 ).
                t105 = t108->replace( p0 = t106 p1 = t111 ).
                t96->load( ).
                APPEND t105 TO t96->items.
                t96->save( ).
              ENDDO.
              DATA t115 TYPE REF TO zcl_lnt_shape_d88073da.
              CLEAR t115.
              DATA t116 TYPE string.
              DATA t121 TYPE string.
              DATA t122 TYPE string.
              t122 = t18->concat_tokens( ).
              DATA t124 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
              CLEAR t124.
              DATA(t125) = | |.
              DATA(t126) = |g|.
              CREATE OBJECT t124 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t125 flags = t126 checked = abap_true.
              DATA(t127) = ||.
              DATA(t128) = strlen( t122 ).
              t121 = t124->replace( p0 = t122 p1 = t127 ).
              t116 = t121.
              DATA t129 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t129.
              t129 = t18.
              DATA t135 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t135.
              t135 = t96.
              DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t140 = t89.
              t115 = NEW zcl_lnt_shape_d88073da( i_name = t116 i_node = t129 i_annotations = t135 i_semantic_type = t140 ).
              CREATE OBJECT t115->zlnt_view_ownkeys_b0e8086400eb.
              t115->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t142.
              t115->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t142 ).
              DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t143.
              IF t115->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t115->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `node` p1 = t143 ).
              ENDIF.
              DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t144.
              IF t115->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t115->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `annotations` p1 = t144 ).
              ENDIF.
              DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t145.
              IF t115->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t115->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `semanticType` p1 = t145 ).
              ENDIF.
              CREATE OBJECT t115->zlnt_json_ownkeys_70e5fd461788.
              t115->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t146) = |name|.
              DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t147.
              t115->zlnt_json_ownkeys_70e5fd461788->put( p0 = t146 p1 = t147 ).
              DATA(t148) = |node|.
              DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t149.
              IF t115->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t115->zlnt_json_ownkeys_70e5fd461788->put( p0 = t148 p1 = t149 ).
              ENDIF.
              DATA(t150) = |annotations|.
              DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t151.
              IF t115->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t115->zlnt_json_ownkeys_70e5fd461788->put( p0 = t150 p1 = t151 ).
              ENDIF.
              DATA(t152) = |semanticType|.
              DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t153.
              IF t115->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t115->zlnt_json_ownkeys_70e5fd461788->put( p0 = t152 p1 = t153 ).
              ENDIF.
              t21->load( ).
              APPEND t115 TO t21->items.
              t21->save( ).
              CLEAR t18.
              DATA t155 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CREATE OBJECT t155.
              t19 = t155.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t156 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    t156 = NEW zlnt_runtime_set__1827558fd4c7( ).
    DATA t159 TYPE REF TO zcl_lnt_shape_d88073da.
    DATA t160 TYPE REF TO object.
    DATA(t161) = VALUE i( ).
    DO.
      t21->load( ).
      IF t161 >= lines( t21->items ).
        EXIT.
      ENDIF.
      CLEAR t160.
      READ TABLE t21->items INDEX t161 + 1 INTO t160.
      t161 = t161 + 1.
      DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t162.
      CLEAR t159.
      IF t160 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t162 ?= t160.
        DATA t163 TYPE REF TO object.
        t163 = t162->as_ref( ).
        t159 ?= t163.
      ELSE.
        t159 ?= t160.
      ENDIF.
      DATA(t164) = VALUE abap_bool( ).
      DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t166 = t159->semantic_type.
      t165 = t166.
      DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t168.
      DATA(t170) = VALUE abap_bool( ).
      IF t165 IS INITIAL.
        t170 = abap_true.
      ELSEIF t165->has = abap_false.
        t170 = abap_true.
      ENDIF.
      t164 = t170.
      IF t164 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t172 TYPE abap_bool.
      DATA t173 TYPE abap_bool.
      DATA t174 TYPE string.
      DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t175 = t159->semantic_type.
      t174 = t175->value.
      DATA(t177) = |QUAN|.
      t173 = xsdbool( t174 = t177 ).
      t172 = t173.
      DATA(t178) = VALUE string( ).
      DATA(t179) = VALUE string( ).
      IF t172 = abap_true.
        t179 = |@Semantics.quantity.unitOfMeasure|.
      ELSE.
        t179 = |@Semantics.amount.currencyCode|.
      ENDIF.
      t178 = t179.
      DATA(t183) = VALUE string( ).
      DATA(t184) = VALUE string( ).
      IF t172 = abap_true.
        t184 = |@Semantics.unitOfMeasure: true|.
      ELSE.
        t184 = |@Semantics.currencyCode: true|.
      ENDIF.
      t183 = t184.
      DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t190 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t190 = t159->annotations.
      DATA t192 TYPE string.
      DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t193 = t159->semantic_type.
      t192 = t193->value.
      t189 = me->find_semantic_reference( i_annotations = t190 i_type_9913 = t192 ).
      t188 = t189.
      DATA(t195) = VALUE abap_bool( ).
      DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t196 = t188.
      DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t198.
      DATA(t200) = VALUE abap_bool( ).
      IF t196 IS INITIAL.
        t200 = abap_true.
      ELSEIF t196->has = abap_false.
        t200 = abap_true.
      ENDIF.
      t195 = t200.
      IF t195 = abap_true.
        DATA(t202) = VALUE string( ).
        DATA(t203) = VALUE string( ).
        IF t172 = abap_true.
          t203 = |quantity|.
        ELSE.
          t203 = |amount|.
        ENDIF.
        t202 = t203.
        DATA t208 TYPE string.
        DATA t209 TYPE string.
        DATA t210 TYPE string.
        DATA t211 TYPE string.
        DATA t212 TYPE string.
        DATA t213 TYPE string.
        DATA(t214) = |CDS |.
        DATA(t216) = strlen( t214 ).
        t213 = |{ t214 }{ t202 }|.
        DATA(t217) = | field "|.
        DATA(t218) = strlen( t213 ).
        t212 = |{ t213 }{ t217 }|.
        DATA t219 TYPE string.
        t219 = t159->name.
        DATA(t221) = strlen( t212 ).
        t211 = |{ t212 }{ t219 }|.
        DATA(t222) = |" requires |.
        DATA(t223) = strlen( t211 ).
        t210 = |{ t211 }{ t222 }|.
        DATA(t225) = strlen( t210 ).
        t209 = |{ t210 }{ t178 }|.
        DATA(t226) = ||.
        DATA(t227) = strlen( t209 ).
        t208 = |{ t209 }{ t226 }|.
        DATA t229 TYPE REF TO zcl_lnt_issue.
        CLEAR t229.
        DATA t231 TYPE REF TO zcl_lnt_abstract_token.
        DATA t232 TYPE REF TO zcl_lnt_expression_node.
        t232 = t159->node.
        t231 = t232->get_first_token( ).
        DATA(t235) = VALUE string( ).
        DATA t236 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t236.
        DATA t237 TYPE string.
        t237 = |cds_check_syntax|.
        DATA t239 TYPE string.
        t239 = |CDS Check Syntax|.
        DATA t241 TYPE string.
        DATA(t242) = |Checks CDS source, field, type, and semantic annotation refe|.
        t242 = t242 && |rences|.
        t241 = t242.
        DATA t243 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t243.
        DATA(t246) = |Performs semantic checks which require other DDIC objects to|.
        t246 = t246 && | be available.\n\nMissing objects are only reported when their|.
        t246 = t246 && | names match the configured errorNamespace.|.
        DATA(t247) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t247->has = abap_true.
        t247->value = t246.
        t243 = t247.
        DATA t249 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t249.
        DATA t253 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t254 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t254.
        t253 = t254.
        DATA(t256) = |Syntax|.
        t253->load( ).
        APPEND t256 TO t253->items.
        t253->save( ).
        t249 = t253.
        DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t259.
        DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t261.
        DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t263.
        DATA t265 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t265.
        t236 = NEW zcl_lnt_irule_metadata( i_key = t237 i_title = t239 i_short_description = t241 i_bad_example = t259 i_good_example = t261 i_extended_information = t243 i_tags = t249 i_pragma = t263 i_pseudo_comment = t265 ).
        CREATE OBJECT t236->zlnt_view_ownkeys_b0e8086400eb.
        t236->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t267.
        t236->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t267 ).
        DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t268.
        IF t236->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t236->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t268 ).
        ENDIF.
        DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t269.
        IF t236->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t236->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t269 ).
        ENDIF.
        DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t270.
        IF t236->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t236->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t270 ).
        ENDIF.
        DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t271.
        IF t236->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t236->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t271 ).
        ENDIF.
        CREATE OBJECT t236->zlnt_json_ownkeys_70e5fd461788.
        t236->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t272) = |key|.
        DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t273.
        t236->zlnt_json_ownkeys_70e5fd461788->put( p0 = t272 p1 = t273 ).
        DATA(t274) = |title|.
        DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t275.
        IF t236->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t236->zlnt_json_ownkeys_70e5fd461788->put( p0 = t274 p1 = t275 ).
        ENDIF.
        DATA(t276) = |shortDescription|.
        DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t277.
        IF t236->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t236->zlnt_json_ownkeys_70e5fd461788->put( p0 = t276 p1 = t277 ).
        ENDIF.
        DATA(t278) = |extendedInformation|.
        DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t279.
        IF t236->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t236->zlnt_json_ownkeys_70e5fd461788->put( p0 = t278 p1 = t279 ).
        ENDIF.
        DATA(t280) = |tags|.
        DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t281.
        IF t236->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t236->zlnt_json_ownkeys_70e5fd461788->put( p0 = t280 p1 = t281 ).
        ENDIF.
        t235 = t236->key.
        DATA t282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t282 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t284 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t284.
        t229 = zcl_lnt_issue=>at_token( i_file = t4 i_token = t231 i_message_26cb = t208 i_key = t235 i_severity = t282 i_fix = t284 ).
        t3->load( ).
        APPEND t229 TO t3->items.
        t3->save( ).
        CONTINUE.
      ENDIF.
      DATA t285 TYPE REF TO zcl_lnt_shape_d88073da.
      CLEAR t285.
      DATA t287 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t287 = t21.
      DATA t289 TYPE i.
      DATA t290 TYPE i.
      t287->load( ).
      t290 = lines( t287->items ).
      t289 = t290.
      DATA t292 TYPE i.
      t292 = 0.
      DATA t294 TYPE REF TO zcl_lnt_shape_d88073da.
      CLEAR t294.
      DO.
        DATA t296 TYPE abap_bool.
        t296 = xsdbool( t292 < t289 ).
        IF t296 = abap_false.
          EXIT.
        ENDIF.
        DATA t299 TYPE REF TO zcl_lnt_shape_d88073da.
        CLEAR t299.
        DATA t301 TYPE REF TO zcl_lnt_shape_d88073da.
        CLEAR t301.
        DATA t304 TYPE REF TO object.
        t304 = t287->get( p0 = t292 ).
        DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t305.
        CLEAR t301.
        IF t304 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t305 ?= t304.
          DATA t306 TYPE REF TO object.
          t306 = t305->as_ref( ).
          t301 ?= t306.
        ELSE.
          t301 ?= t304.
        ENDIF.
        t299 = t301.
        DATA(t307) = VALUE abap_bool( ).
        DATA t308 TYPE string.
        DATA t309 TYPE string.
        t309 = t299->name.
        DATA(t311) = strlen( t309 ).
        t308 = t309.
        IF t308 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t308 TO UPPER CASE.
        ELSE.
          t308 = zlnt_runtime_uppe_91169605024d=>full( t308 ).
        ENDIF.
        DATA t312 TYPE string.
        DATA t313 TYPE string.
        t313 = t188->value.
        DATA(t315) = strlen( t313 ).
        t312 = t313.
        IF t312 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t312 TO UPPER CASE.
        ELSE.
          t312 = zlnt_runtime_uppe_91169605024d=>full( t312 ).
        ENDIF.
        t307 = xsdbool( t308 = t312 ).
        IF t307 = abap_true.
          t294 = t299.
          EXIT.
        ENDIF.
        DATA t320 TYPE i.
        DATA(t322) = 1.
        t320 = t292 + t322.
        t292 = t320.
      ENDDO.
      t285 = t294.
      DATA(t324) = VALUE abap_bool( ).
      DATA t327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t327.
      t324 = xsdbool( t285 IS INITIAL ).
      IF t324 = abap_true.
        DATA(t331) = VALUE string( ).
        DATA(t332) = VALUE string( ).
        IF t172 = abap_true.
          t332 = |unit|.
        ELSE.
          t332 = |currency|.
        ENDIF.
        t331 = t332.
        DATA t337 TYPE string.
        DATA t338 TYPE string.
        DATA t339 TYPE string.
        DATA t340 TYPE string.
        DATA t341 TYPE string.
        DATA t342 TYPE string.
        DATA(t343) = |CDS field "|.
        DATA t344 TYPE string.
        t344 = t159->name.
        DATA(t346) = strlen( t343 ).
        t342 = |{ t343 }{ t344 }|.
        DATA(t347) = |" references missing |.
        DATA(t348) = strlen( t342 ).
        t341 = |{ t342 }{ t347 }|.
        DATA(t350) = strlen( t341 ).
        t340 = |{ t341 }{ t331 }|.
        DATA(t351) = | field "|.
        DATA(t352) = strlen( t340 ).
        t339 = |{ t340 }{ t351 }|.
        DATA t353 TYPE string.
        t353 = t188->value.
        DATA(t355) = strlen( t339 ).
        t338 = |{ t339 }{ t353 }|.
        DATA(t356) = |"|.
        DATA(t357) = strlen( t338 ).
        t337 = |{ t338 }{ t356 }|.
        DATA t359 TYPE REF TO zcl_lnt_issue.
        CLEAR t359.
        DATA t361 TYPE REF TO zcl_lnt_abstract_token.
        DATA t362 TYPE REF TO zcl_lnt_expression_node.
        t362 = t159->node.
        t361 = t362->get_first_token( ).
        DATA(t365) = VALUE string( ).
        DATA t366 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t366.
        DATA t367 TYPE string.
        t367 = |cds_check_syntax|.
        DATA t369 TYPE string.
        t369 = |CDS Check Syntax|.
        DATA t371 TYPE string.
        DATA(t372) = |Checks CDS source, field, type, and semantic annotation refe|.
        t372 = t372 && |rences|.
        t371 = t372.
        DATA t373 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t373.
        DATA(t376) = |Performs semantic checks which require other DDIC objects to|.
        t376 = t376 && | be available.\n\nMissing objects are only reported when their|.
        t376 = t376 && | names match the configured errorNamespace.|.
        DATA(t377) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t377->has = abap_true.
        t377->value = t376.
        t373 = t377.
        DATA t379 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t379.
        DATA t383 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t384 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t384.
        t383 = t384.
        DATA(t386) = |Syntax|.
        t383->load( ).
        APPEND t386 TO t383->items.
        t383->save( ).
        t379 = t383.
        DATA t389 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t389.
        DATA t391 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t391.
        DATA t393 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t393.
        DATA t395 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t395.
        t366 = NEW zcl_lnt_irule_metadata( i_key = t367 i_title = t369 i_short_description = t371 i_bad_example = t389 i_good_example = t391 i_extended_information = t373 i_tags = t379 i_pragma = t393 i_pseudo_comment = t395 ).
        CREATE OBJECT t366->zlnt_view_ownkeys_b0e8086400eb.
        t366->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t397.
        t366->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t397 ).
        DATA t398 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t398.
        IF t366->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t366->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t398 ).
        ENDIF.
        DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t399.
        IF t366->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t366->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t399 ).
        ENDIF.
        DATA t400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t400.
        IF t366->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t366->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t400 ).
        ENDIF.
        DATA t401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t401.
        IF t366->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t366->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t401 ).
        ENDIF.
        CREATE OBJECT t366->zlnt_json_ownkeys_70e5fd461788.
        t366->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t402) = |key|.
        DATA t403 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t403.
        t366->zlnt_json_ownkeys_70e5fd461788->put( p0 = t402 p1 = t403 ).
        DATA(t404) = |title|.
        DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t405.
        IF t366->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t366->zlnt_json_ownkeys_70e5fd461788->put( p0 = t404 p1 = t405 ).
        ENDIF.
        DATA(t406) = |shortDescription|.
        DATA t407 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t407.
        IF t366->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t366->zlnt_json_ownkeys_70e5fd461788->put( p0 = t406 p1 = t407 ).
        ENDIF.
        DATA(t408) = |extendedInformation|.
        DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t409.
        IF t366->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t366->zlnt_json_ownkeys_70e5fd461788->put( p0 = t408 p1 = t409 ).
        ENDIF.
        DATA(t410) = |tags|.
        DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t411.
        IF t366->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t366->zlnt_json_ownkeys_70e5fd461788->put( p0 = t410 p1 = t411 ).
        ENDIF.
        t365 = t366->key.
        DATA t412 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t412 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t414 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t414.
        t359 = zcl_lnt_issue=>at_token( i_file = t4 i_token = t361 i_message_26cb = t337 i_key = t365 i_severity = t412 i_fix = t414 ).
        t3->load( ).
        APPEND t359 TO t3->items.
        t3->save( ).
        CONTINUE.
      ENDIF.
      DATA(t415) = VALUE string( ).
      DATA(t416) = VALUE string( ).
      DATA t417 TYPE string.
      DATA t418 TYPE string.
      DATA t419 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t419 = t159->semantic_type.
      t418 = t419->value.
      DATA(t421) = |:|.
      DATA(t422) = strlen( t418 ).
      t417 = |{ t418 }{ t421 }|.
      DATA t423 TYPE string.
      DATA t424 TYPE string.
      DATA t425 TYPE REF TO zcl_lnt_shape_d88073da.
      t425 = t285.
      t424 = t425->name.
      DATA(t427) = strlen( t424 ).
      t423 = t424.
      IF t423 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t423 TO UPPER CASE.
      ELSE.
        t423 = zlnt_runtime_uppe_91169605024d=>full( t423 ).
      ENDIF.
      DATA(t428) = strlen( t417 ).
      t416 = |{ t417 }{ t423 }|.
      t415 = t416.
      DATA t429 TYPE abap_bool.
      DATA t430 TYPE abap_bool.
      DATA t431 TYPE abap_bool.
      t431 = t156->has( p0 = t415 ).
      t430 = xsdbool( t431 = abap_false ).
      t429 = t430.
      IF t430 = abap_true.
        DATA t435 TYPE abap_bool.
        DATA t436 TYPE abap_bool.
        DATA t437 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t438 TYPE REF TO zcl_lnt_shape_d88073da.
        t438 = t285.
        t437 = t438->annotations.
        DATA t440 TYPE string.
        DATA t441 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t441 = t159->semantic_type.
        t440 = t441->value.
        t436 = me->has_companion_annotation( i_annotations = t437 i_type_9913 = t440 ).
        t435 = xsdbool( t436 = abap_false ).
        t429 = t435.
      ENDIF.
      IF t429 = abap_true.
        DATA t445 TYPE string.
        DATA t446 TYPE string.
        DATA t447 TYPE string.
        DATA t448 TYPE string.
        DATA(t449) = |CDS field "|.
        DATA t450 TYPE string.
        DATA t451 TYPE REF TO zcl_lnt_shape_d88073da.
        t451 = t285.
        t450 = t451->name.
        DATA(t453) = strlen( t449 ).
        t448 = |{ t449 }{ t450 }|.
        DATA(t454) = |" requires |.
        DATA(t455) = strlen( t448 ).
        t447 = |{ t448 }{ t454 }|.
        DATA(t457) = strlen( t447 ).
        t446 = |{ t447 }{ t183 }|.
        DATA(t458) = ||.
        DATA(t459) = strlen( t446 ).
        t445 = |{ t446 }{ t458 }|.
        DATA t461 TYPE REF TO zcl_lnt_issue.
        CLEAR t461.
        DATA t463 TYPE REF TO zcl_lnt_abstract_token.
        DATA t464 TYPE REF TO zcl_lnt_expression_node.
        DATA t465 TYPE REF TO zcl_lnt_shape_d88073da.
        t465 = t285.
        t464 = t465->node.
        t463 = t464->get_first_token( ).
        DATA(t468) = VALUE string( ).
        DATA t469 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t469.
        DATA t470 TYPE string.
        t470 = |cds_check_syntax|.
        DATA t472 TYPE string.
        t472 = |CDS Check Syntax|.
        DATA t474 TYPE string.
        DATA(t475) = |Checks CDS source, field, type, and semantic annotation refe|.
        t475 = t475 && |rences|.
        t474 = t475.
        DATA t476 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t476.
        DATA(t479) = |Performs semantic checks which require other DDIC objects to|.
        t479 = t479 && | be available.\n\nMissing objects are only reported when their|.
        t479 = t479 && | names match the configured errorNamespace.|.
        DATA(t480) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t480->has = abap_true.
        t480->value = t479.
        t476 = t480.
        DATA t482 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t482.
        DATA t486 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t487 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t487.
        t486 = t487.
        DATA(t489) = |Syntax|.
        t486->load( ).
        APPEND t489 TO t486->items.
        t486->save( ).
        t482 = t486.
        DATA t492 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t492.
        DATA t494 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t494.
        DATA t496 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t496.
        DATA t498 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t498.
        t469 = NEW zcl_lnt_irule_metadata( i_key = t470 i_title = t472 i_short_description = t474 i_bad_example = t492 i_good_example = t494 i_extended_information = t476 i_tags = t482 i_pragma = t496 i_pseudo_comment = t498 ).
        CREATE OBJECT t469->zlnt_view_ownkeys_b0e8086400eb.
        t469->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t500.
        t469->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t500 ).
        DATA t501 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t501.
        IF t469->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t469->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t501 ).
        ENDIF.
        DATA t502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t502.
        IF t469->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t469->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t502 ).
        ENDIF.
        DATA t503 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t503.
        IF t469->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t469->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t503 ).
        ENDIF.
        DATA t504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t504.
        IF t469->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t469->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t504 ).
        ENDIF.
        CREATE OBJECT t469->zlnt_json_ownkeys_70e5fd461788.
        t469->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t505) = |key|.
        DATA t506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t506.
        t469->zlnt_json_ownkeys_70e5fd461788->put( p0 = t505 p1 = t506 ).
        DATA(t507) = |title|.
        DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t508.
        IF t469->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t469->zlnt_json_ownkeys_70e5fd461788->put( p0 = t507 p1 = t508 ).
        ENDIF.
        DATA(t509) = |shortDescription|.
        DATA t510 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t510.
        IF t469->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t469->zlnt_json_ownkeys_70e5fd461788->put( p0 = t509 p1 = t510 ).
        ENDIF.
        DATA(t511) = |extendedInformation|.
        DATA t512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t512.
        IF t469->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t469->zlnt_json_ownkeys_70e5fd461788->put( p0 = t511 p1 = t512 ).
        ENDIF.
        DATA(t513) = |tags|.
        DATA t514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t514.
        IF t469->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t469->zlnt_json_ownkeys_70e5fd461788->put( p0 = t513 p1 = t514 ).
        ENDIF.
        t468 = t469->key.
        DATA t515 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t515 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t517 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t517.
        t461 = zcl_lnt_issue=>at_token( i_file = t4 i_token = t463 i_message_26cb = t445 i_key = t468 i_severity = t515 i_fix = t517 ).
        t3->load( ).
        APPEND t461 TO t3->items.
        t3->save( ).
        DATA t518 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        t518 = t156->add( p0 = t415 ).
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD determine_semantic_type.
    DATA(t1) = i_type_node.
    DATA(t2) = i_ddic.
    DATA(t3) = VALUE string( ).
    DATA(t4) = VALUE string( ).
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t7.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
    t8 = t1->find_direct_expressions( i_type_9913 = t10 ).
    DATA t11 TYPE REF TO zcl_lnt_expression_node.
    DATA t12 TYPE REF TO object.
    DATA(t13) = VALUE i( ).
    DO.
      t8->load( ).
      IF t13 >= lines( t8->items ).
        EXIT.
      ENDIF.
      CLEAR t12.
      READ TABLE t8->items INDEX t13 + 1 INTO t12.
      t13 = t13 + 1.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      CLEAR t11.
      IF t12 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t14 ?= t12.
        DATA t15 TYPE REF TO object.
        t15 = t14->as_ref( ).
        t11 ?= t15.
      ELSE.
        t11 ?= t12.
      ENDIF.
      DATA t17 TYPE string.
      DATA t20 TYPE string.
      DATA t21 TYPE string.
      t21 = t11->concat_tokens( ).
      DATA t23 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t23.
      DATA(t24) = | |.
      DATA(t25) = |g|.
      CREATE OBJECT t23 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t24 flags = t25 checked = abap_true.
      DATA(t26) = ||.
      DATA(t27) = strlen( t21 ).
      t20 = t23->replace( p0 = t21 p1 = t26 ).
      t17 = t20.
      t6->load( ).
      APPEND t17 TO t6->items.
      t6->save( ).
    ENDDO.
    t5 = t6.
    DATA(t29) = |.|.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t29.
    t4 = t5->join( p0 = t30 ).
    t3 = t4.
    DATA(t31) = VALUE string( ).
    DATA t32 TYPE string.
    DATA(t34) = strlen( t3 ).
    t32 = t3.
    IF t32 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t32 TO UPPER CASE.
    ELSE.
      t32 = zlnt_runtime_uppe_91169605024d=>full( t32 ).
    ENDIF.
    t31 = t32.
    DATA t35 TYPE abap_bool.
    DATA t36 TYPE abap_bool.
    DATA(t38) = |ABAP.QUAN|.
    t36 = xsdbool( t31 = t38 ).
    t35 = t36.
    IF t36 = abap_false.
      DATA(t39) = VALUE abap_bool( ).
      DATA t40 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      IF zcl_lnt_cds_chck_syntx_mdl=>zlnt_builtin_init_18d03cef5c95 = abap_false.
        zcl_lnt_cds_chck_syntx_mdl=>zlnt_builtin_init_70b92226996a( ).
      ENDIF.
      t40 = zcl_lnt_cds_chck_syntx_mdl=>known_quan_data_elements.
      t39 = t40->includes( p0 = t31 ).
      t35 = t39.
    ENDIF.
    IF t35 = abap_true.
      DATA(t44) = |QUAN|.
      DATA(t45) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t45->has = abap_true.
      t45->value = t44.
      result = t45.
      RETURN.
    ELSE.
      DATA t47 TYPE abap_bool.
      DATA t48 TYPE abap_bool.
      DATA(t50) = |ABAP.CURR|.
      t48 = xsdbool( t31 = t50 ).
      t47 = t48.
      IF t48 = abap_false.
        DATA(t51) = VALUE abap_bool( ).
        DATA t52 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        IF zcl_lnt_cds_chck_syntx_mdl=>zlnt_builtin_init_18d03cef5c95 = abap_false.
          zcl_lnt_cds_chck_syntx_mdl=>zlnt_builtin_init_70b92226996a( ).
        ENDIF.
        t52 = zcl_lnt_cds_chck_syntx_mdl=>known_curr_data_elements.
        t51 = t52->includes( p0 = t31 ).
        t47 = t51.
      ENDIF.
      IF t47 = abap_true.
        DATA(t56) = |CURR|.
        DATA(t57) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t57->has = abap_true.
        t57->value = t56.
        result = t57.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t59 TYPE REF TO zif_lnt_object.
    DATA t60 TYPE REF TO zif_lnt_object.
    DATA t61 TYPE REF TO zcl_lnt_ilookup_result.
    DATA t62 TYPE REF TO zcl_lnt_ddic.
    t62 = t2.
    DATA t64 TYPE string.
    t64 = t3.
    DATA t67 TYPE REF TO zcl_lnt_ilookup_result.
    DATA t68 TYPE REF TO zcl_lnt_ilookup_result.
    t68 = t62->lookup_no_void( i_name = t64 ).
    t67 = t68.
    DATA t71 TYPE REF TO zcl_lnt_ilookup_result.
    DATA t72 TYPE abap_bool.
    t72 = xsdbool( t67 IS BOUND ).
    IF t72 = abap_true.
      t71 = t67.
    ELSE.
      DATA t76 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t77 TYPE abap_bool.
      DATA t78 TYPE REF TO zif_lnt_registry.
      t78 = t62->reg.
      t77 = t78->in_error_namespace( i_name = t64 ).
      IF t77 = abap_true.
        DATA t81 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t82 TYPE REF TO zcl_lnt_abstract_type.
        DATA t83 TYPE REF TO zcl_lnt_unknown_type.
        DATA t84 TYPE string.
        DATA(t86) = | not found, lookup|.
        DATA(t87) = strlen( t64 ).
        t84 = |{ t64 }{ t86 }|.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t83 = NEW zcl_lnt_unknown_type( i_error = t84 i_qualified_name = t88 ).
        t82 = t83.
        DATA t89 TYPE REF TO zif_lnt_object.
        t81 = NEW zcl_lnt_ilookup_result( i_type_9913 = t82 i_object_19cd = t89 ).
        CREATE OBJECT t81->zlnt_view_ownkeys_b0e8086400eb.
        t81->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t81->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t91 ).
        CREATE OBJECT t81->zlnt_json_ownkeys_70e5fd461788.
        t81->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t92) = |type|.
        DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t81->zlnt_json_ownkeys_70e5fd461788->put( p0 = t92 p1 = t93 ).
        t76 = t81.
      ELSE.
        DATA t94 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t95 TYPE REF TO zcl_lnt_abstract_type.
        DATA t96 TYPE REF TO zcl_lnt_void_type.
        DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t100) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t100->has = abap_true.
        t100->value = t64.
        t97 = t100.
        DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t96 = zcl_lnt_void_type=>get_db65( i_voided = t97 i_qualified_name = t102 ).
        t95 = t96.
        DATA t103 TYPE REF TO zif_lnt_object.
        t94 = NEW zcl_lnt_ilookup_result( i_type_9913 = t95 i_object_19cd = t103 ).
        CREATE OBJECT t94->zlnt_view_ownkeys_b0e8086400eb.
        t94->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t94->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t105 ).
        CREATE OBJECT t94->zlnt_json_ownkeys_70e5fd461788.
        t94->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t106) = |type|.
        DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t94->zlnt_json_ownkeys_70e5fd461788->put( p0 = t106 p1 = t107 ).
        t76 = t94.
      ENDIF.
      t71 = t76.
    ENDIF.
    t61 = t71.
    t60 = t61->zlnt_view_read_sr_2de0200e6505( ).
    t59 = t60.
    DATA t108 TYPE abap_bool.
    t108 = xsdbool( t59 IS BOUND AND t59 IS INSTANCE OF zcl_lnt_data_element ).
    IF t108 = abap_true.
      DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t114 TYPE REF TO zcl_lnt_data_element.
      DATA t116 TYPE REF TO object.
      t116 = t59.
      t114 ?= t116.
      DATA t117 TYPE REF TO zif_lnt_registry.
      t117 = me->reg.
      t113 = t114->get_data_type( i_reg_f149 = t117 ).
      t112 = t113.
      DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t122) = VALUE abap_bool( ).
      IF t112 IS INITIAL.
        t122 = abap_true.
      ELSEIF t112->has = abap_false.
        t122 = abap_true.
      ENDIF.
      IF t122 = abap_true.
      ELSE.
        DATA t125 TYPE string.
        DATA t126 TYPE string.
        t126 = t112->value.
        DATA(t128) = strlen( t126 ).
        t125 = t126.
        IF t125 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t125 TO UPPER CASE.
        ELSE.
          t125 = zlnt_runtime_uppe_91169605024d=>full( t125 ).
        ENDIF.
        DATA(t129) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t129->has = abap_true.
        t129->value = t125.
        t121 = t129.
      ENDIF.
      t110 = t121.
      DATA(t130) = VALUE abap_bool( ).
      DATA(t131) = VALUE abap_bool( ).
      DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t135) = |QUAN|.
      DATA(t136) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t136->has = abap_true.
      t136->value = t135.
      t133 = t136.
      DATA(t138) = VALUE abap_bool( ).
      DATA(t139) = VALUE abap_bool( ).
      IF t110 IS BOUND.
        t138 = t110->has.
      ENDIF.
      IF t133 IS BOUND.
        t139 = t133->has.
      ENDIF.
      IF t138 = t139.
        IF t138 = abap_false.
          t131 = abap_true.
        ELSEIF t110->value = t133->value.
          t131 = abap_true.
        ENDIF.
      ENDIF.
      t130 = t131.
      IF t131 = abap_false.
        DATA(t140) = VALUE abap_bool( ).
        DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t144) = |CURR|.
        DATA(t145) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t145->has = abap_true.
        t145->value = t144.
        t142 = t145.
        DATA(t147) = VALUE abap_bool( ).
        DATA(t148) = VALUE abap_bool( ).
        IF t110 IS BOUND.
          t147 = t110->has.
        ENDIF.
        IF t142 IS BOUND.
          t148 = t142->has.
        ENDIF.
        IF t147 = t148.
          IF t147 = abap_false.
            t140 = abap_true.
          ELSEIF t110->value = t142->value.
            t140 = abap_true.
          ENDIF.
        ENDIF.
        t130 = t140.
      ENDIF.
      IF t130 = abap_true.
        DATA t151 TYPE string.
        t151 = t110->value.
        DATA(t153) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t153->has = abap_true.
        t153->value = t151.
        result = t153.
        RETURN.
      ENDIF.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD find_semantic_reference.
    DATA(t1) = i_annotations.
    DATA t3 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA t4 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA t5 TYPE abap_bool.
    DATA(t7) = |QUAN|.
    t5 = xsdbool( i_type_9913 = t7 ).
    IF t5 = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA(t9) = `(?:SEMANTICS\.QUANTITY|SEMANTICS:\{QUANTITY:\{)\.?UNITOFMEAS`.
      t9 = t9 && |URE:'([^']+)'|.
      DATA(t10) = |i|.
      CREATE OBJECT t8 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t9 flags = t10.
      t4 = t8.
    ELSE.
      DATA t11 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA(t12) = `(?:SEMANTICS\.AMOUNT|SEMANTICS:\{AMOUNT:\{)\.?CURRENCYCODE:'`.
      t12 = t12 && |([^']+)'|.
      DATA(t13) = |i|.
      CREATE OBJECT t11 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t12 flags = t13.
      t4 = t11.
    ENDIF.
    t3 = t4.
    DATA(t15) = VALUE string( ).
    t1->dense( ).
    DATA(t16) = VALUE i( ).
    DO.
      t1->load( ).
      IF t16 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t15.
      READ TABLE t1->items INDEX t16 + 1 INTO t15.
      IF t1->has( t16 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t16 = t16 + 1.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t21 = t3->match( t15 ).
      t17 = t21.
      DATA t24 TYPE abap_bool.
      t24 = xsdbool( t17 IS BOUND ).
      IF t24 = abap_true.
        DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t27 = t17.
        DATA(t29) = 1.
        t26 = t27->get( p0 = t29 ).
        result = t26.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD has_companion_annotation.
    DATA(t1) = i_annotations.
    DATA t3 TYPE abap_bool.
    DATA(t5) = |QUAN|.
    t3 = xsdbool( i_type_9913 = t5 ).
    IF t3 = abap_true.
      DATA(t6) = VALUE abap_bool( ).
      DATA t7 TYPE abap_bool.
      t7 = abap_false.
      DATA(t10) = VALUE string( ).
      t1->dense( ).
      DATA(t11) = VALUE i( ).
      DO.
        t1->load( ).
        IF t11 >= lines( t1->items ).
          EXIT.
        ENDIF.
        CLEAR t10.
        READ TABLE t1->items INDEX t11 + 1 INTO t10.
        IF t1->has( t11 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t11 = t11 + 1.
        DATA(t12) = VALUE abap_bool( ).
        DATA(t13) = VALUE abap_bool( ).
        DATA(t14) = VALUE i( ).
        DATA t15 TYPE string.
        DATA(t17) = strlen( t10 ).
        t15 = t10.
        IF t15 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t15 TO UPPER CASE.
        ELSE.
          t15 = zlnt_runtime_uppe_91169605024d=>full( t15 ).
        ENDIF.
        DATA(t18) = |@SEMANTICS.UNITOFMEASURE:TRUE|.
        DATA(t19) = strlen( t15 ).
        IF t18 IS INITIAL.
          t14 = 0.
        ELSE.
          FIND t18 IN t15 MATCH OFFSET t14.
          IF sy-subrc <> 0.
            t14 = -1.
          ENDIF.
        ENDIF.
        DATA(t20) = 0.
        t13 = xsdbool( t14 >= t20 ).
        t12 = t13.
        IF t13 = abap_false.
          DATA(t21) = VALUE abap_bool( ).
          DATA(t22) = VALUE i( ).
          DATA t23 TYPE string.
          DATA(t25) = strlen( t10 ).
          t23 = t10.
          IF t23 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t23 TO UPPER CASE.
          ELSE.
            t23 = zlnt_runtime_uppe_91169605024d=>full( t23 ).
          ENDIF.
          DATA(t26) = |@SEMANTICS:\{UNITOFMEASURE:TRUE|.
          DATA(t27) = strlen( t23 ).
          IF t26 IS INITIAL.
            t22 = 0.
          ELSE.
            FIND t26 IN t23 MATCH OFFSET t22.
            IF sy-subrc <> 0.
              t22 = -1.
            ENDIF.
          ENDIF.
          DATA(t28) = 0.
          t21 = xsdbool( t22 >= t28 ).
          t12 = t21.
        ENDIF.
        IF t12 = abap_true.
          t7 = abap_true.
          EXIT.
        ENDIF.
      ENDDO.
      t6 = t7.
      result = t6.
      RETURN.
    ELSE.
      DATA(t31) = VALUE abap_bool( ).
      DATA t32 TYPE abap_bool.
      t32 = abap_false.
      DATA(t35) = VALUE string( ).
      t1->dense( ).
      DATA(t36) = VALUE i( ).
      DO.
        t1->load( ).
        IF t36 >= lines( t1->items ).
          EXIT.
        ENDIF.
        CLEAR t35.
        READ TABLE t1->items INDEX t36 + 1 INTO t35.
        IF t1->has( t36 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t36 = t36 + 1.
        DATA(t37) = VALUE abap_bool( ).
        DATA(t38) = VALUE abap_bool( ).
        DATA(t39) = VALUE i( ).
        DATA t40 TYPE string.
        DATA(t42) = strlen( t35 ).
        t40 = t35.
        IF t40 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t40 TO UPPER CASE.
        ELSE.
          t40 = zlnt_runtime_uppe_91169605024d=>full( t40 ).
        ENDIF.
        DATA(t43) = |@SEMANTICS.CURRENCYCODE:TRUE|.
        DATA(t44) = strlen( t40 ).
        IF t43 IS INITIAL.
          t39 = 0.
        ELSE.
          FIND t43 IN t40 MATCH OFFSET t39.
          IF sy-subrc <> 0.
            t39 = -1.
          ENDIF.
        ENDIF.
        DATA(t45) = 0.
        t38 = xsdbool( t39 >= t45 ).
        t37 = t38.
        IF t38 = abap_false.
          DATA(t46) = VALUE abap_bool( ).
          DATA(t47) = VALUE i( ).
          DATA t48 TYPE string.
          DATA(t50) = strlen( t35 ).
          t48 = t35.
          IF t48 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t48 TO UPPER CASE.
          ELSE.
            t48 = zlnt_runtime_uppe_91169605024d=>full( t48 ).
          ENDIF.
          DATA(t51) = |@SEMANTICS:\{CURRENCYCODE:TRUE|.
          DATA(t52) = strlen( t48 ).
          IF t51 IS INITIAL.
            t47 = 0.
          ELSE.
            FIND t51 IN t48 MATCH OFFSET t47.
            IF sy-subrc <> 0.
              t47 = -1.
            ENDIF.
          ENDIF.
          DATA(t53) = 0.
          t46 = xsdbool( t47 >= t53 ).
          t37 = t46.
        ENDIF.
        IF t37 = abap_true.
          t32 = abap_true.
          EXIT.
        ENDIF.
      ENDDO.
      t31 = t32.
      result = t31.

    ENDIF.
  ENDMETHOD.

  METHOD check_labels.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t2) = i_issues.
    DATA(t3) = i_file.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    t4 = i_tree->find_all_expressions_recursive( i_type_9913 = t6 ).
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
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
      DATA t12 TYPE string.
      DATA t13 TYPE string.
      t13 = t7->concat_tokens( ).
      t12 = t13.
      DATA t15 TYPE abap_bool.
      DATA t16 TYPE abap_bool.
      DATA t17 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t17.
      DATA(t18) = `@\s*<?\s*EndUserText`.
      DATA(t19) = |@[\t\n|.
      DATA t20 TYPE c LENGTH 1.
      CLEAR t20.
      t20 = cl_abap_conv_in_ce=>uccpi( 11 ).
      CONCATENATE t19 t20 INTO t19 RESPECTING BLANKS.
      DATA t21 TYPE c LENGTH 1.
      CLEAR t21.
      t21 = cl_abap_conv_in_ce=>uccpi( 12 ).
      CONCATENATE t19 t21 INTO t19 RESPECTING BLANKS.
      t19 = t19 && |\r    - |.
      DATA t22 TYPE c LENGTH 1.
      CLEAR t22.
      t22 = cl_abap_conv_in_ce=>uccpi( 8232 ).
      CONCATENATE t19 t22 INTO t19 RESPECTING BLANKS.
      DATA t23 TYPE c LENGTH 1.
      CLEAR t23.
      t23 = cl_abap_conv_in_ce=>uccpi( 8233 ).
      CONCATENATE t19 t23 INTO t19 RESPECTING BLANKS.
      t19 = t19 && |  　|.
      DATA t24 TYPE c LENGTH 1.
      CLEAR t24.
      t24 = cl_abap_conv_in_ce=>uccpi( 65279 ).
      CONCATENATE t19 t24 INTO t19 RESPECTING BLANKS.
      t19 = t19 && |]*<?[\t\n|.
      DATA t25 TYPE c LENGTH 1.
      CLEAR t25.
      t25 = cl_abap_conv_in_ce=>uccpi( 11 ).
      CONCATENATE t19 t25 INTO t19 RESPECTING BLANKS.
      DATA t26 TYPE c LENGTH 1.
      CLEAR t26.
      t26 = cl_abap_conv_in_ce=>uccpi( 12 ).
      CONCATENATE t19 t26 INTO t19 RESPECTING BLANKS.
      t19 = t19 && |\r    - |.
      DATA t27 TYPE c LENGTH 1.
      CLEAR t27.
      t27 = cl_abap_conv_in_ce=>uccpi( 8232 ).
      CONCATENATE t19 t27 INTO t19 RESPECTING BLANKS.
      DATA t28 TYPE c LENGTH 1.
      CLEAR t28.
      t28 = cl_abap_conv_in_ce=>uccpi( 8233 ).
      CONCATENATE t19 t28 INTO t19 RESPECTING BLANKS.
      t19 = t19 && |  　|.
      DATA t29 TYPE c LENGTH 1.
      CLEAR t29.
      t29 = cl_abap_conv_in_ce=>uccpi( 65279 ).
      CONCATENATE t19 t29 INTO t19 RESPECTING BLANKS.
      t19 = t19 && |]*EndUserText|.
      DATA(t30) = |i|.
      CREATE OBJECT t17 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t19 flags = t30.
      t17->source = t18.
      t16 = t17->test( p0 = t12 ).
      t15 = xsdbool( t16 = abap_false ).
      IF t15 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t33 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      DATA t34 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t34.
      DATA(t35) = `label\s*:\s*'((?:[^']|'')*)'`.
      DATA(t36) = |gi|.
      CREATE OBJECT t34 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t35 flags = t36 checked = abap_true.
      t33 = t34.
      DATA t37 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t38 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t38 = zlnt_runtime_rege_8d1cc1058680=>exec_legacy( p0 = t33 p1 = t12 ).
      t37 = t38.
      DO.
        DATA(t41) = VALUE abap_bool( ).
        DATA(t42) = xsdbool( t37 IS INITIAL ).
        t41 = xsdbool( t42 = abap_false ).
        IF t41 = abap_false.
          EXIT.
        ENDIF.
        DATA t44 TYPE string.
        DATA t45 TYPE string.
        DATA t46 TYPE string.
        DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t48 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t48 = t37.
        DATA(t50) = 1.
        t47 = t48->get( p0 = t50 ).
        t46 = t47->value.
        DATA t51 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t51.
        DATA(t52) = |''|.
        DATA(t53) = |g|.
        CREATE OBJECT t51 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t52 flags = t53 checked = abap_true.
        DATA(t54) = |'|.
        DATA(t55) = strlen( t46 ).
        t45 = t51->replace( p0 = t46 p1 = t54 ).
        t44 = t45.
        DATA t56 TYPE abap_bool.
        DATA t57 TYPE f.
        t57 = strlen( t44 ).
        DATA(t61) = CONV f( zcl_lnt_cds_chck_syntx_mdl=>max_label_length ).
        t56 = xsdbool( t57 > t61 ).
        IF t56 = abap_true.
          DATA(t62) = VALUE string( ).
          DATA(t63) = VALUE string( ).
          DATA(t64) = VALUE string( ).
          DATA t65 TYPE string.
          DATA t66 TYPE string.
          DATA(t67) = |CDS label is |.
          DATA t68 TYPE string.
          DATA t69 TYPE i.
          t69 = strlen( t44 ).
          t68 = |{ t69 }|.
          DATA(t72) = strlen( t67 ).
          t66 = |{ t67 }{ t68 }|.
          DATA(t73) = | characters, maximum is |.
          DATA(t74) = strlen( t66 ).
          t65 = |{ t66 }{ t73 }|.
          DATA(t75) = VALUE string( ).
          DATA(t76) = CONV f( zcl_lnt_cds_chck_syntx_mdl=>max_label_length ).
          IF t76 <> trunc( t76 ) OR t76 > range_safe_integer OR t76 < 0 - range_safe_integer.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t77) = CONV int8( t76 ).
          t75 = |{ t77 }|.
          DATA(t78) = strlen( t65 ).
          t64 = |{ t65 }{ t75 }|.
          DATA(t79) = ||.
          DATA(t80) = strlen( t64 ).
          t63 = |{ t64 }{ t79 }|.
          t62 = t63.
          DATA t82 TYPE REF TO zcl_lnt_issue.
          CLEAR t82.
          DATA t84 TYPE REF TO zcl_lnt_abstract_token.
          t84 = t7->get_first_token( ).
          DATA(t87) = VALUE string( ).
          DATA t88 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t88.
          DATA t89 TYPE string.
          t89 = |cds_check_syntax|.
          DATA t91 TYPE string.
          t91 = |CDS Check Syntax|.
          DATA t93 TYPE string.
          DATA(t94) = |Checks CDS source, field, type, and semantic annotation refe|.
          t94 = t94 && |rences|.
          t93 = t94.
          DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t95.
          DATA(t98) = |Performs semantic checks which require other DDIC objects to|.
          t98 = t98 && | be available.\n\nMissing objects are only reported when their|.
          t98 = t98 && | names match the configured errorNamespace.|.
          DATA(t99) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t99->has = abap_true.
          t99->value = t98.
          t95 = t99.
          DATA t101 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t101.
          DATA t105 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t106 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t106.
          t105 = t106.
          DATA(t108) = |Syntax|.
          t105->load( ).
          APPEND t108 TO t105->items.
          t105->save( ).
          t101 = t105.
          DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t111.
          DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t113.
          DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t115.
          DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t117.
          t88 = NEW zcl_lnt_irule_metadata( i_key = t89 i_title = t91 i_short_description = t93 i_bad_example = t111 i_good_example = t113 i_extended_information = t95 i_tags = t101 i_pragma = t115 i_pseudo_comment = t117 ).
          CREATE OBJECT t88->zlnt_view_ownkeys_b0e8086400eb.
          t88->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t119.
          t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t119 ).
          DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t120.
          IF t88->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t120 ).
          ENDIF.
          DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t121.
          IF t88->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t121 ).
          ENDIF.
          DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t122.
          IF t88->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t122 ).
          ENDIF.
          DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t123.
          IF t88->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t123 ).
          ENDIF.
          CREATE OBJECT t88->zlnt_json_ownkeys_70e5fd461788.
          t88->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t124) = |key|.
          DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t125.
          t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = t124 p1 = t125 ).
          DATA(t126) = |title|.
          DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t127.
          IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = t126 p1 = t127 ).
          ENDIF.
          DATA(t128) = |shortDescription|.
          DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t129.
          IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = t128 p1 = t129 ).
          ENDIF.
          DATA(t130) = |extendedInformation|.
          DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t131.
          IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = t130 p1 = t131 ).
          ENDIF.
          DATA(t132) = |tags|.
          DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t133.
          IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = t132 p1 = t133 ).
          ENDIF.
          t87 = t88->key.
          DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t134 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t136 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t136.
          t82 = zcl_lnt_issue=>at_token( i_file = t3 i_token = t84 i_message_26cb = t62 i_key = t87 i_severity = t134 i_fix = t136 ).
          t2->load( ).
          APPEND t82 TO t2->items.
          t2->save( ).
        ENDIF.
        DATA t137 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t137 = zlnt_runtime_rege_8d1cc1058680=>exec_legacy( p0 = t33 p1 = t12 ).
        t37 = t137.
      ENDDO.
    ENDDO.
  ENDMETHOD.

  METHOD check_view_entity_annotations.
    DATA(t1) = i_tree.
    DATA(t2) = i_issues.
    DATA(t3) = i_file.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1113_ec8d8af5209a.
    t5 = t1->find_first_expression( i_type_9913 = t7 ).
    t4 = t5.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = VALUE abap_bool( ).
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t9 = xsdbool( t4 IS INITIAL ).
    t8 = t9.
    IF t9 = abap_false.
      DATA(t16) = VALUE abap_bool( ).
      DATA t18 TYPE REF TO zcl_lnt_abstract_token.
      DATA t19 TYPE REF TO zcl_lnt_expression_node.
      t19 = t4.
      DATA(t21) = |ENTITY|.
      t18 = t19->find_direct_token_by_text( i_text = t21 ).
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t16 = xsdbool( t18 IS INITIAL ).
      t8 = t16.
    ENDIF.
    IF t8 = abap_true.
      RETURN.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    t26 = t1->find_all_expressions_recursive( i_type_9913 = t28 ).
    DATA t29 TYPE REF TO zcl_lnt_expression_node.
    DATA t30 TYPE REF TO object.
    DATA(t31) = VALUE i( ).
    DO.
      t26->load( ).
      IF t31 >= lines( t26->items ).
        EXIT.
      ENDIF.
      CLEAR t30.
      READ TABLE t26->items INDEX t31 + 1 INTO t30.
      t31 = t31 + 1.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t32.
      CLEAR t29.
      IF t30 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t32 ?= t30.
        DATA t33 TYPE REF TO object.
        t33 = t32->as_ref( ).
        t29 ?= t33.
      ELSE.
        t29 ?= t30.
      ENDIF.
      DATA(t34) = VALUE string( ).
      DATA(t35) = VALUE string( ).
      DATA t36 TYPE string.
      DATA t37 TYPE string.
      DATA t38 TYPE string.
      t38 = t29->concat_tokens( ).
      DATA t40 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t40.
      DATA(t41) = `\s`.
      DATA(t42) = |g|.
      CREATE OBJECT t40 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t41 flags = t42 checked = abap_true.
      DATA(t43) = ||.
      DATA(t44) = strlen( t38 ).
      t37 = t40->replace( p0 = t38 p1 = t43 ).
      DATA(t45) = strlen( t37 ).
      t36 = t37.
      IF t36 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t36 TO UPPER CASE.
      ELSE.
        t36 = zlnt_runtime_uppe_91169605024d=>full( t36 ).
      ENDIF.
      DATA t46 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t46.
      DATA(t47) = |^@<|.
      DATA(t48) = ||.
      CREATE OBJECT t46 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t47 flags = t48.
      DATA(t49) = |@|.
      DATA(t50) = strlen( t36 ).
      t35 = t46->replace( p0 = t36 p1 = t49 ).
      t34 = t35.
      DATA t51 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t51.
      IF zcl_lnt_cds_chck_syntx_mdl=>zlnt_builtin_init_18d03cef5c95 = abap_false.
        zcl_lnt_cds_chck_syntx_mdl=>zlnt_builtin_init_70b92226996a( ).
      ENDIF.
      t51 = zcl_lnt_cds_chck_syntx_mdl=>vw_entty_frbddn_annttns.
      DATA(t52) = VALUE string( ).
      t51->dense( ).
      DATA(t53) = VALUE i( ).
      DO.
        t51->load( ).
        IF t53 >= lines( t51->items ).
          EXIT.
        ENDIF.
        CLEAR t52.
        READ TABLE t51->items INDEX t53 + 1 INTO t52.
        IF t51->has( t53 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t53 = t53 + 1.
        DATA(t54) = VALUE string( ).
        DATA t55 TYPE string.
        DATA(t57) = strlen( t52 ).
        t55 = t52.
        IF t55 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t55 TO UPPER CASE.
        ELSE.
          t55 = zlnt_runtime_uppe_91169605024d=>full( t55 ).
        ENDIF.
        t54 = t55.
        DATA(t58) = VALUE abap_bool( ).
        DATA(t59) = VALUE abap_bool( ).
        DATA(t60) = VALUE abap_bool( ).
        DATA t62 TYPE string.
        DATA(t63) = |@|.
        DATA(t65) = strlen( t63 ).
        t62 = |{ t63 }{ t54 }|.
        DATA(t66) = strlen( t34 ).
        DATA t67 TYPE i.
        DATA(t68) = VALUE i( ).
        DATA(t69) = VALUE string( ).
        t67 = strlen( t62 ).
        IF t67 = 0.
          t60 = abap_true.
        ELSEIF t67 <= t66.
          t68 = 0.
          t69 = t34+t68(t67).
          IF t69 = t62.
            t60 = abap_true.
          ENDIF.
        ENDIF.
        t59 = xsdbool( t60 = abap_false ).
        t58 = t59.
        IF t59 = abap_true.
          DATA(t71) = VALUE abap_bool( ).
          DATA(t72) = VALUE abap_bool( ).
          DATA t74 TYPE string.
          DATA(t75) = |@|.
          DATA t76 TYPE string.
          DATA(t78) = |.|.
          DATA(t79) = |:\{|.
          DATA(t80) = strlen( t54 ).
          t76 = t54.
          REPLACE ALL OCCURRENCES OF t78 IN t76 WITH t79.
          DATA(t81) = strlen( t75 ).
          t74 = |{ t75 }{ t76 }|.
          DATA(t82) = strlen( t34 ).
          DATA t83 TYPE i.
          DATA(t84) = VALUE i( ).
          DATA(t85) = VALUE string( ).
          t83 = strlen( t74 ).
          IF t83 = 0.
            t72 = abap_true.
          ELSEIF t83 <= t82.
            t84 = 0.
            t85 = t34+t84(t83).
            IF t85 = t74.
              t72 = abap_true.
            ENDIF.
          ENDIF.
          t71 = xsdbool( t72 = abap_false ).
          t58 = t71.
        ENDIF.
        IF t58 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t88 TYPE string.
        DATA t89 TYPE string.
        DATA(t90) = |Annotation |.
        DATA(t92) = strlen( t90 ).
        t89 = |{ t90 }{ t52 }|.
        DATA(t93) = | is not allowed in view entities|.
        DATA(t94) = strlen( t89 ).
        t88 = |{ t89 }{ t93 }|.
        DATA t96 TYPE REF TO zcl_lnt_issue.
        CLEAR t96.
        DATA t98 TYPE REF TO zcl_lnt_abstract_token.
        t98 = t29->get_first_token( ).
        DATA(t101) = VALUE string( ).
        DATA t102 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t102.
        DATA t103 TYPE string.
        t103 = |cds_check_syntax|.
        DATA t105 TYPE string.
        t105 = |CDS Check Syntax|.
        DATA t107 TYPE string.
        DATA(t108) = |Checks CDS source, field, type, and semantic annotation refe|.
        t108 = t108 && |rences|.
        t107 = t108.
        DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t109.
        DATA(t112) = |Performs semantic checks which require other DDIC objects to|.
        t112 = t112 && | be available.\n\nMissing objects are only reported when their|.
        t112 = t112 && | names match the configured errorNamespace.|.
        DATA(t113) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t113->has = abap_true.
        t113->value = t112.
        t109 = t113.
        DATA t115 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t115.
        DATA t119 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t120 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t120.
        t119 = t120.
        DATA(t122) = |Syntax|.
        t119->load( ).
        APPEND t122 TO t119->items.
        t119->save( ).
        t115 = t119.
        DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t125.
        DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t127.
        DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t129.
        DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t131.
        t102 = NEW zcl_lnt_irule_metadata( i_key = t103 i_title = t105 i_short_description = t107 i_bad_example = t125 i_good_example = t127 i_extended_information = t109 i_tags = t115 i_pragma = t129 i_pseudo_comment = t131 ).
        CREATE OBJECT t102->zlnt_view_ownkeys_b0e8086400eb.
        t102->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t133.
        t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t133 ).
        DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t134.
        IF t102->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t134 ).
        ENDIF.
        DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t135.
        IF t102->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t135 ).
        ENDIF.
        DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t136.
        IF t102->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t136 ).
        ENDIF.
        DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t137.
        IF t102->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t137 ).
        ENDIF.
        CREATE OBJECT t102->zlnt_json_ownkeys_70e5fd461788.
        t102->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t138) = |key|.
        DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t139.
        t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = t138 p1 = t139 ).
        DATA(t140) = |title|.
        DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t141.
        IF t102->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = t140 p1 = t141 ).
        ENDIF.
        DATA(t142) = |shortDescription|.
        DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t143.
        IF t102->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = t142 p1 = t143 ).
        ENDIF.
        DATA(t144) = |extendedInformation|.
        DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t145.
        IF t102->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = t144 p1 = t145 ).
        ENDIF.
        DATA(t146) = |tags|.
        DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t147.
        IF t102->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = t146 p1 = t147 ).
        ENDIF.
        t101 = t102->key.
        DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t148 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t150 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t150.
        t96 = zcl_lnt_issue=>at_token( i_file = t3 i_token = t98 i_message_26cb = t88 i_key = t101 i_severity = t148 i_fix = t150 ).
        t2->load( ).
        APPEND t96 TO t2->items.
        t2->save( ).
      ENDDO.
    ENDDO.
  ENDMETHOD.

  METHOD check_searchable.
    DATA(t2) = i_issues.
    DATA(t3) = i_file.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1083_3e6a5d04365c.
    t5 = i_tree->find_all_expressions_recursive( i_type_9913 = t7 ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA t9 TYPE REF TO object.
    DATA(t10) = VALUE i( ).
    DO.
      t5->load( ).
      IF t10 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t5->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA(t13) = VALUE string( ).
      DATA(t14) = VALUE string( ).
      DATA t15 TYPE string.
      DATA t16 TYPE string.
      DATA t17 TYPE string.
      t17 = t8->concat_tokens( ).
      DATA t19 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t19.
      DATA(t20) = `\s`.
      DATA(t21) = |g|.
      CREATE OBJECT t19 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t20 flags = t21 checked = abap_true.
      DATA(t22) = ||.
      DATA(t23) = strlen( t17 ).
      t16 = t19->replace( p0 = t17 p1 = t22 ).
      DATA(t24) = strlen( t16 ).
      t15 = t16.
      IF t15 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t15 TO UPPER CASE.
      ELSE.
        t15 = zlnt_runtime_uppe_91169605024d=>full( t15 ).
      ENDIF.
      DATA t25 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t25.
      DATA(t26) = |^@<|.
      DATA(t27) = ||.
      CREATE OBJECT t25 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t26 flags = t27.
      DATA(t28) = |@|.
      DATA(t29) = strlen( t15 ).
      t14 = t25->replace( p0 = t15 p1 = t28 ).
      t13 = t14.
      DATA(t30) = VALUE abap_bool( ).
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t35->has = abap_true.
      t35->value = t13.
      t31 = t35.
      DATA(t37) = VALUE abap_bool( ).
      DATA(t38) = VALUE abap_bool( ).
      DATA(t39) = VALUE abap_bool( ).
      DATA t40 TYPE string.
      t40 = t31->value.
      DATA(t42) = |@SEARCH|.
      DATA(t43) = strlen( t40 ).
      DATA t44 TYPE i.
      DATA(t45) = VALUE i( ).
      DATA(t46) = VALUE string( ).
      t44 = strlen( t42 ).
      IF t44 = 0.
        t39 = abap_true.
      ELSEIF t44 <= t43.
        t45 = 0.
        t46 = t40+t45(t44).
        IF t46 = t42.
          t39 = abap_true.
        ENDIF.
      ENDIF.
      t38 = xsdbool( t39 = abap_false ).
      IF t38 = abap_true.
        t37 = abap_false.
      ELSE.
        DATA(t49) = VALUE abap_bool( ).
        DATA t50 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t50.
        DATA(t51) = VALUE string( ).
        DATA(t52) = VALUE string( ).
        DATA(t53) = |[.\{,]|.
        DATA t54 TYPE string.
        DATA(t55) = |defaultSearchElement|.
        DATA(t56) = strlen( t55 ).
        t54 = t55.
        IF t54 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t54 TO UPPER CASE.
        ELSE.
          t54 = zlnt_runtime_uppe_91169605024d=>full( t54 ).
        ENDIF.
        DATA(t57) = strlen( t53 ).
        t52 = |{ t53 }{ t54 }|.
        DATA(t58) = |:TRUE|.
        DATA(t59) = strlen( t52 ).
        t51 = |{ t52 }{ t58 }|.
        DATA(t60) = ||.
        CREATE OBJECT t50 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t51 flags = t60.
        DATA(t61) = VALUE string( ).
        DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t62 = t31.
        DATA(t64) = VALUE string( ).
        DATA(t65) = VALUE abap_bool( ).
        IF t62 IS INITIAL.
          t65 = abap_true.
        ELSEIF t62->has = abap_false.
          t65 = abap_true.
        ENDIF.
        IF t65 = abap_true.
          t64 = |undefined|.
        ELSE.
          DATA t68 TYPE string.
          t68 = t62->value.
          t64 = t68.
        ENDIF.
        t61 = t64.
        t49 = t50->test( p0 = t61 ).
        t37 = t49.
      ENDIF.
      t30 = t37.
      IF t30 = abap_true.
        RETURN.
      ELSE.
        DATA(t70) = VALUE abap_bool( ).
        DATA(t71) = VALUE abap_bool( ).
        DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t74.
        t71 = xsdbool( t4 IS INITIAL ).
        t70 = t71.
        IF t71 = abap_true.
          DATA(t78) = VALUE abap_bool( ).
          DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t79.
          DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t83->has = abap_true.
          t83->value = t13.
          t79 = t83.
          DATA(t85) = VALUE abap_bool( ).
          DATA(t86) = VALUE abap_bool( ).
          DATA(t87) = VALUE abap_bool( ).
          DATA t88 TYPE string.
          t88 = t79->value.
          DATA(t90) = |@SEARCH|.
          DATA(t91) = strlen( t88 ).
          DATA t92 TYPE i.
          DATA(t93) = VALUE i( ).
          DATA(t94) = VALUE string( ).
          t92 = strlen( t90 ).
          IF t92 = 0.
            t87 = abap_true.
          ELSEIF t92 <= t91.
            t93 = 0.
            t94 = t88+t93(t92).
            IF t94 = t90.
              t87 = abap_true.
            ENDIF.
          ENDIF.
          t86 = xsdbool( t87 = abap_false ).
          IF t86 = abap_true.
            t85 = abap_false.
          ELSE.
            DATA(t97) = VALUE abap_bool( ).
            DATA t98 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
            CLEAR t98.
            DATA(t99) = VALUE string( ).
            DATA(t100) = VALUE string( ).
            DATA(t101) = |[.\{,]|.
            DATA t102 TYPE string.
            DATA(t103) = |searchable|.
            DATA(t104) = strlen( t103 ).
            t102 = t103.
            IF t102 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t102 TO UPPER CASE.
            ELSE.
              t102 = zlnt_runtime_uppe_91169605024d=>full( t102 ).
            ENDIF.
            DATA(t105) = strlen( t101 ).
            t100 = |{ t101 }{ t102 }|.
            DATA(t106) = |:TRUE|.
            DATA(t107) = strlen( t100 ).
            t99 = |{ t100 }{ t106 }|.
            DATA(t108) = ||.
            CREATE OBJECT t98 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t99 flags = t108.
            DATA(t109) = VALUE string( ).
            DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t110 = t79.
            DATA(t112) = VALUE string( ).
            DATA(t113) = VALUE abap_bool( ).
            IF t110 IS INITIAL.
              t113 = abap_true.
            ELSEIF t110->has = abap_false.
              t113 = abap_true.
            ENDIF.
            IF t113 = abap_true.
              t112 = |undefined|.
            ELSE.
              DATA t116 TYPE string.
              t116 = t110->value.
              t112 = t116.
            ENDIF.
            t109 = t112.
            t97 = t98->test( p0 = t109 ).
            t85 = t97.
          ENDIF.
          t78 = t85.
          t70 = t78.
        ENDIF.
        IF t70 = abap_true.
          t4 = t8.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t122) = VALUE abap_bool( ).
    DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t127) = VALUE abap_bool( ).
    DATA(t128) = xsdbool( t4 IS INITIAL ).
    t127 = xsdbool( t128 = abap_false ).
    t122 = t127.
    IF t122 = abap_true.
      DATA t131 TYPE string.
      DATA(t132) = |@Search.defaultSearchElement: true required on at least one |.
      t132 = t132 && |element |.
      DATA(t133) = |when @Search.searchable: true|.
      DATA(t134) = strlen( t132 ).
      t131 = |{ t132 }{ t133 }|.
      DATA t136 TYPE REF TO zcl_lnt_issue.
      DATA t138 TYPE REF TO zcl_lnt_abstract_token.
      DATA t139 TYPE REF TO zcl_lnt_expression_node.
      t139 = t4.
      t138 = t139->get_first_token( ).
      DATA(t142) = VALUE string( ).
      DATA t143 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t144 TYPE string.
      t144 = |cds_check_syntax|.
      DATA t146 TYPE string.
      t146 = |CDS Check Syntax|.
      DATA t148 TYPE string.
      DATA(t149) = |Checks CDS source, field, type, and semantic annotation refe|.
      t149 = t149 && |rences|.
      t148 = t149.
      DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t153) = |Performs semantic checks which require other DDIC objects to|.
      t153 = t153 && | be available.\n\nMissing objects are only reported when their|.
      t153 = t153 && | names match the configured errorNamespace.|.
      DATA(t154) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t154->has = abap_true.
      t154->value = t153.
      t150 = t154.
      DATA t156 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t160 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t161 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t161.
      t160 = t161.
      DATA(t163) = |Syntax|.
      t160->load( ).
      APPEND t163 TO t160->items.
      t160->save( ).
      t156 = t160.
      DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t143 = NEW zcl_lnt_irule_metadata( i_key = t144 i_title = t146 i_short_description = t148 i_bad_example = t166 i_good_example = t168 i_extended_information = t150 i_tags = t156 i_pragma = t170 i_pseudo_comment = t172 ).
      CREATE OBJECT t143->zlnt_view_ownkeys_b0e8086400eb.
      t143->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t174 ).
      DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t175 ).
      ENDIF.
      DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t176 ).
      ENDIF.
      DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t177 ).
      ENDIF.
      DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t178 ).
      ENDIF.
      CREATE OBJECT t143->zlnt_json_ownkeys_70e5fd461788.
      t143->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t179) = |key|.
      DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t179 p1 = t180 ).
      DATA(t181) = |title|.
      DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t181 p1 = t182 ).
      ENDIF.
      DATA(t183) = |shortDescription|.
      DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t183 p1 = t184 ).
      ENDIF.
      DATA(t185) = |extendedInformation|.
      DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t185 p1 = t186 ).
      ENDIF.
      DATA(t187) = |tags|.
      DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = t187 p1 = t188 ).
      ENDIF.
      t142 = t143->key.
      DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t189 = me->conf->zlnt_view_read_sr_15c06369f827( ).
      DATA t191 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t136 = zcl_lnt_issue=>at_token( i_file = t3 i_token = t138 i_message_26cb = t131 i_key = t142 i_severity = t189 i_fix = t191 ).
      t2->load( ).
      APPEND t136 TO t2->items.
      t2->save( ).
    ENDIF.
  ENDMETHOD.

  METHOD has_search_annotation.
    DATA(t1) = i_normalized.
    DATA(t2) = i_name.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE string.
    t5 = t1->value.
    DATA(t7) = |@SEARCH|.
    DATA(t8) = strlen( t5 ).
    DATA t9 TYPE i.
    DATA(t10) = VALUE i( ).
    DATA(t11) = VALUE string( ).
    t9 = strlen( t7 ).
    IF t9 = 0.
      t4 = abap_true.
    ELSEIF t9 <= t8.
      t10 = 0.
      t11 = t5+t10(t9).
      IF t11 = t7.
        t4 = abap_true.
      ENDIF.
    ENDIF.
    t3 = xsdbool( t4 = abap_false ).
    IF t3 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA(t14) = VALUE abap_bool( ).
    DATA t15 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t16) = VALUE string( ).
    DATA(t17) = VALUE string( ).
    DATA(t18) = |[.\{,]|.
    DATA t19 TYPE string.
    DATA(t21) = strlen( t2 ).
    t19 = t2.
    IF t19 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t19 TO UPPER CASE.
    ELSE.
      t19 = zlnt_runtime_uppe_91169605024d=>full( t19 ).
    ENDIF.
    DATA(t22) = strlen( t18 ).
    t17 = |{ t18 }{ t19 }|.
    DATA(t23) = |:TRUE|.
    DATA(t24) = strlen( t17 ).
    t16 = |{ t17 }{ t23 }|.
    DATA(t25) = ||.
    CREATE OBJECT t15 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t16 flags = t25.
    DATA(t26) = VALUE string( ).
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t27 = t1.
    DATA(t29) = VALUE string( ).
    DATA(t30) = VALUE abap_bool( ).
    IF t27 IS INITIAL.
      t30 = abap_true.
    ELSEIF t27->has = abap_false.
      t30 = abap_true.
    ENDIF.
    IF t30 = abap_true.
      t29 = |undefined|.
    ELSE.
      DATA t33 TYPE string.
      t33 = t27->value.
      t29 = t33.
    ENDIF.
    t26 = t29.
    t14 = t15->test( p0 = t26 ).
    result = t14.

  ENDMETHOD.

  METHOD check_reserved_names.
    DATA(t2) = i_issues.
    DATA(t3) = i_file.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1085_7cdb0f50a2e1.
    t4 = i_tree->find_all_expressions_recursive( i_type_9913 = t6 ).
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
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
      DATA(t12) = VALUE abap_bool( ).
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t16) = |INCLUDE|.
      t14 = t7->find_direct_token_by_text( i_text = t16 ).
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = xsdbool( t14 IS INITIAL ).
      t19 = xsdbool( t20 = abap_false ).
      t12 = t19.
      IF t12 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t22.
      DATA t24 TYPE REF TO zcl_lnt_expression_node.
      DATA t25 TYPE REF TO zcl_lnt_expression_node.
      DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1091_2816df13f1ce.
      t25 = t7->find_direct_expression( i_type_9913 = t27 ).
      t24 = t25.
      DATA t28 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t28.
      DATA(t29) = xsdbool( t24 IS INITIAL ).
      IF t29 = abap_true.
        CLEAR t28.
      ELSE.
        DATA t32 TYPE REF TO zcl_lnt_expression_node.
        DATA t33 TYPE REF TO zcl_lnt_expression_node.
        t33 = t24.
        DATA(t35) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
        t32 = t33->find_direct_expression( i_type_9913 = t35 ).
        t28 = t32.
      ENDIF.
      t22 = t28.
      DATA(t36) = VALUE abap_bool( ).
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      t36 = xsdbool( t22 IS INITIAL ).
      IF t36 = abap_true.
        DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t43.
        DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t45.
        DATA t47 TYPE REF TO zcl_lnt_expression_node.
        DATA t48 TYPE REF TO zcl_lnt_expression_node.
        DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
        t48 = t7->find_direct_expression( i_type_9913 = t50 ).
        t47 = t48.
        DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t51.
        DATA(t52) = xsdbool( t47 IS INITIAL ).
        IF t52 = abap_true.
          CLEAR t51.
        ELSE.
          DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t56 TYPE REF TO zcl_lnt_expression_node.
          t56 = t47.
          DATA(t58) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
          t55 = t56->find_direct_expressions( i_type_9913 = t58 ).
          t51 = t55.
        ENDIF.
        t45 = t51.
        DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t59.
        DATA t60 TYPE abap_bool.
        t60 = xsdbool( t45 IS BOUND ).
        IF t60 = abap_true.
          t59 = t45.
        ELSE.
          DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t64.
          t59 = t64.
        ENDIF.
        t43 = t59.
        DATA t67 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t67.
        DATA t69 TYPE i.
        DATA t70 TYPE i.
        t43->load( ).
        t70 = lines( t43->items ).
        DATA(t72) = 1.
        t69 = t70 - t72.
        t69 = t69 + 1.
        DATA t73 TYPE REF TO object.
        CLEAR t73.
        t43->load( ).
        CLEAR t73.
        READ TABLE t43->items INDEX t69 INTO t73.
        DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t74.
        CLEAR t67.
        IF t73 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t74 ?= t73.
          DATA t75 TYPE REF TO object.
          t75 = t74->as_ref( ).
          t67 ?= t75.
        ELSE.
          t67 ?= t73.
        ENDIF.
        t22 = t67.
      ENDIF.
      DATA(t77) = VALUE abap_bool( ).
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t80.
      t77 = xsdbool( t22 IS INITIAL ).
      IF t77 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t84 TYPE string.
      DATA t89 TYPE string.
      DATA t90 TYPE string.
      t90 = t22->concat_tokens( ).
      DATA t92 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t92.
      DATA(t93) = | |.
      DATA(t94) = |g|.
      CREATE OBJECT t92 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t93 flags = t94 checked = abap_true.
      DATA(t95) = ||.
      DATA(t96) = strlen( t90 ).
      t89 = t92->replace( p0 = t90 p1 = t95 ).
      t84 = t89.
      DATA(t97) = VALUE abap_bool( ).
      DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t98.
      IF zcl_lnt_cds_chck_syntx_mdl=>zlnt_builtin_init_18d03cef5c95 = abap_false.
        zcl_lnt_cds_chck_syntx_mdl=>zlnt_builtin_init_70b92226996a( ).
      ENDIF.
      t98 = zcl_lnt_cds_chck_syntx_mdl=>reserved_element_names.
      DATA t99 TYPE string.
      DATA(t101) = strlen( t84 ).
      t99 = t84.
      IF t99 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t99 TO UPPER CASE.
      ELSE.
        t99 = zlnt_runtime_uppe_91169605024d=>full( t99 ).
      ENDIF.
      t97 = t98->includes( p0 = t99 ).
      IF t97 = abap_true.
        DATA t103 TYPE REF TO zcl_lnt_issue.
        CLEAR t103.
        DATA t105 TYPE REF TO zcl_lnt_abstract_token.
        DATA t106 TYPE REF TO zcl_lnt_expression_node.
        t106 = t22.
        t105 = t106->get_first_token( ).
        DATA t108 TYPE string.
        DATA t109 TYPE string.
        DATA(t110) = |CDS element name "|.
        DATA(t112) = strlen( t110 ).
        t109 = |{ t110 }{ t84 }|.
        DATA(t113) = |" is reserved|.
        DATA(t114) = strlen( t109 ).
        t108 = |{ t109 }{ t113 }|.
        DATA(t115) = VALUE string( ).
        DATA t116 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t116.
        DATA t117 TYPE string.
        t117 = |cds_check_syntax|.
        DATA t119 TYPE string.
        t119 = |CDS Check Syntax|.
        DATA t121 TYPE string.
        DATA(t122) = |Checks CDS source, field, type, and semantic annotation refe|.
        t122 = t122 && |rences|.
        t121 = t122.
        DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t123.
        DATA(t126) = |Performs semantic checks which require other DDIC objects to|.
        t126 = t126 && | be available.\n\nMissing objects are only reported when their|.
        t126 = t126 && | names match the configured errorNamespace.|.
        DATA(t127) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t127->has = abap_true.
        t127->value = t126.
        t123 = t127.
        DATA t129 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t129.
        DATA t133 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t134 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t134.
        t133 = t134.
        DATA(t136) = |Syntax|.
        t133->load( ).
        APPEND t136 TO t133->items.
        t133->save( ).
        t129 = t133.
        DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t139.
        DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t141.
        DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t143.
        DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t145.
        t116 = NEW zcl_lnt_irule_metadata( i_key = t117 i_title = t119 i_short_description = t121 i_bad_example = t139 i_good_example = t141 i_extended_information = t123 i_tags = t129 i_pragma = t143 i_pseudo_comment = t145 ).
        CREATE OBJECT t116->zlnt_view_ownkeys_b0e8086400eb.
        t116->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t147.
        t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t147 ).
        DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t148.
        IF t116->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t148 ).
        ENDIF.
        DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t149.
        IF t116->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t149 ).
        ENDIF.
        DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t150.
        IF t116->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t150 ).
        ENDIF.
        DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t151.
        IF t116->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t116->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t151 ).
        ENDIF.
        CREATE OBJECT t116->zlnt_json_ownkeys_70e5fd461788.
        t116->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t152) = |key|.
        DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t153.
        t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = t152 p1 = t153 ).
        DATA(t154) = |title|.
        DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t155.
        IF t116->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = t154 p1 = t155 ).
        ENDIF.
        DATA(t156) = |shortDescription|.
        DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t157.
        IF t116->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
        ENDIF.
        DATA(t158) = |extendedInformation|.
        DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t159.
        IF t116->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = t158 p1 = t159 ).
        ENDIF.
        DATA(t160) = |tags|.
        DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t161.
        IF t116->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t116->zlnt_json_ownkeys_70e5fd461788->put( p0 = t160 p1 = t161 ).
        ENDIF.
        t115 = t116->key.
        DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t162 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t164 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t164.
        t103 = zcl_lnt_issue=>at_token( i_file = t3 i_token = t105 i_message_26cb = t108 i_key = t115 i_severity = t162 i_fix = t164 ).
        t2->load( ).
        APPEND t103 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD check_fields.
    DATA(t1) = i_tree.
    DATA(t2) = i_sources.
    DATA(t3) = i_object_19cd.
    DATA(t4) = i_issues.
    DATA(t5) = i_file.
    DATA t6 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    t6 = NEW zlnt_runtime_set__1827558fd4c7( ).
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zcl_lnt_parsed_data_definition.
    DATA t15 TYPE REF TO zcl_lnt_parsed_data_definition.
    t15 = t3->parsed_data.
    t11 = t15.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t18) = xsdbool( t11 IS INITIAL ).
    IF t18 = abap_true.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t22 TYPE REF TO zcl_lnt_parsed_data_definition.
      t22 = t11.
      t21 = t22->associations.
      t17 = t21.
    ENDIF.
    t9 = t17.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t25 TYPE abap_bool.
    t25 = xsdbool( t9 IS BOUND ).
    IF t25 = abap_true.
      t24 = t9.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t29.
      t24 = t29.
    ENDIF.
    t8 = t24.
    DATA t30 TYPE REF TO zcl_lnt_shape_35310764.
    DATA t31 TYPE REF TO object.
    DATA(t32) = VALUE i( ).
    DO.
      t8->load( ).
      IF t32 >= lines( t8->items ).
        EXIT.
      ENDIF.
      CLEAR t31.
      READ TABLE t8->items INDEX t32 + 1 INTO t31.
      t32 = t32 + 1.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      CLEAR t30.
      IF t31 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t33 ?= t31.
        DATA t34 TYPE REF TO object.
        t34 = t33->as_ref( ).
        t30 ?= t34.
      ELSE.
        t30 ?= t31.
      ENDIF.
      DATA t35 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      CLEAR t35.
      DATA t37 TYPE string.
      DATA t38 TYPE string.
      t38 = t30->name.
      DATA(t40) = strlen( t38 ).
      t37 = t38.
      IF t37 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t37 TO UPPER CASE.
      ELSE.
        t37 = zlnt_runtime_uppe_91169605024d=>full( t37 ).
      ENDIF.
      t35 = t6->add( p0 = t37 ).
      DATA(t41) = VALUE abap_bool( ).
      DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t42 = t30->as.
      IF t42 IS BOUND.
        IF t42->has = abap_true.
          t41 = xsdbool( strlen( t42->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t41 = abap_true.
        DATA t44 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        CLEAR t44.
        DATA t46 TYPE string.
        DATA t47 TYPE string.
        DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t48 = t30->as.
        t47 = t48->value.
        DATA(t50) = strlen( t47 ).
        t46 = t47.
        IF t46 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t46 TO UPPER CASE.
        ELSE.
          t46 = zlnt_runtime_uppe_91169605024d=>full( t46 ).
        ENDIF.
        t44 = t6->add( p0 = t46 ).
      ENDIF.
    ENDDO.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t53) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1085_7cdb0f50a2e1.
    t51 = t1->find_all_expressions_recursive( i_type_9913 = t53 ).
    DATA t54 TYPE REF TO zcl_lnt_expression_node.
    DATA t55 TYPE REF TO object.
    DATA(t56) = VALUE i( ).
    DO.
      t51->load( ).
      IF t56 >= lines( t51->items ).
        EXIT.
      ENDIF.
      CLEAR t55.
      READ TABLE t51->items INDEX t56 + 1 INTO t55.
      t56 = t56 + 1.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t57.
      CLEAR t54.
      IF t55 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t57 ?= t55.
        DATA t58 TYPE REF TO object.
        t58 = t57->as_ref( ).
        t54 ?= t58.
      ELSE.
        t54 ?= t55.
      ENDIF.
      DATA t59 TYPE REF TO zcl_lnt_expression_node.
      DATA t60 TYPE REF TO zcl_lnt_expression_node.
      DATA(t62) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1074_6ed9f11fc08a.
      t60 = t54->find_direct_expression( i_type_9913 = t62 ).
      t59 = t60.
      DATA(t63) = VALUE abap_bool( ).
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t66.
      t63 = xsdbool( t59 IS INITIAL ).
      IF t63 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t72 TYPE REF TO zcl_lnt_expression_node.
      t72 = t59.
      DATA(t74) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
      t71 = t72->find_direct_expressions( i_type_9913 = t74 ).
      t70 = t71.
      DATA t75 TYPE abap_bool.
      DATA t76 TYPE i.
      t70->load( ).
      t76 = lines( t70->items ).
      DATA(t78) = 0.
      t75 = xsdbool( t76 = t78 ).
      IF t75 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t79) = VALUE string( ).
      DATA(t80) = VALUE string( ).
      DATA t82 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t82.
      DATA t84 TYPE REF TO object.
      CLEAR t84.
      t70->load( ).
      CLEAR t84.
      READ TABLE t70->items INDEX 1 INTO t84.
      DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t85.
      CLEAR t82.
      IF t84 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t85 ?= t84.
        DATA t86 TYPE REF TO object.
        t86 = t85->as_ref( ).
        t82 ?= t86.
      ELSE.
        t82 ?= t84.
      ENDIF.
      DATA t87 TYPE string.
      DATA t88 TYPE string.
      t88 = t82->concat_tokens( ).
      DATA t90 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t90.
      DATA(t91) = | |.
      DATA(t92) = |g|.
      CREATE OBJECT t90 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t91 flags = t92 checked = abap_true.
      DATA(t93) = ||.
      DATA(t94) = strlen( t88 ).
      t87 = t90->replace( p0 = t88 p1 = t93 ).
      t80 = t87.
      t79 = t80.
      DATA(t95) = VALUE abap_bool( ).
      DATA(t96) = VALUE abap_bool( ).
      DATA t97 TYPE abap_bool.
      DATA t98 TYPE abap_bool.
      DATA(t100) = |*|.
      t98 = xsdbool( t79 = t100 ).
      t97 = t98.
      IF t98 = abap_false.
        DATA(t101) = VALUE abap_bool( ).
        DATA(t103) = |$|.
        DATA(t104) = strlen( t79 ).
        DATA t105 TYPE i.
        DATA(t106) = VALUE i( ).
        DATA(t107) = VALUE string( ).
        t105 = strlen( t103 ).
        IF t105 = 0.
          t101 = abap_true.
        ELSEIF t105 <= t104.
          t106 = 0.
          t107 = t79+t106(t105).
          IF t107 = t103.
            t101 = abap_true.
          ENDIF.
        ENDIF.
        t97 = t101.
      ENDIF.
      t96 = t97.
      IF t97 = abap_false.
        DATA(t108) = VALUE abap_bool( ).
        DATA(t110) = |#|.
        DATA(t111) = strlen( t79 ).
        DATA t112 TYPE i.
        DATA(t113) = VALUE i( ).
        DATA(t114) = VALUE string( ).
        t112 = strlen( t110 ).
        IF t112 = 0.
          t108 = abap_true.
        ELSEIF t112 <= t111.
          t113 = 0.
          t114 = t79+t113(t112).
          IF t114 = t110.
            t108 = abap_true.
          ENDIF.
        ENDIF.
        t96 = t108.
      ENDIF.
      t95 = t96.
      IF t96 = abap_false.
        DATA(t115) = VALUE abap_bool( ).
        DATA t117 TYPE string.
        DATA(t119) = strlen( t79 ).
        t117 = t79.
        IF t117 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t117 TO UPPER CASE.
        ELSE.
          t117 = zlnt_runtime_uppe_91169605024d=>full( t117 ).
        ENDIF.
        t115 = t6->has( p0 = t117 ).
        t95 = t115.
      ENDIF.
      IF t95 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t120 TYPE abap_bool.
      DATA t121 TYPE i.
      t70->load( ).
      t121 = lines( t70->items ).
      DATA(t123) = 1.
      t120 = xsdbool( t121 > t123 ).
      IF t120 = abap_true.
        DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t124.
        DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t127.
        t126 = t127.
        DATA t129 TYPE REF TO zcl_lnt_rl_source.
        CLEAR t129.
        DATA t130 TYPE REF TO object.
        CLEAR t130.
        DATA(t131) = VALUE i( ).
        DO.
          t2->load( ).
          IF t131 >= lines( t2->items ).
            EXIT.
          ENDIF.
          CLEAR t130.
          READ TABLE t2->items INDEX t131 + 1 INTO t130.
          t131 = t131 + 1.
          DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t132.
          CLEAR t129.
          IF t130 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t132 ?= t130.
            DATA t133 TYPE REF TO object.
            t133 = t132->as_ref( ).
            t129 ?= t133.
          ELSE.
            t129 ?= t130.
          ENDIF.
          DATA(t134) = VALUE abap_bool( ).
          DATA t135 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          t135 = t129->names.
          DATA t137 TYPE string.
          DATA(t139) = strlen( t79 ).
          t137 = t79.
          IF t137 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t137 TO UPPER CASE.
          ELSE.
            t137 = zlnt_runtime_uppe_91169605024d=>full( t137 ).
          ENDIF.
          t134 = t135->includes( p0 = t137 ).
          IF t134 = abap_true.
            t126->load( ).
            APPEND t129 TO t126->items.
            t126->save( ).
          ENDIF.
        ENDDO.
        t124 = t126.
        DATA t143 TYPE abap_bool.
        DATA t144 TYPE i.
        t124->load( ).
        t144 = lines( t124->items ).
        DATA(t146) = 1.
        t143 = xsdbool( t144 <> t146 ).
        IF t143 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t147 TYPE REF TO zcl_lnt_rl_source.
        CLEAR t147.
        DATA t148 TYPE REF TO zcl_lnt_rl_source.
        CLEAR t148.
        DATA t150 TYPE REF TO object.
        CLEAR t150.
        t124->load( ).
        CLEAR t150.
        READ TABLE t124->items INDEX 1 INTO t150.
        DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t151.
        CLEAR t148.
        IF t150 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t151 ?= t150.
          DATA t152 TYPE REF TO object.
          t152 = t151->as_ref( ).
          t148 ?= t152.
        ELSE.
          t148 ?= t150.
        ENDIF.
        t147 = t148.
        DATA t153 TYPE REF TO zif_lnt_union_48da8d64.
        DATA t154 TYPE REF TO zif_lnt_union_48da8d64.
        t154 = t147->type_cba0.
        t153 = t154.
        DATA t156 TYPE abap_bool.
        DATA t157 TYPE abap_bool.
        t157 = xsdbool( t153 IS BOUND AND t153 IS INSTANCE OF zcl_lnt_structure_type ).
        t156 = xsdbool( t157 = abap_false ).
        IF t156 = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t159) = VALUE string( ).
        DATA(t160) = VALUE string( ).
        DATA t162 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t162.
        DATA t164 TYPE REF TO object.
        CLEAR t164.
        t70->load( ).
        CLEAR t164.
        READ TABLE t70->items INDEX 2 INTO t164.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t165.
        CLEAR t162.
        IF t164 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t165 ?= t164.
          DATA t166 TYPE REF TO object.
          t166 = t165->as_ref( ).
          t162 ?= t166.
        ELSE.
          t162 ?= t164.
        ENDIF.
        DATA t167 TYPE string.
        DATA t168 TYPE string.
        t168 = t162->concat_tokens( ).
        DATA t170 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t170.
        DATA(t171) = | |.
        DATA(t172) = |g|.
        CREATE OBJECT t170 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t171 flags = t172 checked = abap_true.
        DATA(t173) = ||.
        DATA(t174) = strlen( t168 ).
        t167 = t170->replace( p0 = t168 p1 = t173 ).
        t160 = t167.
        t159 = t160.
        DATA t175 TYPE abap_bool.
        DATA t176 TYPE abap_bool.
        DATA(t178) = |*|.
        t176 = xsdbool( t159 <> t178 ).
        t175 = t176.
        IF t176 = abap_true.
          DATA(t179) = VALUE abap_bool( ).
          DATA t183 TYPE REF TO zcl_lnt_structure_type.
          DATA t185 TYPE REF TO object.
          t185 = t153.
          t183 ?= t185.
          DATA t186 TYPE string.
          t186 = t159.
          DATA t188 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t188.
          DATA t189 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
          t189 = t183->indexed.
          DATA t191 TYPE string.
          DATA(t193) = strlen( t186 ).
          t191 = t186.
          IF t191 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t191 TO UPPER CASE.
          ELSE.
            t191 = zlnt_runtime_uppe_91169605024d=>full( t191 ).
          ENDIF.
          t188 = t189->get( p0 = t191 ).
          DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t194.
          t179 = xsdbool( t188 IS INITIAL ).
          t175 = t179.
        ENDIF.
        IF t175 = abap_true.
          DATA t199 TYPE REF TO zcl_lnt_issue.
          CLEAR t199.
          DATA t201 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t201.
          DATA t202 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t202.
          DATA t204 TYPE REF TO object.
          CLEAR t204.
          t70->load( ).
          CLEAR t204.
          READ TABLE t70->items INDEX 2 INTO t204.
          DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t205.
          CLEAR t202.
          IF t204 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t205 ?= t204.
            DATA t206 TYPE REF TO object.
            t206 = t205->as_ref( ).
            t202 ?= t206.
          ELSE.
            t202 ?= t204.
          ENDIF.
          t201 = t202->get_first_token( ).
          DATA t207 TYPE string.
          DATA t208 TYPE string.
          DATA t209 TYPE string.
          DATA t210 TYPE string.
          DATA(t211) = |CDS field "|.
          DATA(t213) = strlen( t211 ).
          t210 = |{ t211 }{ t159 }|.
          DATA(t214) = |" not found in "|.
          DATA(t215) = strlen( t210 ).
          t209 = |{ t210 }{ t214 }|.
          DATA t216 TYPE string.
          t216 = t147->entity.
          DATA(t218) = strlen( t209 ).
          t208 = |{ t209 }{ t216 }|.
          DATA(t219) = |"|.
          DATA(t220) = strlen( t208 ).
          t207 = |{ t208 }{ t219 }|.
          DATA(t221) = VALUE string( ).
          DATA t222 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t222.
          DATA t223 TYPE string.
          t223 = |cds_check_syntax|.
          DATA t225 TYPE string.
          t225 = |CDS Check Syntax|.
          DATA t227 TYPE string.
          DATA(t228) = |Checks CDS source, field, type, and semantic annotation refe|.
          t228 = t228 && |rences|.
          t227 = t228.
          DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t229.
          DATA(t232) = |Performs semantic checks which require other DDIC objects to|.
          t232 = t232 && | be available.\n\nMissing objects are only reported when their|.
          t232 = t232 && | names match the configured errorNamespace.|.
          DATA(t233) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t233->has = abap_true.
          t233->value = t232.
          t229 = t233.
          DATA t235 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t235.
          DATA t239 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t240 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t240.
          t239 = t240.
          DATA(t242) = |Syntax|.
          t239->load( ).
          APPEND t242 TO t239->items.
          t239->save( ).
          t235 = t239.
          DATA t245 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t245.
          DATA t247 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t247.
          DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t249.
          DATA t251 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t251.
          t222 = NEW zcl_lnt_irule_metadata( i_key = t223 i_title = t225 i_short_description = t227 i_bad_example = t245 i_good_example = t247 i_extended_information = t229 i_tags = t235 i_pragma = t249 i_pseudo_comment = t251 ).
          CREATE OBJECT t222->zlnt_view_ownkeys_b0e8086400eb.
          t222->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t253.
          t222->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t253 ).
          DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t254.
          IF t222->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t222->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t254 ).
          ENDIF.
          DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t255.
          IF t222->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t222->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t255 ).
          ENDIF.
          DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t256.
          IF t222->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t222->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t256 ).
          ENDIF.
          DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t257.
          IF t222->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t222->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t257 ).
          ENDIF.
          CREATE OBJECT t222->zlnt_json_ownkeys_70e5fd461788.
          t222->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t258) = |key|.
          DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t259.
          t222->zlnt_json_ownkeys_70e5fd461788->put( p0 = t258 p1 = t259 ).
          DATA(t260) = |title|.
          DATA t261 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t261.
          IF t222->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t222->zlnt_json_ownkeys_70e5fd461788->put( p0 = t260 p1 = t261 ).
          ENDIF.
          DATA(t262) = |shortDescription|.
          DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t263.
          IF t222->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t222->zlnt_json_ownkeys_70e5fd461788->put( p0 = t262 p1 = t263 ).
          ENDIF.
          DATA(t264) = |extendedInformation|.
          DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t265.
          IF t222->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t222->zlnt_json_ownkeys_70e5fd461788->put( p0 = t264 p1 = t265 ).
          ENDIF.
          DATA(t266) = |tags|.
          DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t267.
          IF t222->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t222->zlnt_json_ownkeys_70e5fd461788->put( p0 = t266 p1 = t267 ).
          ENDIF.
          t221 = t222->key.
          DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t268 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t270 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t270.
          t199 = zcl_lnt_issue=>at_token( i_file = t5 i_token = t201 i_message_26cb = t207 i_key = t221 i_severity = t268 i_fix = t270 ).
          t4->load( ).
          APPEND t199 TO t4->items.
          t4->save( ).
        ENDIF.
        CONTINUE.
      ENDIF.
      DATA t271 TYPE abap_bool.
      DATA t272 TYPE i.
      t2->load( ).
      t272 = lines( t2->items ).
      DATA(t274) = 1.
      t271 = xsdbool( t272 <> t274 ).
      IF t271 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t275 TYPE REF TO zcl_lnt_rl_source.
      CLEAR t275.
      DATA t276 TYPE REF TO zcl_lnt_rl_source.
      CLEAR t276.
      DATA t278 TYPE REF TO object.
      CLEAR t278.
      t2->load( ).
      CLEAR t278.
      READ TABLE t2->items INDEX 1 INTO t278.
      DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t279.
      CLEAR t276.
      IF t278 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t279 ?= t278.
        DATA t280 TYPE REF TO object.
        t280 = t279->as_ref( ).
        t276 ?= t280.
      ELSE.
        t276 ?= t278.
      ENDIF.
      t275 = t276.
      DATA t281 TYPE REF TO zif_lnt_union_48da8d64.
      DATA t282 TYPE REF TO zif_lnt_union_48da8d64.
      t282 = t275->type_cba0.
      t281 = t282.
      DATA t284 TYPE abap_bool.
      DATA t285 TYPE abap_bool.
      t285 = xsdbool( t281 IS BOUND AND t281 IS INSTANCE OF zcl_lnt_structure_type ).
      t284 = xsdbool( t285 = abap_false ).
      IF t284 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t287) = VALUE abap_bool( ).
      DATA t291 TYPE REF TO zcl_lnt_structure_type.
      DATA t293 TYPE REF TO object.
      t293 = t281.
      t291 ?= t293.
      DATA t294 TYPE string.
      t294 = t79.
      DATA t296 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t296.
      DATA t297 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      t297 = t291->indexed.
      DATA t299 TYPE string.
      DATA(t301) = strlen( t294 ).
      t299 = t294.
      IF t299 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t299 TO UPPER CASE.
      ELSE.
        t299 = zlnt_runtime_uppe_91169605024d=>full( t299 ).
      ENDIF.
      t296 = t297->get( p0 = t299 ).
      DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t302.
      t287 = xsdbool( t296 IS INITIAL ).
      IF t287 = abap_true.
        DATA t307 TYPE REF TO zcl_lnt_issue.
        CLEAR t307.
        DATA t309 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t309.
        DATA t310 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t310.
        DATA t312 TYPE REF TO object.
        CLEAR t312.
        t70->load( ).
        CLEAR t312.
        READ TABLE t70->items INDEX 1 INTO t312.
        DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t313.
        CLEAR t310.
        IF t312 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t313 ?= t312.
          DATA t314 TYPE REF TO object.
          t314 = t313->as_ref( ).
          t310 ?= t314.
        ELSE.
          t310 ?= t312.
        ENDIF.
        t309 = t310->get_first_token( ).
        DATA t315 TYPE string.
        DATA t316 TYPE string.
        DATA t317 TYPE string.
        DATA t318 TYPE string.
        DATA(t319) = |CDS field "|.
        DATA(t321) = strlen( t319 ).
        t318 = |{ t319 }{ t79 }|.
        DATA(t322) = |" not found in "|.
        DATA(t323) = strlen( t318 ).
        t317 = |{ t318 }{ t322 }|.
        DATA t324 TYPE string.
        t324 = t275->entity.
        DATA(t326) = strlen( t317 ).
        t316 = |{ t317 }{ t324 }|.
        DATA(t327) = |"|.
        DATA(t328) = strlen( t316 ).
        t315 = |{ t316 }{ t327 }|.
        DATA(t329) = VALUE string( ).
        DATA t330 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t330.
        DATA t331 TYPE string.
        t331 = |cds_check_syntax|.
        DATA t333 TYPE string.
        t333 = |CDS Check Syntax|.
        DATA t335 TYPE string.
        DATA(t336) = |Checks CDS source, field, type, and semantic annotation refe|.
        t336 = t336 && |rences|.
        t335 = t336.
        DATA t337 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t337.
        DATA(t340) = |Performs semantic checks which require other DDIC objects to|.
        t340 = t340 && | be available.\n\nMissing objects are only reported when their|.
        t340 = t340 && | names match the configured errorNamespace.|.
        DATA(t341) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t341->has = abap_true.
        t341->value = t340.
        t337 = t341.
        DATA t343 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t343.
        DATA t347 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t348 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t348.
        t347 = t348.
        DATA(t350) = |Syntax|.
        t347->load( ).
        APPEND t350 TO t347->items.
        t347->save( ).
        t343 = t347.
        DATA t353 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t353.
        DATA t355 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t355.
        DATA t357 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t357.
        DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t359.
        t330 = NEW zcl_lnt_irule_metadata( i_key = t331 i_title = t333 i_short_description = t335 i_bad_example = t353 i_good_example = t355 i_extended_information = t337 i_tags = t343 i_pragma = t357 i_pseudo_comment = t359 ).
        CREATE OBJECT t330->zlnt_view_ownkeys_b0e8086400eb.
        t330->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t361.
        t330->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t361 ).
        DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t362.
        IF t330->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t330->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t362 ).
        ENDIF.
        DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t363.
        IF t330->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t330->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t363 ).
        ENDIF.
        DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t364.
        IF t330->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t330->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t364 ).
        ENDIF.
        DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t365.
        IF t330->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t330->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t365 ).
        ENDIF.
        CREATE OBJECT t330->zlnt_json_ownkeys_70e5fd461788.
        t330->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t366) = |key|.
        DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t367.
        t330->zlnt_json_ownkeys_70e5fd461788->put( p0 = t366 p1 = t367 ).
        DATA(t368) = |title|.
        DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t369.
        IF t330->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t330->zlnt_json_ownkeys_70e5fd461788->put( p0 = t368 p1 = t369 ).
        ENDIF.
        DATA(t370) = |shortDescription|.
        DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t371.
        IF t330->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t330->zlnt_json_ownkeys_70e5fd461788->put( p0 = t370 p1 = t371 ).
        ENDIF.
        DATA(t372) = |extendedInformation|.
        DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t373.
        IF t330->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t330->zlnt_json_ownkeys_70e5fd461788->put( p0 = t372 p1 = t373 ).
        ENDIF.
        DATA(t374) = |tags|.
        DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t375.
        IF t330->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t330->zlnt_json_ownkeys_70e5fd461788->put( p0 = t374 p1 = t375 ).
        ENDIF.
        t329 = t330->key.
        DATA t376 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t376 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t378 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t378.
        t307 = zcl_lnt_issue=>at_token( i_file = t5 i_token = t309 i_message_26cb = t315 i_key = t329 i_severity = t376 i_fix = t378 ).
        t4->load( ).
        APPEND t307 TO t4->items.
        t4->save( ).
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD name.
    DATA t2 TYPE string.
    DATA t3 TYPE string.
    t3 = i_node->concat_tokens( ).
    DATA t5 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t6) = | |.
    DATA(t7) = |g|.
    CREATE OBJECT t5 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t6 flags = t7 checked = abap_true.
    DATA(t8) = ||.
    DATA(t9) = strlen( t3 ).
    t2 = t5->replace( p0 = t3 p1 = t8 ).
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_cds_check_syntax_conf( me->g_c_i_s_r_cd_ch_sy_ts_cd_ch_sy( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_cds_check_syntax_conf( me->g_c_i_s_r_cd_ch_sy_ts_cd_ch_sy( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_cds_check_syntax_conf.
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
        t2 = NEW zcl_lnt_cds_check_syntax_conf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_cd_ch_sy_ts_cd_ch_sy( i_conf = t2 ).
  ENDMETHOD.

  METHOD run.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = i_obj_1ed0.
    t2 = me->r_i_sr_rl_cd_ch_sy_ts_cd_ch_sy( i_object_19cd = t3 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1418_596507c5c11d.
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
