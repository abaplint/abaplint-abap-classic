* TS: src/rules/cds_association_name.ts:12:1 CDSAssociationName
CLASS zcl_lnt_cds_association_name DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_cds_assctn_nm_cnf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS g_c_i_s_r_cd_as_nm_ts_cd_as_nm RETURNING VALUE(result) TYPE REF TO zcl_lnt_cds_assctn_nm_cnf.
    METHODS s_c_i_s_r_cd_as_nm_ts_cd_as_nm IMPORTING i_conf TYPE REF TO zcl_lnt_cds_assctn_nm_cnf.
    METHODS i_i_sr_rl_cd_as_nm_ts_cd_as_nm IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS r_i_sr_rl_cd_as_nm_ts_cd_as_nm IMPORTING i_o TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
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
CLASS zcl_lnt_cds_association_name IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_cds_assctn_nm_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |By convention, CDS association names must start with an unde|.
    t11 = t11 && |rscore character.\n\nhttps://help.sap.com/docs/abap-cloud/abap|.
    t11 = t11 && |-data-models/cds-associations|.
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
    t18->load( ).
    APPEND |Naming| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t29) = |define view entity test as select from source\n  association |.
    t29 = t29 && |[1..1] to target as Assoc on Assoc.id = source.id\n\{ key id \}|.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t29.
    t26 = t30.
    DATA(t35) = |define view entity test as select from source\n  association |.
    t35 = t35 && |[1..1] to target as _Assoc on _Assoc.id = source.id\n\{ key id|.
    t35 = t35 && | \}|.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = t35.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |cds_association_name| i_title = |CDS Association Name| i_short_description = |CDS association names should start with an underscore| i_bad_example = t26 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
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

  METHOD g_c_i_s_r_cd_as_nm_ts_cd_as_nm.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_cd_as_nm_ts_cd_as_nm.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD i_i_sr_rl_cd_as_nm_ts_cd_as_nm.
    DATA(t1) = i_reg_d009.
    result = me.

  ENDMETHOD.

  METHOD r_i_sr_rl_cd_as_nm_ts_cd_as_nm.
    DATA(t1) = i_o.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    t3 = xsdbool( t1->get_type( ) <> |DDLS| ).
    t2 = t3.
    IF t3 = abap_false.
      t2 = xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_data_definition ) = abap_false ).
    ENDIF.
    IF t2 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zcl_lnt_expression_node.
    DATA t14 TYPE REF TO zcl_lnt_ob_data_definition.
    DATA t16 TYPE REF TO object.
    t16 = t1.
    t14 ?= t16.
    DATA t18 TYPE REF TO zcl_lnt_parsed_data_definition.
    t18 = t14->parsed_data.
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    IF xsdbool( t18 IS INITIAL ) = abap_true.
    ELSE.
      t21 = t18->tree.
    ENDIF.
    t11 = t21.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t11 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t36 TYPE REF TO zif_lnt_file.
    DATA t38 TYPE REF TO zcl_lnt_ob_data_definition.
    DATA t40 TYPE REF TO object.
    t40 = t1.
    t38 ?= t40.
    t36 = t38->find_source_file( ).
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t36 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t49.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t52 TYPE REF TO zcl_lnt_expression_node.
    t52 = t11.
    DATA(t54) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1095_9dff9bf77964.
    t51 = t52->find_all_expressions( i_type_9913 = t54 ).
    DATA t55 TYPE REF TO zcl_lnt_expression_node.
    DATA t56 TYPE REF TO object.
    DATA(t57) = VALUE i( ).
    DO.
      t51->load( ).
      IF t57 >= lines( t51->items ).
        EXIT.
      ENDIF.
      CLEAR t56.
      READ TABLE t51->items INDEX t57 + 1 INTO t56.
      t57 = t57 + 1.
      DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t58.
      CLEAR t55.
      IF t56 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t58 ?= t56.
        DATA t59 TYPE REF TO object.
        t59 = t58->as_ref( ).
        t55 ?= t59.
      ELSE.
        t55 ?= t56.
      ENDIF.
      DATA t60 TYPE REF TO zcl_lnt_expression_node.
      DATA(t63) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1091_2816df13f1ce.
      t60 = t55->find_first_expression( i_type_9913 = t63 ).
      DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t67.
      IF xsdbool( t60 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t71 TYPE REF TO zcl_lnt_expression_node.
      DATA t73 TYPE REF TO zcl_lnt_expression_node.
      t73 = t60.
      DATA(t75) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1084_4e459f75c17b.
      t71 = t73->find_direct_expression( i_type_9913 = t75 ).
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t79.
      IF xsdbool( t71 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t83 TYPE string.
      t83 = t71->get_first_token( )->str.
      DATA(t92) = VALUE abap_bool( ).
      DATA(t94) = |_|.
      DATA(t95) = strlen( t83 ).
      DATA t96 TYPE i.
      DATA(t97) = VALUE i( ).
      DATA(t98) = VALUE string( ).
      t96 = strlen( t94 ).
      IF t96 = 0.
        t92 = abap_true.
      ELSEIF t96 <= t95.
        t97 = 0.
        t98 = t83+t97(t96).
        IF t98 = t94.
          t92 = abap_true.
        ENDIF.
      ENDIF.
      IF xsdbool( t92 = abap_false ) = abap_true.
        DATA t100 TYPE REF TO zcl_lnt_abstract_token.
        t100 = t71->get_first_token( ).
        DATA t104 TYPE string.
        DATA t105 TYPE string.
        DATA(t106) = |CDS association name "|.
        DATA(t108) = strlen( t106 ).
        t105 = |{ t106 }{ t83 }|.
        DATA(t110) = strlen( t105 ).
        t104 = |{ t105 }{ |" should start with an underscore| }|.
        DATA t112 TYPE REF TO zcl_lnt_issue.
        CLEAR t112.
        DATA t113 TYPE REF TO zif_lnt_file.
        t113 = t36.
        DATA(t117) = VALUE string( ).
        DATA t118 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t125.
        DATA(t128) = |By convention, CDS association names must start with an unde|.
        t128 = t128 && |rscore character.\n\nhttps://help.sap.com/docs/abap-cloud/abap|.
        t128 = t128 && |-data-models/cds-associations|.
        DATA(t129) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t129->has = abap_true.
        t129->value = t128.
        t125 = t129.
        DATA t131 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t131.
        DATA t135 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t135.
        t135->load( ).
        APPEND |SingleFile| TO t135->items.
        t135->save( ).
        t135->load( ).
        APPEND |Naming| TO t135->items.
        t135->save( ).
        t131 = t135.
        DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t143.
        DATA(t146) = |define view entity test as select from source\n  association |.
        t146 = t146 && |[1..1] to target as Assoc on Assoc.id = source.id\n\{ key id \}|.
        DATA(t147) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t147->has = abap_true.
        t147->value = t146.
        t143 = t147.
        DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t149.
        DATA(t152) = |define view entity test as select from source\n  association |.
        t152 = t152 && |[1..1] to target as _Assoc on _Assoc.id = source.id\n\{ key id|.
        t152 = t152 && | \}|.
        DATA(t153) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t153->has = abap_true.
        t153->value = t152.
        t149 = t153.
        DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t155.
        DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t157.
        t118 = NEW zcl_lnt_irule_metadata( i_key = |cds_association_name| i_title = |CDS Association Name| i_short_description = |CDS association names should start with an underscore| i_bad_example = t143 i_good_example = t149 i_extended_information = t125 i_tags = t131 i_pragma = t155 i_pseudo_comment = t157 ).
        CREATE OBJECT t118->zlnt_view_ownkeys_b0e8086400eb.
        t118->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t159.
        t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t159 ).
        DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t160.
        IF t118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t160 ).
        ENDIF.
        DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t161.
        IF t118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t161 ).
        ENDIF.
        DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t162.
        IF t118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t162 ).
        ENDIF.
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t163.
        IF t118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t163 ).
        ENDIF.
        DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t164.
        IF t118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t164 ).
        ENDIF.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t165.
        IF t118->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t118->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t165 ).
        ENDIF.
        CREATE OBJECT t118->zlnt_json_ownkeys_70e5fd461788.
        t118->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t167.
        t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t167 ).
        DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t169.
        IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t169 ).
        ENDIF.
        DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t171.
        IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t171 ).
        ENDIF.
        DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t173.
        IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t173 ).
        ENDIF.
        DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t175.
        IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t175 ).
        ENDIF.
        DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t177.
        IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t177 ).
        ENDIF.
        DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t179.
        IF t118->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t118->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t179 ).
        ENDIF.
        t117 = t118->key.
        DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t180 = CAST zcl_lnt_cds_assctn_nm_cnf( me->g_c_i_s_r_cd_as_nm_ts_cd_as_nm( ) )->zlnt_view_read_sr_15c06369f827( ).
        DATA t182 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t182.
        t112 = zcl_lnt_issue=>at_token( i_file = t113 i_token = t100 i_message_26cb = t104 i_key = t117 i_severity = t180 i_fix = t182 ).
        t49->load( ).
        APPEND t112 TO t49->items.
        t49->save( ).
      ENDIF.
    ENDDO.
    result = t49.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_cds_assctn_nm_cnf( me->g_c_i_s_r_cd_as_nm_ts_cd_as_nm( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_cds_assctn_nm_cnf( me->g_c_i_s_r_cd_as_nm_ts_cd_as_nm( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_cds_assctn_nm_cnf.
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
        t2 = NEW zcl_lnt_cds_assctn_nm_cnf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_cd_as_nm_ts_cd_as_nm( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t3) = i_reg_f149.
    result = me->i_i_sr_rl_cd_as_nm_ts_cd_as_nm( i_reg_d009 = t3 ).

  ENDMETHOD.

  METHOD run.
    DATA(t3) = i_obj_1ed0.
    result = me->r_i_sr_rl_cd_as_nm_ts_cd_as_nm( i_o = t3 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1416_a6ea51b9635c.
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
