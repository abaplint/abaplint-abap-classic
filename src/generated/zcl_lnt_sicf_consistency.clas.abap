* TS: src/rules/sicf_consistency.ts:17:1 SICFConsistency
CLASS zcl_lnt_sicf_consistency DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA conf TYPE REF TO zcl_lnt_sicf_consistency_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS gt_cn_in_sr_rl_sc_cn_ts_sc_cns RETURNING VALUE(result) TYPE REF TO zcl_lnt_sicf_consistency_conf.
    METHODS st_cn_in_sr_rl_sc_cn_ts_sc_cns IMPORTING i_conf TYPE REF TO zcl_lnt_sicf_consistency_conf.
    METHODS in_in_sr_rl_scf_cns_ts_scf_cns IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_sicf_consistency.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_implementing IMPORTING i_def TYPE REF TO zcl_lnt_info_class_definition RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sicf_consistency IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_sicf_consistency_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |sicf_consistency|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |SICF consistency|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks the validity of ICF services|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |* Class defined in handler must exist\n* Class must not have |.
      t11 = t11 && |any syntax errors\n* Class must implement interface IF_HTTP_E|.
      t11 = t11 && |XTENSION|.
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
    DATA t14 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t15.
    t14 = t15.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    t16 = t17.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t19.
    t18 = t19.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    t22 = t23.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t14 i_good_example = t16 i_extended_information = t8 i_tags = t18 i_pragma = t20 i_pseudo_comment = t22 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t24 ).
    ENDIF.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t25 ).
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t26 ).
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t27 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t28) = |key|.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t28 p1 = t29 ).
    ENDIF.
    DATA(t30) = |title|.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t30 p1 = t31 ).
    ENDIF.
    DATA(t32) = |shortDescription|.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t32 p1 = t33 ).
    ENDIF.
    DATA(t34) = |extendedInformation|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_sc_cn_ts_sc_cns.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_sc_cn_ts_sc_cns.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t6) = me->conf.
    t5 = t6->zlnt_view_read_sr_b7c3dc457f77( ).
    t4 = t5.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t4.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t3 = t9.
    IF t3 = abap_true.
      DATA(t11) = me->conf.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t12.
      DATA(t13) = abap_true.
      IF t13 = abap_true.
        DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t14.
        t12 = t14.
      ELSE.
        DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t15.
        t12 = t15.
      ENDIF.
      t11->zlnt_view_write_s_ee32e6506d75( p0 = t12 ).
    ENDIF.
  ENDMETHOD.

  METHOD in_in_sr_rl_scf_cns_ts_scf_cns.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA(t3) = me.
    result = t3.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    DATA(t6) = t1.
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_icfservice ).
    t4 = xsdbool( t5 = abap_false ).
    IF t4 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t7.
      result = t7.
      RETURN.
    ENDIF.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_icfservice.
    DATA t11 TYPE REF TO zcl_lnt_icfservice.
    DATA(t12) = t1.
    DATA t13 TYPE REF TO object.
    t13 = t12.
    t11 ?= t13.
    t10 = t11.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t14.
    DATA t15 TYPE REF TO zcl_lnt_iparse_result.
    DATA(t16) = t10.
    t15 = t16->pr_in_sr_ob_icf_srv_ts_icf_srv( ).
    DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t17.
    DATA t18 TYPE REF TO zcl_lnt_shape_c9bc8812.
    DATA t19 TYPE REF TO zcl_lnt_shape_c9bc8812.
    DATA(t20) = t10.
    t19 = t20->parsed_xml.
    t18 = t19.
    DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t21.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = t18.
    IF t23 IS INITIAL.
      t22 = abap_true.
    ENDIF.
    IF t22 = abap_true.
      DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t24.
      t21 = t24.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t26 TYPE REF TO zcl_lnt_shape_c9bc8812.
      DATA(t27) = t18.
      t26 = t27.
      t25 = t26->handlers.
      t21 = t25.
    ENDIF.
    t17 = t21.
    t14 = t17.
    t9 = t14.
    t8 = t9.
    DATA(t28) = VALUE abap_bool( ).
    DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t30) = t8.
    t29 = t30.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    t31 = t32.
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = t29.
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
    DATA t36 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t37) = t8.
    t36 = t37.
    DATA(t38) = VALUE string( ).
    t36->dense( ).
    DATA(t39) = VALUE i( ).
    DO.
      t36->load( ).
      IF t39 >= lines( t36->items ).
        EXIT.
      ENDIF.
      CLEAR t38.
      READ TABLE t36->items INDEX t39 + 1 INTO t38.
      IF t36->has( t39 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t39 = t39 + 1.
      DATA t40 TYPE REF TO zcl_lnt_class.
      CLEAR t40.
      DATA t41 TYPE REF TO zcl_lnt_class.
      CLEAR t41.
      DATA t42 TYPE REF TO zif_lnt_object.
      CLEAR t42.
      DATA(t43) = me->reg.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      DATA(t45) = abap_true.
      IF t45 = abap_true.
        DATA(t46) = |CLAS|.
        DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t47->has = abap_true.
        t47->value = t46.
        t44 = t47.
      ELSE.
        DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t48.
        t44 = t48.
      ENDIF.
      DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t49.
      DATA(t50) = abap_true.
      IF t50 = abap_true.
        DATA(t51) = t38.
        DATA(t52) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t52->has = abap_true.
        t52->value = t51.
        t49 = t52.
      ELSE.
        DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t53.
        t49 = t53.
      ENDIF.
      t42 = t43->get_object( i_type_9913 = t44 i_name = t49 ).
      DATA t54 TYPE REF TO object.
      t54 = t42.
      t41 ?= t54.
      t40 = t41.
      DATA(t55) = VALUE abap_bool( ).
      DATA t56 TYPE REF TO zcl_lnt_class.
      DATA(t57) = t40.
      t56 = t57.
      DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t59.
      t58 = t59.
      DATA(t60) = VALUE abap_bool( ).
      DATA(t61) = t56.
      IF t61 IS INITIAL.
        t60 = abap_true.
      ENDIF.
      t55 = t60.
      IF t55 = abap_true.
        DATA t62 TYPE abap_bool.
        DATA t63 TYPE abap_bool.
        DATA t64 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t65) = me->conf.
        t64 = t65->zlnt_view_read_sr_b7c3dc457f77( ).
        t63 = xsdbool( t64 IS BOUND ).
        t62 = t63.
        IF t63 = abap_true.
          DATA(t66) = VALUE abap_bool( ).
          DATA t67 TYPE abap_bool.
          DATA(t68) = abap_false.
          t67 = t68.
          DATA t69 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t70 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t71) = me->conf.
          t70 = t71->zlnt_view_read_sr_b7c3dc457f77( ).
          t69 = t70.
          DATA(t72) = VALUE string( ).
          t69->dense( ).
          DATA(t73) = VALUE i( ).
          DO.
            t69->load( ).
            IF t73 >= lines( t69->items ).
              EXIT.
            ENDIF.
            CLEAR t72.
            READ TABLE t69->items INDEX t73 + 1 INTO t72.
            IF t69->has( t73 ) = abap_false.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t73 = t73 + 1.
            DATA(t74) = VALUE abap_bool( ).
            DATA t75 TYPE string.
            DATA(t76) = t72.
            DATA(t77) = strlen( t76 ).
            t75 = t76.
            IF t75 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t75 TO UPPER CASE.
            ELSE.
              t75 = zlnt_runtime_uppe_91169605024d=>full( t75 ).
            ENDIF.
            DATA t78 TYPE string.
            DATA(t79) = t38.
            DATA(t80) = strlen( t79 ).
            t78 = t79.
            IF t78 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t78 TO UPPER CASE.
            ELSE.
              t78 = zlnt_runtime_uppe_91169605024d=>full( t78 ).
            ENDIF.
            t74 = xsdbool( t75 = t78 ).
            IF t74 = abap_true.
              DATA(t81) = abap_true.
              t67 = t81.
              EXIT.
            ENDIF.
          ENDDO.
          DATA(t82) = t67.
          t66 = t82.
          t62 = t66.
        ENDIF.
        IF t62 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t83 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        DATA t84 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t84.
        DATA t85 TYPE string.
        DATA t86 TYPE REF TO zcl_lnt_isyntax_settings.
        DATA t87 TYPE REF TO zif_lnt_configuration.
        DATA(t88) = me->reg.
        t87 = t88->get_config( ).
        t86 = t87->get_syntax_setttings( ).
        t85 = t86->zlnt_view_read_sr_912daad1f2d5( ).
        DATA(t89) = |i|.
        CREATE OBJECT t84 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t85 flags = t89.
        t83 = t84.
        DATA t90 TYPE abap_bool.
        DATA t91 TYPE abap_bool.
        DATA(t92) = t83.
        DATA(t93) = t38.
        t91 = t92->test( p0 = t93 ).
        DATA(t94) = abap_true.
        t90 = xsdbool( t91 = t94 ).
        IF t90 = abap_true.
          DATA t95 TYPE string.
          DATA t96 TYPE string.
          DATA t97 TYPE string.
          DATA(t98) = |Handler class |.
          DATA(t99) = t38.
          DATA(t100) = strlen( t98 ).
          t97 = |{ t98 }{ t99 }|.
          DATA(t101) = | not found|.
          DATA(t102) = strlen( t97 ).
          t96 = |{ t97 }{ t101 }|.
          t95 = t96.
          DATA t103 TYPE REF TO zcl_lnt_issue.
          CLEAR t103.
          DATA t104 TYPE REF TO zcl_lnt_issue.
          CLEAR t104.
          DATA t105 TYPE REF TO zif_lnt_file.
          CLEAR t105.
          DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t107 TYPE REF TO zcl_lnt_abstract_object.
          DATA t108 TYPE REF TO zcl_lnt_icfservice.
          DATA(t109) = t1.
          DATA t110 TYPE REF TO object.
          t110 = t109.
          t108 ?= t110.
          t107 = t108.
          DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t112) = t107.
          t111 = t112->files.
          t106 = t111.
          DATA t113 TYPE REF TO object.
          CLEAR t113.
          t106->load( ).
          CLEAR t113.
          READ TABLE t106->items INDEX 1 INTO t113.
          DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t114.
          CLEAR t105.
          IF t113 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t114 ?= t113.
            DATA t115 TYPE REF TO object.
            t115 = t114->as_ref( ).
            t105 ?= t115.
          ELSE.
            t105 ?= t113.
          ENDIF.
          DATA t116 TYPE REF TO zcl_lnt_position.
          DATA(t117) = CONV f( 1 ).
          DATA(t118) = CONV f( 1 ).
          DATA(t119) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t119->has = abap_true.
          t119->value = t118.
          t116 = NEW zcl_lnt_position( i_row = t117 i_col = t119 ).
          DATA(t120) = t95.
          DATA(t121) = VALUE string( ).
          DATA t122 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t122.
          DATA t123 TYPE string.
          DATA(t124) = |sicf_consistency|.
          t123 = t124.
          DATA t125 TYPE string.
          DATA(t126) = |SICF consistency|.
          t125 = t126.
          DATA t127 TYPE string.
          DATA(t128) = |Checks the validity of ICF services|.
          t127 = t128.
          DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t129.
          DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t130.
          DATA(t131) = abap_true.
          IF t131 = abap_true.
            DATA(t132) = |* Class defined in handler must exist\n* Class must not have |.
            t132 = t132 && |any syntax errors\n* Class must implement interface IF_HTTP_E|.
            t132 = t132 && |XTENSION|.
            DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t133->has = abap_true.
            t133->value = t132.
            t130 = t133.
          ELSE.
            DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t134.
            t130 = t134.
          ENDIF.
          t129 = t130.
          DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t136.
          t135 = t136.
          DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t138.
          t137 = t138.
          DATA t139 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t140 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t140.
          t139 = t140.
          DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t142.
          t141 = t142.
          DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t144.
          t143 = t144.
          t122 = NEW zcl_lnt_irule_metadata( i_key = t123 i_title = t125 i_short_description = t127 i_bad_example = t135 i_good_example = t137 i_extended_information = t129 i_tags = t139 i_pragma = t141 i_pseudo_comment = t143 ).
          CREATE OBJECT t122->zlnt_view_ownkeys_b0e8086400eb.
          t122->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t145.
          IF t122->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t122->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t145 ).
          ENDIF.
          DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t146.
          IF t122->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t122->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t146 ).
          ENDIF.
          DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t147.
          IF t122->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t122->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t147 ).
          ENDIF.
          DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t148.
          IF t122->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t122->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t148 ).
          ENDIF.
          CREATE OBJECT t122->zlnt_json_ownkeys_70e5fd461788.
          t122->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t149) = |key|.
          DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t150.
          IF t122->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = t149 p1 = t150 ).
          ENDIF.
          DATA(t151) = |title|.
          DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t152.
          IF t122->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = t151 p1 = t152 ).
          ENDIF.
          DATA(t153) = |shortDescription|.
          DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t154.
          IF t122->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = t153 p1 = t154 ).
          ENDIF.
          DATA(t155) = |extendedInformation|.
          DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t156.
          IF t122->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t122->zlnt_json_ownkeys_70e5fd461788->put( p0 = t155 p1 = t156 ).
          ENDIF.
          t121 = t122->key.
          DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t158) = me->conf.
          t157 = t158->zlnt_view_read_sr_15c06369f827( ).
          DATA t159 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t159.
          t104 = zcl_lnt_issue=>at_position( i_file = t105 i_start = t116 i_message_26cb = t120 i_key = t121 i_severity = t157 i_fix = t159 ).
          t103 = t104.
          DATA(t160) = t2.
          DATA(t161) = t103.
          t160->load( ).
          APPEND t161 TO t160->items.
          t160->save( ).
        ENDIF.
        CONTINUE.
      ENDIF.
      DATA t162 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t162.
      DATA t163 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t163.
      DATA t164 TYPE REF TO zcl_lnt_class.
      DATA t165 TYPE REF TO zcl_lnt_class.
      DATA(t166) = t40.
      t165 = t166.
      t164 = t165.
      DATA t167 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t167.
      DATA t168 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t168.
      DATA t169 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t169.
      DATA t170 TYPE REF TO zcl_lnt_abap_file.
      DATA t171 TYPE REF TO zcl_lnt_abap_file.
      DATA(t172) = t164.
      t171 = t172->get_main_abap_file( ).
      t170 = t171.
      DATA t173 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t173.
      DATA(t174) = VALUE abap_bool( ).
      DATA(t175) = t170.
      IF t175 IS INITIAL.
        t174 = abap_true.
      ENDIF.
      IF t174 = abap_true.
        DATA t176 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t176.
        t173 = t176.
      ELSE.
        DATA t177 TYPE REF TO zif_lnt_abap_file_information.
        DATA t178 TYPE REF TO zcl_lnt_abap_file.
        DATA t179 TYPE REF TO zcl_lnt_abap_file.
        DATA(t180) = t170.
        t179 = t180.
        t178 = t179.
        DATA t181 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t182) = t178.
        t181 = t182->info.
        t177 = t181.
        t173 = t177.
      ENDIF.
      t169 = t173.
      t168 = t169.
      DATA t183 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t183.
      DATA(t184) = VALUE abap_bool( ).
      DATA(t185) = t168.
      IF t185 IS INITIAL.
        t184 = abap_true.
      ENDIF.
      IF t184 = abap_true.
        DATA t186 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t186.
        t183 = t186.
      ELSE.
        DATA t187 TYPE REF TO zcl_lnt_info_class_definition.
        DATA t188 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t189) = t168.
        t188 = t189.
        DATA t190 TYPE string.
        DATA t191 TYPE REF TO zcl_lnt_abstract_object.
        DATA(t192) = t164.
        t191 = t192.
        DATA t193 TYPE string.
        DATA(t194) = t191.
        t193 = t194->name.
        t190 = t193.
        t187 = t188->get_class_definition_by_name( i_name = t190 ).
        t183 = t187.
      ENDIF.
      t167 = t183.
      t163 = t167.
      t162 = t163.
      DATA(t195) = VALUE abap_bool( ).
      DATA t196 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t197) = t162.
      t196 = t197.
      DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t199.
      t198 = t199.
      DATA(t200) = VALUE abap_bool( ).
      DATA(t201) = t196.
      IF t201 IS INITIAL.
        t200 = abap_true.
      ENDIF.
      t195 = t200.
      IF t195 = abap_true.
        DATA t202 TYPE string.
        DATA t203 TYPE string.
        DATA(t204) = |Syntax error in class |.
        DATA(t205) = t38.
        DATA(t206) = strlen( t204 ).
        t203 = |{ t204 }{ t205 }|.
        t202 = t203.
        DATA t207 TYPE REF TO zcl_lnt_issue.
        CLEAR t207.
        DATA t208 TYPE REF TO zcl_lnt_issue.
        CLEAR t208.
        DATA t209 TYPE REF TO zif_lnt_file.
        CLEAR t209.
        DATA t210 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t211 TYPE REF TO zcl_lnt_abstract_object.
        DATA t212 TYPE REF TO zcl_lnt_icfservice.
        DATA(t213) = t1.
        DATA t214 TYPE REF TO object.
        t214 = t213.
        t212 ?= t214.
        t211 = t212.
        DATA t215 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t216) = t211.
        t215 = t216->files.
        t210 = t215.
        DATA t217 TYPE REF TO object.
        CLEAR t217.
        t210->load( ).
        CLEAR t217.
        READ TABLE t210->items INDEX 1 INTO t217.
        DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t218.
        CLEAR t209.
        IF t217 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t218 ?= t217.
          DATA t219 TYPE REF TO object.
          t219 = t218->as_ref( ).
          t209 ?= t219.
        ELSE.
          t209 ?= t217.
        ENDIF.
        DATA t220 TYPE REF TO zcl_lnt_position.
        DATA(t221) = CONV f( 1 ).
        DATA(t222) = CONV f( 1 ).
        DATA(t223) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t223->has = abap_true.
        t223->value = t222.
        t220 = NEW zcl_lnt_position( i_row = t221 i_col = t223 ).
        DATA(t224) = t202.
        DATA(t225) = VALUE string( ).
        DATA t226 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t226.
        DATA t227 TYPE string.
        DATA(t228) = |sicf_consistency|.
        t227 = t228.
        DATA t229 TYPE string.
        DATA(t230) = |SICF consistency|.
        t229 = t230.
        DATA t231 TYPE string.
        DATA(t232) = |Checks the validity of ICF services|.
        t231 = t232.
        DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t233.
        DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t234.
        DATA(t235) = abap_true.
        IF t235 = abap_true.
          DATA(t236) = |* Class defined in handler must exist\n* Class must not have |.
          t236 = t236 && |any syntax errors\n* Class must implement interface IF_HTTP_E|.
          t236 = t236 && |XTENSION|.
          DATA(t237) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t237->has = abap_true.
          t237->value = t236.
          t234 = t237.
        ELSE.
          DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t238.
          t234 = t238.
        ENDIF.
        t233 = t234.
        DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t240.
        t239 = t240.
        DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t242 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t242.
        t241 = t242.
        DATA t243 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t244 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t244.
        t243 = t244.
        DATA t245 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t246 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t246.
        t245 = t246.
        DATA t247 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t248.
        t247 = t248.
        t226 = NEW zcl_lnt_irule_metadata( i_key = t227 i_title = t229 i_short_description = t231 i_bad_example = t239 i_good_example = t241 i_extended_information = t233 i_tags = t243 i_pragma = t245 i_pseudo_comment = t247 ).
        CREATE OBJECT t226->zlnt_view_ownkeys_b0e8086400eb.
        t226->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t249.
        IF t226->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t226->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t249 ).
        ENDIF.
        DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t250.
        IF t226->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t226->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t250 ).
        ENDIF.
        DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t251.
        IF t226->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t226->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t251 ).
        ENDIF.
        DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t252.
        IF t226->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t226->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t252 ).
        ENDIF.
        CREATE OBJECT t226->zlnt_json_ownkeys_70e5fd461788.
        t226->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t253) = |key|.
        DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t254.
        IF t226->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t226->zlnt_json_ownkeys_70e5fd461788->put( p0 = t253 p1 = t254 ).
        ENDIF.
        DATA(t255) = |title|.
        DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t256.
        IF t226->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t226->zlnt_json_ownkeys_70e5fd461788->put( p0 = t255 p1 = t256 ).
        ENDIF.
        DATA(t257) = |shortDescription|.
        DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t258.
        IF t226->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t226->zlnt_json_ownkeys_70e5fd461788->put( p0 = t257 p1 = t258 ).
        ENDIF.
        DATA(t259) = |extendedInformation|.
        DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t260.
        IF t226->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t226->zlnt_json_ownkeys_70e5fd461788->put( p0 = t259 p1 = t260 ).
        ENDIF.
        t225 = t226->key.
        DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t262) = me->conf.
        t261 = t262->zlnt_view_read_sr_15c06369f827( ).
        DATA t263 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t263.
        t208 = zcl_lnt_issue=>at_position( i_file = t209 i_start = t220 i_message_26cb = t224 i_key = t225 i_severity = t261 i_fix = t263 ).
        t207 = t208.
        DATA(t264) = t2.
        DATA(t265) = t207.
        t264->load( ).
        APPEND t265 TO t264->items.
        t264->save( ).
        CONTINUE.
      ENDIF.
      DATA t266 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t267 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t268 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t269) = t162.
      t268 = t269.
      t267 = me->find_implementing( i_def = t268 ).
      t266 = t267.
      DATA(t270) = VALUE abap_bool( ).
      DATA(t271) = VALUE f( ).
      DATA t272 TYPE f.
      DATA(t273) = CONV f( -1 ).
      t272 = t273.
      DATA t274 TYPE f.
      DATA(t275) = CONV f( -1 ).
      t274 = t275.
      DATA(t276) = t266.
      DATA t277 TYPE REF TO zcl_lnt_info_implementing.
      CLEAR t277.
      DATA t278 TYPE REF TO object.
      CLEAR t278.
      DATA(t279) = VALUE i( ).
      DO.
        t276->load( ).
        IF t279 >= lines( t276->items ).
          EXIT.
        ENDIF.
        CLEAR t278.
        READ TABLE t276->items INDEX t279 + 1 INTO t278.
        t279 = t279 + 1.
        DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t280.
        CLEAR t277.
        IF t278 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t280 ?= t278.
          DATA t281 TYPE REF TO object.
          t281 = t280->as_ref( ).
          t277 ?= t281.
        ELSE.
          t277 ?= t278.
        ENDIF.
        DATA t282 TYPE f.
        DATA(t283) = t272.
        DATA(t284) = CONV f( 1 ).
        t282 = t283 + t284.
        t272 = t282.
        DATA(t285) = VALUE abap_bool( ).
        DATA t286 TYPE string.
        DATA t287 TYPE string.
        DATA(t288) = t277.
        t287 = t288->name.
        DATA(t289) = strlen( t287 ).
        t286 = t287.
        IF t286 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t286 TO UPPER CASE.
        ELSE.
          t286 = zlnt_runtime_uppe_91169605024d=>full( t286 ).
        ENDIF.
        DATA(t290) = |IF_HTTP_EXTENSION|.
        t285 = xsdbool( t286 = t290 ).
        IF t285 = abap_true.
          DATA(t291) = t272.
          t274 = t291.
          EXIT.
        ENDIF.
      ENDDO.
      DATA(t292) = t274.
      t271 = t292.
      DATA(t293) = CONV f( 0 ).
      t270 = xsdbool( t271 < t293 ).
      IF t270 = abap_true.
        DATA t294 TYPE string.
        DATA t295 TYPE string.
        DATA t296 TYPE string.
        DATA(t297) = |Handler class |.
        DATA(t298) = t38.
        DATA(t299) = strlen( t297 ).
        t296 = |{ t297 }{ t298 }|.
        DATA(t300) = | must implement IF_HTTP_EXTENSION|.
        DATA(t301) = strlen( t296 ).
        t295 = |{ t296 }{ t300 }|.
        t294 = t295.
        DATA t302 TYPE REF TO zcl_lnt_issue.
        CLEAR t302.
        DATA t303 TYPE REF TO zcl_lnt_issue.
        CLEAR t303.
        DATA t304 TYPE REF TO zif_lnt_file.
        CLEAR t304.
        DATA t305 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t306 TYPE REF TO zcl_lnt_abstract_object.
        DATA t307 TYPE REF TO zcl_lnt_icfservice.
        DATA(t308) = t1.
        DATA t309 TYPE REF TO object.
        t309 = t308.
        t307 ?= t309.
        t306 = t307.
        DATA t310 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t311) = t306.
        t310 = t311->files.
        t305 = t310.
        DATA t312 TYPE REF TO object.
        CLEAR t312.
        t305->load( ).
        CLEAR t312.
        READ TABLE t305->items INDEX 1 INTO t312.
        DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t313.
        CLEAR t304.
        IF t312 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t313 ?= t312.
          DATA t314 TYPE REF TO object.
          t314 = t313->as_ref( ).
          t304 ?= t314.
        ELSE.
          t304 ?= t312.
        ENDIF.
        DATA t315 TYPE REF TO zcl_lnt_position.
        DATA(t316) = CONV f( 1 ).
        DATA(t317) = CONV f( 1 ).
        DATA(t318) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t318->has = abap_true.
        t318->value = t317.
        t315 = NEW zcl_lnt_position( i_row = t316 i_col = t318 ).
        DATA(t319) = t294.
        DATA(t320) = VALUE string( ).
        DATA t321 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t321.
        DATA t322 TYPE string.
        DATA(t323) = |sicf_consistency|.
        t322 = t323.
        DATA t324 TYPE string.
        DATA(t325) = |SICF consistency|.
        t324 = t325.
        DATA t326 TYPE string.
        DATA(t327) = |Checks the validity of ICF services|.
        t326 = t327.
        DATA t328 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t328.
        DATA t329 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t329.
        DATA(t330) = abap_true.
        IF t330 = abap_true.
          DATA(t331) = |* Class defined in handler must exist\n* Class must not have |.
          t331 = t331 && |any syntax errors\n* Class must implement interface IF_HTTP_E|.
          t331 = t331 && |XTENSION|.
          DATA(t332) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t332->has = abap_true.
          t332->value = t331.
          t329 = t332.
        ELSE.
          DATA t333 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t333.
          t329 = t333.
        ENDIF.
        t328 = t329.
        DATA t334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t335.
        t334 = t335.
        DATA t336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t337 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t337.
        t336 = t337.
        DATA t338 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t339 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t339.
        t338 = t339.
        DATA t340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t341 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t341.
        t340 = t341.
        DATA t342 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t343.
        t342 = t343.
        t321 = NEW zcl_lnt_irule_metadata( i_key = t322 i_title = t324 i_short_description = t326 i_bad_example = t334 i_good_example = t336 i_extended_information = t328 i_tags = t338 i_pragma = t340 i_pseudo_comment = t342 ).
        CREATE OBJECT t321->zlnt_view_ownkeys_b0e8086400eb.
        t321->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t344.
        IF t321->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t321->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t344 ).
        ENDIF.
        DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t345.
        IF t321->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t321->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t345 ).
        ENDIF.
        DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t346.
        IF t321->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t321->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t346 ).
        ENDIF.
        DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t347.
        IF t321->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t321->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t347 ).
        ENDIF.
        CREATE OBJECT t321->zlnt_json_ownkeys_70e5fd461788.
        t321->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t348) = |key|.
        DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t349.
        IF t321->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t321->zlnt_json_ownkeys_70e5fd461788->put( p0 = t348 p1 = t349 ).
        ENDIF.
        DATA(t350) = |title|.
        DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t351.
        IF t321->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t321->zlnt_json_ownkeys_70e5fd461788->put( p0 = t350 p1 = t351 ).
        ENDIF.
        DATA(t352) = |shortDescription|.
        DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t353.
        IF t321->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t321->zlnt_json_ownkeys_70e5fd461788->put( p0 = t352 p1 = t353 ).
        ENDIF.
        DATA(t354) = |extendedInformation|.
        DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t355.
        IF t321->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t321->zlnt_json_ownkeys_70e5fd461788->put( p0 = t354 p1 = t355 ).
        ENDIF.
        t320 = t321->key.
        DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t357) = me->conf.
        t356 = t357->zlnt_view_read_sr_15c06369f827( ).
        DATA t358 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t358.
        t303 = zcl_lnt_issue=>at_position( i_file = t304 i_start = t315 i_message_26cb = t319 i_key = t320 i_severity = t356 i_fix = t358 ).
        t302 = t303.
        DATA(t359) = t2.
        DATA(t360) = t302.
        t359->load( ).
        APPEND t360 TO t359->items.
        t359->save( ).
        CONTINUE.
      ENDIF.
    ENDDO.
    DATA(t361) = t2.
    result = t361.

  ENDMETHOD.

  METHOD find_implementing.
    DATA(t1) = i_def.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t1.
    t3 = t4->interfaces.
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t7) = t1.
    t6 = t7->super_class_name.
    t5 = t6.
    DO.
      DATA(t8) = VALUE abap_bool( ).
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t10) = t5.
      t9 = t10.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      t11 = t12.
      DATA(t13) = VALUE abap_bool( ).
      DATA(t14) = VALUE abap_bool( ).
      DATA(t15) = t9.
      IF t15 IS INITIAL.
        t14 = abap_true.
      ELSEIF t15->has = abap_false.
        t14 = abap_true.
      ENDIF.
      t13 = xsdbool( t14 = abap_false ).
      t8 = t13.
      IF t8 = abap_false.
        EXIT.
      ENDIF.
      DATA t16 TYPE REF TO zcl_lnt_class.
      CLEAR t16.
      DATA t17 TYPE REF TO zcl_lnt_class.
      CLEAR t17.
      DATA t18 TYPE REF TO zif_lnt_object.
      CLEAR t18.
      DATA(t19) = me->reg.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t20.
      DATA(t21) = abap_true.
      IF t21 = abap_true.
        DATA(t22) = |CLAS|.
        DATA(t23) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t23->has = abap_true.
        t23->value = t22.
        t20 = t23.
      ELSE.
        DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t24.
        t20 = t24.
      ENDIF.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      DATA(t26) = abap_true.
      IF t26 = abap_true.
        DATA t27 TYPE string.
        DATA(t28) = t5.
        t27 = t28->value.
        DATA(t29) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t29->has = abap_true.
        t29->value = t27.
        t25 = t29.
      ELSE.
        DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t30.
        t25 = t30.
      ENDIF.
      t18 = t19->get_object( i_type_9913 = t20 i_name = t25 ).
      DATA t31 TYPE REF TO object.
      t31 = t18.
      t17 ?= t31.
      t16 = t17.
      DATA(t32) = VALUE abap_bool( ).
      DATA t33 TYPE REF TO zcl_lnt_class.
      DATA(t34) = t16.
      t33 = t34.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t36.
      t35 = t36.
      DATA(t37) = VALUE abap_bool( ).
      DATA(t38) = t33.
      IF t38 IS INITIAL.
        t37 = abap_true.
      ENDIF.
      t32 = t37.
      IF t32 = abap_true.
        EXIT.
      ENDIF.
      DATA t39 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t39.
      DATA t40 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t40.
      DATA t41 TYPE REF TO zcl_lnt_class.
      DATA t42 TYPE REF TO zcl_lnt_class.
      DATA(t43) = t16.
      t42 = t43.
      t41 = t42.
      DATA t44 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t44.
      DATA t45 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t45.
      DATA t46 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t46.
      DATA t47 TYPE REF TO zcl_lnt_abap_file.
      DATA t48 TYPE REF TO zcl_lnt_abap_file.
      DATA(t49) = t41.
      t48 = t49->get_main_abap_file( ).
      t47 = t48.
      DATA t50 TYPE REF TO zif_lnt_abap_file_information.
      CLEAR t50.
      DATA(t51) = VALUE abap_bool( ).
      DATA(t52) = t47.
      IF t52 IS INITIAL.
        t51 = abap_true.
      ENDIF.
      IF t51 = abap_true.
        DATA t53 TYPE REF TO zif_lnt_abap_file_information.
        CLEAR t53.
        t50 = t53.
      ELSE.
        DATA t54 TYPE REF TO zif_lnt_abap_file_information.
        DATA t55 TYPE REF TO zcl_lnt_abap_file.
        DATA t56 TYPE REF TO zcl_lnt_abap_file.
        DATA(t57) = t47.
        t56 = t57.
        t55 = t56.
        DATA t58 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t59) = t55.
        t58 = t59->info.
        t54 = t58.
        t50 = t54.
      ENDIF.
      t46 = t50.
      t45 = t46.
      DATA t60 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t60.
      DATA(t61) = VALUE abap_bool( ).
      DATA(t62) = t45.
      IF t62 IS INITIAL.
        t61 = abap_true.
      ENDIF.
      IF t61 = abap_true.
        DATA t63 TYPE REF TO zcl_lnt_info_class_definition.
        CLEAR t63.
        t60 = t63.
      ELSE.
        DATA t64 TYPE REF TO zcl_lnt_info_class_definition.
        DATA t65 TYPE REF TO zif_lnt_abap_file_information.
        DATA(t66) = t45.
        t65 = t66.
        DATA t67 TYPE string.
        DATA t68 TYPE REF TO zcl_lnt_abstract_object.
        DATA(t69) = t41.
        t68 = t69.
        DATA t70 TYPE string.
        DATA(t71) = t68.
        t70 = t71->name.
        t67 = t70.
        t64 = t65->get_class_definition_by_name( i_name = t67 ).
        t60 = t64.
      ENDIF.
      t44 = t60.
      t40 = t44.
      t39 = t40.
      DATA(t72) = VALUE abap_bool( ).
      DATA t73 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t74) = t39.
      t73 = t74.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t76.
      t75 = t76.
      DATA(t77) = VALUE abap_bool( ).
      DATA(t78) = t73.
      IF t78 IS INITIAL.
        t77 = abap_true.
      ENDIF.
      t72 = t77.
      IF t72 = abap_true.
        EXIT.
      ENDIF.
      DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t80) = t2.
      DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t82 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t83) = t39.
      t82 = t83.
      t81 = t82->interfaces.
      t79 = t80->concat( p0 = t81 ).
      t2 = t79.
      DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t85 TYPE REF TO zcl_lnt_info_class_definition.
      DATA(t86) = t39.
      t85 = t86.
      t84 = t85->super_class_name.
      t5 = t84.
    ENDDO.
    DATA(t87) = t2.
    result = t87.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_sicf_consistency_conf( me->gt_cn_in_sr_rl_sc_cn_ts_sc_cns( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_sicf_consistency_conf( me->gt_cn_in_sr_rl_sc_cn_ts_sc_cns( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_sicf_consistency_conf.
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
        t2 = NEW zcl_lnt_sicf_consistency_conf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_sc_cn_ts_sc_cns( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_sicf_consistency.
    DATA(t3) = t1.
    t2 = me->in_in_sr_rl_scf_cns_ts_scf_cns( i_reg_f149 = t3 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1700_f5fd4de9e272.
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
