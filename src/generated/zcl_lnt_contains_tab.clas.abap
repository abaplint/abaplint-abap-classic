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
    me->conf = NEW zcl_lnt_contains_tab_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |contains_tab|.
    DATA t4 TYPE string.
    t4 = |Code contains tab|.
    DATA t6 TYPE string.
    t6 = |Checks for usage of tabs (enable to enforce spaces)|.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |\nhttps://docs.abapopenchecks.org/checks/09/\nhttps://github.c|.
    t11 = t11 && |om/SAP/styleguides/blob/main/clean-abap/CleanABAP.md#indent-|.
    t11 = t11 && |and-snap-to-tab|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t19.
    t18 = t19.
    DATA(t21) = |Whitespace|.
    t18->load( ).
    APPEND t21 TO t18->items.
    t18->save( ).
    DATA(t23) = |Quickfix|.
    t18->load( ).
    APPEND t23 TO t18->items.
    t18->save( ).
    DATA(t25) = |Styleguide|.
    t18->load( ).
    APPEND t25 TO t18->items.
    t18->save( ).
    DATA(t27) = |SingleFile|.
    t18->load( ).
    APPEND t27 TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t33) = |\tWRITE 'hello world'.|.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = t33.
    t30 = t34.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t39) = |  WRITE 'hello world'.|.
    DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t40->has = abap_true.
    t40->value = t39.
    t36 = t40.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t30 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t42 i_pseudo_comment = t44 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t46 ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t50 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t51 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t52 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t53) = |key|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    DATA(t55) = |title|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |shortDescription|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |extendedInformation|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |tags|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |badExample|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    DATA(t65) = |goodExample|.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t65 p1 = t66 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    result = |Code should not contain tabs|.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_cn_tb_ts_cnt_tb.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t3 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t3 = me->conf->zlnt_view_read_sr_f9150f279750( ).
    t2 = t3.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = VALUE abap_bool( ).
    IF t2 IS INITIAL.
      t7 = abap_true.
    ELSEIF t2->has = abap_false.
      t7 = abap_true.
    ENDIF.
    t1 = t7.
    IF t1 = abap_true.
      DATA(t9) = me->conf.
      DATA t10 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t12) = CONV f( 1 ).
      DATA(t13) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t13->has = abap_true.
      t13->value = t12.
      t10 = t13.
      t9->zlnt_view_write_s_951a733d555d( p0 = t10 ).
    ENDIF.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_cn_tb_ts_cnt_tb.
    me->conf = i_conf.
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
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t6 TYPE string.
    DATA t9 TYPE string.
    DATA t10 TYPE REF TO zif_lnt_file.
    t10 = t1->file.
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
    DATA t20 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t20 = t4.
    DATA t22 TYPE i.
    DATA t23 TYPE i.
    t20->load( ).
    t23 = lines( t20->items ).
    t22 = t23.
    DATA t25 TYPE i.
    t25 = 0.
    DO.
      DATA t27 TYPE abap_bool.
      t27 = xsdbool( t25 < t22 ).
      IF t27 = abap_false.
        EXIT.
      ENDIF.
      DATA t30 TYPE abap_bool.
      t30 = t20->has( p0 = t25 ).
      IF t30 = abap_true.
        DATA t33 TYPE string.
        DATA t34 TYPE string.
        DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t35 = t20->get( p0 = t25 ).
        t34 = t35->value.
        t33 = t34.
        DATA t38 TYPE i.
        t38 = t25.
        DATA(t40) = VALUE i( ).
        DATA(t41) = VALUE i( ).
        DATA(t42) = VALUE string( ).
        DATA(t44) = t38.
        t44 = t44 + 1.
        IF t4->has( t44 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t4->load( ).
        CLEAR t42.
        READ TABLE t4->items INDEX t44 INTO t42.
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
        DATA(t49) = 0.
        t47 = xsdbool( t40 >= t49 ).
        IF t47 = abap_true.
          DATA t50 TYPE f.
          DATA(t51) = CONV f( 1 ).
          t50 = t51.
          DO.
            DATA(t52) = VALUE abap_bool( ).
            DATA(t53) = VALUE int8( ).
            DATA(t54) = VALUE string( ).
            DATA(t55) = VALUE string( ).
            DATA(t57) = t38.
            t57 = t57 + 1.
            IF t4->has( t57 - 1 ) = abap_false.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t4->load( ).
            CLEAR t55.
            READ TABLE t4->items INDEX t57 INTO t55.
            t54 = t55.
            DATA t58 TYPE string.
            t58 = |\t|.
            DATA(t60) = VALUE i( ).
            DATA(t61) = VALUE i( ).
            DATA t62 TYPE f.
            DATA t63 TYPE f.
            DATA t64 TYPE f.
            t64 = t40.
            t63 = t64 + t50.
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
            t68 = strlen( t54 ).
            DATA(t72) = VALUE i( ).
            DATA(t73) = VALUE i( ).
            DATA t74 TYPE abap_bool.
            DATA(t76) = 0.
            t74 = xsdbool( t60 < t76 ).
            IF t74 = abap_true.
              t73 = 0.
            ELSE.
              DATA(t78) = VALUE i( ).
              DATA t79 TYPE abap_bool.
              t79 = xsdbool( t60 > t68 ).
              IF t79 = abap_true.
                t78 = t68.
              ELSE.
                t78 = t60.
              ENDIF.
              t73 = t78.
            ENDIF.
            t72 = t73.
            DATA(t84) = VALUE i( ).
            DATA(t85) = VALUE i( ).
            DATA(t86) = VALUE string( ).
            DATA(t88) = t72.
            DATA(t89) = t68.
            DATA(t90) = strlen( t54 ).
            t88 = COND i( WHEN t88 < 0 THEN 0 WHEN t88 > t90 THEN t90 ELSE t88 ).
            t89 = COND i( WHEN t89 < 0 THEN 0 WHEN t89 > t90 THEN t90 ELSE t89 ).
            IF t88 > t89.
              t90 = t88.
              t88 = t89.
              t89 = t90.
            ENDIF.
            t90 = t89 - t88.
            t86 = t54+t88(t90).
            DATA(t92) = strlen( t86 ).
            IF t58 IS INITIAL.
              t85 = 0.
            ELSE.
              FIND t58 IN t86 MATCH OFFSET t85.
              IF sy-subrc <> 0.
                t85 = -1.
              ENDIF.
            ENDIF.
            t84 = t85.
            DATA(t93) = VALUE int8( ).
            DATA t94 TYPE abap_bool.
            DATA(t96) = 0.
            t94 = xsdbool( t84 < t96 ).
            IF t94 = abap_true.
              DATA t97 TYPE int8.
              t97 = t84.
              t93 = t97.
            ELSE.
              DATA t99 TYPE int8.
              DATA t100 TYPE int8.
              t100 = t84.
              DATA t102 TYPE int8.
              t102 = t72.
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
            DATA(t107) = CONV f( 1 ).
            t105 = t50 + t107.
            t50 = t105.
          ENDDO.
          DATA t109 TYPE REF TO zcl_lnt_issue.
          CLEAR t109.
          DATA t110 TYPE i.
          t110 = t38.
          DATA t112 TYPE i.
          t112 = t40.
          DATA t116 TYPE REF TO zcl_lnt_abap_file.
          t116 = t1.
          DATA t119 TYPE REF TO zcl_lnt_position.
          DATA t120 TYPE REF TO zcl_lnt_position.
          DATA t121 TYPE f.
          DATA t122 TYPE i.
          DATA(t124) = 1.
          t122 = t110 + t124.
          t121 = t122.
          DATA t125 TYPE f.
          DATA t126 TYPE i.
          DATA(t128) = 1.
          t126 = t112 + t128.
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
          DATA(t135) = 1.
          t133 = t110 + t135.
          t132 = t133.
          DATA t136 TYPE f.
          DATA t137 TYPE f.
          t137 = t112.
          t136 = t137 + t50.
          DATA(t140) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t140->has = abap_true.
          t140->value = t136.
          t131 = NEW zcl_lnt_position( i_row = t132 i_col = t140 ).
          t130 = t131.
          DATA t142 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t142.
          DATA(t146) = VALUE string( ).
          DATA t147 TYPE string.
          t147 = | |.
          DATA(t149) = VALUE string( ).
          DATA(t151) = VALUE f( ).
          DATA t152 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t153) = CAST zcl_lnt_contains_tab_conf( me->gt_cn_in_sr_rl_cn_tb_ts_cnt_tb( ) ).
          t152 = t153->zlnt_view_read_sr_f9150f279750( ).
          IF t152->number_special <> 0.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t151 = t152->value.
          DATA(t154) = strlen( t147 ).
          DATA(t155) = CONV f( trunc( t151 ) ).
          IF t155 < 0.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          CLEAR t149.
          IF t147 IS NOT INITIAL.
            IF t155 > 2147483647 OR t155 * strlen( t147 ) > 2147483647.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t149 = repeat( val = t147 occ = CONV i( t155 ) ).
          ENDIF.
          t146 = t149.
          t142 = zcl_lnt_edit_helper=>replace_range( i_file = t116 i_start = t119 i_end = t130 i_text = t146 ).
          DATA t156 TYPE REF TO zcl_lnt_issue.
          CLEAR t156.
          DATA(t160) = |Code should not contain tabs|.
          DATA(t161) = VALUE string( ).
          DATA t162 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t162.
          DATA t163 TYPE string.
          t163 = |contains_tab|.
          DATA t165 TYPE string.
          t165 = |Code contains tab|.
          DATA t167 TYPE string.
          t167 = |Checks for usage of tabs (enable to enforce spaces)|.
          DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t169.
          DATA(t172) = |\nhttps://docs.abapopenchecks.org/checks/09/\nhttps://github.c|.
          t172 = t172 && |om/SAP/styleguides/blob/main/clean-abap/CleanABAP.md#indent-|.
          t172 = t172 && |and-snap-to-tab|.
          DATA(t173) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t173->has = abap_true.
          t173->value = t172.
          t169 = t173.
          DATA t175 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t175.
          DATA t179 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t180 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t180.
          t179 = t180.
          DATA(t182) = |Whitespace|.
          t179->load( ).
          APPEND t182 TO t179->items.
          t179->save( ).
          DATA(t184) = |Quickfix|.
          t179->load( ).
          APPEND t184 TO t179->items.
          t179->save( ).
          DATA(t186) = |Styleguide|.
          t179->load( ).
          APPEND t186 TO t179->items.
          t179->save( ).
          DATA(t188) = |SingleFile|.
          t179->load( ).
          APPEND t188 TO t179->items.
          t179->save( ).
          t175 = t179.
          DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t191.
          DATA(t194) = |\tWRITE 'hello world'.|.
          DATA(t195) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t195->has = abap_true.
          t195->value = t194.
          t191 = t195.
          DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t197.
          DATA(t200) = |  WRITE 'hello world'.|.
          DATA(t201) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t201->has = abap_true.
          t201->value = t200.
          t197 = t201.
          DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t203.
          DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t205.
          t162 = NEW zcl_lnt_irule_metadata( i_key = t163 i_title = t165 i_short_description = t167 i_bad_example = t191 i_good_example = t197 i_extended_information = t169 i_tags = t175 i_pragma = t203 i_pseudo_comment = t205 ).
          CREATE OBJECT t162->zlnt_view_ownkeys_b0e8086400eb.
          t162->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t207.
          t162->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t207 ).
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
          t162->zlnt_json_ownkeys_70e5fd461788->put( p0 = t214 p1 = t215 ).
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
          t228 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t230 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t230.
          t230 = t142.
          DATA t234 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t234.
          t156 = zcl_lnt_issue=>at_range( i_file = t116 i_start = t119 i_end = t130 i_message_26cb = t160 i_key = t161 i_severity = t228 i_fix = t230 i_alternative_fixes = t234 ).
          t109 = t156.
          t2->load( ).
          APPEND t109 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDIF.
      DATA t235 TYPE i.
      DATA(t237) = 1.
      t235 = t25 + t237.
      t25 = t235.
    ENDDO.
    result = t2.

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
    DATA(t10) = 1.
    t8 = t1 + t10.
    t7 = t8.
    DATA t11 TYPE f.
    DATA t12 TYPE i.
    DATA(t14) = 1.
    t12 = t2 + t14.
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
    DATA(t21) = 1.
    t19 = t1 + t21.
    t18 = t19.
    DATA t22 TYPE f.
    DATA t23 TYPE f.
    t23 = t2.
    t22 = t23 + t3.
    DATA(t26) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t26->has = abap_true.
    t26->value = t22.
    t17 = NEW zcl_lnt_position( i_row = t18 i_col = t26 ).
    t16 = t17.
    DATA t28 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t32) = VALUE string( ).
    DATA t33 TYPE string.
    t33 = | |.
    DATA(t35) = VALUE string( ).
    DATA(t37) = VALUE f( ).
    DATA t38 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t39) = CAST zcl_lnt_contains_tab_conf( me->gt_cn_in_sr_rl_cn_tb_ts_cnt_tb( ) ).
    t38 = t39->zlnt_view_read_sr_f9150f279750( ).
    IF t38->number_special <> 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t37 = t38->value.
    DATA(t40) = strlen( t33 ).
    DATA(t41) = CONV f( trunc( t37 ) ).
    IF t41 < 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    CLEAR t35.
    IF t33 IS NOT INITIAL.
      IF t41 > 2147483647 OR t41 * strlen( t33 ) > 2147483647.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t35 = repeat( val = t33 occ = CONV i( t41 ) ).
    ENDIF.
    t32 = t35.
    t28 = zcl_lnt_edit_helper=>replace_range( i_file = t4 i_start = t5 i_end = t16 i_text = t32 ).
    DATA t42 TYPE REF TO zcl_lnt_issue.
    DATA(t46) = |Code should not contain tabs|.
    DATA(t47) = VALUE string( ).
    DATA t48 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t49 TYPE string.
    t49 = |contains_tab|.
    DATA t51 TYPE string.
    t51 = |Code contains tab|.
    DATA t53 TYPE string.
    t53 = |Checks for usage of tabs (enable to enforce spaces)|.
    DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t58) = |\nhttps://docs.abapopenchecks.org/checks/09/\nhttps://github.c|.
    t58 = t58 && |om/SAP/styleguides/blob/main/clean-abap/CleanABAP.md#indent-|.
    t58 = t58 && |and-snap-to-tab|.
    DATA(t59) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t59->has = abap_true.
    t59->value = t58.
    t55 = t59.
    DATA t61 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t65 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t66 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t66.
    t65 = t66.
    DATA(t68) = |Whitespace|.
    t65->load( ).
    APPEND t68 TO t65->items.
    t65->save( ).
    DATA(t70) = |Quickfix|.
    t65->load( ).
    APPEND t70 TO t65->items.
    t65->save( ).
    DATA(t72) = |Styleguide|.
    t65->load( ).
    APPEND t72 TO t65->items.
    t65->save( ).
    DATA(t74) = |SingleFile|.
    t65->load( ).
    APPEND t74 TO t65->items.
    t65->save( ).
    t61 = t65.
    DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t80) = |\tWRITE 'hello world'.|.
    DATA(t81) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t81->has = abap_true.
    t81->value = t80.
    t77 = t81.
    DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t86) = |  WRITE 'hello world'.|.
    DATA(t87) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t87->has = abap_true.
    t87->value = t86.
    t83 = t87.
    DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t48 = NEW zcl_lnt_irule_metadata( i_key = t49 i_title = t51 i_short_description = t53 i_bad_example = t77 i_good_example = t83 i_extended_information = t55 i_tags = t61 i_pragma = t89 i_pseudo_comment = t91 ).
    CREATE OBJECT t48->zlnt_view_ownkeys_b0e8086400eb.
    t48->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t48->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t93 ).
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t48->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t48->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t94 ).
    ENDIF.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t48->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t48->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t95 ).
    ENDIF.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t48->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t48->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t96 ).
    ENDIF.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t48->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t48->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t97 ).
    ENDIF.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t48->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t48->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t98 ).
    ENDIF.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t48->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t48->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t99 ).
    ENDIF.
    CREATE OBJECT t48->zlnt_json_ownkeys_70e5fd461788.
    t48->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t100) = |key|.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t48->zlnt_json_ownkeys_70e5fd461788->put( p0 = t100 p1 = t101 ).
    DATA(t102) = |title|.
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t48->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t48->zlnt_json_ownkeys_70e5fd461788->put( p0 = t102 p1 = t103 ).
    ENDIF.
    DATA(t104) = |shortDescription|.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t48->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t48->zlnt_json_ownkeys_70e5fd461788->put( p0 = t104 p1 = t105 ).
    ENDIF.
    DATA(t106) = |extendedInformation|.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t48->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t48->zlnt_json_ownkeys_70e5fd461788->put( p0 = t106 p1 = t107 ).
    ENDIF.
    DATA(t108) = |tags|.
    DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t48->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t48->zlnt_json_ownkeys_70e5fd461788->put( p0 = t108 p1 = t109 ).
    ENDIF.
    DATA(t110) = |badExample|.
    DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t48->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t48->zlnt_json_ownkeys_70e5fd461788->put( p0 = t110 p1 = t111 ).
    ENDIF.
    DATA(t112) = |goodExample|.
    DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t48->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t48->zlnt_json_ownkeys_70e5fd461788->put( p0 = t112 p1 = t113 ).
    ENDIF.
    t47 = t48->key.
    DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t114 = me->conf->zlnt_view_read_sr_15c06369f827( ).
    DATA t116 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    t116 = t28.
    DATA t120 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t42 = zcl_lnt_issue=>at_range( i_file = t4 i_start = t5 i_end = t16 i_message_26cb = t46 i_key = t47 i_severity = t114 i_fix = t116 i_alternative_fixes = t120 ).
    result = t42.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_contains_tab_conf( me->gt_cn_in_sr_rl_cn_tb_ts_cnt_tb( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_contains_tab_conf( me->gt_cn_in_sr_rl_cn_tb_ts_cnt_tb( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_contains_tab_conf.
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
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_cn_tb_ts_cnt_tb( i_file = i_file ) ).

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
