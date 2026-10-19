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
    DATA t2 TYPE string.
    t2 = |chain_mainly_declarations|.
    DATA t4 TYPE string.
    t4 = |Chain mainly declarations|.
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
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t19.
    t18 = t19.
    DATA(t21) = |SingleFile|.
    t18->load( ).
    APPEND t21 TO t18->items.
    t18->save( ).
    DATA(t23) = |Quickfix|.
    t18->load( ).
    APPEND t23 TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t29) = |CALL METHOD: bar.|.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t29.
    t26 = t30.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t35) = |CALL METHOD bar.|.
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
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA t8 TYPE REF TO zcl_lnt_structure_node.
    t8 = t1->structure.
    t4 = t8.
    DATA(t10) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t10 = xsdbool( t4 IS INITIAL ).
    IF t10 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t17.
      result = t17.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zcl_lnt_structure_node.
    t20 = t4.
    t19 = t20->find_all_statement_nodes( ).
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
      DATA t31 TYPE REF TO zcl_lnt_abstract_token.
      t31 = t22->colon.
      t27 = t31.
      DATA(t33) = VALUE abap_bool( ).
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t36.
      t33 = xsdbool( t27 IS INITIAL ).
      IF t33 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t40 TYPE REF TO zif_lnt_statement.
      DATA t41 TYPE REF TO zif_lnt_statement.
      t41 = t22->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t40 = t41.
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
          DATA t81 TYPE abap_bool.
          t81 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_class_data_begin ).
          t78 = t81.
        ENDIF.
        t77 = t78.
        IF t78 = abap_false.
          DATA t83 TYPE abap_bool.
          t83 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_class_data_end ).
          t77 = t83.
        ENDIF.
        t76 = t77.
        IF t77 = abap_false.
          DATA t85 TYPE abap_bool.
          t85 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_static ).
          t76 = t85.
        ENDIF.
        t75 = t76.
        IF t76 = abap_false.
          DATA t87 TYPE abap_bool.
          t87 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_static_begin ).
          t75 = t87.
        ENDIF.
        t74 = t75.
        IF t75 = abap_false.
          DATA t89 TYPE abap_bool.
          t89 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_static_end ).
          t74 = t89.
        ENDIF.
        t73 = t74.
        IF t74 = abap_false.
          DATA t91 TYPE abap_bool.
          t91 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_local ).
          t73 = t91.
        ENDIF.
        t72 = t73.
        IF t73 = abap_false.
          DATA t93 TYPE abap_bool.
          t93 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_statem_constant ).
          t72 = t93.
        ENDIF.
        t71 = t72.
        IF t72 = abap_false.
          DATA t95 TYPE abap_bool.
          t95 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_constant_begin ).
          t71 = t95.
        ENDIF.
        t70 = t71.
        IF t71 = abap_false.
          DATA t97 TYPE abap_bool.
          t97 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_constant_end ).
          t70 = t97.
        ENDIF.
        t69 = t70.
        IF t70 = abap_false.
          DATA t99 TYPE abap_bool.
          t99 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_controls ).
          t69 = t99.
        ENDIF.
        t68 = t69.
        IF t69 = abap_false.
          DATA t101 TYPE abap_bool.
          t101 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_parameter ).
          t68 = t101.
        ENDIF.
        t67 = t68.
        IF t68 = abap_false.
          DATA t103 TYPE abap_bool.
          t103 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_select_option ).
          t67 = t103.
        ENDIF.
        t66 = t67.
        IF t67 = abap_false.
          DATA t105 TYPE abap_bool.
          t105 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_selection_screen ).
          t66 = t105.
        ENDIF.
        t65 = t66.
        IF t66 = abap_false.
          DATA t107 TYPE abap_bool.
          t107 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_aliases ).
          t65 = t107.
        ENDIF.
        t64 = t65.
        IF t65 = abap_false.
          DATA t109 TYPE abap_bool.
          t109 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_tables ).
          t64 = t109.
        ENDIF.
        t63 = t64.
        IF t64 = abap_false.
          DATA t111 TYPE abap_bool.
          t111 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_method_def ).
          t63 = t111.
        ENDIF.
        t62 = t63.
        IF t63 = abap_false.
          DATA t113 TYPE abap_bool.
          t113 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_interface_def ).
          t62 = t113.
        ENDIF.
        t61 = t62.
        IF t62 = abap_false.
          DATA t115 TYPE abap_bool.
          t115 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_statem_type ).
          t61 = t115.
        ENDIF.
        t60 = t61.
        IF t61 = abap_false.
          DATA t117 TYPE abap_bool.
          t117 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_type_begin ).
          t60 = t117.
        ENDIF.
        t59 = t60.
        IF t60 = abap_false.
          DATA t119 TYPE abap_bool.
          t119 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_type_end ).
          t59 = t119.
        ENDIF.
        t58 = t59.
        IF t59 = abap_false.
          DATA t121 TYPE abap_bool.
          t121 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_type_enum_begin ).
          t58 = t121.
        ENDIF.
        t57 = t58.
        IF t58 = abap_false.
          DATA t123 TYPE abap_bool.
          t123 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_type_enum_end ).
          t57 = t123.
        ENDIF.
        t56 = t57.
        IF t57 = abap_false.
          DATA t125 TYPE abap_bool.
          t125 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_type_enum ).
          t56 = t125.
        ENDIF.
        t55 = t56.
        IF t56 = abap_false.
          DATA t127 TYPE abap_bool.
          t127 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_events ).
          t55 = t127.
        ENDIF.
        t54 = t55.
        IF t55 = abap_false.
          DATA t129 TYPE abap_bool.
          t129 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_ranges ).
          t54 = t129.
        ENDIF.
        t53 = t54.
        IF t54 = abap_false.
          DATA t131 TYPE abap_bool.
          t131 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_type_pools ).
          t53 = t131.
        ENDIF.
        t52 = t53.
        IF t53 = abap_false.
          DATA t133 TYPE abap_bool.
          t133 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_statem_field_symbol ).
          t52 = t133.
        ENDIF.
        t51 = t52.
        IF t52 = abap_false.
          DATA t135 TYPE abap_bool.
          t135 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_nodes ).
          t51 = t135.
        ENDIF.
        t50 = t51.
        IF t51 = abap_false.
          DATA t137 TYPE abap_bool.
          t137 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_data ).
          t50 = t137.
        ENDIF.
        t49 = t50.
        IF t50 = abap_false.
          DATA t139 TYPE abap_bool.
          t139 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_data_begin ).
          t49 = t139.
        ENDIF.
        t48 = t49.
        IF t49 = abap_false.
          DATA t141 TYPE abap_bool.
          t141 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_data_end ).
          t48 = t141.
        ENDIF.
        t43 = t48.
      ENDIF.
      IF t43 = abap_true.
        CONTINUE.
      ELSE.
        DATA t143 TYPE abap_bool.
        DATA t144 TYPE abap_bool.
        DATA t145 TYPE abap_bool.
        t145 = me->conf->zlnt_view_read_sr_52806862a0a0( ).
        t144 = xsdbool( t145 = abap_true ).
        t143 = t144.
        IF t144 = abap_true.
          DATA t148 TYPE abap_bool.
          t148 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_write ).
          t143 = t148.
        ENDIF.
        IF t143 = abap_true.
          CONTINUE.
        ELSE.
          DATA t150 TYPE abap_bool.
          DATA t151 TYPE abap_bool.
          DATA t152 TYPE abap_bool.
          t152 = me->conf->zlnt_view_read_sr_af9a1dd4900b( ).
          t151 = xsdbool( t152 = abap_true ).
          t150 = t151.
          IF t151 = abap_true.
            DATA t155 TYPE abap_bool.
            t155 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_move ).
            t150 = t155.
          ENDIF.
          IF t150 = abap_true.
            CONTINUE.
          ELSE.
            DATA t157 TYPE abap_bool.
            DATA t158 TYPE abap_bool.
            DATA t159 TYPE abap_bool.
            t159 = me->conf->zlnt_view_read_sr_4ab669e566d5( ).
            t158 = xsdbool( t159 = abap_true ).
            t157 = t158.
            IF t158 = abap_true.
              DATA t162 TYPE abap_bool.
              t162 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_refresh ).
              t157 = t162.
            ENDIF.
            IF t157 = abap_true.
              CONTINUE.
            ELSE.
              DATA t164 TYPE abap_bool.
              DATA t165 TYPE abap_bool.
              DATA t166 TYPE abap_bool.
              t166 = me->conf->zlnt_view_read_sr_fcc3b6176335( ).
              t165 = xsdbool( t166 = abap_true ).
              t164 = t165.
              IF t165 = abap_true.
                DATA t169 TYPE abap_bool.
                t169 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_unassign ).
                t164 = t169.
              ENDIF.
              IF t164 = abap_true.
                CONTINUE.
              ELSE.
                DATA t171 TYPE abap_bool.
                DATA t172 TYPE abap_bool.
                DATA t173 TYPE abap_bool.
                t173 = me->conf->zlnt_view_read_sr_9c170c5c305f( ).
                t172 = xsdbool( t173 = abap_true ).
                t171 = t172.
                IF t172 = abap_true.
                  DATA t176 TYPE abap_bool.
                  t176 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_clear ).
                  t171 = t176.
                ENDIF.
                IF t171 = abap_true.
                  CONTINUE.
                ELSE.
                  DATA t178 TYPE abap_bool.
                  DATA t179 TYPE abap_bool.
                  DATA t180 TYPE abap_bool.
                  t180 = me->conf->zlnt_view_read_sr_9762d2acd538( ).
                  t179 = xsdbool( t180 = abap_true ).
                  t178 = t179.
                  IF t179 = abap_true.
                    DATA t183 TYPE abap_bool.
                    t183 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_hide ).
                    t178 = t183.
                  ENDIF.
                  IF t178 = abap_true.
                    CONTINUE.
                  ELSE.
                    DATA t185 TYPE abap_bool.
                    DATA t186 TYPE abap_bool.
                    DATA t187 TYPE abap_bool.
                    t187 = me->conf->zlnt_view_read_sr_972a7b120c53( ).
                    t186 = xsdbool( t187 = abap_true ).
                    t185 = t186.
                    IF t186 = abap_true.
                      DATA t190 TYPE abap_bool.
                      t190 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_free ).
                      t185 = t190.
                    ENDIF.
                    IF t185 = abap_true.
                      CONTINUE.
                    ELSE.
                      DATA t192 TYPE abap_bool.
                      DATA t193 TYPE abap_bool.
                      DATA t194 TYPE abap_bool.
                      t194 = me->conf->zlnt_view_read_sr_e9e51bddcd51( ).
                      t193 = xsdbool( t194 = abap_true ).
                      t192 = t193.
                      IF t193 = abap_true.
                        DATA t197 TYPE abap_bool.
                        t197 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_include ).
                        t192 = t197.
                      ENDIF.
                      IF t192 = abap_true.
                        CONTINUE.
                      ELSE.
                        DATA t199 TYPE abap_bool.
                        DATA t200 TYPE abap_bool.
                        DATA t201 TYPE abap_bool.
                        t201 = me->conf->zlnt_view_read_sr_9d95884b1e2f( ).
                        t200 = xsdbool( t201 = abap_true ).
                        t199 = t200.
                        IF t200 = abap_true.
                          DATA t204 TYPE abap_bool.
                          t204 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_check ).
                          t199 = t204.
                        ENDIF.
                        IF t199 = abap_true.
                          CONTINUE.
                        ELSE.
                          DATA t206 TYPE abap_bool.
                          DATA t207 TYPE abap_bool.
                          DATA t208 TYPE abap_bool.
                          t208 = me->conf->zlnt_view_read_sr_a93433db50e7( ).
                          t207 = xsdbool( t208 = abap_true ).
                          t206 = t207.
                          IF t207 = abap_true.
                            DATA t211 TYPE abap_bool.
                            t211 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_sort ).
                            t206 = t211.
                          ENDIF.
                          IF t206 = abap_true.
                            CONTINUE.
                          ENDIF.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t213 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t213.
      DATA(t214) = VALUE abap_bool( ).
      DATA(t215) = t18.
      DATA t216 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t216.
      DATA t224 TYPE REF TO zcl_lnt_position.
      t224 = t27->start.
      DATA t226 TYPE f.
      t226 = t224->row.
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
        DATA(t240) = xsdbool( t233 IS INITIAL ).
        IF t240 = abap_true.
          CLEAR t239.
        ELSE.
          DATA t247 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t248 TYPE REF TO zcl_lnt_iissue_data.
          t248 = t233->data_56cc.
          t247 = t248->default_fix.
          t239 = t247.
        ENDIF.
        t213 = t239.
      ENDIF.
      DATA t251 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t251 = me->get_fix( i_file = t1 i_statement = t40 i_statement_node = t22 i_prev_fix = t213 ).
      DATA(t257) = |Chain mainly declarations|.
      DATA t259 TYPE REF TO zcl_lnt_issue.
      CLEAR t259.
      DATA t261 TYPE REF TO zcl_lnt_abstract_token.
      t261 = t22->get_first_token( ).
      DATA(t264) = VALUE string( ).
      DATA t265 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t265.
      DATA t266 TYPE string.
      t266 = |chain_mainly_declarations|.
      DATA t268 TYPE string.
      t268 = |Chain mainly declarations|.
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
      DATA t283 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t283.
      t282 = t283.
      DATA(t285) = |SingleFile|.
      t282->load( ).
      APPEND t285 TO t282->items.
      t282->save( ).
      DATA(t287) = |Quickfix|.
      t282->load( ).
      APPEND t287 TO t282->items.
      t282->save( ).
      t278 = t282.
      DATA t290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t290.
      DATA(t293) = |CALL METHOD: bar.|.
      DATA(t294) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t294->has = abap_true.
      t294->value = t293.
      t290 = t294.
      DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t296.
      DATA(t299) = |CALL METHOD bar.|.
      DATA(t300) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t300->has = abap_true.
      t300->value = t299.
      t296 = t300.
      DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t302.
      DATA t304 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t304.
      t265 = NEW zcl_lnt_irule_metadata( i_key = t266 i_title = t268 i_short_description = t270 i_bad_example = t290 i_good_example = t296 i_extended_information = t272 i_tags = t278 i_pragma = t302 i_pseudo_comment = t304 ).
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
      DATA(t313) = |key|.
      DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t314.
      t265->zlnt_json_ownkeys_70e5fd461788->put( p0 = t313 p1 = t314 ).
      DATA(t315) = |title|.
      DATA t316 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t316.
      IF t265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t265->zlnt_json_ownkeys_70e5fd461788->put( p0 = t315 p1 = t316 ).
      ENDIF.
      DATA(t317) = |shortDescription|.
      DATA t318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t318.
      IF t265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t265->zlnt_json_ownkeys_70e5fd461788->put( p0 = t317 p1 = t318 ).
      ENDIF.
      DATA(t319) = |extendedInformation|.
      DATA t320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t320.
      IF t265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t265->zlnt_json_ownkeys_70e5fd461788->put( p0 = t319 p1 = t320 ).
      ENDIF.
      DATA(t321) = |tags|.
      DATA t322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t322.
      IF t265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t265->zlnt_json_ownkeys_70e5fd461788->put( p0 = t321 p1 = t322 ).
      ENDIF.
      DATA(t323) = |badExample|.
      DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t324.
      IF t265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t265->zlnt_json_ownkeys_70e5fd461788->put( p0 = t323 p1 = t324 ).
      ENDIF.
      DATA(t325) = |goodExample|.
      DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t326.
      IF t265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t265->zlnt_json_ownkeys_70e5fd461788->put( p0 = t325 p1 = t326 ).
      ENDIF.
      t264 = t265->key.
      DATA t327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t327 = me->conf->zlnt_view_read_sr_15c06369f827( ).
      t259 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t261 i_message_26cb = t257 i_key = t264 i_severity = t327 i_fix = t251 ).
      t2->load( ).
      APPEND t259 TO t2->items.
      t2->save( ).
      DATA t340 TYPE REF TO zcl_lnt_abstract_token.
      t340 = t22->colon.
      DATA t342 TYPE REF TO zcl_lnt_position.
      t342 = t340->start.
      DATA t344 TYPE f.
      t344 = t342->row.
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
      DATA t18 TYPE abap_bool.
      t18 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_class_data_end ).
      t15 = t18.
    ENDIF.
    t14 = t15.
    IF t15 = abap_false.
      DATA t20 TYPE abap_bool.
      t20 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_static_begin ).
      t14 = t20.
    ENDIF.
    t13 = t14.
    IF t14 = abap_false.
      DATA t22 TYPE abap_bool.
      t22 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_static_end ).
      t13 = t22.
    ENDIF.
    t12 = t13.
    IF t13 = abap_false.
      DATA t24 TYPE abap_bool.
      t24 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_constant_begin ).
      t12 = t24.
    ENDIF.
    t11 = t12.
    IF t12 = abap_false.
      DATA t26 TYPE abap_bool.
      t26 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_constant_end ).
      t11 = t26.
    ENDIF.
    t10 = t11.
    IF t11 = abap_false.
      DATA t28 TYPE abap_bool.
      t28 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_type_begin ).
      t10 = t28.
    ENDIF.
    t9 = t10.
    IF t10 = abap_false.
      DATA t30 TYPE abap_bool.
      t30 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_type_end ).
      t9 = t30.
    ENDIF.
    t8 = t9.
    IF t9 = abap_false.
      DATA t32 TYPE abap_bool.
      t32 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_type_enum_begin ).
      t8 = t32.
    ENDIF.
    t7 = t8.
    IF t8 = abap_false.
      DATA t34 TYPE abap_bool.
      t34 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_type_enum_end ).
      t7 = t34.
    ENDIF.
    t6 = t7.
    IF t7 = abap_false.
      DATA t36 TYPE abap_bool.
      t36 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_data_begin ).
      t6 = t36.
    ENDIF.
    t5 = t6.
    IF t6 = abap_false.
      DATA t38 TYPE abap_bool.
      t38 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_data_end ).
      t5 = t38.
    ENDIF.
    IF t5 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t41 TYPE string.
    DATA t42 TYPE string.
    t42 = t3->concat_tokens( ).
    t41 = t42.
    DATA t44 TYPE string.
    DATA(t45) = t41.
    DATA(t46) = |,|.
    DATA(t47) = |.|.
    DATA(t48) = strlen( t45 ).
    t44 = t45.
    REPLACE ALL OCCURRENCES OF t46 IN t44 WITH t47.
    t41 = t44.
    DATA t49 TYPE REF TO zcl_lnt_position.
    DATA(t50) = VALUE abap_bool( ).
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t50 = xsdbool( t4 IS INITIAL ).
    IF t50 = abap_true.
      DATA t62 TYPE REF TO zcl_lnt_abstract_token.
      t62 = t3->get_first_token( ).
      DATA t64 TYPE REF TO zcl_lnt_position.
      t64 = t62->start.
      t49 = t64.
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
      DATA t74 TYPE REF TO zcl_lnt_position.
      t74 = t68->start.
      t49 = t74.
    ENDIF.
    DATA t76 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t77 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t80 TYPE REF TO zcl_lnt_position.
    DATA t85 TYPE REF TO zcl_lnt_abstract_token.
    t85 = t3->get_last_token( ).
    DATA t88 TYPE REF TO zcl_lnt_abstract_token.
    t88 = t85.
    DATA t90 TYPE REF TO zcl_lnt_position.
    DATA t91 TYPE f.
    DATA t93 TYPE REF TO zcl_lnt_position.
    t93 = t88->start.
    DATA t95 TYPE f.
    t95 = t93->row.
    t91 = t95.
    DATA t97 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t98 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t100 TYPE REF TO zcl_lnt_position.
    t100 = t88->start.
    DATA t102 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t102 = t100->col.
    t98 = t102.
    DATA t104 TYPE f.
    DATA t106 TYPE string.
    t106 = t88->str.
    t104 = strlen( t106 ).
    DATA(t109) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t109->has = abap_true.
    t109->value = t104.
    t97 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t98 right = t109 op = `+` ).
    t90 = NEW zcl_lnt_position( i_row = t91 i_col = t97 ).
    t80 = t90.
    t77 = zcl_lnt_edit_helper=>replace_range( i_file = t1 i_start = t49 i_end = t80 i_text = t41 ).
    t76 = t77.
    DATA(t111) = VALUE abap_bool( ).
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t116) = VALUE abap_bool( ).
    DATA(t117) = xsdbool( t4 IS INITIAL ).
    t116 = xsdbool( t117 = abap_false ).
    t111 = t116.
    IF t111 = abap_true.
      DATA t119 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t121 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t121 = t4.
      t119 = zcl_lnt_edit_helper=>merge( i_fix1 = t76 i_fix2 = t121 ).
      t76 = t119.
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
