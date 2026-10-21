* TS: src/rules/chain_mainly_declarations.ts:37:1 ChainMainlyDeclarations
CLASS zcl_lnt_chn_mnly_dclrtns DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_chn_mnly_dclrtns_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_ch_mn_dc_ts_ch_mn_dc RETURNING VALUE(result) TYPE REF TO zcl_lnt_chn_mnly_dclrtns_cnf.
    METHODS s_c_i_s_r_ch_mn_dc_ts_ch_mn_dc IMPORTING i_conf TYPE REF TO zcl_lnt_chn_mnly_dclrtns_cnf.
    METHODS r_p_i_s_r_ch_mn_dc_ts_ch_mn_dc IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_fix IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_statement TYPE REF TO zif_lnt_statement i_statement_node TYPE REF TO zcl_lnt_statement_node i_prev_fix TYPE REF TO zlnt_runtime_map__4fdf767b61ba RETURNING VALUE(result)
    TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_chn_mnly_dclrtns IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_chn_mnly_dclrtns_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Chain mainly declarations, allows chaining for the configure|.
    t7 = t7 && |d statements, reports errors for other statements.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |\nhttps://docs.abapopenchecks.org/checks/23/\n\nhttps://help.sa|.
    t11 = t11 && |p.com/doc/abapdocu_latest_index_htm/latest/en-US/abenchained|.
    t11 = t11 && |_statements_guidl.html\n|.
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
    APPEND |Quickfix| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = |CALL METHOD: bar.|.
    t26 = t30.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = |CALL METHOD bar.|.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |chain_mainly_declarations| i_title = |Chain mainly declarations| i_short_description = t6 i_bad_example = t26 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
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

  METHOD g_c_i_s_r_ch_mn_dc_ts_ch_mn_dc.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_ch_mn_dc_ts_ch_mn_dc.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_ch_mn_dc_ts_ch_mn_dc.
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
    DATA t18 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t19 = t4->find_all_statement_nodes( ).
    DATA t22 TYPE REF TO zcl_lnt_statement_node.
    DATA t23 TYPE REF TO object.
    DATA(t24) = VALUE i( ).
    DO.
      t19->load( ).
      IF t24 >= lines( t19->items ).
        EXIT.
      ENDIF.
      CLEAR t23.
      READ TABLE t19->items INDEX t24 + 1 INTO t23.
      t24 = t24 + 1.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      CLEAR t22.
      IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t25 ?= t23.
        DATA t26 TYPE REF TO object.
        t26 = t25->as_ref( ).
        t22 ?= t26.
      ELSE.
        t22 ?= t23.
      ENDIF.
      DATA t27 TYPE REF TO zcl_lnt_abstract_token.
      t27 = t22->colon.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t36.
      IF xsdbool( t27 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t40 TYPE REF TO zif_lnt_statement.
      t40 = t22->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      DATA t43 TYPE abap_bool.
      DATA t44 TYPE abap_bool.
      DATA t45 TYPE abap_bool.
      t45 = me->conf->zlnt_view_read_sr_379733500cb0( ).
      t44 = xsdbool( t45 = abap_true ).
      t43 = t44.
      IF t44 = abap_true.
        DATA(t48) = VALUE abap_bool( ).
        DATA(t49) = VALUE abap_bool( ).
        DATA(t50) = VALUE abap_bool( ).
        DATA(t51) = VALUE abap_bool( ).
        DATA(t52) = VALUE abap_bool( ).
        DATA(t53) = VALUE abap_bool( ).
        DATA(t54) = VALUE abap_bool( ).
        DATA(t55) = VALUE abap_bool( ).
        DATA(t56) = VALUE abap_bool( ).
        DATA(t57) = VALUE abap_bool( ).
        DATA(t58) = VALUE abap_bool( ).
        DATA(t59) = VALUE abap_bool( ).
        DATA(t60) = VALUE abap_bool( ).
        DATA(t61) = VALUE abap_bool( ).
        DATA(t62) = VALUE abap_bool( ).
        DATA(t63) = VALUE abap_bool( ).
        DATA(t64) = VALUE abap_bool( ).
        DATA(t65) = VALUE abap_bool( ).
        DATA(t66) = VALUE abap_bool( ).
        DATA(t67) = VALUE abap_bool( ).
        DATA(t68) = VALUE abap_bool( ).
        DATA(t69) = VALUE abap_bool( ).
        DATA(t70) = VALUE abap_bool( ).
        DATA(t71) = VALUE abap_bool( ).
        DATA(t72) = VALUE abap_bool( ).
        DATA(t73) = VALUE abap_bool( ).
        DATA(t74) = VALUE abap_bool( ).
        DATA(t75) = VALUE abap_bool( ).
        DATA(t76) = VALUE abap_bool( ).
        DATA(t77) = VALUE abap_bool( ).
        DATA t78 TYPE abap_bool.
        DATA t79 TYPE abap_bool.
        t79 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_class_data ).
        t78 = t79.
        IF t79 = abap_false.
          t78 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_class_data_begin ).
        ENDIF.
        t77 = t78.
        IF t78 = abap_false.
          t77 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_class_data_end ).
        ENDIF.
        t76 = t77.
        IF t77 = abap_false.
          t76 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_static ).
        ENDIF.
        t75 = t76.
        IF t76 = abap_false.
          t75 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_static_begin ).
        ENDIF.
        t74 = t75.
        IF t75 = abap_false.
          t74 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_static_end ).
        ENDIF.
        t73 = t74.
        IF t74 = abap_false.
          t73 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_local ).
        ENDIF.
        t72 = t73.
        IF t73 = abap_false.
          t72 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_statem_constant ).
        ENDIF.
        t71 = t72.
        IF t72 = abap_false.
          t71 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_constant_begin ).
        ENDIF.
        t70 = t71.
        IF t71 = abap_false.
          t70 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_constant_end ).
        ENDIF.
        t69 = t70.
        IF t70 = abap_false.
          t69 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_controls ).
        ENDIF.
        t68 = t69.
        IF t69 = abap_false.
          t68 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_parameter ).
        ENDIF.
        t67 = t68.
        IF t68 = abap_false.
          t67 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_select_option ).
        ENDIF.
        t66 = t67.
        IF t67 = abap_false.
          t66 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_selection_screen ).
        ENDIF.
        t65 = t66.
        IF t66 = abap_false.
          t65 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_aliases ).
        ENDIF.
        t64 = t65.
        IF t65 = abap_false.
          t64 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_tables ).
        ENDIF.
        t63 = t64.
        IF t64 = abap_false.
          t63 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_method_def ).
        ENDIF.
        t62 = t63.
        IF t63 = abap_false.
          t62 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_interface_def ).
        ENDIF.
        t61 = t62.
        IF t62 = abap_false.
          t61 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_statem_type ).
        ENDIF.
        t60 = t61.
        IF t61 = abap_false.
          t60 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_type_begin ).
        ENDIF.
        t59 = t60.
        IF t60 = abap_false.
          t59 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_type_end ).
        ENDIF.
        t58 = t59.
        IF t59 = abap_false.
          t58 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_type_enum_begin ).
        ENDIF.
        t57 = t58.
        IF t58 = abap_false.
          t57 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_type_enum_end ).
        ENDIF.
        t56 = t57.
        IF t57 = abap_false.
          t56 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_type_enum ).
        ENDIF.
        t55 = t56.
        IF t56 = abap_false.
          t55 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_events ).
        ENDIF.
        t54 = t55.
        IF t55 = abap_false.
          t54 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_ranges ).
        ENDIF.
        t53 = t54.
        IF t54 = abap_false.
          t53 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_type_pools ).
        ENDIF.
        t52 = t53.
        IF t53 = abap_false.
          t52 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_statem_field_symbol ).
        ENDIF.
        t51 = t52.
        IF t52 = abap_false.
          t51 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_nodes ).
        ENDIF.
        t50 = t51.
        IF t51 = abap_false.
          t50 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_data ).
        ENDIF.
        t49 = t50.
        IF t50 = abap_false.
          t49 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_data_begin ).
        ENDIF.
        t48 = t49.
        IF t49 = abap_false.
          t48 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_data_end ).
        ENDIF.
        t43 = t48.
      ENDIF.
      IF t43 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t143 TYPE abap_bool.
      DATA t144 TYPE abap_bool.
      DATA t145 TYPE abap_bool.
      t145 = me->conf->zlnt_view_read_sr_52806862a0a0( ).
      t144 = xsdbool( t145 = abap_true ).
      t143 = t144.
      IF t144 = abap_true.
        t143 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_write ).
      ENDIF.
      IF t143 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t150 TYPE abap_bool.
      DATA t151 TYPE abap_bool.
      DATA t152 TYPE abap_bool.
      t152 = me->conf->zlnt_view_read_sr_af9a1dd4900b( ).
      t151 = xsdbool( t152 = abap_true ).
      t150 = t151.
      IF t151 = abap_true.
        t150 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_move ).
      ENDIF.
      IF t150 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t157 TYPE abap_bool.
      DATA t158 TYPE abap_bool.
      DATA t159 TYPE abap_bool.
      t159 = me->conf->zlnt_view_read_sr_4ab669e566d5( ).
      t158 = xsdbool( t159 = abap_true ).
      t157 = t158.
      IF t158 = abap_true.
        t157 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_refresh ).
      ENDIF.
      IF t157 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t164 TYPE abap_bool.
      DATA t165 TYPE abap_bool.
      DATA t166 TYPE abap_bool.
      t166 = me->conf->zlnt_view_read_sr_fcc3b6176335( ).
      t165 = xsdbool( t166 = abap_true ).
      t164 = t165.
      IF t165 = abap_true.
        t164 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_unassign ).
      ENDIF.
      IF t164 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t171 TYPE abap_bool.
      DATA t172 TYPE abap_bool.
      DATA t173 TYPE abap_bool.
      t173 = me->conf->zlnt_view_read_sr_9c170c5c305f( ).
      t172 = xsdbool( t173 = abap_true ).
      t171 = t172.
      IF t172 = abap_true.
        t171 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_clear ).
      ENDIF.
      IF t171 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t178 TYPE abap_bool.
      DATA t179 TYPE abap_bool.
      DATA t180 TYPE abap_bool.
      t180 = me->conf->zlnt_view_read_sr_9762d2acd538( ).
      t179 = xsdbool( t180 = abap_true ).
      t178 = t179.
      IF t179 = abap_true.
        t178 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_hide ).
      ENDIF.
      IF t178 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t185 TYPE abap_bool.
      DATA t186 TYPE abap_bool.
      DATA t187 TYPE abap_bool.
      t187 = me->conf->zlnt_view_read_sr_972a7b120c53( ).
      t186 = xsdbool( t187 = abap_true ).
      t185 = t186.
      IF t186 = abap_true.
        t185 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_free ).
      ENDIF.
      IF t185 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t192 TYPE abap_bool.
      DATA t193 TYPE abap_bool.
      DATA t194 TYPE abap_bool.
      t194 = me->conf->zlnt_view_read_sr_e9e51bddcd51( ).
      t193 = xsdbool( t194 = abap_true ).
      t192 = t193.
      IF t193 = abap_true.
        t192 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_include ).
      ENDIF.
      IF t192 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t199 TYPE abap_bool.
      DATA t200 TYPE abap_bool.
      DATA t201 TYPE abap_bool.
      t201 = me->conf->zlnt_view_read_sr_9d95884b1e2f( ).
      t200 = xsdbool( t201 = abap_true ).
      t199 = t200.
      IF t200 = abap_true.
        t199 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_check ).
      ENDIF.
      IF t199 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t206 TYPE abap_bool.
      DATA t207 TYPE abap_bool.
      DATA t208 TYPE abap_bool.
      t208 = me->conf->zlnt_view_read_sr_a93433db50e7( ).
      t207 = xsdbool( t208 = abap_true ).
      t206 = t207.
      IF t207 = abap_true.
        t206 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_sort ).
      ENDIF.
      IF t206 = abap_true.
        CONTINUE.
      ENDIF.










      DATA t213 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t213.
      DATA(t214) = VALUE abap_bool( ).
      DATA(t215) = t18.
      DATA t216 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t226 TYPE f.
      t226 = t27->start->row.
      DATA(t228) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t228->has = abap_true.
      t228->value = t226.
      t216 = t228.
      DATA(t230) = VALUE abap_bool( ).
      DATA(t231) = VALUE abap_bool( ).
      IF t215 IS BOUND.
        t230 = t215->has.
      ENDIF.
      IF t216 IS BOUND.
        t231 = t216->has.
      ENDIF.
      IF t230 = t231.
        IF t230 = abap_false.
          t214 = abap_true.
        ELSE.
          IF t215->number_special <> 0 OR t216->number_special <> 0.
            t214 = xsdbool( t215->number_special = t216->number_special AND t215->number_special <> 1 ).
          ELSE.
            t214 = xsdbool( t215->value = t216->value ).
          ENDIF.
        ENDIF.
      ENDIF.
      IF t214 = abap_true.
        DATA t233 TYPE REF TO zcl_lnt_issue.
        CLEAR t233.
        DATA t234 TYPE REF TO zcl_lnt_issue.
        CLEAR t234.
        DATA t236 TYPE REF TO object.
        t236 = t2->pop( ).
        DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t237.
        CLEAR t234.
        IF t236 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t237 ?= t236.
          DATA t238 TYPE REF TO object.
          t238 = t237->as_ref( ).
          t234 ?= t238.
        ELSE.
          t234 ?= t236.
        ENDIF.
        t233 = t234.
        DATA t239 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t239.
        IF xsdbool( t233 IS INITIAL ) = abap_true.
          CLEAR t239.
        ELSE.
          t239 = t233->data_56cc->default_fix.
        ENDIF.
        t213 = t239.
      ENDIF.
      DATA t251 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t251 = me->get_fix( i_file = t1 i_statement = t40 i_statement_node = t22 i_prev_fix = t213 ).
      DATA t259 TYPE REF TO zcl_lnt_issue.
      CLEAR t259.
      DATA t261 TYPE REF TO zcl_lnt_abstract_token.
      t261 = t22->get_first_token( ).
      DATA(t264) = VALUE string( ).
      DATA t265 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t270 TYPE string.
      DATA(t271) = |Chain mainly declarations, allows chaining for the configure|.
      t271 = t271 && |d statements, reports errors for other statements.|.
      t270 = t271.
      DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t272.
      DATA(t275) = |\nhttps://docs.abapopenchecks.org/checks/23/\n\nhttps://help.sa|.
      t275 = t275 && |p.com/doc/abapdocu_latest_index_htm/latest/en-US/abenchained|.
      t275 = t275 && |_statements_guidl.html\n|.
      DATA(t276) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t276->has = abap_true.
      t276->value = t275.
      t272 = t276.
      DATA t278 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t278.
      DATA t282 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t282.
      t282->load( ).
      APPEND |SingleFile| TO t282->items.
      t282->save( ).
      t282->load( ).
      APPEND |Quickfix| TO t282->items.
      t282->save( ).
      t278 = t282.
      DATA t290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t290.
      DATA(t294) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t294->has = abap_true.
      t294->value = |CALL METHOD: bar.|.
      t290 = t294.
      DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t296.
      DATA(t300) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t300->has = abap_true.
      t300->value = |CALL METHOD bar.|.
      t296 = t300.
      DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t302.
      DATA t304 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t304.
      t265 = NEW zcl_lnt_irule_metadata( i_key = |chain_mainly_declarations| i_title = |Chain mainly declarations| i_short_description = t270 i_bad_example = t290 i_good_example = t296 i_extended_information = t272 i_tags = t278 i_pragma = t302 i_pseudo_comment = t304 ).
      CREATE OBJECT t265->zlnt_view_ownkeys_b0e8086400eb.
      t265->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t306.
      t265->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t306 ).
      DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t307.
      IF t265->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t265->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t307 ).
      ENDIF.
      DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t308.
      IF t265->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t265->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t308 ).
      ENDIF.
      DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t309.
      IF t265->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t265->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t309 ).
      ENDIF.
      DATA t310 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t310.
      IF t265->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t265->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t310 ).
      ENDIF.
      DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t311.
      IF t265->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t265->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t311 ).
      ENDIF.
      DATA t312 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t312.
      IF t265->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t265->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t312 ).
      ENDIF.
      CREATE OBJECT t265->zlnt_json_ownkeys_70e5fd461788.
      t265->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t314.
      t265->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t314 ).
      DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t316.
      IF t265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t265->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t316 ).
      ENDIF.
      DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t318.
      IF t265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t265->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t318 ).
      ENDIF.
      DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t320.
      IF t265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t265->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t320 ).
      ENDIF.
      DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t322.
      IF t265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t265->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t322 ).
      ENDIF.
      DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t324.
      IF t265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t265->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t324 ).
      ENDIF.
      DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t326.
      IF t265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t265->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t326 ).
      ENDIF.
      t264 = t265->key.
      t259 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t261 i_message_26cb = |Chain mainly declarations| i_key = t264 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t251 ).
      t2->load( ).
      APPEND t259 TO t2->items.
      t2->save( ).
      DATA t344 TYPE f.
      t344 = t22->colon->start->row.
      DATA(t346) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t346->has = abap_true.
      t346->value = t344.
      t18 = t346.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_fix.
    DATA(t1) = i_file.
    DATA(t2) = i_statement.
    DATA(t3) = i_statement_node.
    DATA(t4) = i_prev_fix.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = VALUE abap_bool( ).
    DATA t15 TYPE abap_bool.
    DATA t16 TYPE abap_bool.
    t16 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_class_data_begin ).
    t15 = t16.
    IF t16 = abap_false.
      t15 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_class_data_end ).
    ENDIF.
    t14 = t15.
    IF t15 = abap_false.
      t14 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_static_begin ).
    ENDIF.
    t13 = t14.
    IF t14 = abap_false.
      t13 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_static_end ).
    ENDIF.
    t12 = t13.
    IF t13 = abap_false.
      t12 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_constant_begin ).
    ENDIF.
    t11 = t12.
    IF t12 = abap_false.
      t11 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_constant_end ).
    ENDIF.
    t10 = t11.
    IF t11 = abap_false.
      t10 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_type_begin ).
    ENDIF.
    t9 = t10.
    IF t10 = abap_false.
      t9 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_type_end ).
    ENDIF.
    t8 = t9.
    IF t9 = abap_false.
      t8 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_type_enum_begin ).
    ENDIF.
    t7 = t8.
    IF t8 = abap_false.
      t7 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_type_enum_end ).
    ENDIF.
    t6 = t7.
    IF t7 = abap_false.
      t6 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_data_begin ).
    ENDIF.
    t5 = t6.
    IF t6 = abap_false.
      t5 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_data_end ).
    ENDIF.
    IF t5 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t41 TYPE string.
    t41 = t3->concat_tokens( ).
    DATA t44 TYPE string.
    DATA(t45) = t41.
    DATA(t46) = |,|.
    DATA(t47) = |.|.
    DATA(t48) = strlen( t45 ).
    t44 = t45.
    REPLACE ALL OCCURRENCES OF t46 IN t44 WITH t47.
    t41 = t44.
    DATA t49 TYPE REF TO zcl_lnt_position.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
      t49 = t3->get_first_token( )->start.
    ELSE.
      DATA t68 TYPE REF TO zcl_lnt_abstract_token.
      DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t69 = t3->get_tokens( ).
      DATA t71 TYPE REF TO object.
      t69->load( ).
      READ TABLE t69->items INDEX 2 INTO t71.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t71 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t72 ?= t71.
        DATA t73 TYPE REF TO object.
        t73 = t72->as_ref( ).
        t68 ?= t73.
      ELSE.
        t68 ?= t71.
      ENDIF.
      t49 = t68->start.
    ENDIF.
    DATA t76 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t88 TYPE REF TO zcl_lnt_abstract_token.
    t88 = t3->get_last_token( ).
    DATA t91 TYPE f.
    t91 = t88->start->row.
    DATA t98 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t98 = t88->start->col.
    DATA t104 TYPE f.
    t104 = strlen( t88->str ).
    DATA(t109) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t109->has = abap_true.
    t109->value = t104.
    t76 = zcl_lnt_edit_helper=>replace_range( i_file = t1 i_start = t49 i_end = NEW zcl_lnt_position( i_row = t91 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t98 right = t109 op = `+` ) ) i_text = t41 ).
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( xsdbool( t4 IS INITIAL ) = abap_false ) = abap_true.
      t76 = zcl_lnt_edit_helper=>merge( i_fix1 = t76 i_fix2 = t4 ).
    ENDIF.
    result = t76.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_chn_mnly_dclrtns_cnf( me->g_c_i_s_r_ch_mn_dc_ts_ch_mn_dc( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_chn_mnly_dclrtns_cnf( me->g_c_i_s_r_ch_mn_dc_ts_ch_mn_dc( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_chn_mnly_dclrtns_cnf.
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
        t1 = NEW zcl_lnt_chn_mnly_dclrtns_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_ch_mn_dc_ts_ch_mn_dc( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_ch_mn_dc_ts_ch_mn_dc( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1430_bb3e134e164c.
  ENDMETHOD.
ENDCLASS.
