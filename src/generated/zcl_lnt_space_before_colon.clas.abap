* TS: src/rules/space_before_colon.ts:14:1 SpaceBeforeColon
CLASS zcl_lnt_space_before_colon DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_spc_bfr_cln_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_sp_bf_cl_ts_sp_bf_cl RETURNING VALUE(result) TYPE REF TO zcl_lnt_spc_bfr_cln_cnf.
    METHODS s_c_i_s_r_sp_bf_cl_ts_sp_bf_cl IMPORTING i_conf TYPE REF TO zcl_lnt_spc_bfr_cln_cnf.
    METHODS r_p_i_s_r_sp_bf_cl_ts_sp_bf_cl IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_space_before_colon IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_spc_bfr_cln_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |space_before_colon|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Space before colon|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that there are no spaces in front of colons in chaine|.
    t7 = t7 && |d statements.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://docs.abapopenchecks.org/checks/80/|.
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
      DATA(t21) = |Whitespace|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      DATA(t23) = |SingleFile|.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = t18.
      DATA(t25) = |Quickfix|.
      t24->load( ).
      APPEND t25 TO t24->items.
      t24->save( ).
      DATA(t26) = t18.
      t17 = t26.
      t15 = t17.
    ELSE.
      DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t27.
      t15 = t27.
    ENDIF.
    t14 = t15.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    DATA(t30) = abap_true.
    IF t30 = abap_true.
      DATA(t31) = |DATA : foo TYPE string.|.
      DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t32->has = abap_true.
      t32->value = t31.
      t29 = t32.
    ELSE.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      t29 = t33.
    ENDIF.
    t28 = t29.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t34.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    DATA(t36) = abap_true.
    IF t36 = abap_true.
      DATA(t37) = |DATA: foo TYPE string.|.
      DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t38->has = abap_true.
      t38->value = t37.
      t35 = t38.
    ELSE.
      DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t39.
      t35 = t39.
    ENDIF.
    t34 = t35.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    t40 = t41.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    t42 = t43.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t28 i_good_example = t34 i_extended_information = t8 i_tags = t14 i_pragma = t40 i_pseudo_comment = t42 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t50 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t51) = |key|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |title|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |shortDescription|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |extendedInformation|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |tags|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |badExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |goodExample|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    DATA(t1) = |Remove space before colon|.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_sp_bf_cl_ts_sp_bf_cl.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_sp_bf_cl_ts_sp_bf_cl.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_sp_bf_cl_ts_sp_bf_cl.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abap_file.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = t5.
    t7 = t8->statements.
    t4 = t7.
    DATA t9 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    DATA(t11) = VALUE i( ).
    DO.
      t4->load( ).
      IF t11 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t4->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      DATA t15 TYPE REF TO zcl_lnt_abstract_token.
      DATA t16 TYPE REF TO zcl_lnt_statement_node.
      DATA(t17) = t9.
      t16 = t17.
      DATA t18 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t19) = t16.
      t18 = t19->colon.
      t15 = t18.
      t14 = t15.
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = VALUE abap_bool( ).
      DATA t23 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t24) = t14.
      t23 = t24.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t26.
      t25 = t26.
      DATA(t27) = VALUE abap_bool( ).
      DATA(t28) = t23.
      IF t28 IS INITIAL.
        t27 = abap_true.
      ENDIF.
      t22 = t27.
      t21 = t22.
      IF t22 = abap_false.
        DATA t29 TYPE abap_bool.
        DATA t30 TYPE REF TO zif_lnt_statement.
        DATA(t31) = t9.
        t30 = t31->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t29 = xsdbool( t30 IS BOUND AND t30 IS INSTANCE OF zcl_lnt_native_sql ).
        t21 = t29.
      ENDIF.
      t20 = t21.
      IF t21 = abap_false.
        DATA t32 TYPE abap_bool.
        DATA t33 TYPE REF TO zif_lnt_statement.
        DATA(t34) = t9.
        t33 = t34->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t32 = xsdbool( t33 IS BOUND AND t33 IS INSTANCE OF zcl_lnt_lx_comment ).
        t20 = t32.
      ENDIF.
      IF t20 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t38.
      t37 = t38.
      DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t41) = t37.
      DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t43) = t9.
      t42 = t43->get_tokens( ).
      t40 = t41->concat( p0 = t42 ).
      t39 = t40.
      DATA(t44) = t39.
      t36 = t44.
      t35 = t36.
      DATA(t45) = t35.
      DATA t46 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t47) = t14.
      t46 = t47.
      t45->load( ).
      APPEND t46 TO t45->items.
      t45->save( ).
      DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t48.
      DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t50) = t35.
      t49 = t50.
      DATA t51 TYPE i.
      DATA(t52) = 1.
      t51 = t52.
      DO.
        DATA t53 TYPE abap_bool.
        DATA(t54) = t51.
        DATA t55 TYPE i.
        DATA(t56) = t49.
        t56->load( ).
        t55 = lines( t56->items ).
        t53 = xsdbool( t54 < t55 ).
        IF t53 = abap_false.
          EXIT.
        ENDIF.
        DATA t57 TYPE i.
        DATA(t58) = t51.
        t57 = t58.
        DO.
          DATA t59 TYPE abap_bool.
          DATA(t60) = t57.
          DATA(t61) = 0.
          t59 = xsdbool( t60 > t61 ).
          IF t59 = abap_false.
            EXIT.
          ENDIF.
          DATA t62 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t62.
          DATA t63 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t63.
          DATA(t64) = t49.
          DATA t65 TYPE i.
          DATA(t66) = t57.
          DATA(t67) = 1.
          t65 = t66 - t67.
          t65 = t65 + 1.
          DATA t68 TYPE REF TO object.
          CLEAR t68.
          t64->load( ).
          CLEAR t68.
          READ TABLE t64->items INDEX t65 INTO t68.
          DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t69.
          CLEAR t63.
          IF t68 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t69 ?= t68.
            DATA t70 TYPE REF TO object.
            t70 = t69->as_ref( ).
            t63 ?= t70.
          ELSE.
            t63 ?= t68.
          ENDIF.
          t62 = t63.
          DATA t71 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t71.
          DATA t72 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t72.
          DATA(t73) = t49.
          DATA(t74) = t57.
          t74 = t74 + 1.
          DATA t75 TYPE REF TO object.
          CLEAR t75.
          t73->load( ).
          CLEAR t75.
          READ TABLE t73->items INDEX t74 INTO t75.
          DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t76.
          CLEAR t72.
          IF t75 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t76 ?= t75.
            DATA t77 TYPE REF TO object.
            t77 = t76->as_ref( ).
            t72 ?= t77.
          ELSE.
            t72 ?= t75.
          ENDIF.
          t71 = t72.
          DATA(t78) = VALUE abap_bool( ).
          DATA(t79) = VALUE i( ).
          DATA t80 TYPE abap_bool.
          DATA t81 TYPE REF TO zcl_lnt_position.
          DATA t82 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t83) = t62.
          t82 = t83.
          DATA t84 TYPE REF TO zcl_lnt_position.
          DATA(t85) = t82.
          t84 = t85->start.
          t81 = t84.
          DATA t86 TYPE REF TO zcl_lnt_position.
          DATA t87 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t88) = t71.
          t87 = t88.
          DATA t89 TYPE REF TO zcl_lnt_position.
          DATA(t90) = t87.
          t89 = t90->start.
          t86 = t89.
          t80 = t81->is_after( i_p = t86 ).
          IF t80 = abap_true.
            DATA(t91) = 1.
            t79 = t91.
          ELSE.
            DATA(t92) = -1.
            t79 = t92.
          ENDIF.
          DATA(t93) = 0.
          t78 = xsdbool( t79 > t93 ).
          IF t78 = abap_true.
            DATA t94 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t94.
            DATA t95 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t95.
            DATA(t96) = t49.
            DATA t97 TYPE i.
            DATA(t98) = t57.
            DATA(t99) = 1.
            t97 = t98 - t99.
            t97 = t97 + 1.
            DATA t100 TYPE REF TO object.
            CLEAR t100.
            t96->load( ).
            CLEAR t100.
            READ TABLE t96->items INDEX t97 INTO t100.
            DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t101.
            CLEAR t95.
            IF t100 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t101 ?= t100.
              DATA t102 TYPE REF TO object.
              t102 = t101->as_ref( ).
              t95 ?= t102.
            ELSE.
              t95 ?= t100.
            ENDIF.
            t94 = t95.
            DATA(t103) = t49.
            DATA t104 TYPE i.
            DATA(t105) = t57.
            DATA(t106) = 1.
            t104 = t105 - t106.
            DATA t107 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t107.
            DATA(t108) = t49.
            DATA(t109) = t57.
            t109 = t109 + 1.
            DATA t110 TYPE REF TO object.
            CLEAR t110.
            t108->load( ).
            CLEAR t110.
            READ TABLE t108->items INDEX t109 INTO t110.
            DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t111.
            CLEAR t107.
            IF t110 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t111 ?= t110.
              DATA t112 TYPE REF TO object.
              t112 = t111->as_ref( ).
              t107 ?= t112.
            ELSE.
              t107 ?= t110.
            ENDIF.
            t103->put( p0 = t104 p1 = t107 ).
            DATA(t113) = t49.
            DATA(t114) = t57.
            DATA(t115) = t94.
            t113->put( p0 = t114 p1 = t115 ).
            DATA t116 TYPE i.
            DATA(t117) = t57.
            DATA(t118) = 1.
            t116 = t117 - t118.
            t57 = t116.
          ELSE.
            EXIT.
          ENDIF.
        ENDDO.
        DATA t119 TYPE i.
        DATA(t120) = t51.
        DATA(t121) = 1.
        t119 = t120 + t121.
        t51 = t119.
      ENDDO.
      DATA(t122) = t49.
      t48 = t122.
      DATA t123 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t123.
      DATA t124 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t124.
      DATA(t125) = t35.
      DATA t126 TYPE REF TO object.
      CLEAR t126.
      t125->load( ).
      CLEAR t126.
      READ TABLE t125->items INDEX 1 INTO t126.
      DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t127.
      CLEAR t124.
      IF t126 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t127 ?= t126.
        DATA t128 TYPE REF TO object.
        t128 = t127->as_ref( ).
        t124 ?= t128.
      ELSE.
        t124 ?= t126.
      ENDIF.
      t123 = t124.
      DATA(t129) = t35.
      DATA t130 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t130.
      DATA t131 TYPE REF TO object.
      CLEAR t131.
      DATA(t132) = VALUE i( ).
      DO.
        t129->load( ).
        IF t132 >= lines( t129->items ).
          EXIT.
        ENDIF.
        CLEAR t131.
        READ TABLE t129->items INDEX t132 + 1 INTO t131.
        t132 = t132 + 1.
        DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t133.
        CLEAR t130.
        IF t131 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t133 ?= t131.
          DATA t134 TYPE REF TO object.
          t134 = t133->as_ref( ).
          t130 ?= t134.
        ELSE.
          t130 ?= t131.
        ENDIF.
        DATA t135 TYPE abap_bool.
        DATA t136 TYPE abap_bool.
        DATA t137 TYPE string.
        DATA t138 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t139) = t130.
        t138 = t139.
        DATA t140 TYPE string.
        DATA(t141) = t138.
        t140 = t141->str.
        t137 = t140.
        DATA(t142) = |:|.
        t136 = xsdbool( t137 = t142 ).
        t135 = t136.
        IF t136 = abap_true.
          DATA t143 TYPE abap_bool.
          DATA t144 TYPE abap_bool.
          DATA(t145) = t123.
          t144 = xsdbool( t145 IS BOUND ).
          t143 = xsdbool( t144 = abap_false ).
          t135 = t143.
        ENDIF.
        IF t135 = abap_true.
          DATA t146 TYPE REF TO zcl_lnt_issue.
          CLEAR t146.
          DATA t147 TYPE REF TO zcl_lnt_issue.
          CLEAR t147.
          DATA(t148) = t1.
          DATA(t149) = t130.
          DATA(t150) = |Remove space before colon|.
          DATA(t151) = VALUE string( ).
          DATA t152 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t152.
          DATA t153 TYPE string.
          DATA(t154) = |space_before_colon|.
          t153 = t154.
          DATA t155 TYPE string.
          DATA(t156) = |Space before colon|.
          t155 = t156.
          DATA t157 TYPE string.
          DATA(t158) = |Checks that there are no spaces in front of colons in chaine|.
          t158 = t158 && |d statements.|.
          t157 = t158.
          DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t159.
          DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t160.
          DATA(t161) = abap_true.
          IF t161 = abap_true.
            DATA(t162) = |https://docs.abapopenchecks.org/checks/80/|.
            DATA(t163) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t163->has = abap_true.
            t163->value = t162.
            t160 = t163.
          ELSE.
            DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t164.
            t160 = t164.
          ENDIF.
          t159 = t160.
          DATA t165 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t165.
          DATA t166 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t166.
          DATA(t167) = abap_true.
          IF t167 = abap_true.
            DATA t168 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t169 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t170 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t170.
            t169 = t170.
            DATA(t171) = t169.
            DATA(t172) = |Whitespace|.
            t171->load( ).
            APPEND t172 TO t171->items.
            t171->save( ).
            DATA(t173) = t169.
            DATA(t174) = |SingleFile|.
            t173->load( ).
            APPEND t174 TO t173->items.
            t173->save( ).
            DATA(t175) = t169.
            DATA(t176) = |Quickfix|.
            t175->load( ).
            APPEND t176 TO t175->items.
            t175->save( ).
            DATA(t177) = t169.
            t168 = t177.
            t166 = t168.
          ELSE.
            DATA t178 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t178.
            t166 = t178.
          ENDIF.
          t165 = t166.
          DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t179.
          DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t180.
          DATA(t181) = abap_true.
          IF t181 = abap_true.
            DATA(t182) = |DATA : foo TYPE string.|.
            DATA(t183) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t183->has = abap_true.
            t183->value = t182.
            t180 = t183.
          ELSE.
            DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t184.
            t180 = t184.
          ENDIF.
          t179 = t180.
          DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t185.
          DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t186.
          DATA(t187) = abap_true.
          IF t187 = abap_true.
            DATA(t188) = |DATA: foo TYPE string.|.
            DATA(t189) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t189->has = abap_true.
            t189->value = t188.
            t186 = t189.
          ELSE.
            DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t190.
            t186 = t190.
          ENDIF.
          t185 = t186.
          DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t192.
          t191 = t192.
          DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t194.
          t193 = t194.
          t152 = NEW zcl_lnt_irule_metadata( i_key = t153 i_title = t155 i_short_description = t157 i_bad_example = t179 i_good_example = t185 i_extended_information = t159 i_tags = t165 i_pragma = t191 i_pseudo_comment = t193 ).
          CREATE OBJECT t152->zlnt_view_ownkeys_b0e8086400eb.
          t152->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t195.
          IF t152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t195 ).
          ENDIF.
          DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t196.
          IF t152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t196 ).
          ENDIF.
          DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t197.
          IF t152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t197 ).
          ENDIF.
          DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t198.
          IF t152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t198 ).
          ENDIF.
          DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t199.
          IF t152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t199 ).
          ENDIF.
          DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t200.
          IF t152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t200 ).
          ENDIF.
          DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t201.
          IF t152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t201 ).
          ENDIF.
          CREATE OBJECT t152->zlnt_json_ownkeys_70e5fd461788.
          t152->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t202) = |key|.
          DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t203.
          IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = t202 p1 = t203 ).
          ENDIF.
          DATA(t204) = |title|.
          DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t205.
          IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = t204 p1 = t205 ).
          ENDIF.
          DATA(t206) = |shortDescription|.
          DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t207.
          IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = t206 p1 = t207 ).
          ENDIF.
          DATA(t208) = |extendedInformation|.
          DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t209.
          IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = t208 p1 = t209 ).
          ENDIF.
          DATA(t210) = |tags|.
          DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t211.
          IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = t210 p1 = t211 ).
          ENDIF.
          DATA(t212) = |badExample|.
          DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t213.
          IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = t212 p1 = t213 ).
          ENDIF.
          DATA(t214) = |goodExample|.
          DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t215.
          IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = t214 p1 = t215 ).
          ENDIF.
          t151 = t152->key.
          DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t217) = me->conf.
          t216 = t217->zlnt_view_read_sr_15c06369f827( ).
          DATA t218 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t218.
          t147 = zcl_lnt_issue=>at_token( i_file = t148 i_token = t149 i_message_26cb = t150 i_key = t151 i_severity = t216 i_fix = t218 ).
          t146 = t147.
          DATA(t219) = t2.
          DATA(t220) = t146.
          t219->load( ).
          APPEND t220 TO t219->items.
          t219->save( ).
        ELSE.
          DATA(t221) = VALUE abap_bool( ).
          DATA t222 TYPE abap_bool.
          DATA t223 TYPE abap_bool.
          DATA t224 TYPE string.
          DATA t225 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t226) = t130.
          t225 = t226.
          DATA t227 TYPE string.
          DATA(t228) = t225.
          t227 = t228->str.
          t224 = t227.
          DATA(t229) = |:|.
          t223 = xsdbool( t224 = t229 ).
          t222 = t223.
          IF t223 = abap_true.
            DATA t230 TYPE abap_bool.
            DATA t231 TYPE f.
            DATA t232 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t233) = t123.
            t232 = t233.
            DATA t234 TYPE f.
            DATA t235 TYPE REF TO zcl_lnt_position.
            DATA t236 TYPE REF TO zcl_lnt_position.
            DATA(t237) = t232.
            t236 = t237->start.
            t235 = t236.
            DATA t238 TYPE f.
            DATA(t239) = t235.
            t238 = t239->row.
            t234 = t238.
            t231 = t234.
            DATA t240 TYPE f.
            DATA t241 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t242) = t130.
            t241 = t242.
            DATA t243 TYPE f.
            DATA t244 TYPE REF TO zcl_lnt_position.
            DATA t245 TYPE REF TO zcl_lnt_position.
            DATA(t246) = t241.
            t245 = t246->start.
            t244 = t245.
            DATA t247 TYPE f.
            DATA(t248) = t244.
            t247 = t248->row.
            t243 = t247.
            t240 = t243.
            t230 = xsdbool( t231 = t240 ).
            t222 = t230.
          ENDIF.
          t221 = t222.
          IF t222 = abap_true.
            DATA t249 TYPE abap_bool.
            DATA t250 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t251 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t252 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t253) = t123.
            t252 = t253.
            DATA t254 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t255 TYPE REF TO zcl_lnt_position.
            DATA t256 TYPE REF TO zcl_lnt_position.
            DATA(t257) = t252.
            t256 = t257->start.
            t255 = t256.
            DATA t258 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t259) = t255.
            t258 = t259->col.
            t254 = t258.
            t251 = t254.
            DATA t260 TYPE f.
            DATA t261 TYPE i.
            DATA t262 TYPE string.
            DATA t263 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t264) = t123.
            t263 = t264.
            DATA t265 TYPE string.
            DATA(t266) = t263.
            t265 = t266->str.
            t262 = t265.
            DATA(t267) = strlen( t262 ).
            t261 = t267.
            t260 = t261.
            DATA(t268) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t268->has = abap_true.
            t268->value = t260.
            t250 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t251 right = t268 op = `+` ).
            DATA t269 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t270 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t271) = t130.
            t270 = t271.
            DATA t272 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t273 TYPE REF TO zcl_lnt_position.
            DATA t274 TYPE REF TO zcl_lnt_position.
            DATA(t275) = t270.
            t274 = t275->start.
            t273 = t274.
            DATA t276 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t277) = t273.
            t276 = t277->col.
            t272 = t276.
            t269 = t272.
            t249 = zlnt_runtime_numb_290eb04a9758=>compare( left = t250 right = t269 op = `<` ).
            t221 = t249.
          ENDIF.
          IF t221 = abap_true.
            DATA t278 TYPE REF TO zcl_lnt_position.
            DATA t279 TYPE REF TO zcl_lnt_position.
            DATA t280 TYPE f.
            DATA t281 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t282) = t130.
            t281 = t282.
            DATA t283 TYPE f.
            DATA t284 TYPE REF TO zcl_lnt_position.
            DATA t285 TYPE REF TO zcl_lnt_position.
            DATA(t286) = t281.
            t285 = t286->start.
            t284 = t285.
            DATA t287 TYPE f.
            DATA(t288) = t284.
            t287 = t288->row.
            t283 = t287.
            t280 = t283.
            DATA t289 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t290 TYPE REF TO zcl_lnt_position.
            DATA t291 TYPE REF TO zcl_lnt_position.
            DATA t292 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t293) = t123.
            t292 = t293.
            DATA t294 TYPE REF TO zcl_lnt_position.
            DATA t295 TYPE f.
            DATA t296 TYPE REF TO zcl_lnt_position.
            DATA t297 TYPE REF TO zcl_lnt_position.
            DATA(t298) = t292.
            t297 = t298->start.
            t296 = t297.
            DATA t299 TYPE f.
            DATA(t300) = t296.
            t299 = t300->row.
            t295 = t299.
            DATA t301 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t302 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t303 TYPE REF TO zcl_lnt_position.
            DATA t304 TYPE REF TO zcl_lnt_position.
            DATA(t305) = t292.
            t304 = t305->start.
            t303 = t304.
            DATA t306 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t307) = t303.
            t306 = t307->col.
            t302 = t306.
            DATA t308 TYPE f.
            DATA t309 TYPE i.
            DATA t310 TYPE string.
            DATA(t311) = t292.
            t310 = t311->str.
            DATA(t312) = strlen( t310 ).
            t309 = t312.
            t308 = t309.
            DATA(t313) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t313->has = abap_true.
            t313->value = t308.
            t301 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t302 right = t313 op = `+` ).
            t294 = NEW zcl_lnt_position( i_row = t295 i_col = t301 ).
            t291 = t294.
            t290 = t291.
            DATA t314 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t315) = t290.
            t314 = t315->col.
            t289 = t314.
            t279 = NEW zcl_lnt_position( i_row = t280 i_col = t289 ).
            t278 = t279.
            DATA t316 TYPE REF TO zcl_lnt_position.
            DATA t317 TYPE REF TO zcl_lnt_position.
            DATA t318 TYPE f.
            DATA t319 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t320) = t130.
            t319 = t320.
            DATA t321 TYPE f.
            DATA t322 TYPE REF TO zcl_lnt_position.
            DATA t323 TYPE REF TO zcl_lnt_position.
            DATA(t324) = t319.
            t323 = t324->start.
            t322 = t323.
            DATA t325 TYPE f.
            DATA(t326) = t322.
            t325 = t326->row.
            t321 = t325.
            t318 = t321.
            DATA t327 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t328 TYPE REF TO zcl_lnt_position.
            DATA t329 TYPE REF TO zcl_lnt_position.
            DATA t330 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t331) = t130.
            t330 = t331.
            DATA t332 TYPE REF TO zcl_lnt_position.
            DATA(t333) = t330.
            t332 = t333->start.
            t329 = t332.
            t328 = t329.
            DATA t334 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t335) = t328.
            t334 = t335->col.
            t327 = t334.
            t317 = NEW zcl_lnt_position( i_row = t318 i_col = t327 ).
            t316 = t317.
            DATA t336 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            DATA t337 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            DATA(t338) = t1.
            DATA(t339) = t278.
            DATA(t340) = t316.
            t337 = zcl_lnt_edit_helper=>delete_range( i_file = t338 i_start = t339 i_end = t340 ).
            t336 = t337.
            DATA t341 TYPE REF TO zcl_lnt_issue.
            CLEAR t341.
            DATA t342 TYPE REF TO zcl_lnt_issue.
            CLEAR t342.
            DATA(t343) = t1.
            DATA t344 TYPE f.
            DATA t345 TYPE REF TO zcl_lnt_position.
            DATA(t346) = t278.
            t345 = t346.
            DATA t347 TYPE f.
            DATA(t348) = t345.
            t347 = t348->row.
            t344 = t347.
            DATA t349 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t350 TYPE REF TO zcl_lnt_position.
            DATA(t351) = t278.
            t350 = t351.
            DATA t352 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t353) = t350.
            t352 = t353->col.
            t349 = t352.
            DATA t354 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t355 TYPE REF TO zcl_lnt_position.
            DATA(t356) = t316.
            t355 = t356.
            DATA t357 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t358) = t355.
            t357 = t358->col.
            t354 = t357.
            DATA(t359) = |Remove space before colon|.
            DATA(t360) = VALUE string( ).
            DATA t361 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t361.
            DATA t362 TYPE string.
            DATA(t363) = |space_before_colon|.
            t362 = t363.
            DATA t364 TYPE string.
            DATA(t365) = |Space before colon|.
            t364 = t365.
            DATA t366 TYPE string.
            DATA(t367) = |Checks that there are no spaces in front of colons in chaine|.
            t367 = t367 && |d statements.|.
            t366 = t367.
            DATA t368 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t368.
            DATA t369 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t369.
            DATA(t370) = abap_true.
            IF t370 = abap_true.
              DATA(t371) = |https://docs.abapopenchecks.org/checks/80/|.
              DATA(t372) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t372->has = abap_true.
              t372->value = t371.
              t369 = t372.
            ELSE.
              DATA t373 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t373.
              t369 = t373.
            ENDIF.
            t368 = t369.
            DATA t374 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t374.
            DATA t375 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t375.
            DATA(t376) = abap_true.
            IF t376 = abap_true.
              DATA t377 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t378 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t379 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t379.
              t378 = t379.
              DATA(t380) = t378.
              DATA(t381) = |Whitespace|.
              t380->load( ).
              APPEND t381 TO t380->items.
              t380->save( ).
              DATA(t382) = t378.
              DATA(t383) = |SingleFile|.
              t382->load( ).
              APPEND t383 TO t382->items.
              t382->save( ).
              DATA(t384) = t378.
              DATA(t385) = |Quickfix|.
              t384->load( ).
              APPEND t385 TO t384->items.
              t384->save( ).
              DATA(t386) = t378.
              t377 = t386.
              t375 = t377.
            ELSE.
              DATA t387 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t387.
              t375 = t387.
            ENDIF.
            t374 = t375.
            DATA t388 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t388.
            DATA t389 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t389.
            DATA(t390) = abap_true.
            IF t390 = abap_true.
              DATA(t391) = |DATA : foo TYPE string.|.
              DATA(t392) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t392->has = abap_true.
              t392->value = t391.
              t389 = t392.
            ELSE.
              DATA t393 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t393.
              t389 = t393.
            ENDIF.
            t388 = t389.
            DATA t394 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t394.
            DATA t395 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t395.
            DATA(t396) = abap_true.
            IF t396 = abap_true.
              DATA(t397) = |DATA: foo TYPE string.|.
              DATA(t398) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t398->has = abap_true.
              t398->value = t397.
              t395 = t398.
            ELSE.
              DATA t399 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t399.
              t395 = t399.
            ENDIF.
            t394 = t395.
            DATA t400 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t401 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t401.
            t400 = t401.
            DATA t402 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t403 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t403.
            t402 = t403.
            t361 = NEW zcl_lnt_irule_metadata( i_key = t362 i_title = t364 i_short_description = t366 i_bad_example = t388 i_good_example = t394 i_extended_information = t368 i_tags = t374 i_pragma = t400 i_pseudo_comment = t402 ).
            CREATE OBJECT t361->zlnt_view_ownkeys_b0e8086400eb.
            t361->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t404.
            IF t361->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t361->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t404 ).
            ENDIF.
            DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t405.
            IF t361->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t361->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t405 ).
            ENDIF.
            DATA t406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t406.
            IF t361->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t361->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t406 ).
            ENDIF.
            DATA t407 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t407.
            IF t361->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t361->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t407 ).
            ENDIF.
            DATA t408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t408.
            IF t361->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t361->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t408 ).
            ENDIF.
            DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t409.
            IF t361->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t361->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t409 ).
            ENDIF.
            DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t410.
            IF t361->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t361->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t410 ).
            ENDIF.
            CREATE OBJECT t361->zlnt_json_ownkeys_70e5fd461788.
            t361->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t411) = |key|.
            DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t412.
            IF t361->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t361->zlnt_json_ownkeys_70e5fd461788->put( p0 = t411 p1 = t412 ).
            ENDIF.
            DATA(t413) = |title|.
            DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t414.
            IF t361->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t361->zlnt_json_ownkeys_70e5fd461788->put( p0 = t413 p1 = t414 ).
            ENDIF.
            DATA(t415) = |shortDescription|.
            DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t416.
            IF t361->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t361->zlnt_json_ownkeys_70e5fd461788->put( p0 = t415 p1 = t416 ).
            ENDIF.
            DATA(t417) = |extendedInformation|.
            DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t418.
            IF t361->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t361->zlnt_json_ownkeys_70e5fd461788->put( p0 = t417 p1 = t418 ).
            ENDIF.
            DATA(t419) = |tags|.
            DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t420.
            IF t361->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t361->zlnt_json_ownkeys_70e5fd461788->put( p0 = t419 p1 = t420 ).
            ENDIF.
            DATA(t421) = |badExample|.
            DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t422.
            IF t361->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t361->zlnt_json_ownkeys_70e5fd461788->put( p0 = t421 p1 = t422 ).
            ENDIF.
            DATA(t423) = |goodExample|.
            DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t424.
            IF t361->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t361->zlnt_json_ownkeys_70e5fd461788->put( p0 = t423 p1 = t424 ).
            ENDIF.
            t360 = t361->key.
            DATA t425 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t426) = me->conf.
            t425 = t426->zlnt_view_read_sr_15c06369f827( ).
            DATA t427 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t427.
            DATA(t428) = abap_true.
            IF t428 = abap_true.
              DATA(t429) = t336.
              t427 = t429.
            ELSE.
              DATA t430 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t430.
              t427 = t430.
            ENDIF.
            t342 = zcl_lnt_issue=>at_row_range( i_file = t343 i_row = t344 i_start_col = t349 i_end_col = t354 i_message_26cb = t359 i_key = t360 i_severity = t425 i_fix = t427 ).
            t341 = t342.
            DATA(t431) = t2.
            DATA(t432) = t341.
            t431->load( ).
            APPEND t432 TO t431->items.
            t431->save( ).
          ENDIF.
        ENDIF.
        DATA(t433) = t130.
        t123 = t433.
      ENDDO.
    ENDDO.
    DATA(t434) = t2.
    result = t434.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_spc_bfr_cln_cnf( me->g_c_i_s_r_sp_bf_cl_ts_sp_bf_cl( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_spc_bfr_cln_cnf( me->g_c_i_s_r_sp_bf_cl_ts_sp_bf_cl( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_spc_bfr_cln_cnf.
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
        t1 = NEW zcl_lnt_spc_bfr_cln_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_sp_bf_cl_ts_sp_bf_cl( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_sp_bf_cl_ts_sp_bf_cl( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1706_24cac642d7b5.
  ENDMETHOD.
ENDCLASS.
