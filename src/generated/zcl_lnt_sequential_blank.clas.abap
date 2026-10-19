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
    me->conf = NEW zcl_lnt_sequential_blank_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD is_blank_or_whitespace.
    DATA(t1) = i_line.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t4) = `^\s*$`.
    DATA(t5) = |^[\t\n|.
    DATA t6 TYPE c LENGTH 1.
    t6 = cl_abap_conv_in_ce=>uccpi( 11 ).
    CONCATENATE t5 t6 INTO t5 RESPECTING BLANKS.
    DATA t7 TYPE c LENGTH 1.
    t7 = cl_abap_conv_in_ce=>uccpi( 12 ).
    CONCATENATE t5 t7 INTO t5 RESPECTING BLANKS.
    t5 = t5 && |\r    - |.
    DATA t8 TYPE c LENGTH 1.
    t8 = cl_abap_conv_in_ce=>uccpi( 8232 ).
    CONCATENATE t5 t8 INTO t5 RESPECTING BLANKS.
    DATA t9 TYPE c LENGTH 1.
    t9 = cl_abap_conv_in_ce=>uccpi( 8233 ).
    CONCATENATE t5 t9 INTO t5 RESPECTING BLANKS.
    t5 = t5 && |  　|.
    DATA t10 TYPE c LENGTH 1.
    t10 = cl_abap_conv_in_ce=>uccpi( 65279 ).
    CONCATENATE t5 t10 INTO t5 RESPECTING BLANKS.
    t5 = t5 && |]*$|.
    DATA(t11) = ||.
    CREATE OBJECT t3 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t5 flags = t11.
    t3->source = t4.
    DATA(t12) = VALUE string( ).
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t13 = t1.
    DATA(t15) = VALUE string( ).
    DATA(t16) = VALUE abap_bool( ).
    IF t13 IS INITIAL.
      t16 = abap_true.
    ELSEIF t13->has = abap_false.
      t16 = abap_true.
    ENDIF.
    IF t16 = abap_true.
      t15 = |undefined|.
    ELSE.
      DATA t19 TYPE string.
      t19 = t13->value.
      t15 = t19.
    ENDIF.
    t12 = t15.
    t2 = t3->test( p0 = t12 ).
    result = t2.

  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |sequential_blank|.
    DATA t4 TYPE string.
    t4 = |Sequential blank lines|.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that code does not contain more than the configured n|.
    t7 = t7 && |umber of blank lines in a row.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
    t11 = t11 && |nABAP.md#add-a-single-blank-line-to-separate-things-but-not-|.
    t11 = t11 && |more|.
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
    DATA(t25) = |SingleFile|.
    t18->load( ).
    APPEND t25 TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t28 i_good_example = t30 i_extended_information = t8 i_tags = t14 i_pragma = t32 i_pseudo_comment = t34 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t36 ).
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t40 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t41) = |key|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
    DATA(t43) = |title|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
    ENDIF.
    DATA(t45) = |shortDescription|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
    ENDIF.
    DATA(t47) = |extendedInformation|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    ENDIF.
    DATA(t49) = |tags|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    result = |Remove sequential blank lines|.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_sq_bl_ts_sq_bln.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_sq_bl_ts_sq_bln.
    me->conf = i_conf.
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
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t9 TYPE REF TO zif_lnt_file.
    t9 = t1->file.
    t8 = t9->get_raw_rows( ).
    t4 = t8.
    DATA t11 TYPE f.
    DATA(t12) = CONV f( 0 ).
    t11 = t12.
    DATA t13 TYPE i.
    t13 = 0.
    DO.
      DATA t15 TYPE abap_bool.
      DATA t17 TYPE i.
      t4->load( ).
      t17 = lines( t4->items ).
      t15 = xsdbool( t13 < t17 ).
      IF t15 = abap_false.
        EXIT.
      ENDIF.
      DATA t19 TYPE abap_bool.
      DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t20 = t4->get( p0 = t13 ).
      t19 = zcl_lnt_sequential_blank=>is_blank_or_whitespace( i_line = t20 ).
      IF t19 = abap_true.
        DATA t23 TYPE f.
        DATA(t25) = CONV f( 1 ).
        t23 = t11 + t25.
        t11 = t23.
      ELSE.
        DATA(t26) = CONV f( 0 ).
        t11 = t26.
      ENDIF.
      DATA t27 TYPE abap_bool.
      DATA t29 TYPE f.
      t29 = me->conf->zlnt_view_read_sr_b5fa62719708( ).
      t27 = xsdbool( t11 = t29 ).
      IF t27 = abap_true.
        DATA t31 TYPE f.
        DATA(t32) = CONV f( 1 ).
        t31 = t32.
        DO.
          DATA t33 TYPE abap_bool.
          DATA t34 TYPE abap_bool.
          DATA t35 TYPE f.
          DATA t36 TYPE f.
          t36 = t13.
          t35 = t36 + t31.
          DATA t39 TYPE f.
          DATA t40 TYPE i.
          t4->load( ).
          t40 = lines( t4->items ).
          t39 = t40.
          t34 = xsdbool( t35 < t39 ).
          t33 = t34.
          IF t34 = abap_true.
            DATA(t42) = VALUE abap_bool( ).
            DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t43.
            DATA(t45) = VALUE i( ).
            DATA t46 TYPE f.
            DATA t47 TYPE f.
            t47 = t13.
            t46 = t47 + t31.
            IF t46 > range_i32_upper.
              t45 = range_i32_upper.
            ELSEIF t46 < range_i32_lower.
              t45 = range_i32_lower.
            ELSE.
              t45 = trunc( t46 ).
            ENDIF.
            t43 = t4->get( p0 = t45 ).
            t42 = zcl_lnt_sequential_blank=>is_blank_or_whitespace( i_line = t43 ).
            t33 = t42.
          ENDIF.
          IF t33 = abap_false.
            EXIT.
          ENDIF.
          DATA t50 TYPE f.
          DATA t53 TYPE f.
          DATA t54 TYPE f.
          DATA(t56) = CONV f( 1 ).
          t54 = t31 + t56.
          t53 = t54.
          t31 = t53.
          t50 = t53.
        ENDDO.
        DATA t60 TYPE REF TO zcl_lnt_position.
        DATA t61 TYPE f.
        DATA t62 TYPE i.
        DATA(t64) = 1.
        t62 = t13 + t64.
        t61 = t62.
        DATA(t65) = CONV f( 1 ).
        DATA(t66) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t66->has = abap_true.
        t66->value = t65.
        t60 = NEW zcl_lnt_position( i_row = t61 i_col = t66 ).
        DATA t68 TYPE REF TO zcl_lnt_position.
        CLEAR t68.
        DATA t69 TYPE f.
        t69 = t13.
        DATA(t71) = VALUE f( ).
        DATA(t72) = VALUE int8( ).
        DATA(t73) = VALUE int8( ).
        DATA(t74) = VALUE i( ).
        DATA(t75) = VALUE string( ).
        DATA(t77) = t13.
        t77 = t77 + 1.
        IF t4->has( t77 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t4->load( ).
        CLEAR t75.
        READ TABLE t4->items INDEX t77 INTO t75.
        t74 = strlen( t75 ).
        t73 = t74.
        DATA(t79) = CONV int8( 1 ).
        t72 = t73 + t79.
        t71 = t72.
        DATA(t80) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t80->has = abap_true.
        t80->value = t71.
        t68 = NEW zcl_lnt_position( i_row = t69 i_col = t80 ).
        DATA t82 TYPE REF TO zcl_lnt_position.
        CLEAR t82.
        DATA t83 TYPE f.
        DATA t84 TYPE f.
        t84 = t13.
        t83 = t84 + t31.
        DATA(t87) = VALUE f( ).
        DATA(t88) = VALUE int8( ).
        DATA(t89) = VALUE int8( ).
        DATA(t90) = VALUE i( ).
        DATA(t91) = VALUE string( ).
        DATA(t93) = VALUE i( ).
        DATA t94 TYPE f.
        DATA t95 TYPE f.
        DATA t96 TYPE f.
        t96 = t13.
        t95 = t96 + t31.
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
        IF t4->has( t93 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t4->load( ).
        CLEAR t91.
        READ TABLE t4->items INDEX t93 INTO t91.
        t90 = strlen( t91 ).
        t89 = t90.
        DATA(t101) = CONV int8( 1 ).
        t88 = t89 + t101.
        t87 = t88.
        DATA(t102) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t102->has = abap_true.
        t102->value = t87.
        t82 = NEW zcl_lnt_position( i_row = t83 i_col = t102 ).
        DATA t104 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t104 = zcl_lnt_edit_helper=>delete_range( i_file = t1 i_start = t68 i_end = t82 ).
        DATA t109 TYPE REF TO zcl_lnt_issue.
        CLEAR t109.
        DATA(t112) = |Remove sequential blank lines|.
        DATA(t113) = VALUE string( ).
        DATA t114 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t114.
        DATA t115 TYPE string.
        t115 = |sequential_blank|.
        DATA t117 TYPE string.
        t117 = |Sequential blank lines|.
        DATA t119 TYPE string.
        DATA(t120) = |Checks that code does not contain more than the configured n|.
        t120 = t120 && |umber of blank lines in a row.|.
        t119 = t120.
        DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t121.
        DATA(t124) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
        t124 = t124 && |nABAP.md#add-a-single-blank-line-to-separate-things-but-not-|.
        t124 = t124 && |more|.
        DATA(t125) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t125->has = abap_true.
        t125->value = t124.
        t121 = t125.
        DATA t127 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t127.
        DATA t131 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t132 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t132.
        t131 = t132.
        DATA(t134) = |Whitespace|.
        t131->load( ).
        APPEND t134 TO t131->items.
        t131->save( ).
        DATA(t136) = |Quickfix|.
        t131->load( ).
        APPEND t136 TO t131->items.
        t131->save( ).
        DATA(t138) = |SingleFile|.
        t131->load( ).
        APPEND t138 TO t131->items.
        t131->save( ).
        t127 = t131.
        DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t141.
        DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t143.
        DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t145.
        DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t147.
        t114 = NEW zcl_lnt_irule_metadata( i_key = t115 i_title = t117 i_short_description = t119 i_bad_example = t141 i_good_example = t143 i_extended_information = t121 i_tags = t127 i_pragma = t145 i_pseudo_comment = t147 ).
        CREATE OBJECT t114->zlnt_view_ownkeys_b0e8086400eb.
        t114->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t149.
        t114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t149 ).
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
        t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = t154 p1 = t155 ).
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
        t164 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t166 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t166.
        t166 = t104.
        t109 = zcl_lnt_issue=>at_position( i_file = t1 i_start = t60 i_message_26cb = t112 i_key = t113 i_severity = t164 i_fix = t166 ).
        t2->load( ).
        APPEND t109 TO t2->items.
        t2->save( ).
      ENDIF.
      DATA t172 TYPE i.
      DATA(t174) = 1.
      t172 = t13 + t174.
      t13 = t172.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_sequential_blank_conf( me->gt_cn_in_sr_rl_sq_bl_ts_sq_bln( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_sequential_blank_conf( me->gt_cn_in_sr_rl_sq_bl_ts_sq_bln( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_sequential_blank_conf.
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
        t1 = NEW zcl_lnt_sequential_blank_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_sq_bl_ts_sq_bln( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_sq_bl_ts_sq_bln( i_file = i_file ) ).

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
