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
    me->conf = NEW zcl_lnt_cds_naming_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |cds_naming|.
    DATA t4 TYPE string.
    t4 = |CDS Naming|.
    DATA t6 TYPE string.
    t6 = |Checks CDS naming conventions based on the VDM prefix rules|.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Validates that CDS entity names follow the expected prefix c|.
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
    DATA(t23) = |Naming|.
    t18->load( ).
    APPEND t23 TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t29) = |define view entity ZMY_VIEW as select from source \{ key id \}|.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t29.
    t26 = t30.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t35) = |define view entity ZI_MY_VIEW as select from source \{ key id|.
    t35 = t35 && | \}|.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = t35.
    t32 = t36.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t26 i_good_example = t32 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
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
    DATA(t49) = |key|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    DATA(t51) = |title|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |shortDescription|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |extendedInformation|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |tags|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |badExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |goodExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_cd_nm_ts_cd_nmn.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_cd_nm_ts_cd_nmn.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD in_in_sr_rl_cds_nmn_ts_cds_nmn.
    DATA(t1) = i_reg_d009.
    result = me.

  ENDMETHOD.

  METHOD rn_in_sr_rl_cds_nmn_ts_cds_nmn.
    DATA(t1) = i_o.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE string.
    t4 = t1->get_type( ).
    DATA(t6) = |DDLS|.
    t3 = xsdbool( t4 <> t6 ).
    t2 = t3.
    IF t3 = abap_false.
      DATA t7 TYPE abap_bool.
      DATA t8 TYPE abap_bool.
      t8 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_data_definition ).
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
    DATA t14 TYPE REF TO zcl_lnt_ob_data_definition.
    DATA t16 TYPE REF TO object.
    t16 = t1.
    t14 ?= t16.
    DATA t18 TYPE REF TO zcl_lnt_parsed_data_definition.
    DATA t19 TYPE REF TO zcl_lnt_parsed_data_definition.
    t19 = t14->parsed_data.
    t18 = t19.
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    DATA(t22) = xsdbool( t18 IS INITIAL ).
    IF t22 = abap_true.
    ELSE.
      DATA t25 TYPE REF TO zcl_lnt_expression_node.
      DATA t26 TYPE REF TO zcl_lnt_parsed_data_definition.
      t26 = t18.
      t25 = t26->tree.
      t21 = t25.
    ENDIF.
    t11 = t21.
    DATA(t28) = VALUE abap_bool( ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t28 = xsdbool( t11 IS INITIAL ).
    IF t28 = abap_true.
      DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t35.
      result = t35.
      RETURN.
    ENDIF.
    DATA t36 TYPE REF TO zif_lnt_file.
    DATA t37 TYPE REF TO zif_lnt_file.
    DATA t38 TYPE REF TO zcl_lnt_ob_data_definition.
    DATA t40 TYPE REF TO object.
    t40 = t1.
    t38 ?= t40.
    t37 = t38->find_source_file( ).
    t36 = t37.
    DATA(t41) = VALUE abap_bool( ).
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t41 = xsdbool( t36 IS INITIAL ).
    IF t41 = abap_true.
      DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t48.
      result = t48.
      RETURN.
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t51 TYPE REF TO zcl_lnt_ob_data_definition.
    DATA t52 TYPE REF TO zcl_lnt_ob_data_definition.
    DATA t54 TYPE REF TO object.
    t54 = t1.
    t52 ?= t54.
    t51 = t52.
    DATA t56 TYPE REF TO zcl_lnt_iparse_result.
    t56 = t51->pr_in_src_obj_dt_dfn_ts_dt_dfn( ).
    DATA t59 TYPE REF TO zcl_lnt_parsed_data_definition.
    DATA t60 TYPE REF TO zcl_lnt_parsed_data_definition.
    t60 = t51->parsed_data.
    t59 = t60.
    DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t63) = xsdbool( t59 IS INITIAL ).
    IF t63 = abap_true.
    ELSE.
      DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t67 TYPE REF TO zcl_lnt_parsed_data_definition.
      t67 = t59.
      t66 = t67->definition_name.
      t62 = t66.
    ENDIF.
    t49 = t62.
    DATA(t69) = VALUE abap_bool( ).
    DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t70 = t49.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t74) = VALUE abap_bool( ).
    IF t70 IS INITIAL.
      t74 = abap_true.
    ELSEIF t70->has = abap_false.
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
    t79 = t49->value.
    DATA(t81) = strlen( t79 ).
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
    t84 = t11.
    t83 = me->get_allowed_prefixes( i_tree = t84 ).
    t82 = t83.
    DATA t86 TYPE abap_bool.
    DATA t87 TYPE i.
    t82->load( ).
    t87 = lines( t82->items ).
    DATA(t89) = 0.
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
    t93 = abap_false.
    DATA(t96) = VALUE string( ).
    t82->dense( ).
    DATA(t97) = VALUE i( ).
    DO.
      t82->load( ).
      IF t97 >= lines( t82->items ).
        EXIT.
      ENDIF.
      CLEAR t96.
      READ TABLE t82->items INDEX t97 + 1 INTO t96.
      IF t82->has( t97 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t97 = t97 + 1.
      DATA(t98) = VALUE abap_bool( ).
      DATA t100 TYPE string.
      DATA(t102) = strlen( t96 ).
      t100 = t96.
      IF t100 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t100 TO UPPER CASE.
      ELSE.
        t100 = zlnt_runtime_uppe_91169605024d=>full( t100 ).
      ENDIF.
      DATA(t103) = strlen( t77 ).
      DATA t104 TYPE i.
      DATA(t105) = VALUE i( ).
      DATA(t106) = VALUE string( ).
      t104 = strlen( t100 ).
      IF t104 = 0.
        t98 = abap_true.
      ELSEIF t104 <= t103.
        t105 = 0.
        t106 = t77+t105(t104).
        IF t106 = t100.
          t98 = abap_true.
        ENDIF.
      ENDIF.
      IF t98 = abap_true.
        t93 = abap_true.
        EXIT.
      ENDIF.
    ENDDO.
    t92 = t93.
    t91 = t92.
    DATA t109 TYPE abap_bool.
    t109 = xsdbool( t91 = abap_false ).
    IF t109 = abap_true.
      DATA t112 TYPE string.
      DATA t113 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t115 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t115.
      DATA t117 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t119 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t120 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      DATA(t121) = NEW zlnt_runtime_set__1827558fd4c7( ).
      t120 = t121->fromarray( p0 = t82 ).
      t119 = t120->values( ).
      t117 = t115->concat( p0 = t119 ).
      t113 = t117.
      DATA(t124) = |, |.
      DATA(t125) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t125->has = abap_true.
      t125->value = t124.
      t112 = t113->join( p0 = t125 ).
      DATA t127 TYPE string.
      DATA t128 TYPE string.
      DATA t129 TYPE string.
      DATA t130 TYPE string.
      DATA(t131) = |CDS name "|.
      DATA t132 TYPE string.
      t132 = t49->value.
      DATA(t134) = strlen( t131 ).
      t130 = |{ t131 }{ t132 }|.
      DATA(t135) = |" should have one of the expected prefixes: |.
      DATA(t136) = strlen( t130 ).
      t129 = |{ t130 }{ t135 }|.
      DATA(t138) = strlen( t129 ).
      t128 = |{ t129 }{ t112 }|.
      DATA(t139) = ||.
      DATA(t140) = strlen( t128 ).
      t127 = |{ t128 }{ t139 }|.
      DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t143 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t143.
      t142 = t143.
      DATA t145 TYPE REF TO zcl_lnt_issue.
      DATA t146 TYPE REF TO zif_lnt_file.
      t146 = t36.
      DATA(t148) = CONV f( 1 ).
      DATA(t150) = VALUE string( ).
      DATA t151 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t152 TYPE string.
      t152 = |cds_naming|.
      DATA t154 TYPE string.
      t154 = |CDS Naming|.
      DATA t156 TYPE string.
      t156 = |Checks CDS naming conventions based on the VDM prefix rules|.
      DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t161) = |Validates that CDS entity names follow the expected prefix c|.
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
      t158 = t162.
      DATA t164 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t168 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t169 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t169.
      t168 = t169.
      DATA(t171) = |SingleFile|.
      t168->load( ).
      APPEND t171 TO t168->items.
      t168->save( ).
      DATA(t173) = |Naming|.
      t168->load( ).
      APPEND t173 TO t168->items.
      t168->save( ).
      t164 = t168.
      DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t179) = |define view entity ZMY_VIEW as select from source \{ key id \}|.
      DATA(t180) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t180->has = abap_true.
      t180->value = t179.
      t176 = t180.
      DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t185) = |define view entity ZI_MY_VIEW as select from source \{ key id|.
      t185 = t185 && | \}|.
      DATA(t186) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t186->has = abap_true.
      t186->value = t185.
      t182 = t186.
      DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t151 = NEW zcl_lnt_irule_metadata( i_key = t152 i_title = t154 i_short_description = t156 i_bad_example = t176 i_good_example = t182 i_extended_information = t158 i_tags = t164 i_pragma = t188 i_pseudo_comment = t190 ).
      CREATE OBJECT t151->zlnt_view_ownkeys_b0e8086400eb.
      t151->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t151->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t192 ).
      DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t151->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t151->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t193 ).
      ENDIF.
      DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t151->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t151->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t194 ).
      ENDIF.
      DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t151->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t151->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t195 ).
      ENDIF.
      DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t151->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t151->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t196 ).
      ENDIF.
      DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t151->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t151->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t197 ).
      ENDIF.
      DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t151->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t151->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t198 ).
      ENDIF.
      CREATE OBJECT t151->zlnt_json_ownkeys_70e5fd461788.
      t151->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t199) = |key|.
      DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t151->zlnt_json_ownkeys_70e5fd461788->put( p0 = t199 p1 = t200 ).
      DATA(t201) = |title|.
      DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t151->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t151->zlnt_json_ownkeys_70e5fd461788->put( p0 = t201 p1 = t202 ).
      ENDIF.
      DATA(t203) = |shortDescription|.
      DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t151->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t151->zlnt_json_ownkeys_70e5fd461788->put( p0 = t203 p1 = t204 ).
      ENDIF.
      DATA(t205) = |extendedInformation|.
      DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t151->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t151->zlnt_json_ownkeys_70e5fd461788->put( p0 = t205 p1 = t206 ).
      ENDIF.
      DATA(t207) = |tags|.
      DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t151->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t151->zlnt_json_ownkeys_70e5fd461788->put( p0 = t207 p1 = t208 ).
      ENDIF.
      DATA(t209) = |badExample|.
      DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t151->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t151->zlnt_json_ownkeys_70e5fd461788->put( p0 = t209 p1 = t210 ).
      ENDIF.
      DATA(t211) = |goodExample|.
      DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t151->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t151->zlnt_json_ownkeys_70e5fd461788->put( p0 = t211 p1 = t212 ).
      ENDIF.
      t150 = t151->key.
      DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t214) = CAST zcl_lnt_cds_naming_conf( me->gt_cn_in_sr_rl_cd_nm_ts_cd_nmn( ) ).
      t213 = t214->zlnt_view_read_sr_15c06369f827( ).
      t145 = zcl_lnt_issue=>at_row( i_file = t146 i_row = t148 i_message_26cb = t127 i_key = t150 i_severity = t213 ).
      t142->load( ).
      APPEND t145 TO t142->items.
      t142->save( ).
      result = t142.
      RETURN.
    ENDIF.
    DATA t216 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t216.
    result = t216.

  ENDMETHOD.

  METHOD get_allowed_prefixes.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zif_lnt_statement_runnable.
    t3 = i_tree->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
    t2 = t3.
    DATA t5 TYPE abap_bool.
    t5 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_cds_extend_view ).
    IF t5 = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t9.
      t8 = t9.
      DATA t11 TYPE string.
      t11 = me->conf->zlnt_view_read_sr_fdf76f3050d3( ).
      t8->load( ).
      APPEND t11 TO t8->items.
      t8->save( ).
      result = t8.
      RETURN.
    ENDIF.
    DATA t14 TYPE abap_bool.
    t14 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_cds_define_abstract ).
    IF t14 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t18.
      t17 = t18.
      DATA t20 TYPE string.
      t20 = me->conf->zlnt_view_read_sr_a32dca98ee24( ).
      t17->load( ).
      APPEND t20 TO t17->items.
      t17->save( ).
      result = t17.
      RETURN.
    ENDIF.
    DATA t23 TYPE abap_bool.
    t23 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_cds_dfn_tbl_fnctn ).
    IF t23 = abap_true.
      DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t27.
      t26 = t27.
      DATA t29 TYPE string.
      t29 = me->conf->zlnt_view_read_sr_74e03530d993( ).
      t26->load( ).
      APPEND t29 TO t26->items.
      t26->save( ).
      result = t26.
      RETURN.
    ENDIF.
    DATA(t32) = VALUE abap_bool( ).
    DATA t33 TYPE abap_bool.
    DATA t34 TYPE abap_bool.
    t34 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_cds_define_view ).
    t33 = t34.
    IF t34 = abap_false.
      DATA t36 TYPE abap_bool.
      t36 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_cds_define_projection ).
      t33 = t36.
    ENDIF.
    t32 = t33.
    IF t33 = abap_false.
      DATA t38 TYPE abap_bool.
      t38 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_cds_define_custom ).
      t32 = t38.
    ENDIF.
    IF t32 = abap_true.
      DATA t41 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t42 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t42.
      t41 = t42.
      DATA t44 TYPE string.
      t44 = me->conf->zlnt_view_read_sr_79d73273c866( ).
      t41->load( ).
      APPEND t44 TO t41->items.
      t41->save( ).
      DATA t47 TYPE string.
      t47 = me->conf->zlnt_view_read_sr_1064e4fad5d4( ).
      t41->load( ).
      APPEND t47 TO t41->items.
      t41->save( ).
      DATA t50 TYPE string.
      t50 = me->conf->zlnt_view_read_sr_8aac47bd5f24( ).
      t41->load( ).
      APPEND t50 TO t41->items.
      t41->save( ).
      DATA t53 TYPE string.
      t53 = me->conf->zlnt_view_read_sr_e07166adedd9( ).
      t41->load( ).
      APPEND t53 TO t41->items.
      t41->save( ).
      DATA t56 TYPE string.
      t56 = me->conf->zlnt_view_read_sr_5c956d36717c( ).
      t41->load( ).
      APPEND t56 TO t41->items.
      t41->save( ).
      DATA t59 TYPE string.
      t59 = me->conf->zlnt_view_read_sr_f25fc9022b94( ).
      t41->load( ).
      APPEND t59 TO t41->items.
      t41->save( ).
      DATA t62 TYPE string.
      t62 = me->conf->zlnt_view_read_sr_03a51ca8e376( ).
      t41->load( ).
      APPEND t62 TO t41->items.
      t41->save( ).
      DATA t65 TYPE string.
      t65 = me->conf->zlnt_view_read_sr_73596e7516fc( ).
      t41->load( ).
      APPEND t65 TO t41->items.
      t41->save( ).
      result = t41.
      RETURN.
    ENDIF.
    DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t68.
    result = t68.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_cds_naming_conf( me->gt_cn_in_sr_rl_cd_nm_ts_cd_nmn( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_cds_naming_conf( me->gt_cn_in_sr_rl_cd_nm_ts_cd_nmn( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_cds_naming_conf.
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
        t2 = NEW zcl_lnt_cds_naming_conf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_cd_nm_ts_cd_nmn( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA t2 TYPE REF TO zif_lnt_rule.
    DATA(t3) = i_reg_f149.
    t2 = me->in_in_sr_rl_cds_nmn_ts_cds_nmn( i_reg_d009 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD run.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = i_obj_1ed0.
    t2 = me->rn_in_sr_rl_cds_nmn_ts_cds_nmn( i_o = t3 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1426_e67444e04b13.
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
