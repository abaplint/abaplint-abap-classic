* TS: src/rules/7bit_ascii.ts:11:1 SevenBitAscii
CLASS zcl_lnt_seven_bit_ascii DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_seven_bit_ascii_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS in_in_sr_rl_7b_as_ts_sv_bt_asc IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_seven_bit_ascii.
    METHODS g_c_in_sr_rl_7b_as_ts_sv_bt_as RETURNING VALUE(result) TYPE REF TO zcl_lnt_seven_bit_ascii_conf.
    METHODS s_c_in_sr_rl_7b_as_ts_sv_bt_as IMPORTING i_conf TYPE REF TO zcl_lnt_seven_bit_ascii_conf.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS initialize IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zif_lnt_rule.
    METHODS get_config_value RETURNING VALUE(result) TYPE REF TO object.
    METHODS get_config.
    METHODS set_config IMPORTING i_conf TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_seven_bit_ascii IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_seven_bit_ascii_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |7bit_ascii|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Check for 7bit ascii|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Only allow characters from the 7bit ASCII set.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://docs.abapopenchecks.org/checks/05/\n\nhttps://help.sap|.
      t11 = t11 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abencharacte|.
      t11 = t11 && |r_set_guidl.html\n\nCheckes files with extensions ".abap" and |.
      t11 = t11 && |".asddls"|.
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
      t17 = t22.
      t15 = t17.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t23.
      t15 = t23.
    ENDIF.
    t14 = t15.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    DATA(t26) = abap_true.
    IF t26 = abap_true.
      DATA(t27) = |WRITE '뽑'.|.
      DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t28->has = abap_true.
      t28->value = t27.
      t25 = t28.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      t25 = t29.
    ENDIF.
    t24 = t25.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    DATA(t32) = abap_true.
    IF t32 = abap_true.
      DATA(t33) = |WRITE cl_abap_conv_in_ce=>uccp( 'BF51' ).|.
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
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t36 = t37.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t24 i_good_example = t30 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t38 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t46 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t47) = |key|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    ENDIF.
    DATA(t49) = |title|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |shortDescription|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |extendedInformation|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |tags|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |badExample|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |goodExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD in_in_sr_rl_7b_as_ts_sv_bt_asc.
    DATA(t1) = i_reg_d009.
    DATA(t2) = me.
    result = t2.

  ENDMETHOD.

  METHOD g_c_in_sr_rl_7b_as_ts_sv_bt_as.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_in_sr_rl_7b_as_ts_sv_bt_as.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
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
      DATA t11 TYPE string.
      DATA t12 TYPE string.
      DATA(t13) = t6.
      t12 = t13->get_filename( ).
      t11 = t12.
      DATA(t14) = VALUE abap_bool( ).
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = t11.
      DATA(t17) = |.abap|.
      DATA(t18) = strlen( t16 ).
      DATA t19 TYPE i.
      DATA(t20) = VALUE i( ).
      DATA(t21) = VALUE string( ).
      t19 = strlen( t17 ).
      IF t19 = 0.
        t15 = abap_true.
      ELSEIF t19 <= t18.
        t20 = 0.
        t20 = t18 - t19.
        t21 = t16+t20(t19).
        IF t21 = t17.
          t15 = abap_true.
        ENDIF.
      ENDIF.
      t14 = t15.
      IF t15 = abap_false.
        DATA(t22) = VALUE abap_bool( ).
        DATA(t23) = t11.
        DATA(t24) = |.asddls|.
        DATA(t25) = strlen( t23 ).
        DATA t26 TYPE i.
        DATA(t27) = VALUE i( ).
        DATA(t28) = VALUE string( ).
        t26 = strlen( t24 ).
        IF t26 = 0.
          t22 = abap_true.
        ELSEIF t26 <= t25.
          t27 = 0.
          t27 = t25 - t26.
          t28 = t23+t27(t26).
          IF t28 = t24.
            t22 = abap_true.
          ENDIF.
        ENDIF.
        t14 = t22.
      ENDIF.
      IF t14 = abap_true.
        DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t31) = t6.
        t30 = t31->get_raw_rows( ).
        t29 = t30.
        DATA t32 TYPE i.
        DATA(t33) = 0.
        t32 = t33.
        DO.
          DATA t34 TYPE abap_bool.
          DATA(t35) = t32.
          DATA t36 TYPE i.
          DATA(t37) = t29.
          t37->load( ).
          t36 = lines( t37->items ).
          t34 = xsdbool( t35 < t36 ).
          IF t34 = abap_false.
            EXIT.
          ENDIF.
          DATA t38 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t38.
          DATA t39 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t39.
          DATA t40 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CLEAR t40.
          DATA(t41) = `[\u007f-\uffff]`.
          DATA(t42) = ||.
          CREATE OBJECT t40 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t41 flags = t42.
          DATA(t43) = VALUE string( ).
          DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t46) = t29.
          DATA(t47) = t32.
          t45 = t46->get( p0 = t47 ).
          t44 = t45.
          DATA(t48) = VALUE string( ).
          DATA(t49) = VALUE abap_bool( ).
          DATA(t50) = t44.
          IF t50 IS INITIAL.
            t49 = abap_true.
          ELSEIF t50->has = abap_false.
            t49 = abap_true.
          ENDIF.
          IF t49 = abap_true.
            DATA(t51) = |undefined|.
            t48 = t51.
          ELSE.
            DATA t52 TYPE string.
            DATA(t53) = t44.
            t52 = t53->value.
            t48 = t52.
          ENDIF.
          t43 = t48.
          t39 = zlnt_runtime_rege_8d1cc1058680=>exec_legacy( p0 = t40 p1 = t43 ).
          t38 = t39.
          DATA(t54) = VALUE abap_bool( ).
          DATA(t55) = VALUE abap_bool( ).
          DATA(t56) = t38.
          IF t56 IS INITIAL.
            t55 = abap_true.
          ENDIF.
          t54 = xsdbool( t55 = abap_false ).
          IF t54 = abap_true.
            DATA(t57) = VALUE f( ).
            DATA(t58) = VALUE f( ).
            DATA(t59) = VALUE f( ).
            DATA(t60) = VALUE i( ).
            DATA t61 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA(t62) = t38.
            t61 = t62.
            IF t61->match_has_index <> abap_true.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t60 = t61->match_index.
            t59 = t60.
            DATA(t63) = CONV f( 1 ).
            t58 = t59 + t63.
            t57 = t58.
            DATA t64 TYPE REF TO zcl_lnt_position.
            DATA t65 TYPE REF TO zcl_lnt_position.
            DATA t66 TYPE f.
            DATA t67 TYPE i.
            DATA(t68) = t32.
            DATA(t69) = 1.
            t67 = t68 + t69.
            t66 = t67.
            DATA(t70) = t57.
            DATA(t71) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t71->has = abap_true.
            t71->value = t70.
            t65 = NEW zcl_lnt_position( i_row = t66 i_col = t71 ).
            t64 = t65.
            DATA t72 TYPE REF TO zcl_lnt_position.
            DATA t73 TYPE REF TO zcl_lnt_position.
            DATA t74 TYPE f.
            DATA t75 TYPE i.
            DATA(t76) = t32.
            DATA(t77) = 1.
            t75 = t76 + t77.
            t74 = t75.
            DATA t78 TYPE f.
            DATA(t79) = t57.
            DATA(t80) = CONV f( 1 ).
            t78 = t79 + t80.
            DATA(t81) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t81->has = abap_true.
            t81->value = t78.
            t73 = NEW zcl_lnt_position( i_row = t74 i_col = t81 ).
            t72 = t73.
            DATA t82 TYPE string.
            DATA(t83) = |Contains non 7 bit ascii character|.
            t82 = t83.
            DATA t84 TYPE REF TO zcl_lnt_issue.
            CLEAR t84.
            DATA t85 TYPE REF TO zcl_lnt_issue.
            CLEAR t85.
            DATA(t86) = t6.
            DATA(t87) = t64.
            DATA(t88) = t72.
            DATA(t89) = t82.
            DATA(t90) = VALUE string( ).
            DATA t91 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t91.
            DATA t92 TYPE string.
            DATA(t93) = |7bit_ascii|.
            t92 = t93.
            DATA t94 TYPE string.
            DATA(t95) = |Check for 7bit ascii|.
            t94 = t95.
            DATA t96 TYPE string.
            DATA(t97) = |Only allow characters from the 7bit ASCII set.|.
            t96 = t97.
            DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t98.
            DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t99.
            DATA(t100) = abap_true.
            IF t100 = abap_true.
              DATA(t101) = |https://docs.abapopenchecks.org/checks/05/\n\nhttps://help.sap|.
              t101 = t101 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abencharacte|.
              t101 = t101 && |r_set_guidl.html\n\nCheckes files with extensions ".abap" and |.
              t101 = t101 && |".asddls"|.
              DATA(t102) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t102->has = abap_true.
              t102->value = t101.
              t99 = t102.
            ELSE.
              DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t103.
              t99 = t103.
            ENDIF.
            t98 = t99.
            DATA t104 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t104.
            DATA t105 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t105.
            DATA(t106) = abap_true.
            IF t106 = abap_true.
              DATA t107 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t108 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t109 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t109.
              t108 = t109.
              DATA(t110) = t108.
              DATA(t111) = |SingleFile|.
              t110->load( ).
              APPEND t111 TO t110->items.
              t110->save( ).
              DATA(t112) = t108.
              t107 = t112.
              t105 = t107.
            ELSE.
              DATA t113 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t113.
              t105 = t113.
            ENDIF.
            t104 = t105.
            DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t114.
            DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t115.
            DATA(t116) = abap_true.
            IF t116 = abap_true.
              DATA(t117) = |WRITE '뽑'.|.
              DATA(t118) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t118->has = abap_true.
              t118->value = t117.
              t115 = t118.
            ELSE.
              DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t119.
              t115 = t119.
            ENDIF.
            t114 = t115.
            DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t120.
            DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t121.
            DATA(t122) = abap_true.
            IF t122 = abap_true.
              DATA(t123) = |WRITE cl_abap_conv_in_ce=>uccp( 'BF51' ).|.
              DATA(t124) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t124->has = abap_true.
              t124->value = t123.
              t121 = t124.
            ELSE.
              DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t125.
              t121 = t125.
            ENDIF.
            t120 = t121.
            DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t127.
            t126 = t127.
            DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t129.
            t128 = t129.
            t91 = NEW zcl_lnt_irule_metadata( i_key = t92 i_title = t94 i_short_description = t96 i_bad_example = t114 i_good_example = t120 i_extended_information = t98 i_tags = t104 i_pragma = t126 i_pseudo_comment = t128 ).
            CREATE OBJECT t91->zlnt_view_ownkeys_b0e8086400eb.
            t91->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t130.
            IF t91->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t130 ).
            ENDIF.
            DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t131.
            IF t91->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t131 ).
            ENDIF.
            DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t132.
            IF t91->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t132 ).
            ENDIF.
            DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t133.
            IF t91->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t133 ).
            ENDIF.
            DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t134.
            IF t91->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t134 ).
            ENDIF.
            DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t135.
            IF t91->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t135 ).
            ENDIF.
            DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t136.
            IF t91->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t136 ).
            ENDIF.
            CREATE OBJECT t91->zlnt_json_ownkeys_70e5fd461788.
            t91->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t137) = |key|.
            DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t138.
            IF t91->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = t137 p1 = t138 ).
            ENDIF.
            DATA(t139) = |title|.
            DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t140.
            IF t91->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = t139 p1 = t140 ).
            ENDIF.
            DATA(t141) = |shortDescription|.
            DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t142.
            IF t91->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = t141 p1 = t142 ).
            ENDIF.
            DATA(t143) = |extendedInformation|.
            DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t144.
            IF t91->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = t143 p1 = t144 ).
            ENDIF.
            DATA(t145) = |tags|.
            DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t146.
            IF t91->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = t145 p1 = t146 ).
            ENDIF.
            DATA(t147) = |badExample|.
            DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t148.
            IF t91->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = t147 p1 = t148 ).
            ENDIF.
            DATA(t149) = |goodExample|.
            DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t150.
            IF t91->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = t149 p1 = t150 ).
            ENDIF.
            t90 = t91->key.
            DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t152) = me->conf.
            t151 = t152->zlnt_view_read_sr_15c06369f827( ).
            DATA t153 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t153.
            DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t154.
            t85 = zcl_lnt_issue=>at_range( i_file = t86 i_start = t87 i_end = t88 i_message_26cb = t89 i_key = t90 i_severity = t151 i_fix = t153 i_alternative_fixes = t154 ).
            t84 = t85.
            DATA(t155) = t2.
            DATA(t156) = t84.
            t155->load( ).
            APPEND t156 TO t155->items.
            t155->save( ).
          ENDIF.
          DATA t157 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t157.
          DATA t158 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t158.
          DATA t159 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CLEAR t159.
          DATA(t160) = `\r.+$`.
          DATA(t161) = `\r[^`.
          t161 = t161 && |\n\r|.
          DATA t162 TYPE c LENGTH 1.
          CLEAR t162.
          t162 = cl_abap_conv_in_ce=>uccpi( 8232 ).
          CONCATENATE t161 t162 INTO t161 RESPECTING BLANKS.
          DATA t163 TYPE c LENGTH 1.
          CLEAR t163.
          t163 = cl_abap_conv_in_ce=>uccpi( 8233 ).
          CONCATENATE t161 t163 INTO t161 RESPECTING BLANKS.
          t161 = t161 && |]+$|.
          DATA(t164) = ||.
          CREATE OBJECT t159 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t161 flags = t164.
          t159->source = t160.
          DATA(t165) = VALUE string( ).
          DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t168) = t29.
          DATA(t169) = t32.
          t167 = t168->get( p0 = t169 ).
          t166 = t167.
          DATA(t170) = VALUE string( ).
          DATA(t171) = VALUE abap_bool( ).
          DATA(t172) = t166.
          IF t172 IS INITIAL.
            t171 = abap_true.
          ELSEIF t172->has = abap_false.
            t171 = abap_true.
          ENDIF.
          IF t171 = abap_true.
            DATA(t173) = |undefined|.
            t170 = t173.
          ELSE.
            DATA t174 TYPE string.
            DATA(t175) = t166.
            t174 = t175->value.
            t170 = t174.
          ENDIF.
          t165 = t170.
          t158 = zlnt_runtime_rege_8d1cc1058680=>exec_legacy( p0 = t159 p1 = t165 ).
          t157 = t158.
          DATA(t176) = VALUE abap_bool( ).
          DATA(t177) = VALUE abap_bool( ).
          DATA(t178) = t157.
          IF t178 IS INITIAL.
            t177 = abap_true.
          ENDIF.
          t176 = xsdbool( t177 = abap_false ).
          IF t176 = abap_true.
            DATA(t179) = VALUE f( ).
            DATA(t180) = VALUE f( ).
            DATA(t181) = VALUE f( ).
            DATA(t182) = VALUE i( ).
            DATA t183 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA(t184) = t157.
            t183 = t184.
            IF t183->match_has_index <> abap_true.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t182 = t183->match_index.
            t181 = t182.
            DATA(t185) = CONV f( 1 ).
            t180 = t181 + t185.
            t179 = t180.
            DATA t186 TYPE REF TO zcl_lnt_position.
            DATA t187 TYPE REF TO zcl_lnt_position.
            DATA t188 TYPE f.
            DATA t189 TYPE i.
            DATA(t190) = t32.
            DATA(t191) = 1.
            t189 = t190 + t191.
            t188 = t189.
            DATA(t192) = t179.
            DATA(t193) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t193->has = abap_true.
            t193->value = t192.
            t187 = NEW zcl_lnt_position( i_row = t188 i_col = t193 ).
            t186 = t187.
            DATA t194 TYPE REF TO zcl_lnt_position.
            DATA t195 TYPE REF TO zcl_lnt_position.
            DATA t196 TYPE f.
            DATA t197 TYPE i.
            DATA(t198) = t32.
            DATA(t199) = 1.
            t197 = t198 + t199.
            t196 = t197.
            DATA t200 TYPE f.
            DATA(t201) = t179.
            DATA(t202) = CONV f( 1 ).
            t200 = t201 + t202.
            DATA(t203) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t203->has = abap_true.
            t203->value = t200.
            t195 = NEW zcl_lnt_position( i_row = t196 i_col = t203 ).
            t194 = t195.
            DATA t204 TYPE string.
            DATA(t205) = |Dangling carriage return|.
            t204 = t205.
            DATA t206 TYPE REF TO zcl_lnt_issue.
            CLEAR t206.
            DATA t207 TYPE REF TO zcl_lnt_issue.
            CLEAR t207.
            DATA(t208) = t6.
            DATA(t209) = t186.
            DATA(t210) = t194.
            DATA(t211) = t204.
            DATA(t212) = VALUE string( ).
            DATA t213 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t213.
            DATA t214 TYPE string.
            DATA(t215) = |7bit_ascii|.
            t214 = t215.
            DATA t216 TYPE string.
            DATA(t217) = |Check for 7bit ascii|.
            t216 = t217.
            DATA t218 TYPE string.
            DATA(t219) = |Only allow characters from the 7bit ASCII set.|.
            t218 = t219.
            DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t220.
            DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t221.
            DATA(t222) = abap_true.
            IF t222 = abap_true.
              DATA(t223) = |https://docs.abapopenchecks.org/checks/05/\n\nhttps://help.sap|.
              t223 = t223 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abencharacte|.
              t223 = t223 && |r_set_guidl.html\n\nCheckes files with extensions ".abap" and |.
              t223 = t223 && |".asddls"|.
              DATA(t224) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t224->has = abap_true.
              t224->value = t223.
              t221 = t224.
            ELSE.
              DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t225.
              t221 = t225.
            ENDIF.
            t220 = t221.
            DATA t226 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t226.
            DATA t227 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t227.
            DATA(t228) = abap_true.
            IF t228 = abap_true.
              DATA t229 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t230 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t231 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t231.
              t230 = t231.
              DATA(t232) = t230.
              DATA(t233) = |SingleFile|.
              t232->load( ).
              APPEND t233 TO t232->items.
              t232->save( ).
              DATA(t234) = t230.
              t229 = t234.
              t227 = t229.
            ELSE.
              DATA t235 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t235.
              t227 = t235.
            ENDIF.
            t226 = t227.
            DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t236.
            DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t237.
            DATA(t238) = abap_true.
            IF t238 = abap_true.
              DATA(t239) = |WRITE '뽑'.|.
              DATA(t240) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t240->has = abap_true.
              t240->value = t239.
              t237 = t240.
            ELSE.
              DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t241.
              t237 = t241.
            ENDIF.
            t236 = t237.
            DATA t242 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t242.
            DATA t243 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t243.
            DATA(t244) = abap_true.
            IF t244 = abap_true.
              DATA(t245) = |WRITE cl_abap_conv_in_ce=>uccp( 'BF51' ).|.
              DATA(t246) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t246->has = abap_true.
              t246->value = t245.
              t243 = t246.
            ELSE.
              DATA t247 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t247.
              t243 = t247.
            ENDIF.
            t242 = t243.
            DATA t248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t249.
            t248 = t249.
            DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t251 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t251.
            t250 = t251.
            t213 = NEW zcl_lnt_irule_metadata( i_key = t214 i_title = t216 i_short_description = t218 i_bad_example = t236 i_good_example = t242 i_extended_information = t220 i_tags = t226 i_pragma = t248 i_pseudo_comment = t250 ).
            CREATE OBJECT t213->zlnt_view_ownkeys_b0e8086400eb.
            t213->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t252.
            IF t213->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t213->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t252 ).
            ENDIF.
            DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t253.
            IF t213->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t213->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t253 ).
            ENDIF.
            DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t254.
            IF t213->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t213->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t254 ).
            ENDIF.
            DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t255.
            IF t213->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t213->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t255 ).
            ENDIF.
            DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t256.
            IF t213->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t213->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t256 ).
            ENDIF.
            DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t257.
            IF t213->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t213->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t257 ).
            ENDIF.
            DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t258.
            IF t213->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t213->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t258 ).
            ENDIF.
            CREATE OBJECT t213->zlnt_json_ownkeys_70e5fd461788.
            t213->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t259) = |key|.
            DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t260.
            IF t213->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t213->zlnt_json_ownkeys_70e5fd461788->put( p0 = t259 p1 = t260 ).
            ENDIF.
            DATA(t261) = |title|.
            DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t262.
            IF t213->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t213->zlnt_json_ownkeys_70e5fd461788->put( p0 = t261 p1 = t262 ).
            ENDIF.
            DATA(t263) = |shortDescription|.
            DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t264.
            IF t213->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t213->zlnt_json_ownkeys_70e5fd461788->put( p0 = t263 p1 = t264 ).
            ENDIF.
            DATA(t265) = |extendedInformation|.
            DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t266.
            IF t213->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t213->zlnt_json_ownkeys_70e5fd461788->put( p0 = t265 p1 = t266 ).
            ENDIF.
            DATA(t267) = |tags|.
            DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t268.
            IF t213->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t213->zlnt_json_ownkeys_70e5fd461788->put( p0 = t267 p1 = t268 ).
            ENDIF.
            DATA(t269) = |badExample|.
            DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t270.
            IF t213->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t213->zlnt_json_ownkeys_70e5fd461788->put( p0 = t269 p1 = t270 ).
            ENDIF.
            DATA(t271) = |goodExample|.
            DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t272.
            IF t213->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t213->zlnt_json_ownkeys_70e5fd461788->put( p0 = t271 p1 = t272 ).
            ENDIF.
            t212 = t213->key.
            DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t274) = me->conf.
            t273 = t274->zlnt_view_read_sr_15c06369f827( ).
            DATA t275 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t275.
            DATA t276 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t276.
            t207 = zcl_lnt_issue=>at_range( i_file = t208 i_start = t209 i_end = t210 i_message_26cb = t211 i_key = t212 i_severity = t273 i_fix = t275 i_alternative_fixes = t276 ).
            t206 = t207.
            DATA(t277) = t2.
            DATA(t278) = t206.
            t277->load( ).
            APPEND t278 TO t277->items.
            t277->save( ).
          ENDIF.
          DATA t279 TYPE i.
          DATA(t280) = t32.
          DATA(t281) = 1.
          t279 = t280 + t281.
          t32 = t279.
        ENDDO.
      ENDIF.
    ENDDO.
    DATA(t282) = t2.
    result = t282.

  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_seven_bit_ascii.
    DATA(t3) = t1.
    t2 = me->in_in_sr_rl_7b_as_ts_sv_bt_asc( i_reg_d009 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_seven_bit_ascii_conf( me->g_c_in_sr_rl_7b_as_ts_sv_bt_as( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_seven_bit_ascii_conf( me->g_c_in_sr_rl_7b_as_ts_sv_bt_as( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_seven_bit_ascii_conf.
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
        t2 = NEW zcl_lnt_seven_bit_ascii_conf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->s_c_in_sr_rl_7b_as_ts_sv_bt_as( i_conf = t2 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1380_afed9089afcf.
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
