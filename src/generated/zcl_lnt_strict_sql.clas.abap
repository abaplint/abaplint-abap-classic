* TS: src/rules/strict_sql.ts:15:1 StrictSQL
CLASS zcl_lnt_strict_sql DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_strict_sql_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_st_sq_ts_st_sql RETURNING VALUE(result) TYPE REF TO zcl_lnt_strict_sql_conf.
    METHODS st_cn_in_sr_rl_st_sq_ts_st_sql IMPORTING i_conf TYPE REF TO zcl_lnt_strict_sql_conf.
    METHODS run_parsed REDEFINITION.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_strict_sql IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_strict_sql_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |strict_sql|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Strict SQL|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Strict SQL|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
      t11 = t11 && |-US/abapinto_clause.html\n\nhttps://help.sap.com/doc/abapdocu_|.
      t11 = t11 && |latest_index_htm/latest/en-US/ABENABAP_SQL_STRICT_MODES.html|.
      t11 = t11 && |\n\nAlso see separate rule sql_escape_host_variables\n\nActivate|.
      t11 = t11 && |s from v750 and up|.
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
      DATA(t21) = |Upport|.
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
      DATA(t29) = |SELECT * FROM ztabl INTO TABLE @rt_content WHERE type = @iv_|.
      t29 = t29 && |type ORDER BY PRIMARY KEY.|.
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
      DATA(t35) = |SELECT * FROM ztabl WHERE type = @iv_type ORDER BY PRIMARY K|.
      t35 = t35 && |EY INTO TABLE @rt_content.|.
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

  METHOD gt_cn_in_sr_rl_st_sq_ts_st_sql.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_st_sq_ts_st_sql.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE string.
    DATA t6 TYPE string.
    DATA(t7) = t2.
    t6 = t7->get_type( ).
    t5 = t6.
    DATA t8 TYPE abap_bool.
    DATA t9 TYPE abap_bool.
    DATA(t10) = t5.
    DATA(t11) = |INTF|.
    t9 = xsdbool( t10 = t11 ).
    t8 = t9.
    IF t9 = abap_false.
      DATA t12 TYPE abap_bool.
      DATA(t13) = t5.
      DATA(t14) = |TYPE|.
      t12 = xsdbool( t13 = t14 ).
      t8 = t12.
    ENDIF.
    IF t8 = abap_true.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t15.
      result = t15.
      RETURN.
    ENDIF.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = VALUE abap_bool( ).
    DATA(t18) = VALUE abap_bool( ).
    DATA t19 TYPE REF TO zcl_lnt_abap_release.
    DATA t20 TYPE REF TO zif_lnt_configuration.
    DATA(t21) = me->reg.
    t20 = t21->get_config( ).
    t19 = t20->get_release( ).
    DATA t22 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t22.
    DATA t23 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t24.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t24 = zcl_lnt_version_module=>release_b8cd.
    DATA(t25) = |v750|.
    t23 = t24->get( p0 = t25 ).
    t22 = t23.
    t18 = zcl_lnt_version_module=>release_at_least( i_running = t19 i_required = t22 ).
    t17 = xsdbool( t18 = abap_false ).
    t16 = t17.
    IF t17 = abap_true.
      DATA t26 TYPE abap_bool.
      DATA t27 TYPE string.
      DATA t28 TYPE REF TO zif_lnt_configuration.
      DATA(t29) = me->reg.
      t28 = t29->get_config( ).
      t27 = t28->get_language_version( ).
      DATA(t30) = |Cloud|.
      t26 = xsdbool( t27 <> t30 ).
      t16 = t26.
    ENDIF.
    IF t16 = abap_true.
      DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t31.
      result = t31.
      RETURN.
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t33 TYPE REF TO zcl_lnt_abap_file.
    DATA(t34) = t1.
    t33 = t34.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t36) = t33.
    t35 = t36->statements.
    t32 = t35.
    DATA t37 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t37.
    DATA t38 TYPE REF TO object.
    CLEAR t38.
    DATA(t39) = VALUE i( ).
    DO.
      t32->load( ).
      IF t39 >= lines( t32->items ).
        EXIT.
      ENDIF.
      CLEAR t38.
      READ TABLE t32->items INDEX t39 + 1 INTO t38.
      t39 = t39 + 1.
      DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t40.
      CLEAR t37.
      IF t38 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t40 ?= t38.
        DATA t41 TYPE REF TO object.
        t41 = t40->as_ref( ).
        t37 ?= t41.
      ELSE.
        t37 ?= t38.
      ENDIF.
      DATA t42 TYPE abap_bool.
      DATA t43 TYPE abap_bool.
      DATA t44 TYPE REF TO zif_lnt_statement.
      DATA(t45) = t37.
      t44 = t45->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t43 = xsdbool( t44 IS BOUND AND t44 IS INSTANCE OF zcl_lnt_st_statem_select ).
      t42 = t43.
      IF t43 = abap_false.
        DATA t46 TYPE abap_bool.
        DATA t47 TYPE REF TO zif_lnt_statement.
        DATA(t48) = t37.
        t47 = t48->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t46 = xsdbool( t47 IS BOUND AND t47 IS INSTANCE OF zcl_lnt_st_select_loop ).
        t42 = t46.
      ENDIF.
      IF t42 = abap_true.
        DATA t49 TYPE REF TO zcl_lnt_expression_node.
        DATA t50 TYPE REF TO zcl_lnt_expression_node.
        DATA(t51) = t37.
        DATA(t52) = zlnt_runtime_desc_78196487750d=>zlnt_member_d262_9ca55688cba0.
        t50 = t51->find_direct_expression( i_type_9913 = t52 ).
        t49 = t50.
        DATA t53 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t53.
        DATA t54 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t54.
        DATA t55 TYPE REF TO zcl_lnt_expression_node.
        DATA(t56) = t49.
        t55 = t56.
        DATA t57 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t57.
        DATA(t58) = VALUE abap_bool( ).
        DATA(t59) = t55.
        IF t59 IS INITIAL.
          t58 = abap_true.
        ENDIF.
        IF t58 = abap_true.
          DATA t60 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t60.
          t57 = t60.
        ELSE.
          DATA t61 TYPE REF TO zcl_lnt_expression_node.
          DATA t62 TYPE REF TO zcl_lnt_expression_node.
          DATA(t63) = t55.
          t62 = t63.
          DATA(t64) = zlnt_runtime_desc_78196487750d=>zlnt_member_d263_a6b95897eaba.
          t61 = t62->find_direct_expression( i_type_9913 = t64 ).
          t57 = t61.
        ENDIF.
        t54 = t57.
        t53 = t54.
        DATA t65 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t65.
        DATA t66 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t66.
        DATA t67 TYPE REF TO zcl_lnt_expression_node.
        DATA(t68) = t49.
        t67 = t68.
        DATA t69 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t69.
        DATA(t70) = VALUE abap_bool( ).
        DATA(t71) = t67.
        IF t71 IS INITIAL.
          t70 = abap_true.
        ENDIF.
        IF t70 = abap_true.
          DATA t72 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t72.
          t69 = t72.
        ELSE.
          DATA t73 TYPE REF TO zcl_lnt_expression_node.
          DATA t74 TYPE REF TO zcl_lnt_expression_node.
          DATA(t75) = t67.
          t74 = t75.
          DATA(t76) = zlnt_runtime_desc_78196487750d=>zlnt_member_d261_e2dcf59482ac.
          t73 = t74->find_direct_expression( i_type_9913 = t76 ).
          t69 = t73.
        ENDIF.
        t66 = t69.
        t65 = t66.
        DATA t77 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t77.
        DATA t78 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t78.
        DATA t79 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t79.
        DATA t80 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t80.
        DATA t81 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t81.
        DATA t82 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t82.
        DATA t83 TYPE REF TO zcl_lnt_expression_node.
        DATA(t84) = t49.
        t83 = t84.
        DATA t85 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t85.
        DATA(t86) = VALUE abap_bool( ).
        DATA(t87) = t83.
        IF t87 IS INITIAL.
          t86 = abap_true.
        ENDIF.
        IF t86 = abap_true.
          DATA t88 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t88.
          t85 = t88.
        ELSE.
          DATA t89 TYPE REF TO zcl_lnt_expression_node.
          DATA t90 TYPE REF TO zcl_lnt_expression_node.
          DATA(t91) = t83.
          t90 = t91.
          DATA(t92) = zlnt_runtime_desc_78196487750d=>zlnt_member_d258_47daac7ded2f.
          t89 = t90->find_direct_expression( i_type_9913 = t92 ).
          t85 = t89.
        ENDIF.
        t82 = t85.
        t81 = t82.
        DATA t93 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t93.
        DATA t94 TYPE abap_bool.
        DATA(t95) = t81.
        t94 = xsdbool( t95 IS BOUND ).
        IF t94 = abap_true.
          DATA(t96) = t81.
          t93 = t96.
        ELSE.
          DATA t97 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t97.
          DATA t98 TYPE REF TO zcl_lnt_expression_node.
          DATA(t99) = t49.
          t98 = t99.
          DATA t100 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t100.
          DATA(t101) = VALUE abap_bool( ).
          DATA(t102) = t98.
          IF t102 IS INITIAL.
            t101 = abap_true.
          ENDIF.
          IF t101 = abap_true.
            DATA t103 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t103.
            t100 = t103.
          ELSE.
            DATA t104 TYPE REF TO zcl_lnt_expression_node.
            DATA t105 TYPE REF TO zcl_lnt_expression_node.
            DATA(t106) = t98.
            t105 = t106.
            DATA(t107) = zlnt_runtime_desc_78196487750d=>zlnt_member_d259_29e6bae3a66c.
            t104 = t105->find_direct_expression( i_type_9913 = t107 ).
            t100 = t104.
          ENDIF.
          t97 = t100.
          t93 = t97.
        ENDIF.
        t80 = t93.
        t79 = t80.
        DATA t108 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t108.
        DATA t109 TYPE abap_bool.
        DATA(t110) = t79.
        t109 = xsdbool( t110 IS BOUND ).
        IF t109 = abap_true.
          DATA(t111) = t79.
          t108 = t111.
        ELSE.
          DATA t112 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t112.
          DATA t113 TYPE REF TO zcl_lnt_expression_node.
          DATA(t114) = t49.
          t113 = t114.
          DATA t115 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t115.
          DATA(t116) = VALUE abap_bool( ).
          DATA(t117) = t113.
          IF t117 IS INITIAL.
            t116 = abap_true.
          ENDIF.
          IF t116 = abap_true.
            DATA t118 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t118.
            t115 = t118.
          ELSE.
            DATA t119 TYPE REF TO zcl_lnt_expression_node.
            DATA t120 TYPE REF TO zcl_lnt_expression_node.
            DATA(t121) = t113.
            t120 = t121.
            DATA(t122) = zlnt_runtime_desc_78196487750d=>zlnt_member_d257_509c7b1190c0.
            t119 = t120->find_direct_expression( i_type_9913 = t122 ).
            t115 = t119.
          ENDIF.
          t112 = t115.
          t108 = t112.
        ENDIF.
        t78 = t108.
        t77 = t78.
        DATA(t123) = VALUE abap_bool( ).
        DATA(t124) = VALUE abap_bool( ).
        DATA t125 TYPE REF TO zcl_lnt_expression_node.
        DATA(t126) = t77.
        t125 = t126.
        DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t128.
        t127 = t128.
        DATA(t129) = VALUE abap_bool( ).
        DATA(t130) = t125.
        IF t130 IS INITIAL.
          t129 = abap_true.
        ENDIF.
        t124 = t129.
        t123 = t124.
        IF t124 = abap_false.
          DATA(t131) = VALUE abap_bool( ).
          DATA t132 TYPE REF TO zcl_lnt_expression_node.
          DATA(t133) = t53.
          t132 = t133.
          DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t135.
          t134 = t135.
          DATA(t136) = VALUE abap_bool( ).
          DATA(t137) = t132.
          IF t137 IS INITIAL.
            t136 = abap_true.
          ENDIF.
          t131 = t136.
          t123 = t131.
        ENDIF.
        IF t123 = abap_true.
          CONTINUE.
        ELSE.
          DATA(t138) = VALUE abap_bool( ).
          DATA t139 TYPE REF TO zcl_lnt_position.
          DATA t140 TYPE REF TO zcl_lnt_position.
          DATA t141 TYPE REF TO zcl_lnt_abstract_token.
          DATA t142 TYPE REF TO zcl_lnt_abstract_token.
          DATA t143 TYPE REF TO zcl_lnt_expression_node.
          DATA(t144) = t53.
          t143 = t144.
          t142 = t143->get_first_token( ).
          t141 = t142.
          DATA t145 TYPE REF TO zcl_lnt_position.
          DATA(t146) = t141.
          t145 = t146->start.
          t140 = t145.
          t139 = t140.
          DATA t147 TYPE REF TO zcl_lnt_position.
          DATA t148 TYPE REF TO zcl_lnt_position.
          DATA t149 TYPE REF TO zcl_lnt_abstract_token.
          DATA t150 TYPE REF TO zcl_lnt_abstract_token.
          DATA t151 TYPE REF TO zcl_lnt_expression_node.
          DATA(t152) = t77.
          t151 = t152.
          t150 = t151->get_first_token( ).
          t149 = t150.
          DATA t153 TYPE REF TO zcl_lnt_position.
          DATA(t154) = t149.
          t153 = t154->start.
          t148 = t153.
          t147 = t148.
          DATA t155 TYPE abap_bool.
          DATA t156 TYPE abap_bool.
          DATA t157 TYPE f.
          DATA(t158) = t139.
          t157 = t158->row.
          DATA t159 TYPE f.
          DATA(t160) = t147.
          t159 = t160->row.
          t156 = xsdbool( t157 < t159 ).
          t155 = t156.
          IF t156 = abap_false.
            DATA t161 TYPE abap_bool.
            DATA t162 TYPE abap_bool.
            DATA t163 TYPE f.
            DATA(t164) = t139.
            t163 = t164->row.
            DATA t165 TYPE f.
            DATA(t166) = t147.
            t165 = t166->row.
            t162 = xsdbool( t163 = t165 ).
            t161 = t162.
            IF t162 = abap_true.
              DATA t167 TYPE abap_bool.
              DATA t168 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              DATA(t169) = t139.
              t168 = t169->col.
              DATA t170 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              DATA(t171) = t147.
              t170 = t171->col.
              t167 = zlnt_runtime_numb_290eb04a9758=>compare( left = t168 right = t170 op = `<` ).
              t161 = t167.
            ENDIF.
            t155 = t161.
          ENDIF.
          t138 = t155.
          IF t138 = abap_true.
            CONTINUE.
          ENDIF.
        ENDIF.
        DATA t172 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t173 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA(t174) = t1.
        DATA t175 TYPE REF TO zcl_lnt_position.
        DATA t176 TYPE REF TO zcl_lnt_abstract_token.
        DATA t177 TYPE REF TO zcl_lnt_abstract_token.
        DATA t178 TYPE REF TO zcl_lnt_expression_node.
        DATA(t179) = t77.
        t178 = t179.
        t177 = t178->get_first_token( ).
        t176 = t177.
        DATA t180 TYPE REF TO zcl_lnt_position.
        DATA(t181) = t176.
        t180 = t181->start.
        t175 = t180.
        DATA t182 TYPE REF TO zcl_lnt_position.
        DATA t183 TYPE REF TO zcl_lnt_abstract_token.
        DATA t184 TYPE REF TO zcl_lnt_abstract_token.
        DATA t185 TYPE REF TO zcl_lnt_expression_node.
        DATA(t186) = t77.
        t185 = t186.
        t184 = t185->get_last_token( ).
        t183 = t184.
        DATA t187 TYPE REF TO zcl_lnt_position.
        DATA t188 TYPE f.
        DATA t189 TYPE REF TO zcl_lnt_position.
        DATA t190 TYPE REF TO zcl_lnt_position.
        DATA(t191) = t183.
        t190 = t191->start.
        t189 = t190.
        DATA t192 TYPE f.
        DATA(t193) = t189.
        t192 = t193->row.
        t188 = t192.
        DATA t194 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t195 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t196 TYPE REF TO zcl_lnt_position.
        DATA t197 TYPE REF TO zcl_lnt_position.
        DATA(t198) = t183.
        t197 = t198->start.
        t196 = t197.
        DATA t199 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t200) = t196.
        t199 = t200->col.
        t195 = t199.
        DATA t201 TYPE f.
        DATA t202 TYPE i.
        DATA t203 TYPE string.
        DATA(t204) = t183.
        t203 = t204->str.
        DATA(t205) = strlen( t203 ).
        t202 = t205.
        t201 = t202.
        DATA(t206) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t206->has = abap_true.
        t206->value = t201.
        t194 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t195 right = t206 op = `+` ).
        t187 = NEW zcl_lnt_position( i_row = t188 i_col = t194 ).
        t182 = t187.
        t173 = zcl_lnt_edit_helper=>delete_range( i_file = t174 i_start = t175 i_end = t182 ).
        t172 = t173.
        DATA t207 TYPE REF TO zcl_lnt_abstract_token.
        DATA t208 TYPE REF TO zcl_lnt_abstract_token.
        DATA t209 TYPE REF TO zcl_lnt_expression_node.
        DATA(t210) = t53.
        t209 = t210.
        t208 = t209->get_last_token( ).
        t207 = t208.
        DATA t211 TYPE abap_bool.
        DATA t212 TYPE abap_bool.
        DATA(t213) = t65.
        t212 = xsdbool( t213 IS BOUND ).
        t211 = t212.
        IF t212 = abap_true.
          DATA t214 TYPE abap_bool.
          DATA t215 TYPE REF TO zcl_lnt_position.
          DATA t216 TYPE REF TO zcl_lnt_abstract_token.
          DATA t217 TYPE REF TO zcl_lnt_abstract_token.
          DATA t218 TYPE REF TO zcl_lnt_expression_node.
          DATA(t219) = t65.
          t218 = t219.
          t217 = t218->get_last_token( ).
          t216 = t217.
          DATA t220 TYPE REF TO zcl_lnt_position.
          DATA t221 TYPE f.
          DATA t222 TYPE REF TO zcl_lnt_position.
          DATA t223 TYPE REF TO zcl_lnt_position.
          DATA(t224) = t216.
          t223 = t224->start.
          t222 = t223.
          DATA t225 TYPE f.
          DATA(t226) = t222.
          t225 = t226->row.
          t221 = t225.
          DATA t227 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t228 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t229 TYPE REF TO zcl_lnt_position.
          DATA t230 TYPE REF TO zcl_lnt_position.
          DATA(t231) = t216.
          t230 = t231->start.
          t229 = t230.
          DATA t232 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t233) = t229.
          t232 = t233->col.
          t228 = t232.
          DATA t234 TYPE f.
          DATA t235 TYPE i.
          DATA t236 TYPE string.
          DATA(t237) = t216.
          t236 = t237->str.
          DATA(t238) = strlen( t236 ).
          t235 = t238.
          t234 = t235.
          DATA(t239) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t239->has = abap_true.
          t239->value = t234.
          t227 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t228 right = t239 op = `+` ).
          t220 = NEW zcl_lnt_position( i_row = t221 i_col = t227 ).
          t215 = t220.
          DATA t240 TYPE REF TO zcl_lnt_position.
          DATA t241 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t242) = t207.
          t241 = t242.
          DATA t243 TYPE REF TO zcl_lnt_position.
          DATA t244 TYPE f.
          DATA t245 TYPE REF TO zcl_lnt_position.
          DATA t246 TYPE REF TO zcl_lnt_position.
          DATA(t247) = t241.
          t246 = t247->start.
          t245 = t246.
          DATA t248 TYPE f.
          DATA(t249) = t245.
          t248 = t249->row.
          t244 = t248.
          DATA t250 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t251 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t252 TYPE REF TO zcl_lnt_position.
          DATA t253 TYPE REF TO zcl_lnt_position.
          DATA(t254) = t241.
          t253 = t254->start.
          t252 = t253.
          DATA t255 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t256) = t252.
          t255 = t256->col.
          t251 = t255.
          DATA t257 TYPE f.
          DATA t258 TYPE i.
          DATA t259 TYPE string.
          DATA(t260) = t241.
          t259 = t260->str.
          DATA(t261) = strlen( t259 ).
          t258 = t261.
          t257 = t258.
          DATA(t262) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t262->has = abap_true.
          t262->value = t257.
          t250 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t251 right = t262 op = `+` ).
          t243 = NEW zcl_lnt_position( i_row = t244 i_col = t250 ).
          t240 = t243.
          t214 = t215->is_after( i_p = t240 ).
          t211 = t214.
        ENDIF.
        IF t211 = abap_true.
          DATA t263 TYPE REF TO zcl_lnt_abstract_token.
          DATA t264 TYPE REF TO zcl_lnt_expression_node.
          DATA(t265) = t65.
          t264 = t265.
          t263 = t264->get_last_token( ).
          t207 = t263.
        ENDIF.
        DATA t266 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t267 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA(t268) = t1.
        DATA t269 TYPE REF TO zcl_lnt_position.
        DATA t270 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t271) = t207.
        t270 = t271.
        DATA t272 TYPE REF TO zcl_lnt_position.
        DATA t273 TYPE f.
        DATA t274 TYPE REF TO zcl_lnt_position.
        DATA t275 TYPE REF TO zcl_lnt_position.
        DATA(t276) = t270.
        t275 = t276->start.
        t274 = t275.
        DATA t277 TYPE f.
        DATA(t278) = t274.
        t277 = t278->row.
        t273 = t277.
        DATA t279 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t280 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t281 TYPE REF TO zcl_lnt_position.
        DATA t282 TYPE REF TO zcl_lnt_position.
        DATA(t283) = t270.
        t282 = t283->start.
        t281 = t282.
        DATA t284 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t285) = t281.
        t284 = t285->col.
        t280 = t284.
        DATA t286 TYPE f.
        DATA t287 TYPE i.
        DATA t288 TYPE string.
        DATA(t289) = t270.
        t288 = t289->str.
        DATA(t290) = strlen( t288 ).
        t287 = t290.
        t286 = t287.
        DATA(t291) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t291->has = abap_true.
        t291->value = t286.
        t279 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t280 right = t291 op = `+` ).
        t272 = NEW zcl_lnt_position( i_row = t273 i_col = t279 ).
        t269 = t272.
        DATA t292 TYPE string.
        DATA(t293) = | |.
        DATA t294 TYPE string.
        DATA t295 TYPE REF TO zcl_lnt_expression_node.
        DATA(t296) = t77.
        t295 = t296.
        t294 = t295->concat_tokens( ).
        DATA(t297) = strlen( t293 ).
        t292 = |{ t293 }{ t294 }|.
        t267 = zcl_lnt_edit_helper=>insert_at( i_file = t268 i_pos = t269 i_text = t292 ).
        t266 = t267.
        DATA t298 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t299 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA(t300) = t266.
        DATA(t301) = t172.
        t299 = zcl_lnt_edit_helper=>merge( i_fix1 = t300 i_fix2 = t301 ).
        t298 = t299.
        DATA t302 TYPE string.
        DATA(t303) = |INTO/APPENDING must be last in strict SQL|.
        t302 = t303.
        DATA t304 TYPE REF TO zcl_lnt_issue.
        CLEAR t304.
        DATA t305 TYPE REF TO zcl_lnt_issue.
        CLEAR t305.
        DATA(t306) = t1.
        DATA t307 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t308) = t37.
        t307 = t308->get_first_token( ).
        DATA(t309) = t302.
        DATA(t310) = VALUE string( ).
        DATA t311 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t311.
        DATA t312 TYPE string.
        DATA(t313) = |strict_sql|.
        t312 = t313.
        DATA t314 TYPE string.
        DATA(t315) = |Strict SQL|.
        t314 = t315.
        DATA t316 TYPE string.
        DATA(t317) = |Strict SQL|.
        t316 = t317.
        DATA t318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t318.
        DATA t319 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t319.
        DATA(t320) = abap_true.
        IF t320 = abap_true.
          DATA(t321) = |https://help.sap.com/doc/abapdocu_latest_index_htm/latest/en|.
          t321 = t321 && |-US/abapinto_clause.html\n\nhttps://help.sap.com/doc/abapdocu_|.
          t321 = t321 && |latest_index_htm/latest/en-US/ABENABAP_SQL_STRICT_MODES.html|.
          t321 = t321 && |\n\nAlso see separate rule sql_escape_host_variables\n\nActivate|.
          t321 = t321 && |s from v750 and up|.
          DATA(t322) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t322->has = abap_true.
          t322->value = t321.
          t319 = t322.
        ELSE.
          DATA t323 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t323.
          t319 = t323.
        ENDIF.
        t318 = t319.
        DATA t324 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t324.
        DATA t325 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t325.
        DATA(t326) = abap_true.
        IF t326 = abap_true.
          DATA t327 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t328 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t329 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t329.
          t328 = t329.
          DATA(t330) = t328.
          DATA(t331) = |Upport|.
          t330->load( ).
          APPEND t331 TO t330->items.
          t330->save( ).
          DATA(t332) = t328.
          DATA(t333) = |Quickfix|.
          t332->load( ).
          APPEND t333 TO t332->items.
          t332->save( ).
          DATA(t334) = t328.
          t327 = t334.
          t325 = t327.
        ELSE.
          DATA t335 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t335.
          t325 = t335.
        ENDIF.
        t324 = t325.
        DATA t336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t336.
        DATA t337 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t337.
        DATA(t338) = abap_true.
        IF t338 = abap_true.
          DATA(t339) = |SELECT * FROM ztabl INTO TABLE @rt_content WHERE type = @iv_|.
          t339 = t339 && |type ORDER BY PRIMARY KEY.|.
          DATA(t340) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t340->has = abap_true.
          t340->value = t339.
          t337 = t340.
        ELSE.
          DATA t341 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t341.
          t337 = t341.
        ENDIF.
        t336 = t337.
        DATA t342 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t342.
        DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t343.
        DATA(t344) = abap_true.
        IF t344 = abap_true.
          DATA(t345) = |SELECT * FROM ztabl WHERE type = @iv_type ORDER BY PRIMARY K|.
          t345 = t345 && |EY INTO TABLE @rt_content.|.
          DATA(t346) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t346->has = abap_true.
          t346->value = t345.
          t343 = t346.
        ELSE.
          DATA t347 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t347.
          t343 = t347.
        ENDIF.
        t342 = t343.
        DATA t348 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t349 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t349.
        t348 = t349.
        DATA t350 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t351.
        t350 = t351.
        t311 = NEW zcl_lnt_irule_metadata( i_key = t312 i_title = t314 i_short_description = t316 i_bad_example = t336 i_good_example = t342 i_extended_information = t318 i_tags = t324 i_pragma = t348 i_pseudo_comment = t350 ).
        CREATE OBJECT t311->zlnt_view_ownkeys_b0e8086400eb.
        t311->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t352.
        IF t311->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t311->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t352 ).
        ENDIF.
        DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t353.
        IF t311->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t311->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t353 ).
        ENDIF.
        DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t354.
        IF t311->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t311->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t354 ).
        ENDIF.
        DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t355.
        IF t311->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t311->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t355 ).
        ENDIF.
        DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t356.
        IF t311->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t311->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t356 ).
        ENDIF.
        DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t357.
        IF t311->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t311->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t357 ).
        ENDIF.
        DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t358.
        IF t311->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t311->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t358 ).
        ENDIF.
        CREATE OBJECT t311->zlnt_json_ownkeys_70e5fd461788.
        t311->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t359) = |key|.
        DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t360.
        IF t311->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t311->zlnt_json_ownkeys_70e5fd461788->put( p0 = t359 p1 = t360 ).
        ENDIF.
        DATA(t361) = |title|.
        DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t362.
        IF t311->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t311->zlnt_json_ownkeys_70e5fd461788->put( p0 = t361 p1 = t362 ).
        ENDIF.
        DATA(t363) = |shortDescription|.
        DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t364.
        IF t311->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t311->zlnt_json_ownkeys_70e5fd461788->put( p0 = t363 p1 = t364 ).
        ENDIF.
        DATA(t365) = |extendedInformation|.
        DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t366.
        IF t311->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t311->zlnt_json_ownkeys_70e5fd461788->put( p0 = t365 p1 = t366 ).
        ENDIF.
        DATA(t367) = |tags|.
        DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t368.
        IF t311->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t311->zlnt_json_ownkeys_70e5fd461788->put( p0 = t367 p1 = t368 ).
        ENDIF.
        DATA(t369) = |badExample|.
        DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t370.
        IF t311->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t311->zlnt_json_ownkeys_70e5fd461788->put( p0 = t369 p1 = t370 ).
        ENDIF.
        DATA(t371) = |goodExample|.
        DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t372.
        IF t311->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t311->zlnt_json_ownkeys_70e5fd461788->put( p0 = t371 p1 = t372 ).
        ENDIF.
        t310 = t311->key.
        DATA t373 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t374) = me->conf.
        t373 = t374->zlnt_view_read_sr_15c06369f827( ).
        DATA t375 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t375.
        DATA(t376) = abap_true.
        IF t376 = abap_true.
          DATA(t377) = t298.
          t375 = t377.
        ELSE.
          DATA t378 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t378.
          t375 = t378.
        ENDIF.
        t305 = zcl_lnt_issue=>at_token( i_file = t306 i_token = t307 i_message_26cb = t309 i_key = t310 i_severity = t373 i_fix = t375 ).
        t304 = t305.
        DATA(t379) = t3.
        DATA(t380) = t304.
        t379->load( ).
        APPEND t380 TO t379->items.
        t379->save( ).
      ENDIF.
    ENDDO.
    DATA(t381) = t3.
    result = t381.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_strict_sql_conf( me->gt_cn_in_sr_rl_st_sq_ts_st_sql( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_strict_sql_conf( me->gt_cn_in_sr_rl_st_sq_ts_st_sql( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_strict_sql_conf.
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
        t1 = NEW zcl_lnt_strict_sql_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_st_sq_ts_st_sql( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1718_b05ac790f903.
  ENDMETHOD.
ENDCLASS.
