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
    DATA(t1) = NEW zcl_lnt_nwln_btwn_mthds_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |newline_between_methods|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |New line between methods|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for newlines between method implementations.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t13.
      t12 = t13.
      DATA(t14) = t12.
      DATA(t15) = |Whitespace|.
      t14->load( ).
      APPEND t15 TO t14->items.
      t14->save( ).
      DATA(t16) = t12.
      DATA(t17) = |SingleFile|.
      t16->load( ).
      APPEND t17 TO t16->items.
      t16->save( ).
      DATA(t18) = t12.
      t11 = t18.
      t9 = t11.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t19.
      t9 = t19.
    ENDIF.
    t8 = t9.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t23.
    t22 = t23.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    t26 = t27.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    t28 = t29.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t20 i_good_example = t22 i_extended_information = t24 i_tags = t8 i_pragma = t26 i_pseudo_comment = t28 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t30 ).
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t31.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t31 ).
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t32 ).
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t33 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t34) = |key|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t34 p1 = t35 ).
    ENDIF.
    DATA(t36) = |title|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    ENDIF.
    DATA(t38) = |shortDescription|.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t38 p1 = t39 ).
    ENDIF.
    DATA(t40) = |tags|.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t40 p1 = t41 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA(t3) = me->conf.
    t2 = t3->zlnt_view_read_sr_2ac95bad942d( ).
    t1 = t2.
    DATA t4 TYPE abap_bool.
    DATA(t5) = t1.
    DATA(t6) = |exact|.
    t4 = xsdbool( t5 = t6 ).
    IF t4 = abap_true.
      DATA(t7) = VALUE string( ).
      DATA(t8) = VALUE string( ).
      DATA(t9) = |Exactly |.
      DATA(t10) = VALUE string( ).
      DATA t11 TYPE f.
      DATA(t12) = me->conf.
      t11 = t12->zlnt_view_read_sr_61b1746e9aca( ).
      IF t11 <> trunc( t11 ) OR t11 > range_safe_integer OR t11 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t13) = CONV int8( t11 ).
      t10 = |{ t13 }|.
      DATA(t14) = strlen( t9 ).
      t8 = |{ t9 }{ t10 }|.
      DATA(t15) = | newlines are required in between methods|.
      DATA(t16) = strlen( t8 ).
      t7 = |{ t8 }{ t15 }|.
      result = t7.
      RETURN.
    ELSE.
      DATA t17 TYPE abap_bool.
      DATA(t18) = t1.
      DATA(t19) = |less|.
      t17 = xsdbool( t18 = t19 ).
      IF t17 = abap_true.
        DATA(t20) = VALUE string( ).
        DATA(t21) = VALUE string( ).
        DATA(t22) = |Less than |.
        DATA(t23) = VALUE string( ).
        DATA t24 TYPE f.
        DATA(t25) = me->conf.
        t24 = t25->zlnt_view_read_sr_61b1746e9aca( ).
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
        t20 = |{ t21 }{ t28 }|.
        result = t20.
        RETURN.
      ELSE.
        DATA(t30) = ||.
        result = t30.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD g_c_i_s_r_nw_bt_mt_ts_nw_bt_mt.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_nw_bt_mt_ts_nw_bt_mt.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_nw_bt_mt_ts_nw_bt_mt.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
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
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = VALUE abap_bool( ).
    DATA t13 TYPE abap_bool.
    DATA t14 TYPE abap_bool.
    DATA t15 TYPE f.
    DATA(t16) = me->conf.
    t15 = t16->zlnt_view_read_sr_61b1746e9aca( ).
    DATA(t17) = CONV f( 1 ).
    t14 = xsdbool( t15 < t17 ).
    t13 = t14.
    IF t14 = abap_false.
      DATA t18 TYPE abap_bool.
      DATA t19 TYPE abap_bool.
      DATA t20 TYPE f.
      DATA(t21) = me->conf.
      t20 = t21->zlnt_view_read_sr_61b1746e9aca( ).
      DATA(t22) = CONV f( 1 ).
      t19 = xsdbool( t20 = t22 ).
      t18 = t19.
      IF t19 = abap_true.
        DATA t23 TYPE abap_bool.
        DATA t24 TYPE string.
        DATA(t25) = me->conf.
        t24 = t25->zlnt_view_read_sr_2ac95bad942d( ).
        DATA(t26) = |less|.
        t23 = xsdbool( t24 = t26 ).
        t18 = t23.
      ENDIF.
      t13 = t18.
    ENDIF.
    IF t13 = abap_true.
      DATA(t27) = abap_false.
      t12 = t27.
    ELSE.
      DATA(t28) = abap_true.
      t12 = t28.
    ENDIF.
    t11 = xsdbool( t12 = abap_false ).
    IF t11 = abap_true.
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t29.
      result = t29.
      RETURN.
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t31 TYPE REF TO zcl_lnt_abap_file.
    DATA(t32) = t1.
    t31 = t32.
    DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t34) = t31.
    t33 = t34->statements.
    t30 = t33.
    DATA t35 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t35.
    DATA t36 TYPE REF TO object.
    CLEAR t36.
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
      DATA t41 TYPE f.
      DATA t42 TYPE REF TO zcl_lnt_position.
      DATA t43 TYPE REF TO zcl_lnt_position.
      DATA t44 TYPE REF TO zcl_lnt_statement_node.
      DATA(t45) = t35.
      t44 = t45.
      DATA t46 TYPE REF TO zcl_lnt_position.
      DATA t47 TYPE REF TO zcl_lnt_abstract_token.
      DATA t48 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t49) = t44.
      t48 = t49->get_first_token( ).
      t47 = t48.
      DATA t50 TYPE REF TO zcl_lnt_position.
      DATA(t51) = t47.
      t50 = t51->start.
      t46 = t50.
      t43 = t46.
      t42 = t43.
      DATA t52 TYPE f.
      DATA(t53) = t42.
      t52 = t53->row.
      t41 = t52.
      t40 = t41.
      DATA t54 TYPE abap_bool.
      DATA t55 TYPE abap_bool.
      DATA t56 TYPE abap_bool.
      DATA t57 TYPE REF TO zif_lnt_statement.
      DATA(t58) = t35.
      t57 = t58->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t56 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_end_method ).
      t55 = xsdbool( t56 = abap_false ).
      t54 = t55.
      IF t55 = abap_false.
        DATA(t59) = VALUE abap_bool( ).
        DATA t60 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t60.
        DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t61.
        DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t62.
        DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t63.
        DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t64.
        DATA(t65) = t4.
        DATA(t66) = VALUE i( ).
        DATA(t67) = t40.
        IF t67 > range_i32_upper.
          t66 = range_i32_upper.
        ELSEIF t67 < range_i32_lower.
          t66 = range_i32_lower.
        ELSE.
          t66 = trunc( t67 ).
        ENDIF.
        t64 = t65->get( p0 = t66 ).
        t63 = t64.
        DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t68.
        DATA(t69) = VALUE abap_bool( ).
        DATA(t70) = t63.
        IF t70 IS INITIAL.
          t69 = abap_true.
        ELSEIF t70->has = abap_false.
          t69 = abap_true.
        ENDIF.
        IF t69 = abap_true.
          DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t71.
          t68 = t71.
        ELSE.
          DATA t72 TYPE string.
          DATA t73 TYPE string.
          DATA(t74) = t63.
          t73 = t74->value.
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
        t62 = t68.
        t61 = t62.
        DATA t77 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t77.
        DATA(t78) = VALUE abap_bool( ).
        DATA(t79) = t61.
        IF t79 IS INITIAL.
          t78 = abap_true.
        ELSEIF t79->has = abap_false.
          t78 = abap_true.
        ENDIF.
        IF t78 = abap_true.
          DATA t80 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t80.
          t77 = t80.
        ELSE.
          DATA(t81) = VALUE abap_bool( ).
          DATA(t82) = VALUE i( ).
          DATA t83 TYPE string.
          DATA(t84) = t61.
          t83 = t84->value.
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
          DATA(t87) = 0.
          t81 = xsdbool( t82 >= t87 ).
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
      DATA(t90) = CONV f( 0 ).
      t89 = t90.
      DO.
        DATA(t91) = VALUE abap_bool( ).
        DATA(t92) = VALUE abap_bool( ).
        DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t93.
        DATA(t94) = t4.
        DATA(t95) = VALUE i( ).
        DATA(t96) = t40.
        IF t96 > range_i32_upper.
          t95 = range_i32_upper.
        ELSEIF t96 < range_i32_lower.
          t95 = range_i32_lower.
        ELSE.
          t95 = trunc( t96 ).
        ENDIF.
        t93 = t94->get( p0 = t95 ).
        t92 = zcl_lnt_sequential_blank=>is_blank_or_whitespace( i_line = t93 ).
        t91 = t92.
        IF t92 = abap_true.
          DATA t97 TYPE abap_bool.
          DATA(t98) = t89.
          DATA t99 TYPE f.
          DATA t100 TYPE f.
          DATA(t101) = me->conf.
          t100 = t101->zlnt_view_read_sr_61b1746e9aca( ).
          DATA(t102) = CONV f( 1 ).
          t99 = t100 + t102.
          t97 = xsdbool( t98 <= t99 ).
          t91 = t97.
        ENDIF.
        IF t91 = abap_false.
          EXIT.
        ENDIF.
        DATA t103 TYPE f.
        DATA(t104) = t89.
        DATA(t105) = CONV f( 1 ).
        t103 = t104 + t105.
        t89 = t103.
        DATA t106 TYPE f.
        DATA(t107) = t40.
        DATA(t108) = CONV f( 1 ).
        t106 = t107 + t108.
        t40 = t106.
      ENDDO.
      DATA(t109) = VALUE abap_bool( ).
      DATA(t110) = VALUE abap_bool( ).
      DATA t111 TYPE abap_bool.
      DATA t112 TYPE abap_bool.
      DATA(t113) = t89.
      DATA t114 TYPE f.
      DATA(t115) = me->conf.
      t114 = t115->zlnt_view_read_sr_61b1746e9aca( ).
      t112 = xsdbool( t113 <> t114 ).
      t111 = t112.
      IF t112 = abap_true.
        DATA t116 TYPE abap_bool.
        DATA t117 TYPE string.
        DATA(t118) = me->conf.
        t117 = t118->zlnt_view_read_sr_2ac95bad942d( ).
        DATA(t119) = |exact|.
        t116 = xsdbool( t117 = t119 ).
        t111 = t116.
      ENDIF.
      t110 = t111.
      IF t111 = abap_false.
        DATA t120 TYPE abap_bool.
        DATA t121 TYPE abap_bool.
        DATA(t122) = t89.
        DATA t123 TYPE f.
        DATA(t124) = me->conf.
        t123 = t124->zlnt_view_read_sr_61b1746e9aca( ).
        t121 = xsdbool( t122 >= t123 ).
        t120 = t121.
        IF t121 = abap_true.
          DATA t125 TYPE abap_bool.
          DATA t126 TYPE string.
          DATA(t127) = me->conf.
          t126 = t127->zlnt_view_read_sr_2ac95bad942d( ).
          DATA(t128) = |less|.
          t125 = xsdbool( t126 = t128 ).
          t120 = t125.
        ENDIF.
        t110 = t120.
      ENDIF.
      t109 = t110.
      IF t110 = abap_false.
        DATA t129 TYPE abap_bool.
        DATA(t130) = t89.
        DATA(t131) = CONV f( 0 ).
        t129 = xsdbool( t130 = t131 ).
        t109 = t129.
      ENDIF.
      IF t109 = abap_true.
        DATA(t132) = t2.
        DATA t133 TYPE REF TO zcl_lnt_issue.
        CLEAR t133.
        DATA(t134) = t1.
        DATA(t135) = t35.
        DATA(t136) = VALUE string( ).
        DATA t137 TYPE string.
        DATA t138 TYPE string.
        DATA(t139) = me->conf.
        t138 = t139->zlnt_view_read_sr_2ac95bad942d( ).
        t137 = t138.
        DATA(t140) = VALUE string( ).
        DATA t141 TYPE abap_bool.
        DATA(t142) = t137.
        DATA(t143) = |exact|.
        t141 = xsdbool( t142 = t143 ).
        IF t141 = abap_true.
          DATA(t144) = VALUE string( ).
          DATA(t145) = VALUE string( ).
          DATA(t146) = |Exactly |.
          DATA(t147) = VALUE string( ).
          DATA t148 TYPE f.
          DATA(t149) = me->conf.
          t148 = t149->zlnt_view_read_sr_61b1746e9aca( ).
          IF t148 <> trunc( t148 ) OR t148 > range_safe_integer OR t148 < 0 - range_safe_integer.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t150) = CONV int8( t148 ).
          t147 = |{ t150 }|.
          DATA(t151) = strlen( t146 ).
          t145 = |{ t146 }{ t147 }|.
          DATA(t152) = | newlines are required in between methods|.
          DATA(t153) = strlen( t145 ).
          t144 = |{ t145 }{ t152 }|.
          t140 = t144.
        ELSE.
          DATA(t154) = VALUE string( ).
          DATA t155 TYPE abap_bool.
          DATA(t156) = t137.
          DATA(t157) = |less|.
          t155 = xsdbool( t156 = t157 ).
          IF t155 = abap_true.
            DATA(t158) = VALUE string( ).
            DATA(t159) = VALUE string( ).
            DATA(t160) = |Less than |.
            DATA(t161) = VALUE string( ).
            DATA t162 TYPE f.
            DATA(t163) = me->conf.
            t162 = t163->zlnt_view_read_sr_61b1746e9aca( ).
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
            t158 = |{ t159 }{ t166 }|.
            t154 = t158.
          ELSE.
            DATA(t168) = ||.
            t154 = t168.
          ENDIF.
          t140 = t154.
        ENDIF.
        t136 = t140.
        DATA(t169) = VALUE string( ).
        DATA t170 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t170.
        DATA t171 TYPE string.
        DATA(t172) = |newline_between_methods|.
        t171 = t172.
        DATA t173 TYPE string.
        DATA(t174) = |New line between methods|.
        t173 = t174.
        DATA t175 TYPE string.
        DATA(t176) = |Checks for newlines between method implementations.|.
        t175 = t176.
        DATA t177 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t177.
        DATA t178 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t178.
        DATA(t179) = abap_true.
        IF t179 = abap_true.
          DATA t180 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t181 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t182 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t182.
          t181 = t182.
          DATA(t183) = t181.
          DATA(t184) = |Whitespace|.
          t183->load( ).
          APPEND t184 TO t183->items.
          t183->save( ).
          DATA(t185) = t181.
          DATA(t186) = |SingleFile|.
          t185->load( ).
          APPEND t186 TO t185->items.
          t185->save( ).
          DATA(t187) = t181.
          t180 = t187.
          t178 = t180.
        ELSE.
          DATA t188 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t188.
          t178 = t188.
        ENDIF.
        t177 = t178.
        DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t190.
        t189 = t190.
        DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t192.
        t191 = t192.
        DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t194.
        t193 = t194.
        DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t196.
        t195 = t196.
        DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t198.
        t197 = t198.
        t170 = NEW zcl_lnt_irule_metadata( i_key = t171 i_title = t173 i_short_description = t175 i_bad_example = t189 i_good_example = t191 i_extended_information = t193 i_tags = t177 i_pragma = t195 i_pseudo_comment = t197 ).
        CREATE OBJECT t170->zlnt_view_ownkeys_b0e8086400eb.
        t170->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t199.
        IF t170->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t170->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t199 ).
        ENDIF.
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
        DATA(t203) = |key|.
        DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t204.
        IF t170->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t170->zlnt_json_ownkeys_70e5fd461788->put( p0 = t203 p1 = t204 ).
        ENDIF.
        DATA(t205) = |title|.
        DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t206.
        IF t170->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t170->zlnt_json_ownkeys_70e5fd461788->put( p0 = t205 p1 = t206 ).
        ENDIF.
        DATA(t207) = |shortDescription|.
        DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t208.
        IF t170->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t170->zlnt_json_ownkeys_70e5fd461788->put( p0 = t207 p1 = t208 ).
        ENDIF.
        DATA(t209) = |tags|.
        DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t210.
        IF t170->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t170->zlnt_json_ownkeys_70e5fd461788->put( p0 = t209 p1 = t210 ).
        ENDIF.
        t169 = t170->key.
        DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t212) = me->conf.
        t211 = t212->zlnt_view_read_sr_15c06369f827( ).
        DATA t213 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t213.
        DATA t214 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t214.
        t133 = zcl_lnt_issue=>at_statement( i_file = t134 i_statement = t135 i_message_26cb = t136 i_key = t169 i_severity = t211 i_fix = t213 i_alternative_fixes = t214 ).
        t132->load( ).
        APPEND t133 TO t132->items.
        t132->save( ).
      ENDIF.
    ENDDO.
    DATA(t215) = t2.
    result = t215.

  ENDMETHOD.

  METHOD is_configuration_valid.
    DATA t1 TYPE abap_bool.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE f.
    DATA(t4) = me->conf.
    t3 = t4->zlnt_view_read_sr_61b1746e9aca( ).
    DATA(t5) = CONV f( 1 ).
    t2 = xsdbool( t3 < t5 ).
    t1 = t2.
    IF t2 = abap_false.
      DATA t6 TYPE abap_bool.
      DATA t7 TYPE abap_bool.
      DATA t8 TYPE f.
      DATA(t9) = me->conf.
      t8 = t9->zlnt_view_read_sr_61b1746e9aca( ).
      DATA(t10) = CONV f( 1 ).
      t7 = xsdbool( t8 = t10 ).
      t6 = t7.
      IF t7 = abap_true.
        DATA t11 TYPE abap_bool.
        DATA t12 TYPE string.
        DATA(t13) = me->conf.
        t12 = t13->zlnt_view_read_sr_2ac95bad942d( ).
        DATA(t14) = |less|.
        t11 = xsdbool( t12 = t14 ).
        t6 = t11.
      ENDIF.
      t1 = t6.
    ENDIF.
    IF t1 = abap_true.
      DATA(t15) = abap_false.
      result = t15.
      RETURN.
    ELSE.
      DATA(t16) = abap_true.
      result = t16.

    ENDIF.
  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_nwln_btwn_mthds_cnf( me->g_c_i_s_r_nw_bt_mt_ts_nw_bt_mt( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_nwln_btwn_mthds_cnf( me->g_c_i_s_r_nw_bt_mt_ts_nw_bt_mt( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_nwln_btwn_mthds_cnf.
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
        t1 = NEW zcl_lnt_nwln_btwn_mthds_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_nw_bt_mt_ts_nw_bt_mt( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_nw_bt_mt_ts_nw_bt_mt( i_file = i_file ) ).
    result = t1.

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
