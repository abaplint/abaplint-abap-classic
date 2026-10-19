* TS: src/rules/prefer_abap_bool.ts:15:1 PreferAbapBool
CLASS zcl_lnt_prefer_abap_bool DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_prefer_abap_bool_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_pr_ab_bl_ts_pr_ab_bl RETURNING VALUE(result) TYPE REF TO zcl_lnt_prefer_abap_bool_conf.
    METHODS s_c_i_s_r_pr_ab_bl_ts_pr_ab_bl IMPORTING i_conf TYPE REF TO zcl_lnt_prefer_abap_bool_conf.
    METHODS r_p_i_s_r_pr_ab_bl_ts_pr_ab_bl IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_prefer_abap_bool IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_prefer_abap_bool_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Use abap_bool instead of XFELD, SAP_BOOL, BOOLE_D, FLAG for |.
    t7 = t7 && |boolean variables|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t11 = t11 && |nABAP.md#use-abap_bool-for-booleans|.
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
    t18->load( ).
    APPEND |Quickfix| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = |DATA foo TYPE xfeld.|.
    t28 = t32.
    DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t38->has = abap_true.
    t38->value = |DATA foo TYPE abap_bool.|.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |prefer_abap_bool| i_title = |Prefer abap_bool| i_short_description = t6 i_bad_example = t28 i_good_example = t38 i_extended_information = t8 i_tags = t14 i_pragma = t40 i_pseudo_comment = t42 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t44 ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t50 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t52 ).
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t54 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t60 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t62 ).
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t64 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_pr_ab_bl_ts_pr_ab_bl.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_pr_ab_bl_ts_pr_ab_bl.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_pr_ab_bl_ts_pr_ab_bl.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    t4 = t1->structure.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t21.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zcl_lnt_structure_node.
    t26 = t4.
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d437_1e504b4be960.
    t23 = t21->concat( p0 = t26->find_all_statements( i_type_9913 = t28 ) ).
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t33 TYPE REF TO zcl_lnt_structure_node.
    t33 = t4.
    DATA(t35) = zlnt_runtime_desc_78196487750d=>zlnt_member_d407_dfd1462d93da.
    t30 = t23->concat( p0 = t33->find_all_statements( i_type_9913 = t35 ) ).
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t40 TYPE REF TO zcl_lnt_structure_node.
    t40 = t4.
    DATA(t42) = zlnt_runtime_desc_78196487750d=>zlnt_member_d426_fb8ad08dadf9.
    t37 = t30->concat( p0 = t40->find_all_statements( i_type_9913 = t42 ) ).
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t47 TYPE REF TO zcl_lnt_structure_node.
    t47 = t4.
    DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d662_d497981e80c2.
    t44 = t37->concat( p0 = t47->find_all_statements( i_type_9913 = t49 ) ).
    DATA t54 TYPE REF TO zcl_lnt_structure_node.
    t54 = t4.
    DATA(t56) = zlnt_runtime_desc_78196487750d=>zlnt_member_d498_bacf37b32951.
    t18 = t44->concat( p0 = t54->find_all_statements( i_type_9913 = t56 ) ).
    DATA t59 TYPE REF TO zcl_lnt_statement_node.
    DATA t60 TYPE REF TO object.
    DATA(t61) = VALUE i( ).
    DO.
      t18->load( ).
      IF t61 >= lines( t18->items ).
        EXIT.
      ENDIF.
      CLEAR t60.
      READ TABLE t18->items INDEX t61 + 1 INTO t60.
      t61 = t61 + 1.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t62.
      CLEAR t59.
      IF t60 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t62 ?= t60.
        DATA t63 TYPE REF TO object.
        t63 = t62->as_ref( ).
        t59 ?= t63.
      ELSE.
        t59 ?= t60.
      ENDIF.
      DATA t64 TYPE REF TO zcl_lnt_expression_node.
      DATA(t67) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
      t64 = t59->find_first_expression( i_type_9913 = t67 ).
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t71.
      IF xsdbool( t64 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t75) = VALUE string( ).
      DATA t76 TYPE string.
      DATA t77 TYPE string.
      t77 = t64->concat_tokens( ).
      DATA(t80) = strlen( t77 ).
      t76 = t77.
      IF t76 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t76 TO UPPER CASE.
      ELSE.
        t76 = zlnt_runtime_uppe_91169605024d=>full( t76 ).
      ENDIF.
      t75 = t76.
      IF zcl_lnt_prfr_abp_bl_mdl=>zlnt_builtin_init_c96b25bbd049 = abap_false.
        zcl_lnt_prfr_abp_bl_mdl=>zlnt_builtin_init_3838d3e910b3( ).
      ENDIF.
      IF xsdbool( zcl_lnt_prfr_abp_bl_mdl=>forbidden_types->has( p0 = t75 ) = abap_false ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t86 TYPE REF TO zcl_lnt_abstract_token.
      t86 = t64->get_first_token( ).
      DATA t91 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t91 = zcl_lnt_edit_helper=>replace_token( i_file = t1 i_token = t86 i_text = |abap_bool| ).
      DATA t96 TYPE REF TO zcl_lnt_issue.
      CLEAR t96.
      DATA t99 TYPE string.
      DATA t100 TYPE string.
      DATA(t101) = |Use abap_bool instead of |.
      DATA(t103) = strlen( t101 ).
      t100 = |{ t101 }{ t75 }|.
      DATA(t105) = strlen( t100 ).
      t99 = |{ t100 }{ || }|.
      DATA(t106) = VALUE string( ).
      DATA t107 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t107.
      DATA t112 TYPE string.
      DATA(t113) = |Use abap_bool instead of XFELD, SAP_BOOL, BOOLE_D, FLAG for |.
      t113 = t113 && |boolean variables|.
      t112 = t113.
      DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t114.
      DATA(t117) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t117 = t117 && |nABAP.md#use-abap_bool-for-booleans|.
      DATA(t118) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t118->has = abap_true.
      t118->value = t117.
      t114 = t118.
      DATA t120 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t120.
      DATA t124 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t124.
      t124->load( ).
      APPEND |Styleguide| TO t124->items.
      t124->save( ).
      t124->load( ).
      APPEND |SingleFile| TO t124->items.
      t124->save( ).
      t124->load( ).
      APPEND |Quickfix| TO t124->items.
      t124->save( ).
      t120 = t124.
      DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t134.
      DATA(t138) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t138->has = abap_true.
      t138->value = |DATA foo TYPE xfeld.|.
      t134 = t138.
      DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t140.
      DATA(t144) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t144->has = abap_true.
      t144->value = |DATA foo TYPE abap_bool.|.
      t140 = t144.
      DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t146.
      DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t148.
      t107 = NEW zcl_lnt_irule_metadata( i_key = |prefer_abap_bool| i_title = |Prefer abap_bool| i_short_description = t112 i_bad_example = t134 i_good_example = t140 i_extended_information = t114 i_tags = t120 i_pragma = t146 i_pseudo_comment = t148 ).
      CREATE OBJECT t107->zlnt_view_ownkeys_b0e8086400eb.
      t107->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t150.
      t107->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t150 ).
      DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t151.
      IF t107->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t107->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t151 ).
      ENDIF.
      DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t152.
      IF t107->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t107->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t152 ).
      ENDIF.
      DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t153.
      IF t107->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t107->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t153 ).
      ENDIF.
      DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t154.
      IF t107->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t107->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t154 ).
      ENDIF.
      DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t155.
      IF t107->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t107->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t155 ).
      ENDIF.
      DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t156.
      IF t107->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t107->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t156 ).
      ENDIF.
      CREATE OBJECT t107->zlnt_json_ownkeys_70e5fd461788.
      t107->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t158.
      t107->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t158 ).
      DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t160.
      IF t107->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t107->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t160 ).
      ENDIF.
      DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t162.
      IF t107->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t107->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t162 ).
      ENDIF.
      DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t164.
      IF t107->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t107->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t164 ).
      ENDIF.
      DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t166.
      IF t107->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t107->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t166 ).
      ENDIF.
      DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t168.
      IF t107->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t107->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t168 ).
      ENDIF.
      DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t170.
      IF t107->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t107->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t170 ).
      ENDIF.
      t106 = t107->key.
      t96 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t86 i_message_26cb = t99 i_key = t106 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t91 ).
      t2->load( ).
      APPEND t96 TO t2->items.
      t2->save( ).
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_prefer_abap_bool_conf( me->g_c_i_s_r_pr_ab_bl_ts_pr_ab_bl( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_prefer_abap_bool_conf( me->g_c_i_s_r_pr_ab_bl_ts_pr_ab_bl( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_prefer_abap_bool_conf.
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
        t1 = NEW zcl_lnt_prefer_abap_bool_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_pr_ab_bl_ts_pr_ab_bl( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_pr_ab_bl_ts_pr_ab_bl( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1651_101f61389241.
  ENDMETHOD.
ENDCLASS.
