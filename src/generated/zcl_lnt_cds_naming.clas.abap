* TS: src/rules/cds_naming.ts:35:1 CDSNaming
CLASS zcl_lnt_cds_naming DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_cds_naming_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS gt_cn_in_sr_rl_cd_nm_ts_cd_nmn RETURNING VALUE(result) TYPE REF TO zcl_lnt_cds_naming_conf.
    METHODS st_cn_in_sr_rl_cd_nm_ts_cd_nmn IMPORTING i_conf TYPE REF TO zcl_lnt_cds_naming_conf.
    METHODS in_in_sr_rl_cds_nmn_ts_cds_nmn IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS rn_in_sr_rl_cds_nmn_ts_cds_nmn IMPORTING i_o TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_allowed_prefixes IMPORTING i_tree TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_naming IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_cds_naming_conf(  ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = CONV string( |cds_naming| ).
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = CONV string( |CDS Naming| ).
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = CONV string( |Checks CDS naming conventions based on the VDM prefix rules| ).
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = CONV abap_bool( abap_true ).
    IF t10 = abap_true.
      DATA(t11) = CONV string( |Validates that CDS entity names follow the expected prefix c| ).
      t11 = t11 && |onventions:\nI_ for interface views, C_ for consumption views|.
      t11 = t11 && |, R_ for restricted reuse views,\nP_ for private views, A_ fo|.
      t11 = t11 && |r remote API views, X_ for view extends,\nE_ for extension in|.
      t11 = t11 && |clude views, F_ for derivation functions, D_ for abstract en|.
      t11 = t11 && |tities.\n\nNames must also start with Z after the prefix (cust|.
      t11 = t11 && |om namespace).\n\nhttps://help.sap.com/docs/SAP_S4HANA_ON-PREM|.
      t11 = t11 && |ISE/ee6ff9b281d8448f96b4fe6c89f2bdc8/8a8cee943ef944fe8936f4c|.
      t11 = t11 && |c60ba9bc1.html|.
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
    DATA(t16) = CONV abap_bool( abap_true ).
    IF t16 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t19.
      t18 = t19.
      DATA(t20) = CAST zlnt_runtime_arra_8ecd6afe19e0( t18 ).
      DATA(t21) = CONV string( |SingleFile| ).
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = CAST zlnt_runtime_arra_8ecd6afe19e0( t18 ).
      DATA(t23) = CONV string( |Naming| ).
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = CAST zlnt_runtime_arra_8ecd6afe19e0( t18 ).
      t17 = t24.
      t15 = t17.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t25.
      t15 = t25.
    ENDIF.
    t14 = t15.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA(t28) = CONV abap_bool( abap_true ).
    IF t28 = abap_true.
      DATA(t29) = CONV string( |define view entity ZMY_VIEW as select from source \{ key id \}| ).
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t29.
      t27 = t30.
    ELSE.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      t27 = t31.
    ENDIF.
    t26 = t27.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    DATA(t34) = CONV abap_bool( abap_true ).
    IF t34 = abap_true.
      DATA(t35) = CONV string( |define view entity ZI_MY_VIEW as select from source \{ key id| ).
      t35 = t35 && | \}|.
      DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t36->has = abap_true.
      t36->value = t35.
      t33 = t36.
    ELSE.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      t33 = t37.
    ENDIF.
    t32 = t33.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    t40 = t41.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t26 i_good_example = t32 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t48 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t49) = CONV string( |key| ).
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = CONV string( |title| ).
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = CONV string( |shortDescription| ).
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = CONV string( |extendedInformation| ).
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = CONV string( |tags| ).
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = CONV string( |badExample| ).
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = CONV string( |goodExample| ).
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    result = t1.
    RETURN.
  ENDMETHOD.
  METHOD gt_cn_in_sr_rl_cd_nm_ts_cd_nmn.
    DATA(t1) = CAST zcl_lnt_cds_naming_conf( me->conf ).
    result = t1.
    RETURN.
  ENDMETHOD.
  METHOD st_cn_in_sr_rl_cd_nm_ts_cd_nmn.
    DATA(t1) = CAST zcl_lnt_cds_naming_conf( i_conf ).
    DATA(t2) = CAST zcl_lnt_cds_naming_conf( t1 ).
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.
  METHOD in_in_sr_rl_cds_nmn_ts_cds_nmn.
    DATA(t1) = CAST zif_lnt_registry( i_reg_d009 ).
    DATA(t2) = CAST zcl_lnt_cds_naming( me ).
    result = t2.
    RETURN.
  ENDMETHOD.
  METHOD rn_in_sr_rl_cds_nmn_ts_cds_nmn.
    DATA(t1) = CAST zif_lnt_object( i_o ).
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE string.
    DATA(t5) = CAST zif_lnt_object( t1 ).
    t4 = t5->get_type(  ).
    DATA(t6) = CONV string( |DDLS| ).
    t3 = xsdbool( t4 <> t6 ).
    t2 = t3.
    IF t3 = abap_false.
      DATA t7 TYPE abap_bool.
      DATA t8 TYPE abap_bool.
      DATA(t9) = CAST zif_lnt_object( t1 ).
      t8 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_ob_data_definition ).
      t7 = xsdbool( t8 = abap_false ).
      t2 = t7.
    ENDIF.
    IF t2 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t10.
      result = t10.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t11.
    DATA t12 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t12.
    DATA t13 TYPE REF TO zcl_lnt_ob_data_definition.
    DATA t14 TYPE REF TO zcl_lnt_ob_data_definition.
    DATA(t15) = CAST zif_lnt_object( t1 ).
    DATA t16 TYPE REF TO object.
    t16 = t15.
    t14 ?= t16.
    t13 = t14.
    DATA t17 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t17.
    DATA t18 TYPE REF TO zcl_lnt_parsed_data_definition.
    DATA t19 TYPE REF TO zcl_lnt_parsed_data_definition.
    DATA(t20) = CAST zcl_lnt_ob_data_definition( t13 ).
    t19 = t20->parsed_data.
    t18 = t19.
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t21.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = CAST zcl_lnt_parsed_data_definition( t18 ).
    IF t23 IS INITIAL.
      t22 = abap_true.
    ENDIF.
    IF t22 = abap_true.
      DATA t24 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t24.
      t21 = t24.
    ELSE.
      DATA t25 TYPE REF TO zcl_lnt_expression_node.
      DATA t26 TYPE REF TO zcl_lnt_parsed_data_definition.
      DATA(t27) = CAST zcl_lnt_parsed_data_definition( t18 ).
      t26 = t27.
      t25 = t26->tree.
      t21 = t25.
    ENDIF.
    t17 = t21.
    t12 = t17.
    t11 = t12.
    DATA(t28) = VALUE abap_bool( ).
    DATA t29 TYPE REF TO zcl_lnt_expression_node.
    DATA(t30) = CAST zcl_lnt_expression_node( t11 ).
    t29 = t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    t31 = t32.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = CAST zcl_lnt_expression_node( t29 ).
    IF t34 IS INITIAL.
      t33 = abap_true.
    ENDIF.
    t28 = t33.
    IF t28 = abap_true.
      DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t35.
      result = t35.
      RETURN.
    ENDIF.
    DATA t36 TYPE REF TO zif_lnt_file.
    DATA t37 TYPE REF TO zif_lnt_file.
    DATA t38 TYPE REF TO zcl_lnt_ob_data_definition.
    DATA(t39) = CAST zif_lnt_object( t1 ).
    DATA t40 TYPE REF TO object.
    t40 = t39.
    t38 ?= t40.
    t37 = t38->find_source_file(  ).
    t36 = t37.
    DATA(t41) = VALUE abap_bool( ).
    DATA t42 TYPE REF TO zif_lnt_file.
    DATA(t43) = CAST zif_lnt_file( t36 ).
    t42 = t43.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    t44 = t45.
    DATA(t46) = VALUE abap_bool( ).
    DATA(t47) = CAST zif_lnt_file( t42 ).
    IF t47 IS INITIAL.
      t46 = abap_true.
    ENDIF.
    t41 = t46.
    IF t41 = abap_true.
      DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t48.
      result = t48.
      RETURN.
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t50.
    DATA t51 TYPE REF TO zcl_lnt_ob_data_definition.
    DATA t52 TYPE REF TO zcl_lnt_ob_data_definition.
    DATA(t53) = CAST zif_lnt_object( t1 ).
    DATA t54 TYPE REF TO object.
    t54 = t53.
    t52 ?= t54.
    t51 = t52.
    DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t55.
    DATA t56 TYPE REF TO zcl_lnt_iparse_result.
    DATA(t57) = CAST zcl_lnt_ob_data_definition( t51 ).
    t56 = t57->pr_in_src_obj_dt_dfn_ts_dt_dfn(  ).
    DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t58.
    DATA t59 TYPE REF TO zcl_lnt_parsed_data_definition.
    DATA t60 TYPE REF TO zcl_lnt_parsed_data_definition.
    DATA(t61) = CAST zcl_lnt_ob_data_definition( t51 ).
    t60 = t61->parsed_data.
    t59 = t60.
    DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t62.
    DATA(t63) = VALUE abap_bool( ).
    DATA(t64) = CAST zcl_lnt_parsed_data_definition( t59 ).
    IF t64 IS INITIAL.
      t63 = abap_true.
    ENDIF.
    IF t63 = abap_true.
      DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t65.
      t62 = t65.
    ELSE.
      DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t67 TYPE REF TO zcl_lnt_parsed_data_definition.
      DATA(t68) = CAST zcl_lnt_parsed_data_definition( t59 ).
      t67 = t68.
      t66 = t67->definition_name.
      t62 = t66.
    ENDIF.
    t58 = t62.
    t55 = t58.
    t50 = t55.
    t49 = t50.
    DATA(t69) = VALUE abap_bool( ).
    DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t71) = CAST zlnt_runtime_opti_4ba3bdccd169( t49 ).
    t70 = t71.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t73.
    t72 = t73.
    DATA(t74) = VALUE abap_bool( ).
    DATA(t75) = CAST zlnt_runtime_opti_4ba3bdccd169( t70 ).
    IF t75 IS INITIAL.
      t74 = abap_true.
    ELSEIF t75->has = abap_false.
      t74 = abap_true.
    ENDIF.
    t69 = t74.
    IF t69 = abap_true.
      DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t76.
      result = t76.
      RETURN.
    ENDIF.
    DATA(t77) = VALUE string( ).
    DATA t78 TYPE string.
    DATA t79 TYPE string.
    DATA(t80) = CAST zlnt_runtime_opti_4ba3bdccd169( t49 ).
    t79 = t80->value.
    DATA(t81) = CONV i( strlen( t79 ) ).
    t78 = t79.
    IF t78 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t78 TO UPPER CASE.
    ELSE.
      t78 = zlnt_runtime_uppe_91169605024d=>full( t78 ).
    ENDIF.
    t77 = t78.
    DATA t82 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t83 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t84 TYPE REF TO zcl_lnt_expression_node.
    DATA(t85) = CAST zcl_lnt_expression_node( t11 ).
    t84 = t85.
    t83 = me->get_allowed_prefixes( i_tree = t84 ).
    t82 = t83.
    DATA t86 TYPE abap_bool.
    DATA t87 TYPE i.
    DATA(t88) = CAST zlnt_runtime_arra_8ecd6afe19e0( t82 ).
    t88->load( ).
    t87 = lines( t88->items ).
    DATA(t89) = CONV i( 0 ).
    t86 = xsdbool( t87 = t89 ).
    IF t86 = abap_true.
      DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t90.
      result = t90.
      RETURN.
    ENDIF.
    DATA(t91) = VALUE abap_bool( ).
    DATA(t92) = VALUE abap_bool( ).
    DATA t93 TYPE abap_bool.
    DATA(t94) = CONV abap_bool( abap_false ).
    t93 = t94.
    DATA(t95) = CAST zlnt_runtime_arra_8ecd6afe19e0( t82 ).
    DATA(t96) = VALUE string( ).
    t95->dense( ).
    DATA(t97) = VALUE i( ).
    DO.
      t95->load( ).
      IF t97 >= lines( t95->items ).
        EXIT.
      ENDIF.
      CLEAR t96.
      READ TABLE t95->items INDEX t97 + 1 INTO t96.
      IF t95->has( t97 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t97 = t97 + 1.
      DATA(t98) = VALUE abap_bool( ).
      DATA(t99) = CONV string( t77 ).
      DATA t100 TYPE string.
      DATA(t101) = CONV string( t96 ).
      DATA(t102) = CONV i( strlen( t101 ) ).
      t100 = t101.
      IF t100 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t100 TO UPPER CASE.
      ELSE.
        t100 = zlnt_runtime_uppe_91169605024d=>full( t100 ).
      ENDIF.
      DATA(t103) = CONV i( strlen( t99 ) ).
      DATA t104 TYPE i.
      DATA(t105) = VALUE i( ).
      DATA(t106) = VALUE string( ).
      t104 = strlen( t100 ).
      IF t104 = 0.
        t98 = abap_true.
      ELSEIF t104 <= t103.
        t105 = 0.
        t106 = t99+t105(t104).
        IF t106 = t100.
          t98 = abap_true.
        ENDIF.
      ENDIF.
      IF t98 = abap_true.
        DATA(t107) = CONV abap_bool( abap_true ).
        t93 = t107.
        EXIT.
      ENDIF.
    ENDDO.
    DATA(t108) = CONV abap_bool( t93 ).
    t92 = t108.
    t91 = t92.
    DATA t109 TYPE abap_bool.
    DATA(t110) = CONV abap_bool( t91 ).
    t109 = xsdbool( t110 = abap_false ).
    IF t109 = abap_true.
      DATA t111 TYPE string.
      DATA t112 TYPE string.
      DATA t113 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t114 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t115 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t115.
      t114 = t115.
      DATA t116 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t117 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t118) = CAST zlnt_runtime_arra_8ecd6afe19e0( t114 ).
      DATA t119 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t120 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      DATA(t121) = NEW zlnt_runtime_set__1827558fd4c7(  ).
      DATA(t122) = CAST zlnt_runtime_arra_8ecd6afe19e0( t82 ).
      t120 = t121->fromArray( p0 = t122 ).
      t119 = t120->values(  ).
      t117 = t118->concat( p0 = t119 ).
      t116 = t117.
      DATA(t123) = CAST zlnt_runtime_arra_8ecd6afe19e0( t116 ).
      t113 = t123.
      DATA(t124) = CONV string( |, | ).
      DATA(t125) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t125->has = abap_true.
      t125->value = t124.
      t112 = t113->join( p0 = t125 ).
      t111 = t112.
      DATA t126 TYPE string.
      DATA t127 TYPE string.
      DATA t128 TYPE string.
      DATA t129 TYPE string.
      DATA t130 TYPE string.
      DATA(t131) = CONV string( |CDS name "| ).
      DATA t132 TYPE string.
      DATA(t133) = CAST zlnt_runtime_opti_4ba3bdccd169( t49 ).
      t132 = t133->value.
      DATA(t134) = CONV i( strlen( t131 ) ).
      t130 = |{ t131 }{ t132 }|.
      DATA(t135) = CONV string( |" should have one of the expected prefixes: | ).
      DATA(t136) = CONV i( strlen( t130 ) ).
      t129 = |{ t130 }{ t135 }|.
      DATA(t137) = CONV string( t111 ).
      DATA(t138) = CONV i( strlen( t129 ) ).
      t128 = |{ t129 }{ t137 }|.
      DATA(t139) = CONV string( || ).
      DATA(t140) = CONV i( strlen( t128 ) ).
      t127 = |{ t128 }{ t139 }|.
      t126 = t127.
      DATA t141 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t141.
      DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t143 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t143.
      t142 = t143.
      DATA(t144) = CAST zlnt_runtime_arra_c22708faf2e3( t142 ).
      DATA t145 TYPE REF TO zcl_lnt_issue.
      CLEAR t145.
      DATA t146 TYPE REF TO zif_lnt_file.
      DATA(t147) = CAST zif_lnt_file( t36 ).
      t146 = t147.
      DATA(t148) = CONV f( 1 ).
      DATA(t149) = CONV string( t126 ).
      DATA(t150) = VALUE string( ).
      DATA t151 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t151.
      DATA t152 TYPE string.
      DATA(t153) = CONV string( |cds_naming| ).
      t152 = t153.
      DATA t154 TYPE string.
      DATA(t155) = CONV string( |CDS Naming| ).
      t154 = t155.
      DATA t156 TYPE string.
      DATA(t157) = CONV string( |Checks CDS naming conventions based on the VDM prefix rules| ).
      t156 = t157.
      DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t158.
      DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t159.
      DATA(t160) = CONV abap_bool( abap_true ).
      IF t160 = abap_true.
        DATA(t161) = CONV string( |Validates that CDS entity names follow the expected prefix c| ).
        t161 = t161 && |onventions:\nI_ for interface views, C_ for consumption views|.
        t161 = t161 && |, R_ for restricted reuse views,\nP_ for private views, A_ fo|.
        t161 = t161 && |r remote API views, X_ for view extends,\nE_ for extension in|.
        t161 = t161 && |clude views, F_ for derivation functions, D_ for abstract en|.
        t161 = t161 && |tities.\n\nNames must also start with Z after the prefix (cust|.
        t161 = t161 && |om namespace).\n\nhttps://help.sap.com/docs/SAP_S4HANA_ON-PREM|.
        t161 = t161 && |ISE/ee6ff9b281d8448f96b4fe6c89f2bdc8/8a8cee943ef944fe8936f4c|.
        t161 = t161 && |c60ba9bc1.html|.
        DATA(t162) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t162->has = abap_true.
        t162->value = t161.
        t159 = t162.
      ELSE.
        DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t163.
        t159 = t163.
      ENDIF.
      t158 = t159.
      DATA t164 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t164.
      DATA t165 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t165.
      DATA(t166) = CONV abap_bool( abap_true ).
      IF t166 = abap_true.
        DATA t167 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t168 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t169 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t169.
        t168 = t169.
        DATA(t170) = CAST zlnt_runtime_arra_8ecd6afe19e0( t168 ).
        DATA(t171) = CONV string( |SingleFile| ).
        t170->load( ).
        APPEND t171 TO t170->items.
        t170->save( ).
        DATA(t172) = CAST zlnt_runtime_arra_8ecd6afe19e0( t168 ).
        DATA(t173) = CONV string( |Naming| ).
        t172->load( ).
        APPEND t173 TO t172->items.
        t172->save( ).
        DATA(t174) = CAST zlnt_runtime_arra_8ecd6afe19e0( t168 ).
        t167 = t174.
        t165 = t167.
      ELSE.
        DATA t175 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t175.
        t165 = t175.
      ENDIF.
      t164 = t165.
      DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t176.
      DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t177.
      DATA(t178) = CONV abap_bool( abap_true ).
      IF t178 = abap_true.
        DATA(t179) = CONV string( |define view entity ZMY_VIEW as select from source \{ key id \}| ).
        DATA(t180) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t180->has = abap_true.
        t180->value = t179.
        t177 = t180.
      ELSE.
        DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t181.
        t177 = t181.
      ENDIF.
      t176 = t177.
      DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t182.
      DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t183.
      DATA(t184) = CONV abap_bool( abap_true ).
      IF t184 = abap_true.
        DATA(t185) = CONV string( |define view entity ZI_MY_VIEW as select from source \{ key id| ).
        t185 = t185 && | \}|.
        DATA(t186) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t186->has = abap_true.
        t186->value = t185.
        t183 = t186.
      ELSE.
        DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t187.
        t183 = t187.
      ENDIF.
      t182 = t183.
      DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t189.
      t188 = t189.
      DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t191.
      t190 = t191.
      t151 = NEW zcl_lnt_irule_metadata( i_key = t152 i_title = t154 i_short_description = t156 i_bad_example = t176 i_good_example = t182 i_extended_information = t158 i_tags = t164 i_pragma = t188 i_pseudo_comment = t190 ).
      CREATE OBJECT t151->zlnt_view_ownkeys_b0e8086400eb.
      t151->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t192.
      IF t151->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t151->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t192 ).
      ENDIF.
      DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t193.
      IF t151->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t151->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t193 ).
      ENDIF.
      DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t194.
      IF t151->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t151->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t194 ).
      ENDIF.
      DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t195.
      IF t151->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t151->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t195 ).
      ENDIF.
      DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t196.
      IF t151->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t151->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t196 ).
      ENDIF.
      DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t197.
      IF t151->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t151->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t197 ).
      ENDIF.
      DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t198.
      IF t151->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t151->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t198 ).
      ENDIF.
      CREATE OBJECT t151->zlnt_json_ownkeys_70e5fd461788.
      t151->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t199) = CONV string( |key| ).
      DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t200.
      IF t151->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t151->zlnt_json_ownkeys_70e5fd461788->put( p0 = t199 p1 = t200 ).
      ENDIF.
      DATA(t201) = CONV string( |title| ).
      DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t202.
      IF t151->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t151->zlnt_json_ownkeys_70e5fd461788->put( p0 = t201 p1 = t202 ).
      ENDIF.
      DATA(t203) = CONV string( |shortDescription| ).
      DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t204.
      IF t151->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t151->zlnt_json_ownkeys_70e5fd461788->put( p0 = t203 p1 = t204 ).
      ENDIF.
      DATA(t205) = CONV string( |extendedInformation| ).
      DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t206.
      IF t151->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t151->zlnt_json_ownkeys_70e5fd461788->put( p0 = t205 p1 = t206 ).
      ENDIF.
      DATA(t207) = CONV string( |tags| ).
      DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t208.
      IF t151->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t151->zlnt_json_ownkeys_70e5fd461788->put( p0 = t207 p1 = t208 ).
      ENDIF.
      DATA(t209) = CONV string( |badExample| ).
      DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t210.
      IF t151->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t151->zlnt_json_ownkeys_70e5fd461788->put( p0 = t209 p1 = t210 ).
      ENDIF.
      DATA(t211) = CONV string( |goodExample| ).
      DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t212.
      IF t151->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t151->zlnt_json_ownkeys_70e5fd461788->put( p0 = t211 p1 = t212 ).
      ENDIF.
      t150 = t151->key.
      DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t214) = CAST zcl_lnt_cds_naming_conf( me->gt_cn_in_sr_rl_cd_nm_ts_cd_nmn(  ) ).
      t213 = t214->zlnt_view_read_sr_15c06369f827( ).
      t145 = zcl_lnt_issue=>at_row( i_file = t146 i_row = t148 i_message_26cb = t149 i_key = t150 i_severity = t213 ).
      t144->load( ).
      APPEND t145 TO t144->items.
      t144->save( ).
      DATA(t215) = CAST zlnt_runtime_arra_c22708faf2e3( t142 ).
      t141 = t215.
      result = t141.
      RETURN.
    ENDIF.
    DATA t216 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t216.
    result = t216.
    RETURN.
  ENDMETHOD.
  METHOD get_allowed_prefixes.
    DATA(t1) = CAST zcl_lnt_expression_node( i_tree ).
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t4) = CAST zcl_lnt_expression_node( t1 ).
    t3 = t4->gt_in_sr_ab_nd_ex_nd_ts_exp_nd(  ).
    t2 = t3.
    DATA t5 TYPE abap_bool.
    DATA(t6) = CAST zif_lnt_statement_runnable( t2 ).
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_cds_extend_view ).
    IF t5 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t9.
      t8 = t9.
      DATA(t10) = CAST zlnt_runtime_arra_8ecd6afe19e0( t8 ).
      DATA t11 TYPE string.
      DATA(t12) = CAST zcl_lnt_cds_naming_conf( me->conf ).
      t11 = t12->zlnt_view_read_sr_fdf76f3050d3( ).
      t10->load( ).
      APPEND t11 TO t10->items.
      t10->save( ).
      DATA(t13) = CAST zlnt_runtime_arra_8ecd6afe19e0( t8 ).
      t7 = t13.
      result = t7.
      RETURN.
    ENDIF.
    DATA t14 TYPE abap_bool.
    DATA(t15) = CAST zif_lnt_statement_runnable( t2 ).
    t14 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_cds_define_abstract ).
    IF t14 = abap_true.
      DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t18.
      t17 = t18.
      DATA(t19) = CAST zlnt_runtime_arra_8ecd6afe19e0( t17 ).
      DATA t20 TYPE string.
      DATA(t21) = CAST zcl_lnt_cds_naming_conf( me->conf ).
      t20 = t21->zlnt_view_read_sr_a32dca98ee24( ).
      t19->load( ).
      APPEND t20 TO t19->items.
      t19->save( ).
      DATA(t22) = CAST zlnt_runtime_arra_8ecd6afe19e0( t17 ).
      t16 = t22.
      result = t16.
      RETURN.
    ENDIF.
    DATA t23 TYPE abap_bool.
    DATA(t24) = CAST zif_lnt_statement_runnable( t2 ).
    t23 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_cds_dfn_tbl_fnctn ).
    IF t23 = abap_true.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t27.
      t26 = t27.
      DATA(t28) = CAST zlnt_runtime_arra_8ecd6afe19e0( t26 ).
      DATA t29 TYPE string.
      DATA(t30) = CAST zcl_lnt_cds_naming_conf( me->conf ).
      t29 = t30->zlnt_view_read_sr_74e03530d993( ).
      t28->load( ).
      APPEND t29 TO t28->items.
      t28->save( ).
      DATA(t31) = CAST zlnt_runtime_arra_8ecd6afe19e0( t26 ).
      t25 = t31.
      result = t25.
      RETURN.
    ENDIF.
    DATA(t32) = VALUE abap_bool( ).
    DATA t33 TYPE abap_bool.
    DATA t34 TYPE abap_bool.
    DATA(t35) = CAST zif_lnt_statement_runnable( t2 ).
    t34 = xsdbool( t35 IS BOUND AND t35 IS INSTANCE OF zcl_lnt_cds_define_view ).
    t33 = t34.
    IF t34 = abap_false.
      DATA t36 TYPE abap_bool.
      DATA(t37) = CAST zif_lnt_statement_runnable( t2 ).
      t36 = xsdbool( t37 IS BOUND AND t37 IS INSTANCE OF zcl_lnt_cds_define_projection ).
      t33 = t36.
    ENDIF.
    t32 = t33.
    IF t33 = abap_false.
      DATA t38 TYPE abap_bool.
      DATA(t39) = CAST zif_lnt_statement_runnable( t2 ).
      t38 = xsdbool( t39 IS BOUND AND t39 IS INSTANCE OF zcl_lnt_cds_define_custom ).
      t32 = t38.
    ENDIF.
    IF t32 = abap_true.
      DATA t40 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t41 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t42 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t42.
      t41 = t42.
      DATA(t43) = CAST zlnt_runtime_arra_8ecd6afe19e0( t41 ).
      DATA t44 TYPE string.
      DATA(t45) = CAST zcl_lnt_cds_naming_conf( me->conf ).
      t44 = t45->zlnt_view_read_sr_79d73273c866( ).
      t43->load( ).
      APPEND t44 TO t43->items.
      t43->save( ).
      DATA(t46) = CAST zlnt_runtime_arra_8ecd6afe19e0( t41 ).
      DATA t47 TYPE string.
      DATA(t48) = CAST zcl_lnt_cds_naming_conf( me->conf ).
      t47 = t48->zlnt_view_read_sr_1064e4fad5d4( ).
      t46->load( ).
      APPEND t47 TO t46->items.
      t46->save( ).
      DATA(t49) = CAST zlnt_runtime_arra_8ecd6afe19e0( t41 ).
      DATA t50 TYPE string.
      DATA(t51) = CAST zcl_lnt_cds_naming_conf( me->conf ).
      t50 = t51->zlnt_view_read_sr_8aac47bd5f24( ).
      t49->load( ).
      APPEND t50 TO t49->items.
      t49->save( ).
      DATA(t52) = CAST zlnt_runtime_arra_8ecd6afe19e0( t41 ).
      DATA t53 TYPE string.
      DATA(t54) = CAST zcl_lnt_cds_naming_conf( me->conf ).
      t53 = t54->zlnt_view_read_sr_e07166adedd9( ).
      t52->load( ).
      APPEND t53 TO t52->items.
      t52->save( ).
      DATA(t55) = CAST zlnt_runtime_arra_8ecd6afe19e0( t41 ).
      DATA t56 TYPE string.
      DATA(t57) = CAST zcl_lnt_cds_naming_conf( me->conf ).
      t56 = t57->zlnt_view_read_sr_5c956d36717c( ).
      t55->load( ).
      APPEND t56 TO t55->items.
      t55->save( ).
      DATA(t58) = CAST zlnt_runtime_arra_8ecd6afe19e0( t41 ).
      DATA t59 TYPE string.
      DATA(t60) = CAST zcl_lnt_cds_naming_conf( me->conf ).
      t59 = t60->zlnt_view_read_sr_f25fc9022b94( ).
      t58->load( ).
      APPEND t59 TO t58->items.
      t58->save( ).
      DATA(t61) = CAST zlnt_runtime_arra_8ecd6afe19e0( t41 ).
      DATA t62 TYPE string.
      DATA(t63) = CAST zcl_lnt_cds_naming_conf( me->conf ).
      t62 = t63->zlnt_view_read_sr_03a51ca8e376( ).
      t61->load( ).
      APPEND t62 TO t61->items.
      t61->save( ).
      DATA(t64) = CAST zlnt_runtime_arra_8ecd6afe19e0( t41 ).
      DATA t65 TYPE string.
      DATA(t66) = CAST zcl_lnt_cds_naming_conf( me->conf ).
      t65 = t66->zlnt_view_read_sr_73596e7516fc( ).
      t64->load( ).
      APPEND t65 TO t64->items.
      t64->save( ).
      DATA(t67) = CAST zlnt_runtime_arra_8ecd6afe19e0( t41 ).
      t40 = t67.
      result = t40.
      RETURN.
    ENDIF.
    DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t68.
    result = t68.
    RETURN.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_cds_naming_conf( me->gt_cn_in_sr_rl_cd_nm_ts_cd_nmn(  ) ).
    result = t1.
    RETURN.
  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_cds_naming_conf( me->gt_cn_in_sr_rl_cd_nm_ts_cd_nmn(  ) ).
  ENDMETHOD.
  METHOD set_config.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_conf ).
    DATA t2 TYPE REF TO zcl_lnt_cds_naming_conf.
    CLEAR t2.
    DATA(t3) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
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
        t2 = NEW zcl_lnt_cds_naming_conf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_cd_nm_ts_cd_nmn( i_conf = t2 ).
  ENDMETHOD.
  METHOD initialize.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA t2 TYPE REF TO zif_lnt_rule.
    DATA(t3) = CAST zif_lnt_registry( t1 ).
    t2 = me->in_in_sr_rl_cds_nmn_ts_cds_nmn( i_reg_d009 = t3 ).
    result = t2.
    RETURN.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zif_lnt_object( i_obj_1ed0 ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = CAST zif_lnt_object( t1 ).
    t2 = me->rn_in_sr_rl_cds_nmn_ts_cds_nmn( i_o = t3 ).
    result = t2.
    RETURN.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1426_e67444e04b13.
  ENDMETHOD.
  METHOD zif_lnt_rule~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_rule~get_metadata.
    result = me->get_metadata(  ).
  ENDMETHOD.
  METHOD zif_lnt_rule~get_config.
    me->get_config(  ).
  ENDMETHOD.
  METHOD zif_lnt_rule~set_config.
    me->set_config(  i_conf = i_conf ).
  ENDMETHOD.
  METHOD zif_lnt_rule~initialize.
    result = me->initialize(  i_reg_f149 = i_reg_f149 ).
  ENDMETHOD.
  METHOD zif_lnt_rule~run.
    result = me->run(  i_obj_1ed0 = i_obj_1ed0 ).
  ENDMETHOD.
  METHOD zif_lnt_rule~get_config_value.
    result = me->get_config_value(  ).
  ENDMETHOD.
ENDCLASS.
