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
    DATA(t1) = NEW zcl_lnt_chn_mnly_dclrtns_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |chain_mainly_declarations|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Chain mainly declarations|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Chain mainly declarations, allows chaining for the configure|.
    t7 = t7 && |d statements, reports errors for other statements.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |\nhttps://docs.abapopenchecks.org/checks/23/\n\nhttps://help.sa|.
      t11 = t11 && |p.com/doc/abapdocu_latest_index_htm/latest/en-US/abenchained|.
      t11 = t11 && |_statements_guidl.html\n|.
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
      DATA(t23) = |Quickfix|.
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
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA(t29) = |CALL METHOD: bar.|.
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
    DATA(t34) = abap_true.
    IF t34 = abap_true.
      DATA(t35) = |CALL METHOD bar.|.
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
    DATA(t49) = |key|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |title|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |shortDescription|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |extendedInformation|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |tags|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |badExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |goodExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_ch_mn_dc_ts_ch_mn_dc.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_ch_mn_dc_ts_ch_mn_dc.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_ch_mn_dc_ts_ch_mn_dc.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA t5 TYPE REF TO zcl_lnt_structure_node.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zcl_lnt_structure_node.
    DATA(t9) = t6.
    t8 = t9->structure.
    t5 = t8.
    t4 = t5.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zcl_lnt_structure_node.
    DATA(t12) = t4.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    t13 = t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = t11.
    IF t16 IS INITIAL.
      t15 = abap_true.
    ENDIF.
    t10 = t15.
    IF t10 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t17.
      result = t17.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zcl_lnt_structure_node.
    DATA(t21) = t4.
    t20 = t21.
    t19 = t20->find_all_statement_nodes( ).
    DATA t22 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t22.
    DATA t23 TYPE REF TO object.
    CLEAR t23.
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
      DATA t28 TYPE REF TO zcl_lnt_abstract_token.
      DATA t29 TYPE REF TO zcl_lnt_statement_node.
      DATA(t30) = t22.
      t29 = t30.
      DATA t31 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t32) = t29.
      t31 = t32->colon.
      t28 = t31.
      t27 = t28.
      DATA(t33) = VALUE abap_bool( ).
      DATA t34 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t35) = t27.
      t34 = t35.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t37.
      t36 = t37.
      DATA(t38) = VALUE abap_bool( ).
      DATA(t39) = t34.
      IF t39 IS INITIAL.
        t38 = abap_true.
      ENDIF.
      t33 = t38.
      IF t33 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t40 TYPE REF TO zif_lnt_statement.
      DATA t41 TYPE REF TO zif_lnt_statement.
      DATA(t42) = t22.
      t41 = t42->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t40 = t41.
      DATA t43 TYPE abap_bool.
      DATA t44 TYPE abap_bool.
      DATA t45 TYPE abap_bool.
      DATA(t46) = me->conf.
      t45 = t46->zlnt_view_read_sr_379733500cb0( ).
      DATA(t47) = abap_true.
      t44 = xsdbool( t45 = t47 ).
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
        DATA(t80) = t40.
        t79 = xsdbool( t80 IS BOUND AND t80 IS INSTANCE OF zcl_lnt_st_class_data ).
        t78 = t79.
        IF t79 = abap_false.
          DATA t81 TYPE abap_bool.
          DATA(t82) = t40.
          t81 = xsdbool( t82 IS BOUND AND t82 IS INSTANCE OF zcl_lnt_class_data_begin ).
          t78 = t81.
        ENDIF.
        t77 = t78.
        IF t78 = abap_false.
          DATA t83 TYPE abap_bool.
          DATA(t84) = t40.
          t83 = xsdbool( t84 IS BOUND AND t84 IS INSTANCE OF zcl_lnt_class_data_end ).
          t77 = t83.
        ENDIF.
        t76 = t77.
        IF t77 = abap_false.
          DATA t85 TYPE abap_bool.
          DATA(t86) = t40.
          t85 = xsdbool( t86 IS BOUND AND t86 IS INSTANCE OF zcl_lnt_st_static ).
          t76 = t85.
        ENDIF.
        t75 = t76.
        IF t76 = abap_false.
          DATA t87 TYPE abap_bool.
          DATA(t88) = t40.
          t87 = xsdbool( t88 IS BOUND AND t88 IS INSTANCE OF zcl_lnt_static_begin ).
          t75 = t87.
        ENDIF.
        t74 = t75.
        IF t75 = abap_false.
          DATA t89 TYPE abap_bool.
          DATA(t90) = t40.
          t89 = xsdbool( t90 IS BOUND AND t90 IS INSTANCE OF zcl_lnt_static_end ).
          t74 = t89.
        ENDIF.
        t73 = t74.
        IF t74 = abap_false.
          DATA t91 TYPE abap_bool.
          DATA(t92) = t40.
          t91 = xsdbool( t92 IS BOUND AND t92 IS INSTANCE OF zcl_lnt_local ).
          t73 = t91.
        ENDIF.
        t72 = t73.
        IF t73 = abap_false.
          DATA t93 TYPE abap_bool.
          DATA(t94) = t40.
          t93 = xsdbool( t94 IS BOUND AND t94 IS INSTANCE OF zcl_lnt_st_statem_constant ).
          t72 = t93.
        ENDIF.
        t71 = t72.
        IF t72 = abap_false.
          DATA t95 TYPE abap_bool.
          DATA(t96) = t40.
          t95 = xsdbool( t96 IS BOUND AND t96 IS INSTANCE OF zcl_lnt_constant_begin ).
          t71 = t95.
        ENDIF.
        t70 = t71.
        IF t71 = abap_false.
          DATA t97 TYPE abap_bool.
          DATA(t98) = t40.
          t97 = xsdbool( t98 IS BOUND AND t98 IS INSTANCE OF zcl_lnt_constant_end ).
          t70 = t97.
        ENDIF.
        t69 = t70.
        IF t70 = abap_false.
          DATA t99 TYPE abap_bool.
          DATA(t100) = t40.
          t99 = xsdbool( t100 IS BOUND AND t100 IS INSTANCE OF zcl_lnt_st_controls ).
          t69 = t99.
        ENDIF.
        t68 = t69.
        IF t69 = abap_false.
          DATA t101 TYPE abap_bool.
          DATA(t102) = t40.
          t101 = xsdbool( t102 IS BOUND AND t102 IS INSTANCE OF zcl_lnt_st_parameter ).
          t68 = t101.
        ENDIF.
        t67 = t68.
        IF t68 = abap_false.
          DATA t103 TYPE abap_bool.
          DATA(t104) = t40.
          t103 = xsdbool( t104 IS BOUND AND t104 IS INSTANCE OF zcl_lnt_st_select_option ).
          t67 = t103.
        ENDIF.
        t66 = t67.
        IF t67 = abap_false.
          DATA t105 TYPE abap_bool.
          DATA(t106) = t40.
          t105 = xsdbool( t106 IS BOUND AND t106 IS INSTANCE OF zcl_lnt_st_selection_screen ).
          t66 = t105.
        ENDIF.
        t65 = t66.
        IF t66 = abap_false.
          DATA t107 TYPE abap_bool.
          DATA(t108) = t40.
          t107 = xsdbool( t108 IS BOUND AND t108 IS INSTANCE OF zcl_lnt_aliases ).
          t65 = t107.
        ENDIF.
        t64 = t65.
        IF t65 = abap_false.
          DATA t109 TYPE abap_bool.
          DATA(t110) = t40.
          t109 = xsdbool( t110 IS BOUND AND t110 IS INSTANCE OF zcl_lnt_st_tables ).
          t64 = t109.
        ENDIF.
        t63 = t64.
        IF t64 = abap_false.
          DATA t111 TYPE abap_bool.
          DATA(t112) = t40.
          t111 = xsdbool( t112 IS BOUND AND t112 IS INSTANCE OF zcl_lnt_method_def ).
          t63 = t111.
        ENDIF.
        t62 = t63.
        IF t63 = abap_false.
          DATA t113 TYPE abap_bool.
          DATA(t114) = t40.
          t113 = xsdbool( t114 IS BOUND AND t114 IS INSTANCE OF zcl_lnt_interface_def ).
          t62 = t113.
        ENDIF.
        t61 = t62.
        IF t62 = abap_false.
          DATA t115 TYPE abap_bool.
          DATA(t116) = t40.
          t115 = xsdbool( t116 IS BOUND AND t116 IS INSTANCE OF zcl_lnt_st_statem_type ).
          t61 = t115.
        ENDIF.
        t60 = t61.
        IF t61 = abap_false.
          DATA t117 TYPE abap_bool.
          DATA(t118) = t40.
          t117 = xsdbool( t118 IS BOUND AND t118 IS INSTANCE OF zcl_lnt_type_begin ).
          t60 = t117.
        ENDIF.
        t59 = t60.
        IF t60 = abap_false.
          DATA t119 TYPE abap_bool.
          DATA(t120) = t40.
          t119 = xsdbool( t120 IS BOUND AND t120 IS INSTANCE OF zcl_lnt_type_end ).
          t59 = t119.
        ENDIF.
        t58 = t59.
        IF t59 = abap_false.
          DATA t121 TYPE abap_bool.
          DATA(t122) = t40.
          t121 = xsdbool( t122 IS BOUND AND t122 IS INSTANCE OF zcl_lnt_type_enum_begin ).
          t58 = t121.
        ENDIF.
        t57 = t58.
        IF t58 = abap_false.
          DATA t123 TYPE abap_bool.
          DATA(t124) = t40.
          t123 = xsdbool( t124 IS BOUND AND t124 IS INSTANCE OF zcl_lnt_type_enum_end ).
          t57 = t123.
        ENDIF.
        t56 = t57.
        IF t57 = abap_false.
          DATA t125 TYPE abap_bool.
          DATA(t126) = t40.
          t125 = xsdbool( t126 IS BOUND AND t126 IS INSTANCE OF zcl_lnt_st_type_enum ).
          t56 = t125.
        ENDIF.
        t55 = t56.
        IF t56 = abap_false.
          DATA t127 TYPE abap_bool.
          DATA(t128) = t40.
          t127 = xsdbool( t128 IS BOUND AND t128 IS INSTANCE OF zcl_lnt_events ).
          t55 = t127.
        ENDIF.
        t54 = t55.
        IF t55 = abap_false.
          DATA t129 TYPE abap_bool.
          DATA(t130) = t40.
          t129 = xsdbool( t130 IS BOUND AND t130 IS INSTANCE OF zcl_lnt_st_ranges ).
          t54 = t129.
        ENDIF.
        t53 = t54.
        IF t54 = abap_false.
          DATA t131 TYPE abap_bool.
          DATA(t132) = t40.
          t131 = xsdbool( t132 IS BOUND AND t132 IS INSTANCE OF zcl_lnt_type_pools ).
          t53 = t131.
        ENDIF.
        t52 = t53.
        IF t53 = abap_false.
          DATA t133 TYPE abap_bool.
          DATA(t134) = t40.
          t133 = xsdbool( t134 IS BOUND AND t134 IS INSTANCE OF zcl_lnt_st_statem_field_symbol ).
          t52 = t133.
        ENDIF.
        t51 = t52.
        IF t52 = abap_false.
          DATA t135 TYPE abap_bool.
          DATA(t136) = t40.
          t135 = xsdbool( t136 IS BOUND AND t136 IS INSTANCE OF zcl_lnt_nodes ).
          t51 = t135.
        ENDIF.
        t50 = t51.
        IF t51 = abap_false.
          DATA t137 TYPE abap_bool.
          DATA(t138) = t40.
          t137 = xsdbool( t138 IS BOUND AND t138 IS INSTANCE OF zcl_lnt_st_data ).
          t50 = t137.
        ENDIF.
        t49 = t50.
        IF t50 = abap_false.
          DATA t139 TYPE abap_bool.
          DATA(t140) = t40.
          t139 = xsdbool( t140 IS BOUND AND t140 IS INSTANCE OF zcl_lnt_data_begin ).
          t49 = t139.
        ENDIF.
        t48 = t49.
        IF t49 = abap_false.
          DATA t141 TYPE abap_bool.
          DATA(t142) = t40.
          t141 = xsdbool( t142 IS BOUND AND t142 IS INSTANCE OF zcl_lnt_data_end ).
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
        DATA(t146) = me->conf.
        t145 = t146->zlnt_view_read_sr_52806862a0a0( ).
        DATA(t147) = abap_true.
        t144 = xsdbool( t145 = t147 ).
        t143 = t144.
        IF t144 = abap_true.
          DATA t148 TYPE abap_bool.
          DATA(t149) = t40.
          t148 = xsdbool( t149 IS BOUND AND t149 IS INSTANCE OF zcl_lnt_st_write ).
          t143 = t148.
        ENDIF.
        IF t143 = abap_true.
          CONTINUE.
        ELSE.
          DATA t150 TYPE abap_bool.
          DATA t151 TYPE abap_bool.
          DATA t152 TYPE abap_bool.
          DATA(t153) = me->conf.
          t152 = t153->zlnt_view_read_sr_af9a1dd4900b( ).
          DATA(t154) = abap_true.
          t151 = xsdbool( t152 = t154 ).
          t150 = t151.
          IF t151 = abap_true.
            DATA t155 TYPE abap_bool.
            DATA(t156) = t40.
            t155 = xsdbool( t156 IS BOUND AND t156 IS INSTANCE OF zcl_lnt_st_move ).
            t150 = t155.
          ENDIF.
          IF t150 = abap_true.
            CONTINUE.
          ELSE.
            DATA t157 TYPE abap_bool.
            DATA t158 TYPE abap_bool.
            DATA t159 TYPE abap_bool.
            DATA(t160) = me->conf.
            t159 = t160->zlnt_view_read_sr_4ab669e566d5( ).
            DATA(t161) = abap_true.
            t158 = xsdbool( t159 = t161 ).
            t157 = t158.
            IF t158 = abap_true.
              DATA t162 TYPE abap_bool.
              DATA(t163) = t40.
              t162 = xsdbool( t163 IS BOUND AND t163 IS INSTANCE OF zcl_lnt_st_refresh ).
              t157 = t162.
            ENDIF.
            IF t157 = abap_true.
              CONTINUE.
            ELSE.
              DATA t164 TYPE abap_bool.
              DATA t165 TYPE abap_bool.
              DATA t166 TYPE abap_bool.
              DATA(t167) = me->conf.
              t166 = t167->zlnt_view_read_sr_fcc3b6176335( ).
              DATA(t168) = abap_true.
              t165 = xsdbool( t166 = t168 ).
              t164 = t165.
              IF t165 = abap_true.
                DATA t169 TYPE abap_bool.
                DATA(t170) = t40.
                t169 = xsdbool( t170 IS BOUND AND t170 IS INSTANCE OF zcl_lnt_st_unassign ).
                t164 = t169.
              ENDIF.
              IF t164 = abap_true.
                CONTINUE.
              ELSE.
                DATA t171 TYPE abap_bool.
                DATA t172 TYPE abap_bool.
                DATA t173 TYPE abap_bool.
                DATA(t174) = me->conf.
                t173 = t174->zlnt_view_read_sr_9c170c5c305f( ).
                DATA(t175) = abap_true.
                t172 = xsdbool( t173 = t175 ).
                t171 = t172.
                IF t172 = abap_true.
                  DATA t176 TYPE abap_bool.
                  DATA(t177) = t40.
                  t176 = xsdbool( t177 IS BOUND AND t177 IS INSTANCE OF zcl_lnt_st_clear ).
                  t171 = t176.
                ENDIF.
                IF t171 = abap_true.
                  CONTINUE.
                ELSE.
                  DATA t178 TYPE abap_bool.
                  DATA t179 TYPE abap_bool.
                  DATA t180 TYPE abap_bool.
                  DATA(t181) = me->conf.
                  t180 = t181->zlnt_view_read_sr_9762d2acd538( ).
                  DATA(t182) = abap_true.
                  t179 = xsdbool( t180 = t182 ).
                  t178 = t179.
                  IF t179 = abap_true.
                    DATA t183 TYPE abap_bool.
                    DATA(t184) = t40.
                    t183 = xsdbool( t184 IS BOUND AND t184 IS INSTANCE OF zcl_lnt_hide ).
                    t178 = t183.
                  ENDIF.
                  IF t178 = abap_true.
                    CONTINUE.
                  ELSE.
                    DATA t185 TYPE abap_bool.
                    DATA t186 TYPE abap_bool.
                    DATA t187 TYPE abap_bool.
                    DATA(t188) = me->conf.
                    t187 = t188->zlnt_view_read_sr_972a7b120c53( ).
                    DATA(t189) = abap_true.
                    t186 = xsdbool( t187 = t189 ).
                    t185 = t186.
                    IF t186 = abap_true.
                      DATA t190 TYPE abap_bool.
                      DATA(t191) = t40.
                      t190 = xsdbool( t191 IS BOUND AND t191 IS INSTANCE OF zcl_lnt_st_free ).
                      t185 = t190.
                    ENDIF.
                    IF t185 = abap_true.
                      CONTINUE.
                    ELSE.
                      DATA t192 TYPE abap_bool.
                      DATA t193 TYPE abap_bool.
                      DATA t194 TYPE abap_bool.
                      DATA(t195) = me->conf.
                      t194 = t195->zlnt_view_read_sr_e9e51bddcd51( ).
                      DATA(t196) = abap_true.
                      t193 = xsdbool( t194 = t196 ).
                      t192 = t193.
                      IF t193 = abap_true.
                        DATA t197 TYPE abap_bool.
                        DATA(t198) = t40.
                        t197 = xsdbool( t198 IS BOUND AND t198 IS INSTANCE OF zcl_lnt_include ).
                        t192 = t197.
                      ENDIF.
                      IF t192 = abap_true.
                        CONTINUE.
                      ELSE.
                        DATA t199 TYPE abap_bool.
                        DATA t200 TYPE abap_bool.
                        DATA t201 TYPE abap_bool.
                        DATA(t202) = me->conf.
                        t201 = t202->zlnt_view_read_sr_9d95884b1e2f( ).
                        DATA(t203) = abap_true.
                        t200 = xsdbool( t201 = t203 ).
                        t199 = t200.
                        IF t200 = abap_true.
                          DATA t204 TYPE abap_bool.
                          DATA(t205) = t40.
                          t204 = xsdbool( t205 IS BOUND AND t205 IS INSTANCE OF zcl_lnt_st_check ).
                          t199 = t204.
                        ENDIF.
                        IF t199 = abap_true.
                          CONTINUE.
                        ELSE.
                          DATA t206 TYPE abap_bool.
                          DATA t207 TYPE abap_bool.
                          DATA t208 TYPE abap_bool.
                          DATA(t209) = me->conf.
                          t208 = t209->zlnt_view_read_sr_a93433db50e7( ).
                          DATA(t210) = abap_true.
                          t207 = xsdbool( t208 = t210 ).
                          t206 = t207.
                          IF t207 = abap_true.
                            DATA t211 TYPE abap_bool.
                            DATA(t212) = t40.
                            t211 = xsdbool( t212 IS BOUND AND t212 IS INSTANCE OF zcl_lnt_st_sort ).
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
      DATA(t217) = abap_true.
      IF t217 = abap_true.
        DATA t218 TYPE f.
        DATA t219 TYPE REF TO zcl_lnt_position.
        DATA t220 TYPE REF TO zcl_lnt_position.
        DATA t221 TYPE REF TO zcl_lnt_abstract_token.
        DATA t222 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t223) = t27.
        t222 = t223.
        t221 = t222.
        DATA t224 TYPE REF TO zcl_lnt_position.
        DATA(t225) = t221.
        t224 = t225->start.
        t220 = t224.
        t219 = t220.
        DATA t226 TYPE f.
        DATA(t227) = t219.
        t226 = t227->row.
        t218 = t226.
        DATA(t228) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t228->has = abap_true.
        t228->value = t218.
        t216 = t228.
      ELSE.
        DATA t229 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t229.
        t216 = t229.
      ENDIF.
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
        DATA t232 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t232.
        DATA t233 TYPE REF TO zcl_lnt_issue.
        CLEAR t233.
        DATA t234 TYPE REF TO zcl_lnt_issue.
        CLEAR t234.
        DATA(t235) = t2.
        DATA t236 TYPE REF TO object.
        t236 = t235->pop( ).
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
        DATA(t240) = VALUE abap_bool( ).
        DATA(t241) = t233.
        IF t241 IS INITIAL.
          t240 = abap_true.
        ENDIF.
        IF t240 = abap_true.
          DATA t242 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t242.
          t239 = t242.
        ELSE.
          DATA t243 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t244 TYPE REF TO zcl_lnt_issue.
          DATA t245 TYPE REF TO zcl_lnt_issue.
          DATA(t246) = t233.
          t245 = t246.
          t244 = t245.
          DATA t247 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t248 TYPE REF TO zcl_lnt_iissue_data.
          DATA(t249) = t244.
          t248 = t249->data_56cc.
          t247 = t248->default_fix.
          t243 = t247.
          t239 = t243.
        ENDIF.
        t232 = t239.
        t213 = t232.
      ENDIF.
      DATA t250 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t251 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA(t252) = t1.
      DATA(t253) = t40.
      DATA(t254) = t22.
      DATA(t255) = t213.
      t251 = me->get_fix( i_file = t252 i_statement = t253 i_statement_node = t254 i_prev_fix = t255 ).
      t250 = t251.
      DATA t256 TYPE string.
      DATA(t257) = |Chain mainly declarations|.
      t256 = t257.
      DATA(t258) = t2.
      DATA t259 TYPE REF TO zcl_lnt_issue.
      CLEAR t259.
      DATA(t260) = t1.
      DATA t261 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t262) = t22.
      t261 = t262->get_first_token( ).
      DATA(t263) = t256.
      DATA(t264) = VALUE string( ).
      DATA t265 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t265.
      DATA t266 TYPE string.
      DATA(t267) = |chain_mainly_declarations|.
      t266 = t267.
      DATA t268 TYPE string.
      DATA(t269) = |Chain mainly declarations|.
      t268 = t269.
      DATA t270 TYPE string.
      DATA(t271) = |Chain mainly declarations, allows chaining for the configure|.
      t271 = t271 && |d statements, reports errors for other statements.|.
      t270 = t271.
      DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t272.
      DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t273.
      DATA(t274) = abap_true.
      IF t274 = abap_true.
        DATA(t275) = |\nhttps://docs.abapopenchecks.org/checks/23/\n\nhttps://help.sa|.
        t275 = t275 && |p.com/doc/abapdocu_latest_index_htm/latest/en-US/abenchained|.
        t275 = t275 && |_statements_guidl.html\n|.
        DATA(t276) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t276->has = abap_true.
        t276->value = t275.
        t273 = t276.
      ELSE.
        DATA t277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t277.
        t273 = t277.
      ENDIF.
      t272 = t273.
      DATA t278 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t278.
      DATA t279 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t279.
      DATA(t280) = abap_true.
      IF t280 = abap_true.
        DATA t281 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t282 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t283 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t283.
        t282 = t283.
        DATA(t284) = t282.
        DATA(t285) = |SingleFile|.
        t284->load( ).
        APPEND t285 TO t284->items.
        t284->save( ).
        DATA(t286) = t282.
        DATA(t287) = |Quickfix|.
        t286->load( ).
        APPEND t287 TO t286->items.
        t286->save( ).
        DATA(t288) = t282.
        t281 = t288.
        t279 = t281.
      ELSE.
        DATA t289 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t289.
        t279 = t289.
      ENDIF.
      t278 = t279.
      DATA t290 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t290.
      DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t291.
      DATA(t292) = abap_true.
      IF t292 = abap_true.
        DATA(t293) = |CALL METHOD: bar.|.
        DATA(t294) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t294->has = abap_true.
        t294->value = t293.
        t291 = t294.
      ELSE.
        DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t295.
        t291 = t295.
      ENDIF.
      t290 = t291.
      DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t296.
      DATA t297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t297.
      DATA(t298) = abap_true.
      IF t298 = abap_true.
        DATA(t299) = |CALL METHOD bar.|.
        DATA(t300) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t300->has = abap_true.
        t300->value = t299.
        t297 = t300.
      ELSE.
        DATA t301 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t301.
        t297 = t301.
      ENDIF.
      t296 = t297.
      DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t303.
      t302 = t303.
      DATA t304 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t305.
      t304 = t305.
      t265 = NEW zcl_lnt_irule_metadata( i_key = t266 i_title = t268 i_short_description = t270 i_bad_example = t290 i_good_example = t296 i_extended_information = t272 i_tags = t278 i_pragma = t302 i_pseudo_comment = t304 ).
      CREATE OBJECT t265->zlnt_view_ownkeys_b0e8086400eb.
      t265->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t306.
      IF t265->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t265->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t306 ).
      ENDIF.
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
      IF t265->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t265->zlnt_json_ownkeys_70e5fd461788->put( p0 = t313 p1 = t314 ).
      ENDIF.
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
      DATA(t328) = me->conf.
      t327 = t328->zlnt_view_read_sr_15c06369f827( ).
      DATA(t329) = t250.
      t259 = zcl_lnt_issue=>at_token( i_file = t260 i_token = t261 i_message_26cb = t263 i_key = t264 i_severity = t327 i_fix = t329 ).
      t258->load( ).
      APPEND t259 TO t258->items.
      t258->save( ).
      DATA t330 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t330.
      DATA(t331) = abap_true.
      IF t331 = abap_true.
        DATA t332 TYPE f.
        DATA t333 TYPE REF TO zcl_lnt_position.
        DATA t334 TYPE REF TO zcl_lnt_position.
        DATA t335 TYPE REF TO zcl_lnt_abstract_token.
        DATA t336 TYPE REF TO zcl_lnt_abstract_token.
        DATA t337 TYPE REF TO zcl_lnt_abstract_token.
        DATA t338 TYPE REF TO zcl_lnt_statement_node.
        DATA(t339) = t22.
        t338 = t339.
        DATA t340 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t341) = t338.
        t340 = t341->colon.
        t337 = t340.
        t336 = t337.
        t335 = t336.
        DATA t342 TYPE REF TO zcl_lnt_position.
        DATA(t343) = t335.
        t342 = t343->start.
        t334 = t342.
        t333 = t334.
        DATA t344 TYPE f.
        DATA(t345) = t333.
        t344 = t345->row.
        t332 = t344.
        DATA(t346) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t346->has = abap_true.
        t346->value = t332.
        t330 = t346.
      ELSE.
        DATA t347 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t347.
        t330 = t347.
      ENDIF.
      t18 = t330.
    ENDDO.
    DATA(t348) = t2.
    result = t348.

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
    DATA(t17) = t2.
    t16 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_class_data_begin ).
    t15 = t16.
    IF t16 = abap_false.
      DATA t18 TYPE abap_bool.
      DATA(t19) = t2.
      t18 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_class_data_end ).
      t15 = t18.
    ENDIF.
    t14 = t15.
    IF t15 = abap_false.
      DATA t20 TYPE abap_bool.
      DATA(t21) = t2.
      t20 = xsdbool( t21 IS BOUND AND t21 IS INSTANCE OF zcl_lnt_static_begin ).
      t14 = t20.
    ENDIF.
    t13 = t14.
    IF t14 = abap_false.
      DATA t22 TYPE abap_bool.
      DATA(t23) = t2.
      t22 = xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_static_end ).
      t13 = t22.
    ENDIF.
    t12 = t13.
    IF t13 = abap_false.
      DATA t24 TYPE abap_bool.
      DATA(t25) = t2.
      t24 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_constant_begin ).
      t12 = t24.
    ENDIF.
    t11 = t12.
    IF t12 = abap_false.
      DATA t26 TYPE abap_bool.
      DATA(t27) = t2.
      t26 = xsdbool( t27 IS BOUND AND t27 IS INSTANCE OF zcl_lnt_constant_end ).
      t11 = t26.
    ENDIF.
    t10 = t11.
    IF t11 = abap_false.
      DATA t28 TYPE abap_bool.
      DATA(t29) = t2.
      t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_type_begin ).
      t10 = t28.
    ENDIF.
    t9 = t10.
    IF t10 = abap_false.
      DATA t30 TYPE abap_bool.
      DATA(t31) = t2.
      t30 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_type_end ).
      t9 = t30.
    ENDIF.
    t8 = t9.
    IF t9 = abap_false.
      DATA t32 TYPE abap_bool.
      DATA(t33) = t2.
      t32 = xsdbool( t33 IS BOUND AND t33 IS INSTANCE OF zcl_lnt_type_enum_begin ).
      t8 = t32.
    ENDIF.
    t7 = t8.
    IF t8 = abap_false.
      DATA t34 TYPE abap_bool.
      DATA(t35) = t2.
      t34 = xsdbool( t35 IS BOUND AND t35 IS INSTANCE OF zcl_lnt_type_enum_end ).
      t7 = t34.
    ENDIF.
    t6 = t7.
    IF t7 = abap_false.
      DATA t36 TYPE abap_bool.
      DATA(t37) = t2.
      t36 = xsdbool( t37 IS BOUND AND t37 IS INSTANCE OF zcl_lnt_data_begin ).
      t6 = t36.
    ENDIF.
    t5 = t6.
    IF t6 = abap_false.
      DATA t38 TYPE abap_bool.
      DATA(t39) = t2.
      t38 = xsdbool( t39 IS BOUND AND t39 IS INSTANCE OF zcl_lnt_data_end ).
      t5 = t38.
    ENDIF.
    IF t5 = abap_true.
      DATA t40 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t40.
      result = t40.
      RETURN.
    ENDIF.
    DATA t41 TYPE string.
    DATA t42 TYPE string.
    DATA(t43) = t3.
    t42 = t43->concat_tokens( ).
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
    CLEAR t49.
    DATA(t50) = VALUE abap_bool( ).
    DATA t51 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t52) = t4.
    t51 = t52.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    t53 = t54.
    DATA(t55) = VALUE abap_bool( ).
    DATA(t56) = t51.
    IF t56 IS INITIAL.
      t55 = abap_true.
    ENDIF.
    t50 = t55.
    IF t50 = abap_true.
      DATA t57 TYPE REF TO zcl_lnt_position.
      DATA t58 TYPE REF TO zcl_lnt_statement_node.
      DATA(t59) = t3.
      t58 = t59.
      DATA t60 TYPE REF TO zcl_lnt_position.
      DATA t61 TYPE REF TO zcl_lnt_abstract_token.
      DATA t62 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t63) = t58.
      t62 = t63->get_first_token( ).
      t61 = t62.
      DATA t64 TYPE REF TO zcl_lnt_position.
      DATA(t65) = t61.
      t64 = t65->start.
      t60 = t64.
      t57 = t60.
      t49 = t57.
    ELSE.
      DATA t66 TYPE REF TO zcl_lnt_position.
      CLEAR t66.
      DATA t67 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t67.
      DATA t68 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t68.
      DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t70) = t3.
      t69 = t70->get_tokens( ).
      DATA t71 TYPE REF TO object.
      CLEAR t71.
      t69->load( ).
      CLEAR t71.
      READ TABLE t69->items INDEX 2 INTO t71.
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t72.
      CLEAR t68.
      IF t71 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t72 ?= t71.
        DATA t73 TYPE REF TO object.
        t73 = t72->as_ref( ).
        t68 ?= t73.
      ELSE.
        t68 ?= t71.
      ENDIF.
      t67 = t68.
      DATA t74 TYPE REF TO zcl_lnt_position.
      DATA(t75) = t67.
      t74 = t75->start.
      t66 = t74.
      t49 = t66.
    ENDIF.
    DATA t76 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t77 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t78) = t1.
    DATA(t79) = t49.
    DATA t80 TYPE REF TO zcl_lnt_position.
    DATA t81 TYPE REF TO zcl_lnt_statement_node.
    DATA(t82) = t3.
    t81 = t82.
    DATA t83 TYPE REF TO zcl_lnt_position.
    DATA t84 TYPE REF TO zcl_lnt_abstract_token.
    DATA t85 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t86) = t81.
    t85 = t86->get_last_token( ).
    t84 = t85.
    DATA t87 TYPE REF TO zcl_lnt_position.
    DATA t88 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t89) = t84.
    t88 = t89.
    DATA t90 TYPE REF TO zcl_lnt_position.
    DATA t91 TYPE f.
    DATA t92 TYPE REF TO zcl_lnt_position.
    DATA t93 TYPE REF TO zcl_lnt_position.
    DATA(t94) = t88.
    t93 = t94->start.
    t92 = t93.
    DATA t95 TYPE f.
    DATA(t96) = t92.
    t95 = t96->row.
    t91 = t95.
    DATA t97 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t98 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t99 TYPE REF TO zcl_lnt_position.
    DATA t100 TYPE REF TO zcl_lnt_position.
    DATA(t101) = t88.
    t100 = t101->start.
    t99 = t100.
    DATA t102 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t103) = t99.
    t102 = t103->col.
    t98 = t102.
    DATA t104 TYPE f.
    DATA t105 TYPE i.
    DATA t106 TYPE string.
    DATA(t107) = t88.
    t106 = t107->str.
    DATA(t108) = strlen( t106 ).
    t105 = t108.
    t104 = t105.
    DATA(t109) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t109->has = abap_true.
    t109->value = t104.
    t97 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t98 right = t109 op = `+` ).
    t90 = NEW zcl_lnt_position( i_row = t91 i_col = t97 ).
    t87 = t90.
    t83 = t87.
    t80 = t83.
    DATA(t110) = t41.
    t77 = zcl_lnt_edit_helper=>replace_range( i_file = t78 i_start = t79 i_end = t80 i_text = t110 ).
    t76 = t77.
    DATA(t111) = VALUE abap_bool( ).
    DATA t112 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t113) = t4.
    t112 = t113.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t115.
    t114 = t115.
    DATA(t116) = VALUE abap_bool( ).
    DATA(t117) = VALUE abap_bool( ).
    DATA(t118) = t112.
    IF t118 IS INITIAL.
      t117 = abap_true.
    ENDIF.
    t116 = xsdbool( t117 = abap_false ).
    t111 = t116.
    IF t111 = abap_true.
      DATA t119 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA(t120) = t76.
      DATA t121 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA(t122) = t4.
      t121 = t122.
      t119 = zcl_lnt_edit_helper=>merge( i_fix1 = t120 i_fix2 = t121 ).
      t76 = t119.
    ENDIF.
    DATA t123 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t123.
    DATA(t124) = abap_true.
    IF t124 = abap_true.
      DATA(t125) = t76.
      t123 = t125.
    ELSE.
      DATA t126 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t126.
      t123 = t126.
    ENDIF.
    result = t123.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_chn_mnly_dclrtns_cnf( me->g_c_i_s_r_ch_mn_dc_ts_ch_mn_dc( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_chn_mnly_dclrtns_cnf( me->g_c_i_s_r_ch_mn_dc_ts_ch_mn_dc( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_chn_mnly_dclrtns_cnf.
    CLEAR t1.
    CLEAR t1.
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
          CLEAR t2.
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
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_ch_mn_dc_ts_ch_mn_dc( i_file = i_file ) ).
    result = t1.

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
