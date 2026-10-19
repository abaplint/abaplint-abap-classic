* TS: src/rules/newline_between_methods.ts:25:1 NewlineBetweenMethods
CLASS zcl_lnt_nwln_btwn_mthds DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_nwln_btwn_mthds_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_nw_bt_mt_ts_nw_bt_mt RETURNING VALUE(result) TYPE REF TO zcl_lnt_nwln_btwn_mthds_cnf.
    METHODS s_c_i_s_r_nw_bt_mt_ts_nw_bt_mt IMPORTING i_conf TYPE REF TO zcl_lnt_nwln_btwn_mthds_cnf.
    METHODS r_p_i_s_r_nw_bt_mt_ts_nw_bt_mt IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS is_configuration_valid RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_nwln_btwn_mthds IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_nwln_btwn_mthds_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t12.
    t12->load( ).
    APPEND |Whitespace| TO t12->items.
    t12->save( ).
    t12->load( ).
    APPEND |SingleFile| TO t12->items.
    t12->save( ).
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |newline_between_methods| i_title = |New line between methods| i_short_description = |Checks for newlines between method implementations.| i_bad_example = t20 i_good_example = t22 i_extended_information = t24 i_tags = t12 i_pragma = t26 i_pseudo_comment = t28 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t30 ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t31 ).
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t32 ).
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t33 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t35 ).
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t37 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t39 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t41 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA t1 TYPE string.
    t1 = me->conf->zlnt_view_read_sr_2ac95bad942d( ).
    IF xsdbool( t1 = |exact| ) = abap_true.
      DATA(t8) = VALUE string( ).
      DATA(t9) = |Exactly |.
      DATA(t10) = VALUE string( ).
      DATA t11 TYPE f.
      t11 = me->conf->zlnt_view_read_sr_61b1746e9aca( ).
      IF t11 <> trunc( t11 ) OR t11 > range_safe_integer OR t11 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t13) = CONV int8( t11 ).
      t10 = |{ t13 }|.
      DATA(t14) = strlen( t9 ).
      t8 = |{ t9 }{ t10 }|.
      DATA(t16) = strlen( t8 ).
      result = |{ t8 }{ | newlines are required in between methods| }|.
      RETURN.
    ELSE.
      IF xsdbool( t1 = |less| ) = abap_true.
        DATA(t21) = VALUE string( ).
        DATA(t22) = |Less than |.
        DATA(t23) = VALUE string( ).
        DATA t24 TYPE f.
        t24 = me->conf->zlnt_view_read_sr_61b1746e9aca( ).
        IF t24 <> trunc( t24 ) OR t24 > range_safe_integer OR t24 < 0 - range_safe_integer.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t26) = CONV int8( t24 ).
        t23 = |{ t26 }|.
        DATA(t27) = strlen( t22 ).
        t21 = |{ t22 }{ t23 }|.
        DATA(t28) = | newlines and at least a single newline are required in betw|.
        t28 = t28 && |een methods|.
        DATA(t29) = strlen( t21 ).
        result = |{ t21 }{ t28 }|.
        RETURN.
      ELSE.
        result = ||.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD g_c_i_s_r_nw_bt_mt_ts_nw_bt_mt.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_nw_bt_mt_ts_nw_bt_mt.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_nw_bt_mt_ts_nw_bt_mt.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t4 = t1->file->get_raw_rows( ).
    DATA(t12) = VALUE abap_bool( ).
    DATA t13 TYPE abap_bool.
    DATA t14 TYPE abap_bool.
    DATA t15 TYPE f.
    t15 = me->conf->zlnt_view_read_sr_61b1746e9aca( ).
    t14 = xsdbool( t15 < CONV f( 1 ) ).
    t13 = t14.
    IF t14 = abap_false.
      DATA t18 TYPE abap_bool.
      DATA t19 TYPE abap_bool.
      DATA t20 TYPE f.
      t20 = me->conf->zlnt_view_read_sr_61b1746e9aca( ).
      t19 = xsdbool( t20 = CONV f( 1 ) ).
      t18 = t19.
      IF t19 = abap_true.
        DATA t24 TYPE string.
        t24 = me->conf->zlnt_view_read_sr_2ac95bad942d( ).
        t18 = xsdbool( t24 = |less| ).
      ENDIF.
      t13 = t18.
    ENDIF.
    IF t13 = abap_true.
      t12 = abap_false.
    ELSE.
      t12 = abap_true.
    ENDIF.
    IF xsdbool( t12 = abap_false ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t30 = t1->statements.
    DATA t35 TYPE REF TO zcl_lnt_statement_node.
    DATA t36 TYPE REF TO object.
    DATA(t37) = VALUE i( ).
    DO.
      t30->load( ).
      IF t37 >= lines( t30->items ).
        EXIT.
      ENDIF.
      CLEAR t36.
      READ TABLE t30->items INDEX t37 + 1 INTO t36.
      t37 = t37 + 1.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t38.
      CLEAR t35.
      IF t36 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t38 ?= t36.
        DATA t39 TYPE REF TO object.
        t39 = t38->as_ref( ).
        t35 ?= t39.
      ELSE.
        t35 ?= t36.
      ENDIF.
      DATA t40 TYPE f.
      DATA t50 TYPE REF TO zcl_lnt_position.
      t50 = t35->get_first_token( )->start.
      t40 = t50->row.
      DATA t54 TYPE abap_bool.
      DATA t55 TYPE abap_bool.
      DATA t57 TYPE REF TO zif_lnt_statement.
      t57 = t35->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t55 = xsdbool( xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_end_method ) = abap_false ).
      t54 = t55.
      IF t55 = abap_false.
        DATA(t59) = VALUE abap_bool( ).
        DATA t60 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t60.
        DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t61.
        DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t63.
        DATA(t66) = VALUE i( ).
        DATA(t67) = t40.
        IF t67 > range_i32_upper.
          t66 = range_i32_upper.
        ELSEIF t67 < range_i32_lower.
          t66 = range_i32_lower.
        ELSE.
          t66 = trunc( t67 ).
        ENDIF.
        t63 = t4->get( p0 = t66 ).
        DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t68.
        DATA(t69) = VALUE abap_bool( ).
        IF t63 IS INITIAL.
          t69 = abap_true.
        ELSEIF t63->has = abap_false.
          t69 = abap_true.
        ENDIF.
        IF t69 = abap_true.
          CLEAR t68.
        ELSE.
          DATA t72 TYPE string.
          DATA t73 TYPE string.
          t73 = t63->value.
          DATA(t75) = strlen( t73 ).
          t72 = t73.
          IF t72 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t72 TO UPPER CASE.
          ELSE.
            t72 = zlnt_runtime_uppe_91169605024d=>full( t72 ).
          ENDIF.
          DATA(t76) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t76->has = abap_true.
          t76->value = t72.
          t68 = t76.
        ENDIF.
        t61 = t68.
        DATA t77 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t77.
        DATA(t78) = VALUE abap_bool( ).
        IF t61 IS INITIAL.
          t78 = abap_true.
        ELSEIF t61->has = abap_false.
          t78 = abap_true.
        ENDIF.
        IF t78 = abap_true.
          CLEAR t77.
        ELSE.
          DATA(t81) = VALUE abap_bool( ).
          DATA(t82) = VALUE i( ).
          DATA t83 TYPE string.
          t83 = t61->value.
          DATA(t85) = |ENDCLASS.|.
          DATA(t86) = strlen( t83 ).
          IF t85 IS INITIAL.
            t82 = 0.
          ELSE.
            FIND t85 IN t83 MATCH OFFSET t82.
            IF sy-subrc <> 0.
              t82 = -1.
            ENDIF.
          ENDIF.
          t81 = xsdbool( t82 >= 0 ).
          DATA(t88) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t88->has = abap_true.
          t88->value = t81.
          t77 = t88.
        ENDIF.
        t60 = t77.
        IF t60 IS BOUND.
          IF t60->has = abap_true.
            t59 = xsdbool( t60->value IS NOT INITIAL ).
          ENDIF.
        ENDIF.
        t54 = t59.
      ENDIF.
      IF t54 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t89 TYPE f.
      t89 = CONV f( 0 ).
      DO.
        DATA(t91) = VALUE abap_bool( ).
        DATA(t92) = VALUE abap_bool( ).
        DATA(t95) = VALUE i( ).
        DATA(t96) = t40.
        IF t96 > range_i32_upper.
          t95 = range_i32_upper.
        ELSEIF t96 < range_i32_lower.
          t95 = range_i32_lower.
        ELSE.
          t95 = trunc( t96 ).
        ENDIF.
        t92 = zcl_lnt_sequential_blank=>is_blank_or_whitespace( i_line = t4->get( p0 = t95 ) ).
        t91 = t92.
        IF t92 = abap_true.
          DATA t99 TYPE f.
          DATA t100 TYPE f.
          t100 = me->conf->zlnt_view_read_sr_61b1746e9aca( ).
          DATA(t102) = CONV f( 1 ).
          t99 = t100 + t102.
          t91 = xsdbool( t89 <= t99 ).
        ENDIF.
        IF t91 = abap_false.
          EXIT.
        ENDIF.
        DATA(t105) = CONV f( 1 ).
        t89 = t89 + t105.
        DATA(t108) = CONV f( 1 ).
        t40 = t40 + t108.
      ENDDO.
      DATA(t109) = VALUE abap_bool( ).
      DATA(t110) = VALUE abap_bool( ).
      DATA t111 TYPE abap_bool.
      DATA t112 TYPE abap_bool.
      DATA t114 TYPE f.
      t114 = me->conf->zlnt_view_read_sr_61b1746e9aca( ).
      t112 = xsdbool( t89 <> t114 ).
      t111 = t112.
      IF t112 = abap_true.
        DATA t117 TYPE string.
        t117 = me->conf->zlnt_view_read_sr_2ac95bad942d( ).
        t111 = xsdbool( t117 = |exact| ).
      ENDIF.
      t110 = t111.
      IF t111 = abap_false.
        DATA t120 TYPE abap_bool.
        DATA t121 TYPE abap_bool.
        DATA t123 TYPE f.
        t123 = me->conf->zlnt_view_read_sr_61b1746e9aca( ).
        t121 = xsdbool( t89 >= t123 ).
        t120 = t121.
        IF t121 = abap_true.
          DATA t126 TYPE string.
          t126 = me->conf->zlnt_view_read_sr_2ac95bad942d( ).
          t120 = xsdbool( t126 = |less| ).
        ENDIF.
        t110 = t120.
      ENDIF.
      t109 = t110.
      IF t110 = abap_false.
        t109 = xsdbool( t89 = CONV f( 0 ) ).
      ENDIF.
      IF t109 = abap_true.
        DATA t133 TYPE REF TO zcl_lnt_issue.
        CLEAR t133.
        DATA(t136) = VALUE string( ).
        DATA t137 TYPE string.
        t137 = me->conf->zlnt_view_read_sr_2ac95bad942d( ).
        DATA(t140) = VALUE string( ).
        IF xsdbool( t137 = |exact| ) = abap_true.
          DATA(t145) = VALUE string( ).
          DATA(t146) = |Exactly |.
          DATA(t147) = VALUE string( ).
          DATA t148 TYPE f.
          t148 = me->conf->zlnt_view_read_sr_61b1746e9aca( ).
          IF t148 <> trunc( t148 ) OR t148 > range_safe_integer OR t148 < 0 - range_safe_integer.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t150) = CONV int8( t148 ).
          t147 = |{ t150 }|.
          DATA(t151) = strlen( t146 ).
          t145 = |{ t146 }{ t147 }|.
          DATA(t153) = strlen( t145 ).
          t140 = |{ t145 }{ | newlines are required in between methods| }|.
        ELSE.
          DATA(t154) = VALUE string( ).
          IF xsdbool( t137 = |less| ) = abap_true.
            DATA(t159) = VALUE string( ).
            DATA(t160) = |Less than |.
            DATA(t161) = VALUE string( ).
            DATA t162 TYPE f.
            t162 = me->conf->zlnt_view_read_sr_61b1746e9aca( ).
            IF t162 <> trunc( t162 ) OR t162 > range_safe_integer OR t162 < 0 - range_safe_integer.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            DATA(t164) = CONV int8( t162 ).
            t161 = |{ t164 }|.
            DATA(t165) = strlen( t160 ).
            t159 = |{ t160 }{ t161 }|.
            DATA(t166) = | newlines and at least a single newline are required in betw|.
            t166 = t166 && |een methods|.
            DATA(t167) = strlen( t159 ).
            t154 = |{ t159 }{ t166 }|.
          ELSE.
            t154 = ||.
          ENDIF.
          t140 = t154.
        ENDIF.
        t136 = t140.
        DATA(t169) = VALUE string( ).
        DATA t170 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t170.
        DATA t177 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t177.
        DATA t181 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t181.
        t181->load( ).
        APPEND |Whitespace| TO t181->items.
        t181->save( ).
        t181->load( ).
        APPEND |SingleFile| TO t181->items.
        t181->save( ).
        t177 = t181.
        DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t189.
        DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t191.
        DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t193.
        DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t195.
        DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t197.
        t170 = NEW zcl_lnt_irule_metadata( i_key = |newline_between_methods| i_title = |New line between methods| i_short_description = |Checks for newlines between method implementations.| i_bad_example = t189 i_good_example = t191 i_extended_information = t193 i_tags = t177 i_pragma = t195 i_pseudo_comment = t197 ).
        CREATE OBJECT t170->zlnt_view_ownkeys_b0e8086400eb.
        t170->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t199.
        t170->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t199 ).
        DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t200.
        IF t170->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t170->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t200 ).
        ENDIF.
        DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t201.
        IF t170->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t170->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t201 ).
        ENDIF.
        DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t202.
        IF t170->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t170->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t202 ).
        ENDIF.
        CREATE OBJECT t170->zlnt_json_ownkeys_70e5fd461788.
        t170->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t204.
        t170->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t204 ).
        DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t206.
        IF t170->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t170->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t206 ).
        ENDIF.
        DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t208.
        IF t170->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t170->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t208 ).
        ENDIF.
        DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t210.
        IF t170->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t170->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t210 ).
        ENDIF.
        t169 = t170->key.
        DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t211 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t213 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t213.
        DATA t214 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t214.
        t133 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t35 i_message_26cb = t136 i_key = t169 i_severity = t211 i_fix = t213 i_alternative_fixes = t214 ).
        t2->load( ).
        APPEND t133 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD is_configuration_valid.
    DATA t1 TYPE abap_bool.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE f.
    t3 = me->conf->zlnt_view_read_sr_61b1746e9aca( ).
    t2 = xsdbool( t3 < CONV f( 1 ) ).
    t1 = t2.
    IF t2 = abap_false.
      DATA t6 TYPE abap_bool.
      DATA t7 TYPE abap_bool.
      DATA t8 TYPE f.
      t8 = me->conf->zlnt_view_read_sr_61b1746e9aca( ).
      t7 = xsdbool( t8 = CONV f( 1 ) ).
      t6 = t7.
      IF t7 = abap_true.
        DATA t12 TYPE string.
        t12 = me->conf->zlnt_view_read_sr_2ac95bad942d( ).
        t6 = xsdbool( t12 = |less| ).
      ENDIF.
      t1 = t6.
    ENDIF.
    IF t1 = abap_true.
      result = abap_false.
      RETURN.
    ELSE.
      result = abap_true.

    ENDIF.
  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_nwln_btwn_mthds_cnf( me->g_c_i_s_r_nw_bt_mt_ts_nw_bt_mt( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_nwln_btwn_mthds_cnf( me->g_c_i_s_r_nw_bt_mt_ts_nw_bt_mt( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_nwln_btwn_mthds_cnf.
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
        t1 = NEW zcl_lnt_nwln_btwn_mthds_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_nw_bt_mt_ts_nw_bt_mt( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_nw_bt_mt_ts_nw_bt_mt( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1603_fa2e7b04802b.
  ENDMETHOD.
ENDCLASS.
