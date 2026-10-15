* TS: src/rules/whitespace_end.ts:13:1 WhitespaceEnd
CLASS zcl_lnt_whitespace_end DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_whitespace_end_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_wh_en_ts_wh_end RETURNING VALUE(result) TYPE REF TO zcl_lnt_whitespace_end_conf.
    METHODS st_cn_in_sr_rl_wh_en_ts_wh_end IMPORTING i_conf TYPE REF TO zcl_lnt_whitespace_end_conf.
    METHODS in_in_sr_rl_wht_end_ts_wht_end IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
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
CLASS zcl_lnt_whitespace_end IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_whitespace_end_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |whitespace_end|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Whitespace at end of line|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for redundant whitespace at the end of each line.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |SMIM and W3MI files are not checked.|.
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
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    DATA(t30) = abap_true.
    IF t30 = abap_true.
      DATA(t31) = |WRITE 'hello'.      |.
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
      DATA(t37) = |WRITE 'hello'.|.
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
    DATA(t1) = |Remove whitespace at end of line|.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_wh_en_ts_wh_end.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_wh_en_ts_wh_end.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD in_in_sr_rl_wht_end_ts_wht_end.
    DATA(t1) = i_reg_d009.
    DATA(t2) = me.
    result = t2.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = t1.
    t4 = t5->get_files( ).
    DATA t6 TYPE REF TO zif_lnt_file.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    DATA(t8) = VALUE i( ).
    DO.
      t4->load( ).
      IF t8 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t4->items INDEX t8 + 1 INTO t7.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      CLEAR t6.
      IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t9 ?= t7.
        DATA t10 TYPE REF TO object.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA t11 TYPE abap_bool.
      DATA t12 TYPE abap_bool.
      DATA(t13) = t1.
      t12 = xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_mime_object ).
      t11 = t12.
      IF t12 = abap_false.
        DATA t14 TYPE abap_bool.
        DATA(t15) = t1.
        t14 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_web_mime ).
        t11 = t14.
      ENDIF.
      IF t11 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t18) = t6.
      t17 = t18->get_raw_rows( ).
      t16 = t17.
      DATA t19 TYPE i.
      DATA(t20) = 0.
      t19 = t20.
      DO.
        DATA t21 TYPE abap_bool.
        DATA(t22) = t19.
        DATA t23 TYPE i.
        DATA(t24) = t16.
        t24->load( ).
        t23 = lines( t24->items ).
        t21 = xsdbool( t22 < t23 ).
        IF t21 = abap_false.
          EXIT.
        ENDIF.
        DATA(t25) = VALUE abap_bool( ).
        DATA(t26) = VALUE abap_bool( ).
        DATA(t27) = VALUE string( ).
        DATA(t28) = t16.
        DATA(t29) = t19.
        t29 = t29 + 1.
        IF t28->has( t29 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t28->load( ).
        CLEAR t27.
        READ TABLE t28->items INDEX t29 INTO t27.
        DATA(t30) = | |.
        DATA(t31) = strlen( t27 ).
        DATA t32 TYPE i.
        DATA(t33) = VALUE i( ).
        DATA(t34) = VALUE string( ).
        t32 = strlen( t30 ).
        IF t32 = 0.
          t26 = abap_true.
        ELSEIF t32 <= t31.
          t33 = 0.
          t33 = t31 - t32.
          t34 = t27+t33(t32).
          IF t34 = t30.
            t26 = abap_true.
          ENDIF.
        ENDIF.
        t25 = t26.
        IF t26 = abap_false.
          DATA(t35) = VALUE abap_bool( ).
          DATA(t36) = VALUE string( ).
          DATA(t37) = t16.
          DATA(t38) = t19.
          t38 = t38 + 1.
          IF t37->has( t38 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t37->load( ).
          CLEAR t36.
          READ TABLE t37->items INDEX t38 INTO t36.
          DATA(t39) = | \r|.
          DATA(t40) = strlen( t36 ).
          DATA t41 TYPE i.
          DATA(t42) = VALUE i( ).
          DATA(t43) = VALUE string( ).
          t41 = strlen( t39 ).
          IF t41 = 0.
            t35 = abap_true.
          ELSEIF t41 <= t40.
            t42 = 0.
            t42 = t40 - t41.
            t43 = t36+t42(t41).
            IF t43 = t39.
              t35 = abap_true.
            ENDIF.
          ENDIF.
          t25 = t35.
        ENDIF.
        IF t25 = abap_true.
          DATA t44 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t44.
          DATA t45 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t45.
          DATA t46 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CLEAR t46.
          DATA(t47) = ` +\r?$`.
          DATA(t48) = ||.
          CREATE OBJECT t46 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t47 flags = t48.
          DATA(t49) = VALUE string( ).
          DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t52) = t16.
          DATA(t53) = t19.
          t51 = t52->get( p0 = t53 ).
          t50 = t51.
          DATA(t54) = VALUE string( ).
          DATA(t55) = VALUE abap_bool( ).
          DATA(t56) = t50.
          IF t56 IS INITIAL.
            t55 = abap_true.
          ELSEIF t56->has = abap_false.
            t55 = abap_true.
          ENDIF.
          IF t55 = abap_true.
            DATA(t57) = |undefined|.
            t54 = t57.
          ELSE.
            DATA t58 TYPE string.
            DATA(t59) = t50.
            t58 = t59->value.
            t54 = t58.
          ENDIF.
          t49 = t54.
          t45 = zlnt_runtime_rege_8d1cc1058680=>exec_legacy( p0 = t46 p1 = t49 ).
          t44 = t45.
          DATA t60 TYPE REF TO zcl_lnt_position.
          CLEAR t60.
          DATA t61 TYPE REF TO zcl_lnt_position.
          CLEAR t61.
          DATA t62 TYPE f.
          DATA t63 TYPE i.
          DATA(t64) = t19.
          DATA(t65) = 1.
          t63 = t64 + t65.
          t62 = t63.
          DATA(t66) = VALUE f( ).
          DATA(t67) = VALUE f( ).
          DATA(t68) = VALUE i( ).
          DATA t69 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t70) = t44.
          t69 = t70.
          IF t69->match_has_index <> abap_true.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t68 = t69->match_index.
          t67 = t68.
          DATA(t71) = CONV f( 1 ).
          t66 = t67 + t71.
          DATA(t72) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t72->has = abap_true.
          t72->value = t66.
          t61 = NEW zcl_lnt_position( i_row = t62 i_col = t72 ).
          t60 = t61.
          DATA t73 TYPE REF TO zcl_lnt_position.
          CLEAR t73.
          DATA t74 TYPE REF TO zcl_lnt_position.
          CLEAR t74.
          DATA t75 TYPE f.
          DATA t76 TYPE i.
          DATA(t77) = t19.
          DATA(t78) = 1.
          t76 = t77 + t78.
          t75 = t76.
          DATA(t79) = VALUE f( ).
          DATA(t80) = VALUE int8( ).
          DATA(t81) = VALUE int8( ).
          DATA(t82) = VALUE i( ).
          DATA(t83) = VALUE string( ).
          DATA(t84) = t16.
          DATA(t85) = t19.
          t85 = t85 + 1.
          IF t84->has( t85 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t84->load( ).
          CLEAR t83.
          READ TABLE t84->items INDEX t85 INTO t83.
          DATA(t86) = strlen( t83 ).
          t82 = t86.
          t81 = t82.
          DATA(t87) = CONV int8( 1 ).
          t80 = t81 + t87.
          t79 = t80.
          DATA(t88) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t88->has = abap_true.
          t88->value = t79.
          t74 = NEW zcl_lnt_position( i_row = t75 i_col = t88 ).
          t73 = t74.
          DATA t89 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t90 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA(t91) = t6.
          DATA(t92) = t60.
          DATA(t93) = t73.
          t90 = zcl_lnt_edit_helper=>delete_range( i_file = t91 i_start = t92 i_end = t93 ).
          t89 = t90.
          DATA t94 TYPE REF TO zcl_lnt_issue.
          CLEAR t94.
          DATA t95 TYPE REF TO zcl_lnt_issue.
          CLEAR t95.
          DATA(t96) = t6.
          DATA(t97) = t60.
          DATA(t98) = t73.
          DATA(t99) = |Remove whitespace at end of line|.
          DATA(t100) = VALUE string( ).
          DATA t101 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t101.
          DATA t102 TYPE string.
          DATA(t103) = |whitespace_end|.
          t102 = t103.
          DATA t104 TYPE string.
          DATA(t105) = |Whitespace at end of line|.
          t104 = t105.
          DATA t106 TYPE string.
          DATA(t107) = |Checks for redundant whitespace at the end of each line.|.
          t106 = t107.
          DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t108.
          DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t109.
          DATA(t110) = abap_true.
          IF t110 = abap_true.
            DATA(t111) = |SMIM and W3MI files are not checked.|.
            DATA(t112) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t112->has = abap_true.
            t112->value = t111.
            t109 = t112.
          ELSE.
            DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t113.
            t109 = t113.
          ENDIF.
          t108 = t109.
          DATA t114 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t114.
          DATA t115 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t115.
          DATA(t116) = abap_true.
          IF t116 = abap_true.
            DATA t117 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t118 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t119 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t119.
            t118 = t119.
            DATA(t120) = t118.
            DATA(t121) = |Whitespace|.
            t120->load( ).
            APPEND t121 TO t120->items.
            t120->save( ).
            DATA(t122) = t118.
            DATA(t123) = |Quickfix|.
            t122->load( ).
            APPEND t123 TO t122->items.
            t122->save( ).
            DATA(t124) = t118.
            DATA(t125) = |SingleFile|.
            t124->load( ).
            APPEND t125 TO t124->items.
            t124->save( ).
            DATA(t126) = t118.
            t117 = t126.
            t115 = t117.
          ELSE.
            DATA t127 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t127.
            t115 = t127.
          ENDIF.
          t114 = t115.
          DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t128.
          DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t129.
          DATA(t130) = abap_true.
          IF t130 = abap_true.
            DATA(t131) = |WRITE 'hello'.      |.
            DATA(t132) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t132->has = abap_true.
            t132->value = t131.
            t129 = t132.
          ELSE.
            DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t133.
            t129 = t133.
          ENDIF.
          t128 = t129.
          DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t134.
          DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t135.
          DATA(t136) = abap_true.
          IF t136 = abap_true.
            DATA(t137) = |WRITE 'hello'.|.
            DATA(t138) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t138->has = abap_true.
            t138->value = t137.
            t135 = t138.
          ELSE.
            DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t139.
            t135 = t139.
          ENDIF.
          t134 = t135.
          DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t141.
          t140 = t141.
          DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t143.
          t142 = t143.
          t101 = NEW zcl_lnt_irule_metadata( i_key = t102 i_title = t104 i_short_description = t106 i_bad_example = t128 i_good_example = t134 i_extended_information = t108 i_tags = t114 i_pragma = t140 i_pseudo_comment = t142 ).
          CREATE OBJECT t101->zlnt_view_ownkeys_b0e8086400eb.
          t101->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t144.
          IF t101->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t101->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t144 ).
          ENDIF.
          DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t145.
          IF t101->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t101->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t145 ).
          ENDIF.
          DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t146.
          IF t101->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t101->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t146 ).
          ENDIF.
          DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t147.
          IF t101->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t101->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t147 ).
          ENDIF.
          DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t148.
          IF t101->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t101->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t148 ).
          ENDIF.
          DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t149.
          IF t101->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t101->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t149 ).
          ENDIF.
          DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t150.
          IF t101->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t101->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t150 ).
          ENDIF.
          CREATE OBJECT t101->zlnt_json_ownkeys_70e5fd461788.
          t101->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t151) = |key|.
          DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t152.
          IF t101->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t101->zlnt_json_ownkeys_70e5fd461788->put( p0 = t151 p1 = t152 ).
          ENDIF.
          DATA(t153) = |title|.
          DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t154.
          IF t101->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t101->zlnt_json_ownkeys_70e5fd461788->put( p0 = t153 p1 = t154 ).
          ENDIF.
          DATA(t155) = |shortDescription|.
          DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t156.
          IF t101->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t101->zlnt_json_ownkeys_70e5fd461788->put( p0 = t155 p1 = t156 ).
          ENDIF.
          DATA(t157) = |extendedInformation|.
          DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t158.
          IF t101->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t101->zlnt_json_ownkeys_70e5fd461788->put( p0 = t157 p1 = t158 ).
          ENDIF.
          DATA(t159) = |tags|.
          DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t160.
          IF t101->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t101->zlnt_json_ownkeys_70e5fd461788->put( p0 = t159 p1 = t160 ).
          ENDIF.
          DATA(t161) = |badExample|.
          DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t162.
          IF t101->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t101->zlnt_json_ownkeys_70e5fd461788->put( p0 = t161 p1 = t162 ).
          ENDIF.
          DATA(t163) = |goodExample|.
          DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t164.
          IF t101->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t101->zlnt_json_ownkeys_70e5fd461788->put( p0 = t163 p1 = t164 ).
          ENDIF.
          t100 = t101->key.
          DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t166) = me->conf.
          t165 = t166->zlnt_view_read_sr_15c06369f827( ).
          DATA t167 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t167.
          DATA(t168) = abap_true.
          IF t168 = abap_true.
            DATA(t169) = t89.
            t167 = t169.
          ELSE.
            DATA t170 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t170.
            t167 = t170.
          ENDIF.
          DATA t171 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t171.
          t95 = zcl_lnt_issue=>at_range( i_file = t96 i_start = t97 i_end = t98 i_message_26cb = t99 i_key = t100 i_severity = t165 i_fix = t167 i_alternative_fixes = t171 ).
          t94 = t95.
          DATA(t172) = t2.
          DATA(t173) = t94.
          t172->load( ).
          APPEND t173 TO t172->items.
          t172->save( ).
        ENDIF.
        DATA t174 TYPE i.
        DATA(t175) = t19.
        DATA(t176) = 1.
        t174 = t175 + t176.
        t19 = t174.
      ENDDO.
    ENDDO.
    DATA(t177) = t2.
    result = t177.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_whitespace_end_conf( me->gt_cn_in_sr_rl_wh_en_ts_wh_end( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_whitespace_end_conf( me->gt_cn_in_sr_rl_wh_en_ts_wh_end( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_whitespace_end_conf.
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
        t2 = NEW zcl_lnt_whitespace_end_conf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_wh_en_ts_wh_end( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zif_lnt_rule.
    DATA(t3) = t1.
    t2 = me->in_in_sr_rl_wht_end_ts_wht_end( i_reg_d009 = t3 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1775_3893ddd080c9.
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
