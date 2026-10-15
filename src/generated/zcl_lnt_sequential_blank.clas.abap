* TS: src/rules/sequential_blank.ts:16:1 SequentialBlank
CLASS zcl_lnt_sequential_blank DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_sequential_blank_conf.
    METHODS constructor.
    CLASS-METHODS is_blank_or_whitespace IMPORTING i_line TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_sq_bl_ts_sq_bln RETURNING VALUE(result) TYPE REF TO zcl_lnt_sequential_blank_conf.
    METHODS st_cn_in_sr_rl_sq_bl_ts_sq_bln IMPORTING i_conf TYPE REF TO zcl_lnt_sequential_blank_conf.
    METHODS rn_pr_in_sr_rl_sq_bl_ts_sq_bln IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sequential_blank IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_sequential_blank_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD is_blank_or_whitespace.
    DATA(t1) = i_line.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t3.
    DATA(t4) = `^\s*$`.
    DATA(t5) = |^[\t\n|.
    DATA t6 TYPE c LENGTH 1.
    CLEAR t6.
    t6 = cl_abap_conv_in_ce=>uccpi( 11 ).
    CONCATENATE t5 t6 INTO t5 RESPECTING BLANKS.
    DATA t7 TYPE c LENGTH 1.
    CLEAR t7.
    t7 = cl_abap_conv_in_ce=>uccpi( 12 ).
    CONCATENATE t5 t7 INTO t5 RESPECTING BLANKS.
    t5 = t5 && |\r    - |.
    DATA t8 TYPE c LENGTH 1.
    CLEAR t8.
    t8 = cl_abap_conv_in_ce=>uccpi( 8232 ).
    CONCATENATE t5 t8 INTO t5 RESPECTING BLANKS.
    DATA t9 TYPE c LENGTH 1.
    CLEAR t9.
    t9 = cl_abap_conv_in_ce=>uccpi( 8233 ).
    CONCATENATE t5 t9 INTO t5 RESPECTING BLANKS.
    t5 = t5 && |  　|.
    DATA t10 TYPE c LENGTH 1.
    CLEAR t10.
    t10 = cl_abap_conv_in_ce=>uccpi( 65279 ).
    CONCATENATE t5 t10 INTO t5 RESPECTING BLANKS.
    t5 = t5 && |]*$|.
    DATA(t11) = ||.
    CREATE OBJECT t3 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t5 flags = t11.
    t3->source = t4.
    DATA(t12) = VALUE string( ).
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t14) = t1.
    t13 = t14.
    DATA(t15) = VALUE string( ).
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = t13.
    IF t17 IS INITIAL.
      t16 = abap_true.
    ELSEIF t17->has = abap_false.
      t16 = abap_true.
    ENDIF.
    IF t16 = abap_true.
      DATA(t18) = |undefined|.
      t15 = t18.
    ELSE.
      DATA t19 TYPE string.
      DATA(t20) = t13.
      t19 = t20->value.
      t15 = t19.
    ENDIF.
    t12 = t15.
    t2 = t3->test( p0 = t12 ).
    result = t2.

  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |sequential_blank|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Sequential blank lines|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that code does not contain more than the configured n|.
    t7 = t7 && |umber of blank lines in a row.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t11 = t11 && |nABAP.md#add-a-single-blank-line-to-separate-things-but-not-|.
      t11 = t11 && |more|.
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
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    t28 = t29.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    t30 = t31.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    t32 = t33.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    t34 = t35.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t28 i_good_example = t30 i_extended_information = t8 i_tags = t14 i_pragma = t32 i_pseudo_comment = t34 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t36 ).
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t40 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t41) = |key|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
    ENDIF.
    DATA(t43) = |title|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
    ENDIF.
    DATA(t45) = |shortDescription|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
    ENDIF.
    DATA(t47) = |extendedInformation|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    ENDIF.
    DATA(t49) = |tags|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    DATA(t1) = |Remove sequential blank lines|.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_sq_bl_ts_sq_bln.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_sq_bl_ts_sq_bln.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_sq_bl_ts_sq_bln.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t9 TYPE REF TO zif_lnt_file.
    DATA(t10) = t6.
    t9 = t10->file.
    t8 = t9->get_raw_rows( ).
    t5 = t8.
    t4 = t5.
    DATA t11 TYPE f.
    DATA(t12) = CONV f( 0 ).
    t11 = t12.
    DATA t13 TYPE i.
    DATA(t14) = 0.
    t13 = t14.
    DO.
      DATA t15 TYPE abap_bool.
      DATA(t16) = t13.
      DATA t17 TYPE i.
      DATA(t18) = t4.
      t18->load( ).
      t17 = lines( t18->items ).
      t15 = xsdbool( t16 < t17 ).
      IF t15 = abap_false.
        EXIT.
      ENDIF.
      DATA t19 TYPE abap_bool.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t21) = t4.
      DATA(t22) = t13.
      t20 = t21->get( p0 = t22 ).
      t19 = zcl_lnt_sequential_blank=>is_blank_or_whitespace( i_line = t20 ).
      IF t19 = abap_true.
        DATA t23 TYPE f.
        DATA(t24) = t11.
        DATA(t25) = CONV f( 1 ).
        t23 = t24 + t25.
        t11 = t23.
      ELSE.
        DATA(t26) = CONV f( 0 ).
        t11 = t26.
      ENDIF.
      DATA t27 TYPE abap_bool.
      DATA(t28) = t11.
      DATA t29 TYPE f.
      DATA(t30) = me->conf.
      t29 = t30->zlnt_view_read_sr_b5fa62719708( ).
      t27 = xsdbool( t28 = t29 ).
      IF t27 = abap_true.
        DATA t31 TYPE f.
        DATA(t32) = CONV f( 1 ).
        t31 = t32.
        DO.
          DATA t33 TYPE abap_bool.
          DATA t34 TYPE abap_bool.
          DATA t35 TYPE f.
          DATA t36 TYPE f.
          DATA(t37) = t13.
          t36 = t37.
          DATA(t38) = t31.
          t35 = t36 + t38.
          DATA t39 TYPE f.
          DATA t40 TYPE i.
          DATA(t41) = t4.
          t41->load( ).
          t40 = lines( t41->items ).
          t39 = t40.
          t34 = xsdbool( t35 < t39 ).
          t33 = t34.
          IF t34 = abap_true.
            DATA(t42) = VALUE abap_bool( ).
            DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t43.
            DATA(t44) = t4.
            DATA(t45) = VALUE i( ).
            DATA t46 TYPE f.
            DATA t47 TYPE f.
            DATA(t48) = t13.
            t47 = t48.
            DATA(t49) = t31.
            t46 = t47 + t49.
            IF t46 > range_i32_upper.
              t45 = range_i32_upper.
            ELSEIF t46 < range_i32_lower.
              t45 = range_i32_lower.
            ELSE.
              t45 = trunc( t46 ).
            ENDIF.
            t43 = t44->get( p0 = t45 ).
            t42 = zcl_lnt_sequential_blank=>is_blank_or_whitespace( i_line = t43 ).
            t33 = t42.
          ENDIF.
          IF t33 = abap_false.
            EXIT.
          ENDIF.
          DATA t50 TYPE f.
          DATA t51 TYPE f.
          DATA(t52) = t31.
          t51 = t52.
          DATA t53 TYPE f.
          DATA t54 TYPE f.
          DATA(t55) = t51.
          DATA(t56) = CONV f( 1 ).
          t54 = t55 + t56.
          t53 = t54.
          DATA(t57) = t53.
          t31 = t57.
          DATA(t58) = t53.
          t50 = t58.
        ENDDO.
        DATA t59 TYPE REF TO zcl_lnt_position.
        DATA t60 TYPE REF TO zcl_lnt_position.
        DATA t61 TYPE f.
        DATA t62 TYPE i.
        DATA(t63) = t13.
        DATA(t64) = 1.
        t62 = t63 + t64.
        t61 = t62.
        DATA(t65) = CONV f( 1 ).
        DATA(t66) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t66->has = abap_true.
        t66->value = t65.
        t60 = NEW zcl_lnt_position( i_row = t61 i_col = t66 ).
        t59 = t60.
        DATA t67 TYPE REF TO zcl_lnt_position.
        CLEAR t67.
        DATA t68 TYPE REF TO zcl_lnt_position.
        CLEAR t68.
        DATA t69 TYPE f.
        DATA(t70) = t13.
        t69 = t70.
        DATA(t71) = VALUE f( ).
        DATA(t72) = VALUE int8( ).
        DATA(t73) = VALUE int8( ).
        DATA(t74) = VALUE i( ).
        DATA(t75) = VALUE string( ).
        DATA(t76) = t4.
        DATA(t77) = t13.
        t77 = t77 + 1.
        IF t76->has( t77 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t76->load( ).
        CLEAR t75.
        READ TABLE t76->items INDEX t77 INTO t75.
        DATA(t78) = strlen( t75 ).
        t74 = t78.
        t73 = t74.
        DATA(t79) = CONV int8( 1 ).
        t72 = t73 + t79.
        t71 = t72.
        DATA(t80) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t80->has = abap_true.
        t80->value = t71.
        t68 = NEW zcl_lnt_position( i_row = t69 i_col = t80 ).
        t67 = t68.
        DATA t81 TYPE REF TO zcl_lnt_position.
        CLEAR t81.
        DATA t82 TYPE REF TO zcl_lnt_position.
        CLEAR t82.
        DATA t83 TYPE f.
        DATA t84 TYPE f.
        DATA(t85) = t13.
        t84 = t85.
        DATA(t86) = t31.
        t83 = t84 + t86.
        DATA(t87) = VALUE f( ).
        DATA(t88) = VALUE int8( ).
        DATA(t89) = VALUE int8( ).
        DATA(t90) = VALUE i( ).
        DATA(t91) = VALUE string( ).
        DATA(t92) = t4.
        DATA(t93) = VALUE i( ).
        DATA t94 TYPE f.
        DATA t95 TYPE f.
        DATA t96 TYPE f.
        DATA(t97) = t13.
        t96 = t97.
        DATA(t98) = t31.
        t95 = t96 + t98.
        DATA(t99) = CONV f( 1 ).
        t94 = t95 - t99.
        IF t94 > range_i32_upper.
          t93 = range_i32_upper.
        ELSEIF t94 < range_i32_lower.
          t93 = range_i32_lower.
        ELSE.
          t93 = trunc( t94 ).
        ENDIF.
        t93 = t93 + 1.
        IF t92->has( t93 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t92->load( ).
        CLEAR t91.
        READ TABLE t92->items INDEX t93 INTO t91.
        DATA(t100) = strlen( t91 ).
        t90 = t100.
        t89 = t90.
        DATA(t101) = CONV int8( 1 ).
        t88 = t89 + t101.
        t87 = t88.
        DATA(t102) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t102->has = abap_true.
        t102->value = t87.
        t82 = NEW zcl_lnt_position( i_row = t83 i_col = t102 ).
        t81 = t82.
        DATA t103 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t104 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA(t105) = t1.
        DATA(t106) = t67.
        DATA(t107) = t81.
        t104 = zcl_lnt_edit_helper=>delete_range( i_file = t105 i_start = t106 i_end = t107 ).
        t103 = t104.
        DATA t108 TYPE REF TO zcl_lnt_issue.
        CLEAR t108.
        DATA t109 TYPE REF TO zcl_lnt_issue.
        CLEAR t109.
        DATA(t110) = t1.
        DATA(t111) = t59.
        DATA(t112) = |Remove sequential blank lines|.
        DATA(t113) = VALUE string( ).
        DATA t114 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t114.
        DATA t115 TYPE string.
        DATA(t116) = |sequential_blank|.
        t115 = t116.
        DATA t117 TYPE string.
        DATA(t118) = |Sequential blank lines|.
        t117 = t118.
        DATA t119 TYPE string.
        DATA(t120) = |Checks that code does not contain more than the configured n|.
        t120 = t120 && |umber of blank lines in a row.|.
        t119 = t120.
        DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t121.
        DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t122.
        DATA(t123) = abap_true.
        IF t123 = abap_true.
          DATA(t124) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
          t124 = t124 && |nABAP.md#add-a-single-blank-line-to-separate-things-but-not-|.
          t124 = t124 && |more|.
          DATA(t125) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t125->has = abap_true.
          t125->value = t124.
          t122 = t125.
        ELSE.
          DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t126.
          t122 = t126.
        ENDIF.
        t121 = t122.
        DATA t127 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t127.
        DATA t128 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t128.
        DATA(t129) = abap_true.
        IF t129 = abap_true.
          DATA t130 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t131 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t132 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t132.
          t131 = t132.
          DATA(t133) = t131.
          DATA(t134) = |Whitespace|.
          t133->load( ).
          APPEND t134 TO t133->items.
          t133->save( ).
          DATA(t135) = t131.
          DATA(t136) = |Quickfix|.
          t135->load( ).
          APPEND t136 TO t135->items.
          t135->save( ).
          DATA(t137) = t131.
          DATA(t138) = |SingleFile|.
          t137->load( ).
          APPEND t138 TO t137->items.
          t137->save( ).
          DATA(t139) = t131.
          t130 = t139.
          t128 = t130.
        ELSE.
          DATA t140 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t140.
          t128 = t140.
        ENDIF.
        t127 = t128.
        DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t142.
        t141 = t142.
        DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t144.
        t143 = t144.
        DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t146 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t146.
        t145 = t146.
        DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t148.
        t147 = t148.
        t114 = NEW zcl_lnt_irule_metadata( i_key = t115 i_title = t117 i_short_description = t119 i_bad_example = t141 i_good_example = t143 i_extended_information = t121 i_tags = t127 i_pragma = t145 i_pseudo_comment = t147 ).
        CREATE OBJECT t114->zlnt_view_ownkeys_b0e8086400eb.
        t114->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t149.
        IF t114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t149 ).
        ENDIF.
        DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t150.
        IF t114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t150 ).
        ENDIF.
        DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t151.
        IF t114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t151 ).
        ENDIF.
        DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t152.
        IF t114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t152 ).
        ENDIF.
        DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t153.
        IF t114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t153 ).
        ENDIF.
        CREATE OBJECT t114->zlnt_json_ownkeys_70e5fd461788.
        t114->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t154) = |key|.
        DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t155.
        IF t114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = t154 p1 = t155 ).
        ENDIF.
        DATA(t156) = |title|.
        DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t157.
        IF t114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = t156 p1 = t157 ).
        ENDIF.
        DATA(t158) = |shortDescription|.
        DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t159.
        IF t114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = t158 p1 = t159 ).
        ENDIF.
        DATA(t160) = |extendedInformation|.
        DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t161.
        IF t114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = t160 p1 = t161 ).
        ENDIF.
        DATA(t162) = |tags|.
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t163.
        IF t114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = t162 p1 = t163 ).
        ENDIF.
        t113 = t114->key.
        DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t165) = me->conf.
        t164 = t165->zlnt_view_read_sr_15c06369f827( ).
        DATA t166 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t166.
        DATA(t167) = abap_true.
        IF t167 = abap_true.
          DATA(t168) = t103.
          t166 = t168.
        ELSE.
          DATA t169 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t169.
          t166 = t169.
        ENDIF.
        t109 = zcl_lnt_issue=>at_position( i_file = t110 i_start = t111 i_message_26cb = t112 i_key = t113 i_severity = t164 i_fix = t166 ).
        t108 = t109.
        DATA(t170) = t2.
        DATA(t171) = t108.
        t170->load( ).
        APPEND t171 TO t170->items.
        t170->save( ).
      ENDIF.
      DATA t172 TYPE i.
      DATA(t173) = t13.
      DATA(t174) = 1.
      t172 = t173 + t174.
      t13 = t172.
    ENDDO.
    DATA(t175) = t2.
    result = t175.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_sequential_blank_conf( me->gt_cn_in_sr_rl_sq_bl_ts_sq_bln( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_sequential_blank_conf( me->gt_cn_in_sr_rl_sq_bl_ts_sq_bln( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_sequential_blank_conf.
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
        t1 = NEW zcl_lnt_sequential_blank_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_sq_bl_ts_sq_bln( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_sq_bl_ts_sq_bln( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1696_5cbcc15e2edc.
  ENDMETHOD.
ENDCLASS.
