* TS: src/rules/contains_tab.ts:14:1 ContainsTab
CLASS zcl_lnt_contains_tab DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_contains_tab_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_cn_tb_ts_cnt_tb RETURNING VALUE(result) TYPE REF TO zcl_lnt_contains_tab_conf.
    METHODS st_cn_in_sr_rl_cn_tb_ts_cnt_tb IMPORTING i_conf TYPE REF TO zcl_lnt_contains_tab_conf.
    METHODS rn_pr_in_sr_rl_cn_tb_ts_cnt_tb IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS create_issue IMPORTING i_line TYPE i i_tab_col TYPE i i_tab_amount TYPE f i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_contains_tab IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_contains_tab_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |contains_tab|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Code contains tab|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for usage of tabs (enable to enforce spaces)|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |\nhttps://docs.abapopenchecks.org/checks/09/\nhttps://github.c|.
      t11 = t11 && |om/SAP/styleguides/blob/main/clean-abap/CleanABAP.md#indent-|.
      t11 = t11 && |and-snap-to-tab|.
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
      DATA(t23) = |Quickfix|.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = t18.
      DATA(t25) = |Styleguide|.
      t24->load( ).
      APPEND t25 TO t24->items.
      t24->save( ).
      DATA(t26) = t18.
      DATA(t27) = |SingleFile|.
      t26->load( ).
      APPEND t27 TO t26->items.
      t26->save( ).
      DATA(t28) = t18.
      t17 = t28.
      t15 = t17.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t29.
      t15 = t29.
    ENDIF.
    t14 = t15.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    DATA(t32) = abap_true.
    IF t32 = abap_true.
      DATA(t33) = |\tWRITE 'hello world'.|.
      DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t34->has = abap_true.
      t34->value = t33.
      t31 = t34.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t31 = t35.
    ENDIF.
    t30 = t31.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    DATA(t38) = abap_true.
    IF t38 = abap_true.
      DATA(t39) = |  WRITE 'hello world'.|.
      DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t40->has = abap_true.
      t40->value = t39.
      t37 = t40.
    ELSE.
      DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t41.
      t37 = t41.
    ENDIF.
    t36 = t37.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    t42 = t43.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t45.
    t44 = t45.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t30 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t42 i_pseudo_comment = t44 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t50 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t51 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t52 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t53) = |key|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |title|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |shortDescription|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |extendedInformation|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |tags|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |badExample|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    DATA(t65) = |goodExample|.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t65 p1 = t66 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    DATA(t1) = |Code should not contain tabs|.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_cn_tb_ts_cnt_tb.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t3 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t4) = me->conf.
    t3 = t4->zlnt_view_read_sr_f9150f279750( ).
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t2.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ELSEIF t8->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t1 = t7.
    IF t1 = abap_true.
      DATA(t9) = me->conf.
      DATA t10 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t10.
      DATA(t11) = abap_true.
      IF t11 = abap_true.
        DATA(t12) = CONV f( 1 ).
        DATA(t13) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t13->has = abap_true.
        t13->value = t12.
        t10 = t13.
      ELSE.
        DATA t14 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t14.
        t10 = t14.
      ENDIF.
      t9->zlnt_view_write_s_951a733d555d( p0 = t10 ).
    ENDIF.
    DATA(t15) = me->conf.
    result = t15.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_cn_tb_ts_cnt_tb.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_cn_tb_ts_cnt_tb.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t6 TYPE string.
    DATA t7 TYPE REF TO zcl_lnt_abap_file.
    DATA(t8) = t1.
    t7 = t8.
    DATA t9 TYPE string.
    DATA t10 TYPE REF TO zif_lnt_file.
    DATA(t11) = t7.
    t10 = t11->file.
    t9 = t10->get_raw( ).
    t6 = t9.
    DATA(t12) = |\n|.
    DATA(t13) = strlen( t6 ).
    DATA t14 TYPE i.
    DATA(t15) = VALUE i( ).
    DATA(t16) = VALUE i( ).
    DATA t17 TYPE i.
    DATA(t18) = VALUE string( ).
    CREATE OBJECT t5.
    t17 = strlen( t12 ).
    t14 = 0.
    IF t17 = 0.
      WHILE t14 < t13.
        t18 = t6+t14(1).
        APPEND t18 TO t5->items.
        t14 = t14 + 1.
      ENDWHILE.
    ELSE.
      WHILE t14 <= t13.
        FIND FIRST OCCURRENCE OF t12 IN SECTION OFFSET t14 OF t6 MATCH OFFSET t15.
        IF sy-subrc = 0.
          t16 = t15 - t14.
        ELSE.
          t15 = -1.
          t16 = t13 - t14.
        ENDIF.
        CLEAR t18.
        IF t16 > 0.
          t18 = t6+t14(t16).
        ENDIF.
        APPEND t18 TO t5->items.
        IF t15 < 0.
          EXIT.
        ENDIF.
        t14 = t15 + t17.
      ENDWHILE.
    ENDIF.
    t4 = t5.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t21) = t4.
    t20 = t21.
    DATA t22 TYPE i.
    DATA t23 TYPE i.
    DATA(t24) = t20.
    t24->load( ).
    t23 = lines( t24->items ).
    t22 = t23.
    DATA t25 TYPE i.
    DATA(t26) = 0.
    t25 = t26.
    DO.
      DATA t27 TYPE abap_bool.
      DATA(t28) = t25.
      DATA(t29) = t22.
      t27 = xsdbool( t28 < t29 ).
      IF t27 = abap_false.
        EXIT.
      ENDIF.
      DATA t30 TYPE abap_bool.
      DATA(t31) = t20.
      DATA(t32) = t25.
      t30 = t31->has( p0 = t32 ).
      IF t30 = abap_true.
        DATA t33 TYPE string.
        DATA t34 TYPE string.
        DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t36) = t20.
        DATA(t37) = t25.
        t35 = t36->get( p0 = t37 ).
        t34 = t35->value.
        t33 = t34.
        DATA t38 TYPE i.
        DATA(t39) = t25.
        t38 = t39.
        DATA(t40) = VALUE i( ).
        DATA(t41) = VALUE i( ).
        DATA(t42) = VALUE string( ).
        DATA(t43) = t4.
        DATA(t44) = t38.
        t44 = t44 + 1.
        IF t43->has( t44 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t43->load( ).
        CLEAR t42.
        READ TABLE t43->items INDEX t44 INTO t42.
        DATA(t45) = |\t|.
        DATA(t46) = strlen( t42 ).
        IF t45 IS INITIAL.
          t41 = 0.
        ELSE.
          FIND t45 IN t42 MATCH OFFSET t41.
          IF sy-subrc <> 0.
            t41 = -1.
          ENDIF.
        ENDIF.
        t40 = t41.
        DATA t47 TYPE abap_bool.
        DATA(t48) = t40.
        DATA(t49) = 0.
        t47 = xsdbool( t48 >= t49 ).
        IF t47 = abap_true.
          DATA t50 TYPE f.
          DATA(t51) = CONV f( 1 ).
          t50 = t51.
          DO.
            DATA(t52) = VALUE abap_bool( ).
            DATA(t53) = VALUE int8( ).
            DATA(t54) = VALUE string( ).
            DATA(t55) = VALUE string( ).
            DATA(t56) = t4.
            DATA(t57) = t38.
            t57 = t57 + 1.
            IF t56->has( t57 - 1 ) = abap_false.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t56->load( ).
            CLEAR t55.
            READ TABLE t56->items INDEX t57 INTO t55.
            t54 = t55.
            DATA t58 TYPE string.
            DATA(t59) = |\t|.
            t58 = t59.
            DATA(t60) = VALUE i( ).
            DATA(t61) = VALUE i( ).
            DATA t62 TYPE f.
            DATA t63 TYPE f.
            DATA t64 TYPE f.
            DATA(t65) = t40.
            t64 = t65.
            DATA(t66) = t50.
            t63 = t64 + t66.
            DATA(t67) = CONV f( 1 ).
            t62 = t63 - t67.
            IF t62 > range_i32_upper.
              t61 = range_i32_upper.
            ELSEIF t62 < range_i32_lower.
              t61 = range_i32_lower.
            ELSE.
              t61 = trunc( t62 ).
            ENDIF.
            t60 = t61.
            DATA t68 TYPE i.
            DATA t69 TYPE i.
            DATA(t70) = t54.
            DATA(t71) = strlen( t70 ).
            t69 = t71.
            t68 = t69.
            DATA(t72) = VALUE i( ).
            DATA(t73) = VALUE i( ).
            DATA t74 TYPE abap_bool.
            DATA(t75) = t60.
            DATA(t76) = 0.
            t74 = xsdbool( t75 < t76 ).
            IF t74 = abap_true.
              DATA(t77) = 0.
              t73 = t77.
            ELSE.
              DATA(t78) = VALUE i( ).
              DATA t79 TYPE abap_bool.
              DATA(t80) = t60.
              DATA(t81) = t68.
              t79 = xsdbool( t80 > t81 ).
              IF t79 = abap_true.
                DATA(t82) = t68.
                t78 = t82.
              ELSE.
                DATA(t83) = t60.
                t78 = t83.
              ENDIF.
              t73 = t78.
            ENDIF.
            t72 = t73.
            DATA(t84) = VALUE i( ).
            DATA(t85) = VALUE i( ).
            DATA(t86) = VALUE string( ).
            DATA(t87) = t54.
            DATA(t88) = t72.
            DATA(t89) = t68.
            DATA(t90) = strlen( t87 ).
            t88 = COND i( WHEN t88 < 0 THEN 0 WHEN t88 > t90 THEN t90 ELSE t88 ).
            t89 = COND i( WHEN t89 < 0 THEN 0 WHEN t89 > t90 THEN t90 ELSE t89 ).
            IF t88 > t89.
              t90 = t88.
              t88 = t89.
              t89 = t90.
            ENDIF.
            t90 = t89 - t88.
            t86 = t87+t88(t90).
            DATA(t91) = t58.
            DATA(t92) = strlen( t86 ).
            IF t91 IS INITIAL.
              t85 = 0.
            ELSE.
              FIND t91 IN t86 MATCH OFFSET t85.
              IF sy-subrc <> 0.
                t85 = -1.
              ENDIF.
            ENDIF.
            t84 = t85.
            DATA(t93) = VALUE int8( ).
            DATA t94 TYPE abap_bool.
            DATA(t95) = t84.
            DATA(t96) = 0.
            t94 = xsdbool( t95 < t96 ).
            IF t94 = abap_true.
              DATA t97 TYPE int8.
              DATA(t98) = t84.
              t97 = t98.
              t93 = t97.
            ELSE.
              DATA t99 TYPE int8.
              DATA t100 TYPE int8.
              DATA(t101) = t84.
              t100 = t101.
              DATA t102 TYPE int8.
              DATA(t103) = t72.
              t102 = t103.
              t99 = t100 + t102.
              t93 = t99.
            ENDIF.
            t53 = t93.
            DATA(t104) = CONV int8( 0 ).
            t52 = xsdbool( t53 >= t104 ).
            IF t52 = abap_false.
              EXIT.
            ENDIF.
            DATA t105 TYPE f.
            DATA(t106) = t50.
            DATA(t107) = CONV f( 1 ).
            t105 = t106 + t107.
            t50 = t105.
          ENDDO.
          DATA(t108) = t2.
          DATA t109 TYPE REF TO zcl_lnt_issue.
          CLEAR t109.
          DATA t110 TYPE i.
          DATA(t111) = t38.
          t110 = t111.
          DATA t112 TYPE i.
          DATA(t113) = t40.
          t112 = t113.
          DATA t114 TYPE f.
          DATA(t115) = t50.
          t114 = t115.
          DATA t116 TYPE REF TO zcl_lnt_abap_file.
          DATA(t117) = t1.
          t116 = t117.
          DATA t118 TYPE REF TO zcl_lnt_issue.
          CLEAR t118.
          DATA t119 TYPE REF TO zcl_lnt_position.
          DATA t120 TYPE REF TO zcl_lnt_position.
          DATA t121 TYPE f.
          DATA t122 TYPE i.
          DATA(t123) = t110.
          DATA(t124) = 1.
          t122 = t123 + t124.
          t121 = t122.
          DATA t125 TYPE f.
          DATA t126 TYPE i.
          DATA(t127) = t112.
          DATA(t128) = 1.
          t126 = t127 + t128.
          t125 = t126.
          DATA(t129) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t129->has = abap_true.
          t129->value = t125.
          t120 = NEW zcl_lnt_position( i_row = t121 i_col = t129 ).
          t119 = t120.
          DATA t130 TYPE REF TO zcl_lnt_position.
          DATA t131 TYPE REF TO zcl_lnt_position.
          DATA t132 TYPE f.
          DATA t133 TYPE i.
          DATA(t134) = t110.
          DATA(t135) = 1.
          t133 = t134 + t135.
          t132 = t133.
          DATA t136 TYPE f.
          DATA t137 TYPE f.
          DATA(t138) = t112.
          t137 = t138.
          DATA(t139) = t114.
          t136 = t137 + t139.
          DATA(t140) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t140->has = abap_true.
          t140->value = t136.
          t131 = NEW zcl_lnt_position( i_row = t132 i_col = t140 ).
          t130 = t131.
          DATA t141 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t141.
          DATA t142 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t142.
          DATA(t143) = t116.
          DATA(t144) = t119.
          DATA(t145) = t130.
          DATA(t146) = VALUE string( ).
          DATA t147 TYPE string.
          DATA(t148) = | |.
          t147 = t148.
          DATA(t149) = VALUE string( ).
          DATA(t150) = t147.
          DATA(t151) = VALUE f( ).
          DATA t152 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t153) = CAST zcl_lnt_contains_tab_conf( me->gt_cn_in_sr_rl_cn_tb_ts_cnt_tb( ) ).
          t152 = t153->zlnt_view_read_sr_f9150f279750( ).
          IF t152->number_special <> 0.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t151 = t152->value.
          DATA(t154) = strlen( t150 ).
          DATA(t155) = CONV f( trunc( t151 ) ).
          IF t155 < 0.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          CLEAR t149.
          IF t150 IS NOT INITIAL.
            IF t155 > 2147483647 OR t155 * strlen( t150 ) > 2147483647.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t149 = repeat( val = t150 occ = CONV i( t155 ) ).
          ENDIF.
          t146 = t149.
          t142 = zcl_lnt_edit_helper=>replace_range( i_file = t143 i_start = t144 i_end = t145 i_text = t146 ).
          t141 = t142.
          DATA t156 TYPE REF TO zcl_lnt_issue.
          CLEAR t156.
          DATA(t157) = t116.
          DATA(t158) = t119.
          DATA(t159) = t130.
          DATA(t160) = |Code should not contain tabs|.
          DATA(t161) = VALUE string( ).
          DATA t162 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t162.
          DATA t163 TYPE string.
          DATA(t164) = |contains_tab|.
          t163 = t164.
          DATA t165 TYPE string.
          DATA(t166) = |Code contains tab|.
          t165 = t166.
          DATA t167 TYPE string.
          DATA(t168) = |Checks for usage of tabs (enable to enforce spaces)|.
          t167 = t168.
          DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t169.
          DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t170.
          DATA(t171) = abap_true.
          IF t171 = abap_true.
            DATA(t172) = |\nhttps://docs.abapopenchecks.org/checks/09/\nhttps://github.c|.
            t172 = t172 && |om/SAP/styleguides/blob/main/clean-abap/CleanABAP.md#indent-|.
            t172 = t172 && |and-snap-to-tab|.
            DATA(t173) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t173->has = abap_true.
            t173->value = t172.
            t170 = t173.
          ELSE.
            DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t174.
            t170 = t174.
          ENDIF.
          t169 = t170.
          DATA t175 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t175.
          DATA t176 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t176.
          DATA(t177) = abap_true.
          IF t177 = abap_true.
            DATA t178 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t179 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t180 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t180.
            t179 = t180.
            DATA(t181) = t179.
            DATA(t182) = |Whitespace|.
            t181->load( ).
            APPEND t182 TO t181->items.
            t181->save( ).
            DATA(t183) = t179.
            DATA(t184) = |Quickfix|.
            t183->load( ).
            APPEND t184 TO t183->items.
            t183->save( ).
            DATA(t185) = t179.
            DATA(t186) = |Styleguide|.
            t185->load( ).
            APPEND t186 TO t185->items.
            t185->save( ).
            DATA(t187) = t179.
            DATA(t188) = |SingleFile|.
            t187->load( ).
            APPEND t188 TO t187->items.
            t187->save( ).
            DATA(t189) = t179.
            t178 = t189.
            t176 = t178.
          ELSE.
            DATA t190 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t190.
            t176 = t190.
          ENDIF.
          t175 = t176.
          DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t191.
          DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t192.
          DATA(t193) = abap_true.
          IF t193 = abap_true.
            DATA(t194) = |\tWRITE 'hello world'.|.
            DATA(t195) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t195->has = abap_true.
            t195->value = t194.
            t192 = t195.
          ELSE.
            DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t196.
            t192 = t196.
          ENDIF.
          t191 = t192.
          DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t197.
          DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t198.
          DATA(t199) = abap_true.
          IF t199 = abap_true.
            DATA(t200) = |  WRITE 'hello world'.|.
            DATA(t201) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t201->has = abap_true.
            t201->value = t200.
            t198 = t201.
          ELSE.
            DATA t202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t202.
            t198 = t202.
          ENDIF.
          t197 = t198.
          DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t204 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t204.
          t203 = t204.
          DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t206.
          t205 = t206.
          t162 = NEW zcl_lnt_irule_metadata( i_key = t163 i_title = t165 i_short_description = t167 i_bad_example = t191 i_good_example = t197 i_extended_information = t169 i_tags = t175 i_pragma = t203 i_pseudo_comment = t205 ).
          CREATE OBJECT t162->zlnt_view_ownkeys_b0e8086400eb.
          t162->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t207.
          IF t162->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t162->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t207 ).
          ENDIF.
          DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t208.
          IF t162->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t162->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t208 ).
          ENDIF.
          DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t209.
          IF t162->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t162->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t209 ).
          ENDIF.
          DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t210.
          IF t162->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t162->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t210 ).
          ENDIF.
          DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t211.
          IF t162->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t162->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t211 ).
          ENDIF.
          DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t212.
          IF t162->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t162->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t212 ).
          ENDIF.
          DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t213.
          IF t162->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t162->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t213 ).
          ENDIF.
          CREATE OBJECT t162->zlnt_json_ownkeys_70e5fd461788.
          t162->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t214) = |key|.
          DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t215.
          IF t162->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t162->zlnt_json_ownkeys_70e5fd461788->put( p0 = t214 p1 = t215 ).
          ENDIF.
          DATA(t216) = |title|.
          DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t217.
          IF t162->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t162->zlnt_json_ownkeys_70e5fd461788->put( p0 = t216 p1 = t217 ).
          ENDIF.
          DATA(t218) = |shortDescription|.
          DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t219.
          IF t162->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t162->zlnt_json_ownkeys_70e5fd461788->put( p0 = t218 p1 = t219 ).
          ENDIF.
          DATA(t220) = |extendedInformation|.
          DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t221.
          IF t162->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t162->zlnt_json_ownkeys_70e5fd461788->put( p0 = t220 p1 = t221 ).
          ENDIF.
          DATA(t222) = |tags|.
          DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t223.
          IF t162->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t162->zlnt_json_ownkeys_70e5fd461788->put( p0 = t222 p1 = t223 ).
          ENDIF.
          DATA(t224) = |badExample|.
          DATA t225 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t225.
          IF t162->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t162->zlnt_json_ownkeys_70e5fd461788->put( p0 = t224 p1 = t225 ).
          ENDIF.
          DATA(t226) = |goodExample|.
          DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t227.
          IF t162->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t162->zlnt_json_ownkeys_70e5fd461788->put( p0 = t226 p1 = t227 ).
          ENDIF.
          t161 = t162->key.
          DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t229) = me->conf.
          t228 = t229->zlnt_view_read_sr_15c06369f827( ).
          DATA t230 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t230.
          DATA(t231) = abap_true.
          IF t231 = abap_true.
            DATA(t232) = t141.
            t230 = t232.
          ELSE.
            DATA t233 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t233.
            t230 = t233.
          ENDIF.
          DATA t234 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t234.
          t156 = zcl_lnt_issue=>at_range( i_file = t157 i_start = t158 i_end = t159 i_message_26cb = t160 i_key = t161 i_severity = t228 i_fix = t230 i_alternative_fixes = t234 ).
          t118 = t156.
          t109 = t118.
          t108->load( ).
          APPEND t109 TO t108->items.
          t108->save( ).
        ENDIF.
      ENDIF.
      DATA t235 TYPE i.
      DATA(t236) = t25.
      DATA(t237) = 1.
      t235 = t236 + t237.
      t25 = t235.
    ENDDO.
    DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t238.
    t19 = t238.
    DATA(t239) = t2.
    result = t239.

  ENDMETHOD.

  METHOD create_issue.
    DATA(t1) = i_line.
    DATA(t2) = i_tab_col.
    DATA(t3) = i_tab_amount.
    DATA(t4) = i_file.
    DATA t5 TYPE REF TO zcl_lnt_position.
    DATA t6 TYPE REF TO zcl_lnt_position.
    DATA t7 TYPE f.
    DATA t8 TYPE i.
    DATA(t9) = t1.
    DATA(t10) = 1.
    t8 = t9 + t10.
    t7 = t8.
    DATA t11 TYPE f.
    DATA t12 TYPE i.
    DATA(t13) = t2.
    DATA(t14) = 1.
    t12 = t13 + t14.
    t11 = t12.
    DATA(t15) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t15->has = abap_true.
    t15->value = t11.
    t6 = NEW zcl_lnt_position( i_row = t7 i_col = t15 ).
    t5 = t6.
    DATA t16 TYPE REF TO zcl_lnt_position.
    DATA t17 TYPE REF TO zcl_lnt_position.
    DATA t18 TYPE f.
    DATA t19 TYPE i.
    DATA(t20) = t1.
    DATA(t21) = 1.
    t19 = t20 + t21.
    t18 = t19.
    DATA t22 TYPE f.
    DATA t23 TYPE f.
    DATA(t24) = t2.
    t23 = t24.
    DATA(t25) = t3.
    t22 = t23 + t25.
    DATA(t26) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t26->has = abap_true.
    t26->value = t22.
    t17 = NEW zcl_lnt_position( i_row = t18 i_col = t26 ).
    t16 = t17.
    DATA t27 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t28.
    DATA(t29) = t4.
    DATA(t30) = t5.
    DATA(t31) = t16.
    DATA(t32) = VALUE string( ).
    DATA t33 TYPE string.
    DATA(t34) = | |.
    t33 = t34.
    DATA(t35) = VALUE string( ).
    DATA(t36) = t33.
    DATA(t37) = VALUE f( ).
    DATA t38 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t39) = CAST zcl_lnt_contains_tab_conf( me->gt_cn_in_sr_rl_cn_tb_ts_cnt_tb( ) ).
    t38 = t39->zlnt_view_read_sr_f9150f279750( ).
    IF t38->number_special <> 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t37 = t38->value.
    DATA(t40) = strlen( t36 ).
    DATA(t41) = CONV f( trunc( t37 ) ).
    IF t41 < 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    CLEAR t35.
    IF t36 IS NOT INITIAL.
      IF t41 > 2147483647 OR t41 * strlen( t36 ) > 2147483647.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t35 = repeat( val = t36 occ = CONV i( t41 ) ).
    ENDIF.
    t32 = t35.
    t28 = zcl_lnt_edit_helper=>replace_range( i_file = t29 i_start = t30 i_end = t31 i_text = t32 ).
    t27 = t28.
    DATA t42 TYPE REF TO zcl_lnt_issue.
    CLEAR t42.
    DATA(t43) = t4.
    DATA(t44) = t5.
    DATA(t45) = t16.
    DATA(t46) = |Code should not contain tabs|.
    DATA(t47) = VALUE string( ).
    DATA t48 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t48.
    DATA t49 TYPE string.
    DATA(t50) = |contains_tab|.
    t49 = t50.
    DATA t51 TYPE string.
    DATA(t52) = |Code contains tab|.
    t51 = t52.
    DATA t53 TYPE string.
    DATA(t54) = |Checks for usage of tabs (enable to enforce spaces)|.
    t53 = t54.
    DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t55.
    DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t56.
    DATA(t57) = abap_true.
    IF t57 = abap_true.
      DATA(t58) = |\nhttps://docs.abapopenchecks.org/checks/09/\nhttps://github.c|.
      t58 = t58 && |om/SAP/styleguides/blob/main/clean-abap/CleanABAP.md#indent-|.
      t58 = t58 && |and-snap-to-tab|.
      DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t59->has = abap_true.
      t59->value = t58.
      t56 = t59.
    ELSE.
      DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t60.
      t56 = t60.
    ENDIF.
    t55 = t56.
    DATA t61 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t62.
    DATA(t63) = abap_true.
    IF t63 = abap_true.
      DATA t64 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t65 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t66 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t66.
      t65 = t66.
      DATA(t67) = t65.
      DATA(t68) = |Whitespace|.
      t67->load( ).
      APPEND t68 TO t67->items.
      t67->save( ).
      DATA(t69) = t65.
      DATA(t70) = |Quickfix|.
      t69->load( ).
      APPEND t70 TO t69->items.
      t69->save( ).
      DATA(t71) = t65.
      DATA(t72) = |Styleguide|.
      t71->load( ).
      APPEND t72 TO t71->items.
      t71->save( ).
      DATA(t73) = t65.
      DATA(t74) = |SingleFile|.
      t73->load( ).
      APPEND t74 TO t73->items.
      t73->save( ).
      DATA(t75) = t65.
      t64 = t75.
      t62 = t64.
    ELSE.
      DATA t76 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t76.
      t62 = t76.
    ENDIF.
    t61 = t62.
    DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t77.
    DATA t78 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t78.
    DATA(t79) = abap_true.
    IF t79 = abap_true.
      DATA(t80) = |\tWRITE 'hello world'.|.
      DATA(t81) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t81->has = abap_true.
      t81->value = t80.
      t78 = t81.
    ELSE.
      DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t82.
      t78 = t82.
    ENDIF.
    t77 = t78.
    DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t83.
    DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t84.
    DATA(t85) = abap_true.
    IF t85 = abap_true.
      DATA(t86) = |  WRITE 'hello world'.|.
      DATA(t87) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t87->has = abap_true.
      t87->value = t86.
      t84 = t87.
    ELSE.
      DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t88.
      t84 = t88.
    ENDIF.
    t83 = t84.
    DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t90.
    t89 = t90.
    DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t92.
    t91 = t92.
    t48 = NEW zcl_lnt_irule_metadata( i_key = t49 i_title = t51 i_short_description = t53 i_bad_example = t77 i_good_example = t83 i_extended_information = t55 i_tags = t61 i_pragma = t89 i_pseudo_comment = t91 ).
    CREATE OBJECT t48->zlnt_view_ownkeys_b0e8086400eb.
    t48->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t93.
    IF t48->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t48->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t93 ).
    ENDIF.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t94.
    IF t48->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t48->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t94 ).
    ENDIF.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    IF t48->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t48->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t95 ).
    ENDIF.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t96.
    IF t48->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t48->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t96 ).
    ENDIF.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    IF t48->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t48->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t97 ).
    ENDIF.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    IF t48->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t48->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t98 ).
    ENDIF.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    IF t48->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t48->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t99 ).
    ENDIF.
    CREATE OBJECT t48->zlnt_json_ownkeys_70e5fd461788.
    t48->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t100) = |key|.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    IF t48->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t48->zlnt_json_ownkeys_70e5fd461788->put( p0 = t100 p1 = t101 ).
    ENDIF.
    DATA(t102) = |title|.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t103.
    IF t48->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t48->zlnt_json_ownkeys_70e5fd461788->put( p0 = t102 p1 = t103 ).
    ENDIF.
    DATA(t104) = |shortDescription|.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t105.
    IF t48->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t48->zlnt_json_ownkeys_70e5fd461788->put( p0 = t104 p1 = t105 ).
    ENDIF.
    DATA(t106) = |extendedInformation|.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    IF t48->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t48->zlnt_json_ownkeys_70e5fd461788->put( p0 = t106 p1 = t107 ).
    ENDIF.
    DATA(t108) = |tags|.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t109.
    IF t48->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t48->zlnt_json_ownkeys_70e5fd461788->put( p0 = t108 p1 = t109 ).
    ENDIF.
    DATA(t110) = |badExample|.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t111.
    IF t48->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t48->zlnt_json_ownkeys_70e5fd461788->put( p0 = t110 p1 = t111 ).
    ENDIF.
    DATA(t112) = |goodExample|.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t113.
    IF t48->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t48->zlnt_json_ownkeys_70e5fd461788->put( p0 = t112 p1 = t113 ).
    ENDIF.
    t47 = t48->key.
    DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t115) = me->conf.
    t114 = t115->zlnt_view_read_sr_15c06369f827( ).
    DATA t116 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    CLEAR t116.
    DATA(t117) = abap_true.
    IF t117 = abap_true.
      DATA(t118) = t27.
      t116 = t118.
    ELSE.
      DATA t119 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t119.
      t116 = t119.
    ENDIF.
    DATA t120 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t120.
    t42 = zcl_lnt_issue=>at_range( i_file = t43 i_start = t44 i_end = t45 i_message_26cb = t46 i_key = t47 i_severity = t114 i_fix = t116 i_alternative_fixes = t120 ).
    result = t42.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_contains_tab_conf( me->gt_cn_in_sr_rl_cn_tb_ts_cnt_tb( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_contains_tab_conf( me->gt_cn_in_sr_rl_cn_tb_ts_cnt_tb( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_contains_tab_conf.
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
        IF i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND i_conf->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND i_conf->tag <>
        zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
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
        t1 = NEW zcl_lnt_contains_tab_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_cn_tb_ts_cnt_tb( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_cn_tb_ts_cnt_tb( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1467_2a8be49bf9a6.
  ENDMETHOD.
ENDCLASS.
