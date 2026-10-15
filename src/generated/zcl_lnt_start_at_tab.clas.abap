* TS: src/rules/start_at_tab.ts:13:1 StartAtTab
CLASS zcl_lnt_start_at_tab DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_start_at_tab_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_st_at_tb_ts_st_at_tb RETURNING VALUE(result) TYPE REF TO zcl_lnt_start_at_tab_conf.
    METHODS s_c_i_s_r_st_at_tb_ts_st_at_tb IMPORTING i_conf TYPE REF TO zcl_lnt_start_at_tab_conf.
    METHODS r_p_i_s_r_st_at_tb_ts_st_at_tb IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_start_at_tab IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_start_at_tab_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |start_at_tab|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Start at tab|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that statements start at tabstops.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Reports max 100 issues per file\nhttps://github.com/SAP/style|.
      t11 = t11 && |guides/blob/main/clean-abap/CleanABAP.md#indent-and-snap-to-|.
      t11 = t11 && |tab|.
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
      DATA(t23) = |Styleguide|.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = t18.
      DATA(t25) = |SingleFile|.
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
      DATA(t31) = | WRITE a.|.
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
      DATA(t37) = |  WRITE a.|.
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
    DATA(t1) = |Start statement at tab position|.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_st_at_tb_ts_st_at_tb.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_st_at_tb_ts_st_at_tb.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_st_at_tb_ts_st_at_tb.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE abap_bool.
    DATA(t5) = abap_false.
    t4 = t5.
    DATA t6 TYPE REF TO zcl_lnt_position.
    DATA t7 TYPE REF TO zcl_lnt_position.
    CLEAR t7.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t10 TYPE REF TO zcl_lnt_abap_file.
    DATA(t11) = t1.
    t10 = t11.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t13 TYPE REF TO zif_lnt_file.
    DATA(t14) = t10.
    t13 = t14->file.
    t12 = t13->get_raw_rows( ).
    t9 = t12.
    t8 = t9.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t16 TYPE REF TO zcl_lnt_abap_file.
    DATA(t17) = t1.
    t16 = t17.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t19) = t16.
    t18 = t19->statements.
    t15 = t18.
    DATA t20 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t20.
    DATA t21 TYPE REF TO object.
    CLEAR t21.
    DATA(t22) = VALUE i( ).
    DO.
      t15->load( ).
      IF t22 >= lines( t15->items ).
        EXIT.
      ENDIF.
      CLEAR t21.
      READ TABLE t15->items INDEX t22 + 1 INTO t21.
      t22 = t22 + 1.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      CLEAR t20.
      IF t21 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t23 ?= t21.
        DATA t24 TYPE REF TO object.
        t24 = t23->as_ref( ).
        t20 ?= t24.
      ELSE.
        t20 ?= t21.
      ENDIF.
      DATA t25 TYPE abap_bool.
      DATA t26 TYPE REF TO zif_lnt_statement.
      DATA(t27) = t20.
      t26 = t27->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t25 = xsdbool( t26 IS BOUND AND t26 IS INSTANCE OF zcl_lnt_st_comment ).
      IF t25 = abap_true.
        CONTINUE.
      ELSE.
        DATA t28 TYPE abap_bool.
        DATA t29 TYPE REF TO zif_lnt_statement.
        DATA(t30) = t20.
        t29 = t30->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_type_begin ).
        IF t28 = abap_true.
          DATA(t31) = abap_true.
          t4 = t31.
        ELSE.
          DATA t32 TYPE abap_bool.
          DATA t33 TYPE REF TO zif_lnt_statement.
          DATA(t34) = t20.
          t33 = t34->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t32 = xsdbool( t33 IS BOUND AND t33 IS INSTANCE OF zcl_lnt_type_end ).
          IF t32 = abap_true.
            DATA(t35) = abap_false.
            t4 = t35.
          ELSE.
            DATA(t36) = t4.
            IF t36 = abap_true.
              CONTINUE.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t37 TYPE REF TO zcl_lnt_position.
      DATA t38 TYPE REF TO zcl_lnt_position.
      DATA t39 TYPE REF TO zcl_lnt_statement_node.
      DATA(t40) = t20.
      t39 = t40.
      DATA t41 TYPE REF TO zcl_lnt_position.
      DATA t42 TYPE REF TO zcl_lnt_abstract_token.
      DATA t43 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t44) = t39.
      t43 = t44->get_first_token( ).
      t42 = t43.
      DATA t45 TYPE REF TO zcl_lnt_position.
      DATA(t46) = t42.
      t45 = t46->start.
      t41 = t45.
      t38 = t41.
      t37 = t38.
      DATA(t47) = VALUE abap_bool( ).
      DATA(t48) = VALUE abap_bool( ).
      DATA t49 TYPE REF TO zcl_lnt_position.
      DATA(t50) = t6.
      t49 = t50.
      DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t52.
      t51 = t52.
      DATA(t53) = VALUE abap_bool( ).
      DATA(t54) = VALUE abap_bool( ).
      DATA(t55) = t49.
      IF t55 IS INITIAL.
        t54 = abap_true.
      ENDIF.
      t53 = xsdbool( t54 = abap_false ).
      t48 = t53.
      t47 = t48.
      IF t48 = abap_true.
        DATA t56 TYPE abap_bool.
        DATA t57 TYPE f.
        DATA t58 TYPE REF TO zcl_lnt_position.
        DATA(t59) = t37.
        t58 = t59.
        DATA t60 TYPE f.
        DATA(t61) = t58.
        t60 = t61->row.
        t57 = t60.
        DATA t62 TYPE f.
        DATA t63 TYPE REF TO zcl_lnt_position.
        DATA t64 TYPE REF TO zcl_lnt_position.
        DATA(t65) = t6.
        t64 = t65.
        t63 = t64.
        DATA t66 TYPE f.
        DATA(t67) = t63.
        t66 = t67->row.
        t62 = t66.
        t56 = xsdbool( t57 = t62 ).
        t47 = t56.
      ENDIF.
      IF t47 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t68 TYPE abap_bool.
      DATA t69 TYPE abap_bool.
      DATA t70 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t71 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t72 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t73 TYPE REF TO zcl_lnt_position.
      DATA(t74) = t37.
      t73 = t74.
      DATA t75 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t76) = t73.
      t75 = t76->col.
      t72 = t75.
      DATA(t77) = CONV f( 1 ).
      DATA(t78) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t78->has = abap_true.
      t78->value = t77.
      t71 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t72 right = t78 op = `-` ).
      DATA(t79) = CONV f( zlnt_runtime_numb_290eb04a9758=>finite( t71 ) ).
      DATA t80 TYPE f.
      DATA(t81) = t79.
      DATA(t82) = CONV f( t81 / 2 ).
      t82 = trunc( t82 ).
      t82 = t82 * 2.
      t80 = t81 - t82.
      DATA(t83) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t83->has = abap_true.
      t83->value = t80.
      t70 = t83.
      DATA(t84) = CONV f( 0 ).
      DATA(t85) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t85->has = abap_true.
      t85->value = t84.
      t69 = zlnt_runtime_numb_290eb04a9758=>compare( left = t70 right = t85 op = `!=` ).
      t68 = t69.
      IF t69 = abap_true.
        DATA(t86) = VALUE abap_bool( ).
        DATA(t87) = VALUE abap_bool( ).
        DATA(t88) = VALUE i( ).
        DATA(t89) = VALUE string( ).
        DATA(t90) = t8.
        DATA(t91) = VALUE i( ).
        DATA t92 TYPE f.
        DATA t93 TYPE f.
        DATA t94 TYPE REF TO zcl_lnt_position.
        DATA(t95) = t37.
        t94 = t95.
        DATA t96 TYPE f.
        DATA(t97) = t94.
        t96 = t97->row.
        t93 = t96.
        DATA(t98) = CONV f( 1 ).
        t92 = t93 - t98.
        IF t92 > range_i32_upper.
          t91 = range_i32_upper.
        ELSEIF t92 < range_i32_lower.
          t91 = range_i32_lower.
        ELSE.
          t91 = trunc( t92 ).
        ENDIF.
        t91 = t91 + 1.
        IF t90->has( t91 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t90->load( ).
        CLEAR t89.
        READ TABLE t90->items INDEX t91 INTO t89.
        DATA(t99) = |\t|.
        DATA(t100) = strlen( t89 ).
        IF t99 IS INITIAL.
          t88 = 0.
        ELSE.
          FIND t99 IN t89 MATCH OFFSET t88.
          IF sy-subrc <> 0.
            t88 = -1.
          ENDIF.
        ENDIF.
        DATA(t101) = 0.
        t87 = xsdbool( t88 >= t101 ).
        DATA(t102) = abap_false.
        t86 = xsdbool( t87 = t102 ).
        t68 = t86.
      ENDIF.
      IF t68 = abap_true.
        DATA t103 TYPE REF TO zcl_lnt_issue.
        CLEAR t103.
        DATA t104 TYPE REF TO zcl_lnt_issue.
        CLEAR t104.
        DATA(t105) = t1.
        DATA(t106) = t37.
        DATA(t107) = |Start statement at tab position|.
        DATA(t108) = VALUE string( ).
        DATA t109 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t109.
        DATA t110 TYPE string.
        DATA(t111) = |start_at_tab|.
        t110 = t111.
        DATA t112 TYPE string.
        DATA(t113) = |Start at tab|.
        t112 = t113.
        DATA t114 TYPE string.
        DATA(t115) = |Checks that statements start at tabstops.|.
        t114 = t115.
        DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t116.
        DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t117.
        DATA(t118) = abap_true.
        IF t118 = abap_true.
          DATA(t119) = |Reports max 100 issues per file\nhttps://github.com/SAP/style|.
          t119 = t119 && |guides/blob/main/clean-abap/CleanABAP.md#indent-and-snap-to-|.
          t119 = t119 && |tab|.
          DATA(t120) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t120->has = abap_true.
          t120->value = t119.
          t117 = t120.
        ELSE.
          DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t121.
          t117 = t121.
        ENDIF.
        t116 = t117.
        DATA t122 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t122.
        DATA t123 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t123.
        DATA(t124) = abap_true.
        IF t124 = abap_true.
          DATA t125 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t126 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t127 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t127.
          t126 = t127.
          DATA(t128) = t126.
          DATA(t129) = |Whitespace|.
          t128->load( ).
          APPEND t129 TO t128->items.
          t128->save( ).
          DATA(t130) = t126.
          DATA(t131) = |Styleguide|.
          t130->load( ).
          APPEND t131 TO t130->items.
          t130->save( ).
          DATA(t132) = t126.
          DATA(t133) = |SingleFile|.
          t132->load( ).
          APPEND t133 TO t132->items.
          t132->save( ).
          DATA(t134) = t126.
          t125 = t134.
          t123 = t125.
        ELSE.
          DATA t135 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t135.
          t123 = t135.
        ENDIF.
        t122 = t123.
        DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t136.
        DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t137.
        DATA(t138) = abap_true.
        IF t138 = abap_true.
          DATA(t139) = | WRITE a.|.
          DATA(t140) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t140->has = abap_true.
          t140->value = t139.
          t137 = t140.
        ELSE.
          DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t141.
          t137 = t141.
        ENDIF.
        t136 = t137.
        DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t142.
        DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t143.
        DATA(t144) = abap_true.
        IF t144 = abap_true.
          DATA(t145) = |  WRITE a.|.
          DATA(t146) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t146->has = abap_true.
          t146->value = t145.
          t143 = t146.
        ELSE.
          DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t147.
          t143 = t147.
        ENDIF.
        t142 = t143.
        DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t149.
        t148 = t149.
        DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t151.
        t150 = t151.
        t109 = NEW zcl_lnt_irule_metadata( i_key = t110 i_title = t112 i_short_description = t114 i_bad_example = t136 i_good_example = t142 i_extended_information = t116 i_tags = t122 i_pragma = t148 i_pseudo_comment = t150 ).
        CREATE OBJECT t109->zlnt_view_ownkeys_b0e8086400eb.
        t109->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t152.
        IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t152 ).
        ENDIF.
        DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t153.
        IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t153 ).
        ENDIF.
        DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t154.
        IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t154 ).
        ENDIF.
        DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t155.
        IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t155 ).
        ENDIF.
        DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t156.
        IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t156 ).
        ENDIF.
        DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t157.
        IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t157 ).
        ENDIF.
        DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t158.
        IF t109->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t109->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t158 ).
        ENDIF.
        CREATE OBJECT t109->zlnt_json_ownkeys_70e5fd461788.
        t109->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t159) = |key|.
        DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t160.
        IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t159 p1 = t160 ).
        ENDIF.
        DATA(t161) = |title|.
        DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t162.
        IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t161 p1 = t162 ).
        ENDIF.
        DATA(t163) = |shortDescription|.
        DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t164.
        IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t163 p1 = t164 ).
        ENDIF.
        DATA(t165) = |extendedInformation|.
        DATA t166 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t166.
        IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t165 p1 = t166 ).
        ENDIF.
        DATA(t167) = |tags|.
        DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t168.
        IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t167 p1 = t168 ).
        ENDIF.
        DATA(t169) = |badExample|.
        DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t170.
        IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t169 p1 = t170 ).
        ENDIF.
        DATA(t171) = |goodExample|.
        DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t172.
        IF t109->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t109->zlnt_json_ownkeys_70e5fd461788->put( p0 = t171 p1 = t172 ).
        ENDIF.
        t108 = t109->key.
        DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t174) = me->conf.
        t173 = t174->zlnt_view_read_sr_15c06369f827( ).
        DATA t175 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t175.
        t104 = zcl_lnt_issue=>at_position( i_file = t105 i_start = t106 i_message_26cb = t107 i_key = t108 i_severity = t173 i_fix = t175 ).
        t103 = t104.
        DATA(t176) = t2.
        DATA(t177) = t103.
        t176->load( ).
        APPEND t177 TO t176->items.
        t176->save( ).
        DATA t178 TYPE abap_bool.
        DATA t179 TYPE i.
        DATA(t180) = t2.
        t180->load( ).
        t179 = lines( t180->items ).
        DATA(t181) = 100.
        t178 = xsdbool( t179 >= t181 ).
        IF t178 = abap_true.
          DATA(t182) = t2.
          result = t182.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t183 TYPE REF TO zcl_lnt_position.
      CLEAR t183.
      DATA(t184) = abap_true.
      IF t184 = abap_true.
        DATA(t185) = t37.
        t183 = t185.
      ELSE.
        DATA t186 TYPE REF TO zcl_lnt_position.
        CLEAR t186.
        t183 = t186.
      ENDIF.
      t6 = t183.
    ENDDO.
    DATA(t187) = t2.
    result = t187.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_start_at_tab_conf( me->g_c_i_s_r_st_at_tb_ts_st_at_tb( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_start_at_tab_conf( me->g_c_i_s_r_st_at_tb_ts_st_at_tb( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_start_at_tab_conf.
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
        t1 = NEW zcl_lnt_start_at_tab_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_st_at_tb_ts_st_at_tb( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_st_at_tb_ts_st_at_tb( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1714_65e7a3ea6de3.
  ENDMETHOD.
ENDCLASS.
