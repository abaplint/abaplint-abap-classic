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
    me->conf = NEW zcl_lnt_seven_bit_ascii_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://docs.abapopenchecks.org/checks/05/\n\nhttps://help.sap|.
    t11 = t11 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abencharacte|.
    t11 = t11 && |r_set_guidl.html\n\nCheckes files with extensions ".abap" and |.
    t11 = t11 && |".asddls"|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = |WRITE '뽑'.|.
    t24 = t28.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = |WRITE cl_abap_conv_in_ce=>uccp( 'BF51' ).|.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |7bit_ascii| i_title = |Check for 7bit ascii| i_short_description = |Only allow characters from the 7bit ASCII set.| i_bad_example = t24 i_good_example = t34 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t38 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t40 ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t46 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t48 ).
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t50 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t52 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t54 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t60 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD in_in_sr_rl_7b_as_ts_sv_bt_asc.
    DATA(t1) = i_reg_d009.
    result = me.

  ENDMETHOD.

  METHOD g_c_in_sr_rl_7b_as_ts_sv_bt_as.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_in_sr_rl_7b_as_ts_sv_bt_as.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = t1->get_files( ).
    DATA t6 TYPE REF TO zif_lnt_file.
    DATA t7 TYPE REF TO object.
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
      t11 = t6->get_filename( ).
      DATA(t14) = VALUE abap_bool( ).
      DATA(t15) = VALUE abap_bool( ).
      DATA(t17) = |.abap|.
      DATA(t18) = strlen( t11 ).
      DATA t19 TYPE i.
      DATA(t20) = VALUE i( ).
      DATA(t21) = VALUE string( ).
      t19 = strlen( t17 ).
      IF t19 = 0.
        t15 = abap_true.
      ELSEIF t19 <= t18.
        t20 = 0.
        t20 = t18 - t19.
        t21 = t11+t20(t19).
        IF t21 = t17.
          t15 = abap_true.
        ENDIF.
      ENDIF.
      t14 = t15.
      IF t15 = abap_false.
        DATA(t22) = VALUE abap_bool( ).
        DATA(t24) = |.asddls|.
        DATA(t25) = strlen( t11 ).
        DATA t26 TYPE i.
        DATA(t27) = VALUE i( ).
        DATA(t28) = VALUE string( ).
        t26 = strlen( t24 ).
        IF t26 = 0.
          t22 = abap_true.
        ELSEIF t26 <= t25.
          t27 = 0.
          t27 = t25 - t26.
          t28 = t11+t27(t26).
          IF t28 = t24.
            t22 = abap_true.
          ENDIF.
        ENDIF.
        t14 = t22.
      ENDIF.
      IF t14 = abap_true.
        DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t29 = t6->get_raw_rows( ).
        DATA t32 TYPE i.
        t32 = 0.
        DO.
          t29->load( ).
          IF xsdbool( t32 < lines( t29->items ) ) = abap_false.
            EXIT.
          ENDIF.
          DATA t38 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t38.
          DATA t40 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CLEAR t40.
          CREATE OBJECT t40 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = `[\u007f-\uffff]` flags = ||.
          DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t44 = t29->get( p0 = t32 ).
          DATA(t48) = VALUE string( ).
          DATA(t49) = VALUE abap_bool( ).
          IF t44 IS INITIAL.
            t49 = abap_true.
          ELSEIF t44->has = abap_false.
            t49 = abap_true.
          ENDIF.
          IF t49 = abap_true.
            t48 = |undefined|.
          ELSE.
            t48 = t44->value.
          ENDIF.
          t38 = zlnt_runtime_rege_8d1cc1058680=>exec_legacy( p0 = t40 p1 = t48 ).
          IF xsdbool( xsdbool( t38 IS INITIAL ) = abap_false ) = abap_true.
            DATA(t57) = VALUE f( ).
            DATA(t59) = VALUE f( ).
            DATA t61 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            t61 = t38.
            IF t61->match_has_index <> abap_true.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t59 = t61->match_index.
            DATA(t63) = CONV f( 1 ).
            t57 = t59 + t63.
            DATA t65 TYPE REF TO zcl_lnt_position.
            DATA t66 TYPE f.
            DATA t67 TYPE i.
            DATA(t69) = 1.
            t67 = t32 + t69.
            t66 = t67.
            DATA(t71) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t71->has = abap_true.
            t71->value = t57.
            t65 = NEW zcl_lnt_position( i_row = t66 i_col = t71 ).
            DATA t73 TYPE REF TO zcl_lnt_position.
            DATA t74 TYPE f.
            DATA t75 TYPE i.
            DATA(t77) = 1.
            t75 = t32 + t77.
            t74 = t75.
            DATA t78 TYPE f.
            DATA(t80) = CONV f( 1 ).
            t78 = t57 + t80.
            DATA(t81) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t81->has = abap_true.
            t81->value = t78.
            t73 = NEW zcl_lnt_position( i_row = t74 i_col = t81 ).
            DATA t85 TYPE REF TO zcl_lnt_issue.
            CLEAR t85.
            DATA(t90) = VALUE string( ).
            DATA t91 TYPE REF TO zcl_lnt_irule_metadata.
            DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t98.
            DATA(t101) = |https://docs.abapopenchecks.org/checks/05/\n\nhttps://help.sap|.
            t101 = t101 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abencharacte|.
            t101 = t101 && |r_set_guidl.html\n\nCheckes files with extensions ".abap" and |.
            t101 = t101 && |".asddls"|.
            DATA(t102) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t102->has = abap_true.
            t102->value = t101.
            t98 = t102.
            DATA t104 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t104.
            DATA t108 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t108.
            t108->load( ).
            APPEND |SingleFile| TO t108->items.
            t108->save( ).
            t104 = t108.
            DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t114.
            DATA(t118) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t118->has = abap_true.
            t118->value = |WRITE '뽑'.|.
            t114 = t118.
            DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t120.
            DATA(t124) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t124->has = abap_true.
            t124->value = |WRITE cl_abap_conv_in_ce=>uccp( 'BF51' ).|.
            t120 = t124.
            DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t126.
            DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t128.
            t91 = NEW zcl_lnt_irule_metadata( i_key = |7bit_ascii| i_title = |Check for 7bit ascii| i_short_description = |Only allow characters from the 7bit ASCII set.| i_bad_example = t114 i_good_example = t120 i_extended_information = t98 i_tags = t104 i_pragma = t126 i_pseudo_comment = t128 ).
            CREATE OBJECT t91->zlnt_view_ownkeys_b0e8086400eb.
            t91->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t130.
            t91->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t130 ).
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
            DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t138.
            t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t138 ).
            DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t140.
            IF t91->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t140 ).
            ENDIF.
            DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t142.
            IF t91->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t142 ).
            ENDIF.
            DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t144.
            IF t91->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t144 ).
            ENDIF.
            DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t146.
            IF t91->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t146 ).
            ENDIF.
            DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t148.
            IF t91->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t148 ).
            ENDIF.
            DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t150.
            IF t91->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t91->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t150 ).
            ENDIF.
            t90 = t91->key.
            DATA t151 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t151 = me->conf->zlnt_view_read_sr_15c06369f827( ).
            DATA t153 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t153.
            DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t154.
            t85 = zcl_lnt_issue=>at_range( i_file = t6 i_start = t65 i_end = t73 i_message_26cb = |Contains non 7 bit ascii character| i_key = t90 i_severity = t151 i_fix = t153 i_alternative_fixes = t154 ).
            t2->load( ).
            APPEND t85 TO t2->items.
            t2->save( ).
          ENDIF.
          DATA t157 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t157.
          DATA t159 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CLEAR t159.
          DATA(t161) = `\r[^`.
          t161 = t161 && |\n\r|.
          DATA t162 TYPE c LENGTH 1.
          t162 = cl_abap_conv_in_ce=>uccpi( 8232 ).
          CONCATENATE t161 t162 INTO t161 RESPECTING BLANKS.
          DATA t163 TYPE c LENGTH 1.
          t163 = cl_abap_conv_in_ce=>uccpi( 8233 ).
          CONCATENATE t161 t163 INTO t161 RESPECTING BLANKS.
          t161 = t161 && |]+$|.
          CREATE OBJECT t159 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t161 flags = ||.
          t159->source = `\r.+$`.
          DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t166 = t29->get( p0 = t32 ).
          DATA(t170) = VALUE string( ).
          DATA(t171) = VALUE abap_bool( ).
          IF t166 IS INITIAL.
            t171 = abap_true.
          ELSEIF t166->has = abap_false.
            t171 = abap_true.
          ENDIF.
          IF t171 = abap_true.
            t170 = |undefined|.
          ELSE.
            t170 = t166->value.
          ENDIF.
          t157 = zlnt_runtime_rege_8d1cc1058680=>exec_legacy( p0 = t159 p1 = t170 ).
          IF xsdbool( xsdbool( t157 IS INITIAL ) = abap_false ) = abap_true.
            DATA(t179) = VALUE f( ).
            DATA(t181) = VALUE f( ).
            DATA t183 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            t183 = t157.
            IF t183->match_has_index <> abap_true.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t181 = t183->match_index.
            DATA(t185) = CONV f( 1 ).
            t179 = t181 + t185.
            DATA t187 TYPE REF TO zcl_lnt_position.
            DATA t188 TYPE f.
            DATA t189 TYPE i.
            DATA(t191) = 1.
            t189 = t32 + t191.
            t188 = t189.
            DATA(t193) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t193->has = abap_true.
            t193->value = t179.
            t187 = NEW zcl_lnt_position( i_row = t188 i_col = t193 ).
            DATA t195 TYPE REF TO zcl_lnt_position.
            DATA t196 TYPE f.
            DATA t197 TYPE i.
            DATA(t199) = 1.
            t197 = t32 + t199.
            t196 = t197.
            DATA t200 TYPE f.
            DATA(t202) = CONV f( 1 ).
            t200 = t179 + t202.
            DATA(t203) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t203->has = abap_true.
            t203->value = t200.
            t195 = NEW zcl_lnt_position( i_row = t196 i_col = t203 ).
            DATA t207 TYPE REF TO zcl_lnt_issue.
            CLEAR t207.
            DATA(t212) = VALUE string( ).
            DATA t213 TYPE REF TO zcl_lnt_irule_metadata.
            DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t220.
            DATA(t223) = |https://docs.abapopenchecks.org/checks/05/\n\nhttps://help.sap|.
            t223 = t223 && |.com/doc/abapdocu_latest_index_htm/latest/en-US/abencharacte|.
            t223 = t223 && |r_set_guidl.html\n\nCheckes files with extensions ".abap" and |.
            t223 = t223 && |".asddls"|.
            DATA(t224) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t224->has = abap_true.
            t224->value = t223.
            t220 = t224.
            DATA t226 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t226.
            DATA t230 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t230.
            t230->load( ).
            APPEND |SingleFile| TO t230->items.
            t230->save( ).
            t226 = t230.
            DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t236.
            DATA(t240) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t240->has = abap_true.
            t240->value = |WRITE '뽑'.|.
            t236 = t240.
            DATA t242 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t242.
            DATA(t246) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t246->has = abap_true.
            t246->value = |WRITE cl_abap_conv_in_ce=>uccp( 'BF51' ).|.
            t242 = t246.
            DATA t248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t248.
            DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t250.
            t213 = NEW zcl_lnt_irule_metadata( i_key = |7bit_ascii| i_title = |Check for 7bit ascii| i_short_description = |Only allow characters from the 7bit ASCII set.| i_bad_example = t236 i_good_example = t242 i_extended_information = t220 i_tags = t226 i_pragma = t248 i_pseudo_comment = t250 ).
            CREATE OBJECT t213->zlnt_view_ownkeys_b0e8086400eb.
            t213->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t252.
            t213->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t252 ).
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
            DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t260.
            t213->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t260 ).
            DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t262.
            IF t213->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t213->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t262 ).
            ENDIF.
            DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t264.
            IF t213->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t213->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t264 ).
            ENDIF.
            DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t266.
            IF t213->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t213->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t266 ).
            ENDIF.
            DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t268.
            IF t213->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t213->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t268 ).
            ENDIF.
            DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t270.
            IF t213->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t213->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t270 ).
            ENDIF.
            DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t272.
            IF t213->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t213->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t272 ).
            ENDIF.
            t212 = t213->key.
            DATA t273 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t273 = me->conf->zlnt_view_read_sr_15c06369f827( ).
            DATA t275 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t275.
            DATA t276 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t276.
            t207 = zcl_lnt_issue=>at_range( i_file = t6 i_start = t187 i_end = t195 i_message_26cb = |Dangling carriage return| i_key = t212 i_severity = t273 i_fix = t275 i_alternative_fixes = t276 ).
            t2->load( ).
            APPEND t207 TO t2->items.
            t2->save( ).
          ENDIF.
          DATA(t281) = 1.
          t32 = t32 + t281.
        ENDDO.
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD initialize.
    DATA(t3) = i_reg_f149.
    result = me->in_in_sr_rl_7b_as_ts_sv_bt_asc( i_reg_d009 = t3 ).

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_seven_bit_ascii_conf( me->g_c_in_sr_rl_7b_as_ts_sv_bt_as( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_seven_bit_ascii_conf( me->g_c_in_sr_rl_7b_as_ts_sv_bt_as( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_seven_bit_ascii_conf.
    IF t1 IS BOUND.
      IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t2 ?= t1->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t2 IS NOT BOUND.
        IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t4 TYPE REF TO zlnt_view_storage_74017ca272ac.
          IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t4 ?= t1->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t4->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t2 = NEW zcl_lnt_seven_bit_ascii_conf( view_source = t1 ).
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
