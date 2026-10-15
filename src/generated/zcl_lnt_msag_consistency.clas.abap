* TS: src/rules/msag_consistency.ts:14:1 MSAGConsistency
CLASS zcl_lnt_msag_consistency DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_msag_consistency_conf.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS get_description IMPORTING i_reason TYPE string RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_ms_cn_ts_ms_cns RETURNING VALUE(result) TYPE REF TO zcl_lnt_msag_consistency_conf.
    METHODS st_cn_in_sr_rl_ms_cn_ts_ms_cns IMPORTING i_conf TYPE REF TO zcl_lnt_msag_consistency_conf.
    METHODS in_in_sr_rl_msg_cns_ts_msg_cns IMPORTING i_reg_d009 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_msag_consistency.
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
CLASS zcl_lnt_msag_consistency IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = NEW zcl_lnt_msag_consistency_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |msag_consistency|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |MSAG consistency check|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks the validity of messages in message classes|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA t11 TYPE string.
      DATA(t12) = |Message numbers must be 3 digits, message text must not be e|.
      t12 = t12 && |mpty,\n|.
      DATA(t13) = |message text must not exceed 73 characters, no message numbe|.
      t13 = t13 && |r duplicates|.
      DATA(t14) = strlen( t12 ).
      t11 = |{ t12 }{ t13 }|.
      DATA(t15) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t15->has = abap_true.
      t15->value = t11.
      t9 = t15.
    ELSE.
      DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t16.
      t9 = t16.
    ENDIF.
    t8 = t9.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t18.
    t17 = t18.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    t19 = t20.
    DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t22 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t22.
    t21 = t22.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t24.
    t23 = t24.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    t25 = t26.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t17 i_good_example = t19 i_extended_information = t8 i_tags = t21 i_pragma = t23 i_pseudo_comment = t25 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t27 ).
    ENDIF.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t28 ).
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t29 ).
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t30 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t31) = |key|.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t31 p1 = t32 ).
    ENDIF.
    DATA(t33) = |title|.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t33 p1 = t34 ).
    ENDIF.
    DATA(t35) = |shortDescription|.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t35 p1 = t36 ).
    ENDIF.
    DATA(t37) = |extendedInformation|.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t37 p1 = t38 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = i_reason.
    DATA t2 TYPE string.
    DATA(t3) = |Message class invalid: |.
    DATA(t4) = t1.
    DATA(t5) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    result = t2.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_ms_cn_ts_ms_cns.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_ms_cn_ts_ms_cns.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD in_in_sr_rl_msg_cns_ts_msg_cns.
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
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    DATA(t6) = t1.
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_ob_message_class ).
    t4 = xsdbool( t5 = abap_false ).
    IF t4 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t7.
      result = t7.
      RETURN.
    ENDIF.
    DATA t8 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t9) = NEW zlnt_runtime_set__1827558fd4c7( ).
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t10.
    DATA t11 TYPE REF TO zcl_lnt_ob_message_class.
    DATA t12 TYPE REF TO zcl_lnt_ob_message_class.
    DATA(t13) = t1.
    DATA t14 TYPE REF TO object.
    t14 = t13.
    t12 ?= t14.
    t11 = t12.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t15.
    DATA(t16) = t11.
    t16->parse_xml( ).
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t18.
    DATA t19 TYPE REF TO zcl_lnt_parsed_message_class.
    DATA t20 TYPE REF TO zcl_lnt_parsed_message_class.
    DATA(t21) = t11.
    t20 = t21->xml.
    t19 = t20.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t22.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = t19.
    IF t24 IS INITIAL.
      t23 = abap_true.
    ENDIF.
    IF t23 = abap_true.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t25.
      t22 = t25.
    ELSE.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t27 TYPE REF TO zcl_lnt_parsed_message_class.
      DATA(t28) = t19.
      t27 = t28.
      t26 = t27->parsed_messages.
      t22 = t26.
    ENDIF.
    t18 = t22.
    t17 = t18.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t29.
    DATA t30 TYPE abap_bool.
    DATA(t31) = t17.
    t30 = xsdbool( t31 IS BOUND ).
    IF t30 = abap_true.
      DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t33) = t17.
      t32 = t33.
      t29 = t32.
    ELSE.
      DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t34.
      t29 = t34.
    ENDIF.
    t15 = t29.
    t10 = t15.
    DATA t35 TYPE REF TO zcl_lnt_ty_message.
    CLEAR t35.
    DATA t36 TYPE REF TO object.
    CLEAR t36.
    DATA(t37) = VALUE i( ).
    DO.
      t10->load( ).
      IF t37 >= lines( t10->items ).
        EXIT.
      ENDIF.
      CLEAR t36.
      READ TABLE t10->items INDEX t37 + 1 INTO t36.
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
      DATA t40 TYPE abap_bool.
      DATA t41 TYPE abap_bool.
      DATA t42 TYPE string.
      DATA t43 TYPE string.
      DATA t44 TYPE REF TO zcl_lnt_ty_message.
      DATA(t45) = t35.
      t44 = t45.
      DATA t46 TYPE string.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t48) = t44.
      t47 = t48->number.
      t46 = t47->value.
      t43 = t46.
      t42 = t43.
      DATA t49 TYPE abap_bool.
      DATA t50 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t50.
      DATA(t51) = `\d\d\d`.
      DATA(t52) = |[0-9][0-9][0-9]|.
      DATA(t53) = ||.
      CREATE OBJECT t50 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t52 flags = t53.
      t50->source = t51.
      DATA(t54) = t42.
      t49 = t50->match_test( p0 = t54 ).
      t41 = t49.
      t40 = xsdbool( t41 = abap_false ).
      IF t40 = abap_true.
        DATA t55 TYPE string.
        DATA t56 TYPE string.
        DATA t57 TYPE string.
        DATA t58 TYPE string.
        DATA(t59) = |Message number must be 3 digits: message |.
        DATA t60 TYPE string.
        DATA t61 TYPE REF TO zcl_lnt_ty_message.
        DATA(t62) = t35.
        t61 = t62.
        DATA t63 TYPE string.
        DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t65) = t61.
        t64 = t65->number.
        t63 = t64->value.
        t60 = t63.
        DATA(t66) = strlen( t59 ).
        t58 = |{ t59 }{ t60 }|.
        t57 = t58.
        DATA t67 TYPE string.
        DATA(t68) = |Message class invalid: |.
        DATA(t69) = t57.
        DATA(t70) = strlen( t68 ).
        t67 = |{ t68 }{ t69 }|.
        t56 = t67.
        t55 = t56.
        DATA t71 TYPE REF TO zcl_lnt_position.
        DATA t72 TYPE REF TO zcl_lnt_position.
        DATA(t73) = CONV f( 1 ).
        DATA(t74) = CONV f( 1 ).
        DATA(t75) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t75->has = abap_true.
        t75->value = t74.
        t72 = NEW zcl_lnt_position( i_row = t73 i_col = t75 ).
        t71 = t72.
        DATA t76 TYPE REF TO zcl_lnt_issue.
        CLEAR t76.
        DATA t77 TYPE REF TO zcl_lnt_issue.
        CLEAR t77.
        DATA t78 TYPE REF TO zif_lnt_file.
        CLEAR t78.
        DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t80 TYPE REF TO zcl_lnt_abstract_object.
        DATA t81 TYPE REF TO zcl_lnt_ob_message_class.
        DATA(t82) = t1.
        DATA t83 TYPE REF TO object.
        t83 = t82.
        t81 ?= t83.
        t80 = t81.
        DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t85) = t80.
        t84 = t85->files.
        t79 = t84.
        DATA t86 TYPE REF TO object.
        CLEAR t86.
        t79->load( ).
        CLEAR t86.
        READ TABLE t79->items INDEX 1 INTO t86.
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t87.
        CLEAR t78.
        IF t86 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t87 ?= t86.
          DATA t88 TYPE REF TO object.
          t88 = t87->as_ref( ).
          t78 ?= t88.
        ELSE.
          t78 ?= t86.
        ENDIF.
        DATA(t89) = t71.
        DATA(t90) = t55.
        DATA(t91) = VALUE string( ).
        DATA t92 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t92.
        DATA t93 TYPE string.
        DATA(t94) = |msag_consistency|.
        t93 = t94.
        DATA t95 TYPE string.
        DATA(t96) = |MSAG consistency check|.
        t95 = t96.
        DATA t97 TYPE string.
        DATA(t98) = |Checks the validity of messages in message classes|.
        t97 = t98.
        DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t99.
        DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t100.
        DATA(t101) = abap_true.
        IF t101 = abap_true.
          DATA t102 TYPE string.
          DATA(t103) = |Message numbers must be 3 digits, message text must not be e|.
          t103 = t103 && |mpty,\n|.
          DATA(t104) = |message text must not exceed 73 characters, no message numbe|.
          t104 = t104 && |r duplicates|.
          DATA(t105) = strlen( t103 ).
          t102 = |{ t103 }{ t104 }|.
          DATA(t106) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t106->has = abap_true.
          t106->value = t102.
          t100 = t106.
        ELSE.
          DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t107.
          t100 = t107.
        ENDIF.
        t99 = t100.
        DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t109.
        t108 = t109.
        DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t111.
        t110 = t111.
        DATA t112 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t113 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t113.
        t112 = t113.
        DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t115.
        t114 = t115.
        DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t117.
        t116 = t117.
        t92 = NEW zcl_lnt_irule_metadata( i_key = t93 i_title = t95 i_short_description = t97 i_bad_example = t108 i_good_example = t110 i_extended_information = t99 i_tags = t112 i_pragma = t114 i_pseudo_comment = t116 ).
        CREATE OBJECT t92->zlnt_view_ownkeys_b0e8086400eb.
        t92->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t118.
        IF t92->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t92->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t118 ).
        ENDIF.
        DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t119.
        IF t92->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t92->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t119 ).
        ENDIF.
        DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t120.
        IF t92->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t92->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t120 ).
        ENDIF.
        DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t121.
        IF t92->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t92->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t121 ).
        ENDIF.
        CREATE OBJECT t92->zlnt_json_ownkeys_70e5fd461788.
        t92->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t122) = |key|.
        DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t123.
        IF t92->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t92->zlnt_json_ownkeys_70e5fd461788->put( p0 = t122 p1 = t123 ).
        ENDIF.
        DATA(t124) = |title|.
        DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t125.
        IF t92->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t92->zlnt_json_ownkeys_70e5fd461788->put( p0 = t124 p1 = t125 ).
        ENDIF.
        DATA(t126) = |shortDescription|.
        DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t127.
        IF t92->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t92->zlnt_json_ownkeys_70e5fd461788->put( p0 = t126 p1 = t127 ).
        ENDIF.
        DATA(t128) = |extendedInformation|.
        DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t129.
        IF t92->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t92->zlnt_json_ownkeys_70e5fd461788->put( p0 = t128 p1 = t129 ).
        ENDIF.
        t91 = t92->key.
        DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t131) = me->conf.
        t130 = t131->zlnt_view_read_sr_15c06369f827( ).
        DATA t132 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t132.
        t77 = zcl_lnt_issue=>at_position( i_file = t78 i_start = t89 i_message_26cb = t90 i_key = t91 i_severity = t130 i_fix = t132 ).
        t76 = t77.
        DATA(t133) = t2.
        DATA(t134) = t76.
        t133->load( ).
        APPEND t134 TO t133->items.
        t133->save( ).
      ENDIF.
      DATA t135 TYPE abap_bool.
      DATA t136 TYPE string.
      DATA t137 TYPE REF TO zcl_lnt_ty_message.
      DATA(t138) = t35.
      t137 = t138.
      DATA t139 TYPE string.
      DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t141) = t137.
      t140 = t141->message_25cb.
      t139 = t140->value.
      t136 = t139.
      DATA(t142) = ||.
      t135 = xsdbool( t136 = t142 ).
      IF t135 = abap_true.
        DATA t143 TYPE string.
        DATA t144 TYPE string.
        DATA(t145) = |Message text empty: message |.
        DATA t146 TYPE string.
        DATA t147 TYPE REF TO zcl_lnt_ty_message.
        DATA(t148) = t35.
        t147 = t148.
        DATA t149 TYPE string.
        DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t151) = t147.
        t150 = t151->number.
        t149 = t150->value.
        t146 = t149.
        DATA(t152) = strlen( t145 ).
        t144 = |{ t145 }{ t146 }|.
        t143 = t144.
        DATA t153 TYPE REF TO zcl_lnt_position.
        DATA t154 TYPE REF TO zcl_lnt_position.
        DATA(t155) = CONV f( 1 ).
        DATA(t156) = CONV f( 1 ).
        DATA(t157) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t157->has = abap_true.
        t157->value = t156.
        t154 = NEW zcl_lnt_position( i_row = t155 i_col = t157 ).
        t153 = t154.
        DATA t158 TYPE REF TO zcl_lnt_issue.
        CLEAR t158.
        DATA t159 TYPE REF TO zcl_lnt_issue.
        CLEAR t159.
        DATA t160 TYPE REF TO zif_lnt_file.
        CLEAR t160.
        DATA t161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t162 TYPE REF TO zcl_lnt_abstract_object.
        DATA t163 TYPE REF TO zcl_lnt_ob_message_class.
        DATA(t164) = t1.
        DATA t165 TYPE REF TO object.
        t165 = t164.
        t163 ?= t165.
        t162 = t163.
        DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t167) = t162.
        t166 = t167->files.
        t161 = t166.
        DATA t168 TYPE REF TO object.
        CLEAR t168.
        t161->load( ).
        CLEAR t168.
        READ TABLE t161->items INDEX 1 INTO t168.
        DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t169.
        CLEAR t160.
        IF t168 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t169 ?= t168.
          DATA t170 TYPE REF TO object.
          t170 = t169->as_ref( ).
          t160 ?= t170.
        ELSE.
          t160 ?= t168.
        ENDIF.
        DATA(t171) = t153.
        DATA(t172) = t143.
        DATA(t173) = VALUE string( ).
        DATA t174 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t174.
        DATA t175 TYPE string.
        DATA(t176) = |msag_consistency|.
        t175 = t176.
        DATA t177 TYPE string.
        DATA(t178) = |MSAG consistency check|.
        t177 = t178.
        DATA t179 TYPE string.
        DATA(t180) = |Checks the validity of messages in message classes|.
        t179 = t180.
        DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t181.
        DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t182.
        DATA(t183) = abap_true.
        IF t183 = abap_true.
          DATA t184 TYPE string.
          DATA(t185) = |Message numbers must be 3 digits, message text must not be e|.
          t185 = t185 && |mpty,\n|.
          DATA(t186) = |message text must not exceed 73 characters, no message numbe|.
          t186 = t186 && |r duplicates|.
          DATA(t187) = strlen( t185 ).
          t184 = |{ t185 }{ t186 }|.
          DATA(t188) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t188->has = abap_true.
          t188->value = t184.
          t182 = t188.
        ELSE.
          DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t189.
          t182 = t189.
        ENDIF.
        t181 = t182.
        DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t191.
        t190 = t191.
        DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t193.
        t192 = t193.
        DATA t194 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t195 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t195.
        t194 = t195.
        DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t197.
        t196 = t197.
        DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t199.
        t198 = t199.
        t174 = NEW zcl_lnt_irule_metadata( i_key = t175 i_title = t177 i_short_description = t179 i_bad_example = t190 i_good_example = t192 i_extended_information = t181 i_tags = t194 i_pragma = t196 i_pseudo_comment = t198 ).
        CREATE OBJECT t174->zlnt_view_ownkeys_b0e8086400eb.
        t174->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t200.
        IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t200 ).
        ENDIF.
        DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t201.
        IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t201 ).
        ENDIF.
        DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t202.
        IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t202 ).
        ENDIF.
        DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t203.
        IF t174->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t203 ).
        ENDIF.
        CREATE OBJECT t174->zlnt_json_ownkeys_70e5fd461788.
        t174->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t204) = |key|.
        DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t205.
        IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t204 p1 = t205 ).
        ENDIF.
        DATA(t206) = |title|.
        DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t207.
        IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t206 p1 = t207 ).
        ENDIF.
        DATA(t208) = |shortDescription|.
        DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t209.
        IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t208 p1 = t209 ).
        ENDIF.
        DATA(t210) = |extendedInformation|.
        DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t211.
        IF t174->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t210 p1 = t211 ).
        ENDIF.
        t173 = t174->key.
        DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t213) = me->conf.
        t212 = t213->zlnt_view_read_sr_15c06369f827( ).
        DATA t214 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t214.
        t159 = zcl_lnt_issue=>at_position( i_file = t160 i_start = t171 i_message_26cb = t172 i_key = t173 i_severity = t212 i_fix = t214 ).
        t158 = t159.
        DATA(t215) = t2.
        DATA(t216) = t158.
        t215->load( ).
        APPEND t216 TO t215->items.
        t215->save( ).
      ENDIF.
      DATA t217 TYPE abap_bool.
      DATA t218 TYPE i.
      DATA t219 TYPE string.
      DATA t220 TYPE REF TO zcl_lnt_ty_message.
      DATA(t221) = t35.
      t220 = t221.
      DATA t222 TYPE string.
      DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t224) = t220.
      t223 = t224->message_25cb.
      t222 = t223->value.
      t219 = t222.
      DATA(t225) = strlen( t219 ).
      t218 = t225.
      DATA(t226) = 73.
      t217 = xsdbool( t218 > t226 ).
      IF t217 = abap_true.
        DATA t227 TYPE string.
        DATA t228 TYPE string.
        DATA t229 TYPE string.
        DATA(t230) = |Message text too long (max 73 characters): message |.
        DATA t231 TYPE string.
        DATA t232 TYPE REF TO zcl_lnt_ty_message.
        DATA(t233) = t35.
        t232 = t233.
        DATA t234 TYPE string.
        DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t236) = t232.
        t235 = t236->number.
        t234 = t235->value.
        t231 = t234.
        DATA(t237) = strlen( t230 ).
        t229 = |{ t230 }{ t231 }|.
        DATA(t238) = ||.
        DATA(t239) = strlen( t229 ).
        t228 = |{ t229 }{ t238 }|.
        t227 = t228.
        DATA t240 TYPE REF TO zcl_lnt_position.
        DATA t241 TYPE REF TO zcl_lnt_position.
        DATA(t242) = CONV f( 1 ).
        DATA(t243) = CONV f( 1 ).
        DATA(t244) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t244->has = abap_true.
        t244->value = t243.
        t241 = NEW zcl_lnt_position( i_row = t242 i_col = t244 ).
        t240 = t241.
        DATA t245 TYPE REF TO zcl_lnt_issue.
        CLEAR t245.
        DATA t246 TYPE REF TO zcl_lnt_issue.
        CLEAR t246.
        DATA t247 TYPE REF TO zif_lnt_file.
        CLEAR t247.
        DATA t248 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t249 TYPE REF TO zcl_lnt_abstract_object.
        DATA t250 TYPE REF TO zcl_lnt_ob_message_class.
        DATA(t251) = t1.
        DATA t252 TYPE REF TO object.
        t252 = t251.
        t250 ?= t252.
        t249 = t250.
        DATA t253 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t254) = t249.
        t253 = t254->files.
        t248 = t253.
        DATA t255 TYPE REF TO object.
        CLEAR t255.
        t248->load( ).
        CLEAR t255.
        READ TABLE t248->items INDEX 1 INTO t255.
        DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t256.
        CLEAR t247.
        IF t255 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t256 ?= t255.
          DATA t257 TYPE REF TO object.
          t257 = t256->as_ref( ).
          t247 ?= t257.
        ELSE.
          t247 ?= t255.
        ENDIF.
        DATA(t258) = t240.
        DATA(t259) = t227.
        DATA(t260) = VALUE string( ).
        DATA t261 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t261.
        DATA t262 TYPE string.
        DATA(t263) = |msag_consistency|.
        t262 = t263.
        DATA t264 TYPE string.
        DATA(t265) = |MSAG consistency check|.
        t264 = t265.
        DATA t266 TYPE string.
        DATA(t267) = |Checks the validity of messages in message classes|.
        t266 = t267.
        DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t268.
        DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t269.
        DATA(t270) = abap_true.
        IF t270 = abap_true.
          DATA t271 TYPE string.
          DATA(t272) = |Message numbers must be 3 digits, message text must not be e|.
          t272 = t272 && |mpty,\n|.
          DATA(t273) = |message text must not exceed 73 characters, no message numbe|.
          t273 = t273 && |r duplicates|.
          DATA(t274) = strlen( t272 ).
          t271 = |{ t272 }{ t273 }|.
          DATA(t275) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t275->has = abap_true.
          t275->value = t271.
          t269 = t275.
        ELSE.
          DATA t276 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t276.
          t269 = t276.
        ENDIF.
        t268 = t269.
        DATA t277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t278 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t278.
        t277 = t278.
        DATA t279 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t280.
        t279 = t280.
        DATA t281 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t282 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t282.
        t281 = t282.
        DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t284.
        t283 = t284.
        DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t286.
        t285 = t286.
        t261 = NEW zcl_lnt_irule_metadata( i_key = t262 i_title = t264 i_short_description = t266 i_bad_example = t277 i_good_example = t279 i_extended_information = t268 i_tags = t281 i_pragma = t283 i_pseudo_comment = t285 ).
        CREATE OBJECT t261->zlnt_view_ownkeys_b0e8086400eb.
        t261->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t287.
        IF t261->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t261->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t287 ).
        ENDIF.
        DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t288.
        IF t261->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t261->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t288 ).
        ENDIF.
        DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t289.
        IF t261->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t261->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t289 ).
        ENDIF.
        DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t290.
        IF t261->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t261->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t290 ).
        ENDIF.
        CREATE OBJECT t261->zlnt_json_ownkeys_70e5fd461788.
        t261->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t291) = |key|.
        DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t292.
        IF t261->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t261->zlnt_json_ownkeys_70e5fd461788->put( p0 = t291 p1 = t292 ).
        ENDIF.
        DATA(t293) = |title|.
        DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t294.
        IF t261->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t261->zlnt_json_ownkeys_70e5fd461788->put( p0 = t293 p1 = t294 ).
        ENDIF.
        DATA(t295) = |shortDescription|.
        DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t296.
        IF t261->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t261->zlnt_json_ownkeys_70e5fd461788->put( p0 = t295 p1 = t296 ).
        ENDIF.
        DATA(t297) = |extendedInformation|.
        DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t298.
        IF t261->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t261->zlnt_json_ownkeys_70e5fd461788->put( p0 = t297 p1 = t298 ).
        ENDIF.
        t260 = t261->key.
        DATA t299 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t300) = me->conf.
        t299 = t300->zlnt_view_read_sr_15c06369f827( ).
        DATA t301 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t301.
        t246 = zcl_lnt_issue=>at_position( i_file = t247 i_start = t258 i_message_26cb = t259 i_key = t260 i_severity = t299 i_fix = t301 ).
        t245 = t246.
        DATA(t302) = t2.
        DATA(t303) = t245.
        t302->load( ).
        APPEND t303 TO t302->items.
        t302->save( ).
      ENDIF.
      DATA t304 TYPE string.
      DATA t305 TYPE string.
      DATA t306 TYPE REF TO zcl_lnt_ty_message.
      DATA(t307) = t35.
      t306 = t307.
      DATA t308 TYPE string.
      DATA t309 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t310) = t306.
      t309 = t310->number.
      t308 = t309->value.
      t305 = t308.
      t304 = t305.
      DATA t311 TYPE abap_bool.
      DATA(t312) = t8.
      DATA(t313) = t304.
      t311 = t312->has( p0 = t313 ).
      IF t311 = abap_true.
        DATA t314 TYPE string.
        DATA t315 TYPE string.
        DATA(t316) = |Duplicate message number |.
        DATA(t317) = t304.
        DATA(t318) = strlen( t316 ).
        t315 = |{ t316 }{ t317 }|.
        t314 = t315.
        DATA t319 TYPE REF TO zcl_lnt_position.
        DATA t320 TYPE REF TO zcl_lnt_position.
        DATA(t321) = CONV f( 1 ).
        DATA(t322) = CONV f( 1 ).
        DATA(t323) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t323->has = abap_true.
        t323->value = t322.
        t320 = NEW zcl_lnt_position( i_row = t321 i_col = t323 ).
        t319 = t320.
        DATA t324 TYPE REF TO zcl_lnt_issue.
        CLEAR t324.
        DATA t325 TYPE REF TO zcl_lnt_issue.
        CLEAR t325.
        DATA t326 TYPE REF TO zif_lnt_file.
        CLEAR t326.
        DATA t327 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t328 TYPE REF TO zcl_lnt_abstract_object.
        DATA t329 TYPE REF TO zcl_lnt_ob_message_class.
        DATA(t330) = t1.
        DATA t331 TYPE REF TO object.
        t331 = t330.
        t329 ?= t331.
        t328 = t329.
        DATA t332 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t333) = t328.
        t332 = t333->files.
        t327 = t332.
        DATA t334 TYPE REF TO object.
        CLEAR t334.
        t327->load( ).
        CLEAR t334.
        READ TABLE t327->items INDEX 1 INTO t334.
        DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t335.
        CLEAR t326.
        IF t334 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t335 ?= t334.
          DATA t336 TYPE REF TO object.
          t336 = t335->as_ref( ).
          t326 ?= t336.
        ELSE.
          t326 ?= t334.
        ENDIF.
        DATA(t337) = t319.
        DATA(t338) = t314.
        DATA(t339) = VALUE string( ).
        DATA t340 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t340.
        DATA t341 TYPE string.
        DATA(t342) = |msag_consistency|.
        t341 = t342.
        DATA t343 TYPE string.
        DATA(t344) = |MSAG consistency check|.
        t343 = t344.
        DATA t345 TYPE string.
        DATA(t346) = |Checks the validity of messages in message classes|.
        t345 = t346.
        DATA t347 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t347.
        DATA t348 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t348.
        DATA(t349) = abap_true.
        IF t349 = abap_true.
          DATA t350 TYPE string.
          DATA(t351) = |Message numbers must be 3 digits, message text must not be e|.
          t351 = t351 && |mpty,\n|.
          DATA(t352) = |message text must not exceed 73 characters, no message numbe|.
          t352 = t352 && |r duplicates|.
          DATA(t353) = strlen( t351 ).
          t350 = |{ t351 }{ t352 }|.
          DATA(t354) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t354->has = abap_true.
          t354->value = t350.
          t348 = t354.
        ELSE.
          DATA t355 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t355.
          t348 = t355.
        ENDIF.
        t347 = t348.
        DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t357 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t357.
        t356 = t357.
        DATA t358 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t359.
        t358 = t359.
        DATA t360 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t361 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t361.
        t360 = t361.
        DATA t362 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t363.
        t362 = t363.
        DATA t364 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t365 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t365.
        t364 = t365.
        t340 = NEW zcl_lnt_irule_metadata( i_key = t341 i_title = t343 i_short_description = t345 i_bad_example = t356 i_good_example = t358 i_extended_information = t347 i_tags = t360 i_pragma = t362 i_pseudo_comment = t364 ).
        CREATE OBJECT t340->zlnt_view_ownkeys_b0e8086400eb.
        t340->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t366.
        IF t340->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t340->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t366 ).
        ENDIF.
        DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t367.
        IF t340->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t340->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t367 ).
        ENDIF.
        DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t368.
        IF t340->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t340->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t368 ).
        ENDIF.
        DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t369.
        IF t340->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t340->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t369 ).
        ENDIF.
        CREATE OBJECT t340->zlnt_json_ownkeys_70e5fd461788.
        t340->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t370) = |key|.
        DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t371.
        IF t340->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t340->zlnt_json_ownkeys_70e5fd461788->put( p0 = t370 p1 = t371 ).
        ENDIF.
        DATA(t372) = |title|.
        DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t373.
        IF t340->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t340->zlnt_json_ownkeys_70e5fd461788->put( p0 = t372 p1 = t373 ).
        ENDIF.
        DATA(t374) = |shortDescription|.
        DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t375.
        IF t340->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t340->zlnt_json_ownkeys_70e5fd461788->put( p0 = t374 p1 = t375 ).
        ENDIF.
        DATA(t376) = |extendedInformation|.
        DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t377.
        IF t340->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t340->zlnt_json_ownkeys_70e5fd461788->put( p0 = t376 p1 = t377 ).
        ENDIF.
        t339 = t340->key.
        DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t379) = me->conf.
        t378 = t379->zlnt_view_read_sr_15c06369f827( ).
        DATA t380 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t380.
        t325 = zcl_lnt_issue=>at_position( i_file = t326 i_start = t337 i_message_26cb = t338 i_key = t339 i_severity = t378 i_fix = t380 ).
        t324 = t325.
        DATA(t381) = t2.
        DATA(t382) = t324.
        t381->load( ).
        APPEND t382 TO t381->items.
        t381->save( ).
      ELSE.
        DATA t383 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        DATA(t384) = t8.
        DATA(t385) = t304.
        t383 = t384->add( p0 = t385 ).
      ENDIF.
      DATA t386 TYPE abap_bool.
      DATA t387 TYPE abap_bool.
      DATA(t388) = CAST zcl_lnt_msag_consistency_conf( me->gt_cn_in_sr_rl_ms_cn_ts_ms_cns( ) ).
      t387 = t388->zlnt_view_read_sr_00c52724c39a( ).
      DATA(t389) = abap_true.
      t386 = xsdbool( t387 = t389 ).
      IF t386 = abap_true.
        DATA(t390) = VALUE int8( ).
        DATA(t391) = VALUE int8( ).
        DATA(t392) = VALUE f( ).
        DATA t393 TYPE REF TO zcl_lnt_ty_message.
        DATA(t394) = t35.
        t393 = t394.
        DATA(t395) = VALUE f( ).
        DATA(t396) = VALUE i( ).
        DATA(t397) = VALUE i( ).
        DATA t398 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t398.
        DATA t399 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t400 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t401 TYPE string.
        DATA t402 TYPE string.
        DATA t403 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t404) = t393.
        t403 = t404->message_25cb.
        t402 = t403->value.
        t401 = t402.
        DATA t405 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t406) = t401.
        DATA t407 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t407.
        DATA(t408) = |&&|.
        DATA(t409) = |g|.
        CREATE OBJECT t407 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t408 flags = t409 checked = abap_true.
        t405 = t407->match( t406 ).
        t400 = t405.
        t399 = t400.
        DATA t410 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t410.
        DATA t411 TYPE abap_bool.
        DATA(t412) = t399.
        t411 = xsdbool( t412 IS BOUND ).
        IF t411 = abap_true.
          DATA t413 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t414) = t399.
          t413 = t414.
          t410 = t413.
        ELSE.
          DATA t415 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t415.
          t410 = t415.
        ENDIF.
        t398 = t410.
        t398->load( ).
        t397 = lines( t398->items ).
        t396 = t397.
        DATA(t416) = VALUE f( ).
        DATA(t417) = VALUE int8( ).
        DATA(t418) = VALUE int8( ).
        DATA(t419) = VALUE i( ).
        DATA t420 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t420.
        DATA t421 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t422 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t423 TYPE string.
        DATA t424 TYPE string.
        DATA t425 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t426) = t393.
        t425 = t426->message_25cb.
        t424 = t425->value.
        t423 = t424.
        DATA t427 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t428) = t423.
        DATA t429 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t429.
        DATA(t430) = |&|.
        DATA(t431) = |g|.
        CREATE OBJECT t429 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t430 flags = t431 checked = abap_true.
        t427 = t429->match( t428 ).
        t422 = t427.
        t421 = t422.
        DATA t432 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t432.
        DATA t433 TYPE abap_bool.
        DATA(t434) = t421.
        t433 = xsdbool( t434 IS BOUND ).
        IF t433 = abap_true.
          DATA t435 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t436) = t421.
          t435 = t436.
          t432 = t435.
        ELSE.
          DATA t437 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t437.
          t432 = t437.
        ENDIF.
        t420 = t432.
        t420->load( ).
        t419 = lines( t420->items ).
        t418 = t419.
        DATA t438 TYPE int8.
        DATA t439 TYPE int8.
        DATA(t440) = t396.
        t439 = t440.
        DATA(t441) = CONV int8( 2 ).
        t438 = t439 * t441.
        t417 = t418 - t438.
        t416 = t417.
        t395 = t416.
        t392 = t395.
        t391 = t392.
        t390 = t391.
        DATA t442 TYPE abap_bool.
        DATA(t443) = t390.
        DATA(t444) = CONV int8( 4 ).
        t442 = xsdbool( t443 > t444 ).
        IF t442 = abap_true.
          DATA t445 TYPE string.
          DATA t446 TYPE string.
          DATA t447 TYPE string.
          DATA(t448) = |More than 4 placeholders in message |.
          DATA t449 TYPE string.
          DATA t450 TYPE REF TO zcl_lnt_ty_message.
          DATA(t451) = t35.
          t450 = t451.
          DATA t452 TYPE string.
          DATA t453 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t454) = t450.
          t453 = t454->number.
          t452 = t453->value.
          t449 = t452.
          DATA(t455) = strlen( t448 ).
          t447 = |{ t448 }{ t449 }|.
          DATA(t456) = ||.
          DATA(t457) = strlen( t447 ).
          t446 = |{ t447 }{ t456 }|.
          t445 = t446.
          DATA t458 TYPE REF TO zcl_lnt_position.
          DATA t459 TYPE REF TO zcl_lnt_position.
          DATA(t460) = CONV f( 1 ).
          DATA(t461) = CONV f( 1 ).
          DATA(t462) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t462->has = abap_true.
          t462->value = t461.
          t459 = NEW zcl_lnt_position( i_row = t460 i_col = t462 ).
          t458 = t459.
          DATA t463 TYPE REF TO zcl_lnt_issue.
          CLEAR t463.
          DATA t464 TYPE REF TO zcl_lnt_issue.
          CLEAR t464.
          DATA t465 TYPE REF TO zif_lnt_file.
          CLEAR t465.
          DATA t466 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t467 TYPE REF TO zcl_lnt_abstract_object.
          DATA t468 TYPE REF TO zcl_lnt_ob_message_class.
          DATA(t469) = t1.
          DATA t470 TYPE REF TO object.
          t470 = t469.
          t468 ?= t470.
          t467 = t468.
          DATA t471 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t472) = t467.
          t471 = t472->files.
          t466 = t471.
          DATA t473 TYPE REF TO object.
          CLEAR t473.
          t466->load( ).
          CLEAR t473.
          READ TABLE t466->items INDEX 1 INTO t473.
          DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t474.
          CLEAR t465.
          IF t473 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t474 ?= t473.
            DATA t475 TYPE REF TO object.
            t475 = t474->as_ref( ).
            t465 ?= t475.
          ELSE.
            t465 ?= t473.
          ENDIF.
          DATA(t476) = t458.
          DATA(t477) = t445.
          DATA(t478) = VALUE string( ).
          DATA t479 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t479.
          DATA t480 TYPE string.
          DATA(t481) = |msag_consistency|.
          t480 = t481.
          DATA t482 TYPE string.
          DATA(t483) = |MSAG consistency check|.
          t482 = t483.
          DATA t484 TYPE string.
          DATA(t485) = |Checks the validity of messages in message classes|.
          t484 = t485.
          DATA t486 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t486.
          DATA t487 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t487.
          DATA(t488) = abap_true.
          IF t488 = abap_true.
            DATA t489 TYPE string.
            DATA(t490) = |Message numbers must be 3 digits, message text must not be e|.
            t490 = t490 && |mpty,\n|.
            DATA(t491) = |message text must not exceed 73 characters, no message numbe|.
            t491 = t491 && |r duplicates|.
            DATA(t492) = strlen( t490 ).
            t489 = |{ t490 }{ t491 }|.
            DATA(t493) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t493->has = abap_true.
            t493->value = t489.
            t487 = t493.
          ELSE.
            DATA t494 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t494.
            t487 = t494.
          ENDIF.
          t486 = t487.
          DATA t495 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t496 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t496.
          t495 = t496.
          DATA t497 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t498 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t498.
          t497 = t498.
          DATA t499 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t500 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t500.
          t499 = t500.
          DATA t501 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t502 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t502.
          t501 = t502.
          DATA t503 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t504 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t504.
          t503 = t504.
          t479 = NEW zcl_lnt_irule_metadata( i_key = t480 i_title = t482 i_short_description = t484 i_bad_example = t495 i_good_example = t497 i_extended_information = t486 i_tags = t499 i_pragma = t501 i_pseudo_comment = t503 ).
          CREATE OBJECT t479->zlnt_view_ownkeys_b0e8086400eb.
          t479->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t505 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t505.
          IF t479->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t479->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t505 ).
          ENDIF.
          DATA t506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t506.
          IF t479->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t479->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t506 ).
          ENDIF.
          DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t507.
          IF t479->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t479->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t507 ).
          ENDIF.
          DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t508.
          IF t479->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t479->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t508 ).
          ENDIF.
          CREATE OBJECT t479->zlnt_json_ownkeys_70e5fd461788.
          t479->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t509) = |key|.
          DATA t510 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t510.
          IF t479->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t479->zlnt_json_ownkeys_70e5fd461788->put( p0 = t509 p1 = t510 ).
          ENDIF.
          DATA(t511) = |title|.
          DATA t512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t512.
          IF t479->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t479->zlnt_json_ownkeys_70e5fd461788->put( p0 = t511 p1 = t512 ).
          ENDIF.
          DATA(t513) = |shortDescription|.
          DATA t514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t514.
          IF t479->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t479->zlnt_json_ownkeys_70e5fd461788->put( p0 = t513 p1 = t514 ).
          ENDIF.
          DATA(t515) = |extendedInformation|.
          DATA t516 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t516.
          IF t479->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t479->zlnt_json_ownkeys_70e5fd461788->put( p0 = t515 p1 = t516 ).
          ENDIF.
          t478 = t479->key.
          DATA t517 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t518) = me->conf.
          t517 = t518->zlnt_view_read_sr_15c06369f827( ).
          DATA t519 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t519.
          t464 = zcl_lnt_issue=>at_position( i_file = t465 i_start = t476 i_message_26cb = t477 i_key = t478 i_severity = t517 i_fix = t519 ).
          t463 = t464.
          DATA(t520) = t2.
          DATA(t521) = t463.
          t520->load( ).
          APPEND t521 TO t520->items.
          t520->save( ).
        ENDIF.
        DATA t522 TYPE int8.
        DATA(t523) = CONV int8( 1 ).
        t522 = t523.
        DO.
          DATA t524 TYPE abap_bool.
          DATA(t525) = t522.
          DATA(t526) = t390.
          t524 = xsdbool( t525 <= t526 ).
          IF t524 = abap_false.
            EXIT.
          ENDIF.
          DATA t527 TYPE string.
          DATA t528 TYPE string.
          DATA(t529) = |&|.
          DATA t530 TYPE string.
          DATA t531 TYPE i.
          DATA(t532) = t522.
          t531 = t532.
          t530 = |{ t531 }|.
          DATA(t533) = strlen( t529 ).
          t528 = |{ t529 }{ t530 }|.
          t527 = t528.
          DATA(t534) = VALUE abap_bool( ).
          DATA(t535) = VALUE abap_bool( ).
          DATA(t536) = VALUE i( ).
          DATA t537 TYPE string.
          DATA t538 TYPE REF TO zcl_lnt_ty_message.
          DATA(t539) = t35.
          t538 = t539.
          DATA t540 TYPE string.
          DATA t541 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t542) = t538.
          t541 = t542->message_25cb.
          t540 = t541->value.
          t537 = t540.
          DATA(t543) = t527.
          DATA(t544) = strlen( t537 ).
          IF t543 IS INITIAL.
            t536 = 0.
          ELSE.
            FIND t543 IN t537 MATCH OFFSET t536.
            IF sy-subrc <> 0.
              t536 = -1.
            ENDIF.
          ENDIF.
          DATA(t545) = 0.
          t535 = xsdbool( t536 >= t545 ).
          DATA(t546) = abap_false.
          t534 = xsdbool( t535 = t546 ).
          IF t534 = abap_true.
            DATA t547 TYPE string.
            DATA t548 TYPE string.
            DATA t549 TYPE string.
            DATA t550 TYPE string.
            DATA t551 TYPE string.
            DATA(t552) = |Expected placeholder |.
            DATA(t553) = t527.
            DATA(t554) = strlen( t552 ).
            t551 = |{ t552 }{ t553 }|.
            DATA(t555) = | in message |.
            DATA(t556) = strlen( t551 ).
            t550 = |{ t551 }{ t555 }|.
            DATA t557 TYPE string.
            DATA t558 TYPE REF TO zcl_lnt_ty_message.
            DATA(t559) = t35.
            t558 = t559.
            DATA t560 TYPE string.
            DATA t561 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t562) = t558.
            t561 = t562->number.
            t560 = t561->value.
            t557 = t560.
            DATA(t563) = strlen( t550 ).
            t549 = |{ t550 }{ t557 }|.
            DATA(t564) = ||.
            DATA(t565) = strlen( t549 ).
            t548 = |{ t549 }{ t564 }|.
            t547 = t548.
            DATA t566 TYPE REF TO zcl_lnt_position.
            DATA t567 TYPE REF TO zcl_lnt_position.
            DATA(t568) = CONV f( 1 ).
            DATA(t569) = CONV f( 1 ).
            DATA(t570) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t570->has = abap_true.
            t570->value = t569.
            t567 = NEW zcl_lnt_position( i_row = t568 i_col = t570 ).
            t566 = t567.
            DATA t571 TYPE REF TO zcl_lnt_issue.
            CLEAR t571.
            DATA t572 TYPE REF TO zcl_lnt_issue.
            CLEAR t572.
            DATA t573 TYPE REF TO zif_lnt_file.
            CLEAR t573.
            DATA t574 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t575 TYPE REF TO zcl_lnt_abstract_object.
            DATA t576 TYPE REF TO zcl_lnt_ob_message_class.
            DATA(t577) = t1.
            DATA t578 TYPE REF TO object.
            t578 = t577.
            t576 ?= t578.
            t575 = t576.
            DATA t579 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t580) = t575.
            t579 = t580->files.
            t574 = t579.
            DATA t581 TYPE REF TO object.
            CLEAR t581.
            t574->load( ).
            CLEAR t581.
            READ TABLE t574->items INDEX 1 INTO t581.
            DATA t582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t582.
            CLEAR t573.
            IF t581 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t582 ?= t581.
              DATA t583 TYPE REF TO object.
              t583 = t582->as_ref( ).
              t573 ?= t583.
            ELSE.
              t573 ?= t581.
            ENDIF.
            DATA(t584) = t566.
            DATA(t585) = t547.
            DATA(t586) = VALUE string( ).
            DATA t587 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t587.
            DATA t588 TYPE string.
            DATA(t589) = |msag_consistency|.
            t588 = t589.
            DATA t590 TYPE string.
            DATA(t591) = |MSAG consistency check|.
            t590 = t591.
            DATA t592 TYPE string.
            DATA(t593) = |Checks the validity of messages in message classes|.
            t592 = t593.
            DATA t594 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t594.
            DATA t595 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t595.
            DATA(t596) = abap_true.
            IF t596 = abap_true.
              DATA t597 TYPE string.
              DATA(t598) = |Message numbers must be 3 digits, message text must not be e|.
              t598 = t598 && |mpty,\n|.
              DATA(t599) = |message text must not exceed 73 characters, no message numbe|.
              t599 = t599 && |r duplicates|.
              DATA(t600) = strlen( t598 ).
              t597 = |{ t598 }{ t599 }|.
              DATA(t601) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t601->has = abap_true.
              t601->value = t597.
              t595 = t601.
            ELSE.
              DATA t602 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t602.
              t595 = t602.
            ENDIF.
            t594 = t595.
            DATA t603 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t604 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t604.
            t603 = t604.
            DATA t605 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t606 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t606.
            t605 = t606.
            DATA t607 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t608 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t608.
            t607 = t608.
            DATA t609 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t610 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t610.
            t609 = t610.
            DATA t611 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t612 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t612.
            t611 = t612.
            t587 = NEW zcl_lnt_irule_metadata( i_key = t588 i_title = t590 i_short_description = t592 i_bad_example = t603 i_good_example = t605 i_extended_information = t594 i_tags = t607 i_pragma = t609 i_pseudo_comment = t611 ).
            CREATE OBJECT t587->zlnt_view_ownkeys_b0e8086400eb.
            t587->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t613 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t613.
            IF t587->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t587->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t613 ).
            ENDIF.
            DATA t614 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t614.
            IF t587->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t587->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t614 ).
            ENDIF.
            DATA t615 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t615.
            IF t587->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t587->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t615 ).
            ENDIF.
            DATA t616 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t616.
            IF t587->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t587->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t616 ).
            ENDIF.
            CREATE OBJECT t587->zlnt_json_ownkeys_70e5fd461788.
            t587->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t617) = |key|.
            DATA t618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t618.
            IF t587->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t587->zlnt_json_ownkeys_70e5fd461788->put( p0 = t617 p1 = t618 ).
            ENDIF.
            DATA(t619) = |title|.
            DATA t620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t620.
            IF t587->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t587->zlnt_json_ownkeys_70e5fd461788->put( p0 = t619 p1 = t620 ).
            ENDIF.
            DATA(t621) = |shortDescription|.
            DATA t622 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t622.
            IF t587->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t587->zlnt_json_ownkeys_70e5fd461788->put( p0 = t621 p1 = t622 ).
            ENDIF.
            DATA(t623) = |extendedInformation|.
            DATA t624 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t624.
            IF t587->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t587->zlnt_json_ownkeys_70e5fd461788->put( p0 = t623 p1 = t624 ).
            ENDIF.
            t586 = t587->key.
            DATA t625 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t626) = me->conf.
            t625 = t626->zlnt_view_read_sr_15c06369f827( ).
            DATA t627 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t627.
            t572 = zcl_lnt_issue=>at_position( i_file = t573 i_start = t584 i_message_26cb = t585 i_key = t586 i_severity = t625 i_fix = t627 ).
            t571 = t572.
            DATA(t628) = t2.
            DATA(t629) = t571.
            t628->load( ).
            APPEND t629 TO t628->items.
            t628->save( ).
            EXIT.
          ENDIF.
          DATA t630 TYPE int8.
          DATA(t631) = t522.
          DATA(t632) = CONV int8( 1 ).
          t630 = t631 + t632.
          t522 = t630.
        ENDDO.
      ENDIF.
      DATA t633 TYPE abap_bool.
      DATA t634 TYPE string.
      DATA t635 TYPE REF TO zcl_lnt_ty_message.
      DATA(t636) = t35.
      t635 = t636.
      DATA t637 TYPE string.
      DATA t638 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t639) = t635.
      t638 = t639->class_name.
      t637 = t638->value.
      t634 = t637.
      DATA t640 TYPE string.
      DATA t641 TYPE REF TO zcl_lnt_abstract_object.
      DATA t642 TYPE REF TO zcl_lnt_ob_message_class.
      DATA(t643) = t1.
      DATA t644 TYPE REF TO object.
      t644 = t643.
      t642 ?= t644.
      t641 = t642.
      DATA t645 TYPE string.
      DATA(t646) = t641.
      t645 = t646->name.
      t640 = t645.
      t633 = xsdbool( t634 <> t640 ).
      IF t633 = abap_true.
        DATA t647 TYPE string.
        DATA t648 TYPE string.
        DATA t649 TYPE string.
        DATA t650 TYPE string.
        DATA t651 TYPE string.
        DATA t652 TYPE string.
        DATA t653 TYPE string.
        DATA(t654) = |Message class "|.
        DATA t655 TYPE string.
        DATA t656 TYPE REF TO zcl_lnt_ty_message.
        DATA(t657) = t35.
        t656 = t657.
        DATA t658 TYPE string.
        DATA t659 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t660) = t656.
        t659 = t660->class_name.
        t658 = t659->value.
        t655 = t658.
        DATA(t661) = strlen( t654 ).
        t653 = |{ t654 }{ t655 }|.
        DATA(t662) = |" does not match filename "|.
        DATA(t663) = strlen( t653 ).
        t652 = |{ t653 }{ t662 }|.
        DATA t664 TYPE string.
        DATA t665 TYPE REF TO zcl_lnt_abstract_object.
        DATA t666 TYPE REF TO zcl_lnt_ob_message_class.
        DATA(t667) = t1.
        DATA t668 TYPE REF TO object.
        t668 = t667.
        t666 ?= t668.
        t665 = t666.
        DATA t669 TYPE string.
        DATA(t670) = t665.
        t669 = t670->name.
        t664 = t669.
        DATA(t671) = strlen( t652 ).
        t651 = |{ t652 }{ t664 }|.
        DATA(t672) = |" for message |.
        DATA(t673) = strlen( t651 ).
        t650 = |{ t651 }{ t672 }|.
        DATA t674 TYPE string.
        DATA t675 TYPE REF TO zcl_lnt_ty_message.
        DATA(t676) = t35.
        t675 = t676.
        DATA t677 TYPE string.
        DATA t678 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t679) = t675.
        t678 = t679->number.
        t677 = t678->value.
        t674 = t677.
        DATA(t680) = strlen( t650 ).
        t649 = |{ t650 }{ t674 }|.
        DATA(t681) = ||.
        DATA(t682) = strlen( t649 ).
        t648 = |{ t649 }{ t681 }|.
        t647 = t648.
        DATA t683 TYPE REF TO zcl_lnt_position.
        DATA t684 TYPE REF TO zcl_lnt_position.
        DATA(t685) = CONV f( 1 ).
        DATA(t686) = CONV f( 1 ).
        DATA(t687) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t687->has = abap_true.
        t687->value = t686.
        t684 = NEW zcl_lnt_position( i_row = t685 i_col = t687 ).
        t683 = t684.
        DATA t688 TYPE REF TO zcl_lnt_issue.
        CLEAR t688.
        DATA t689 TYPE REF TO zcl_lnt_issue.
        CLEAR t689.
        DATA t690 TYPE REF TO zif_lnt_file.
        CLEAR t690.
        DATA t691 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t692 TYPE REF TO zcl_lnt_abstract_object.
        DATA t693 TYPE REF TO zcl_lnt_ob_message_class.
        DATA(t694) = t1.
        DATA t695 TYPE REF TO object.
        t695 = t694.
        t693 ?= t695.
        t692 = t693.
        DATA t696 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t697) = t692.
        t696 = t697->files.
        t691 = t696.
        DATA t698 TYPE REF TO object.
        CLEAR t698.
        t691->load( ).
        CLEAR t698.
        READ TABLE t691->items INDEX 1 INTO t698.
        DATA t699 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t699.
        CLEAR t690.
        IF t698 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t699 ?= t698.
          DATA t700 TYPE REF TO object.
          t700 = t699->as_ref( ).
          t690 ?= t700.
        ELSE.
          t690 ?= t698.
        ENDIF.
        DATA(t701) = t683.
        DATA(t702) = t647.
        DATA(t703) = VALUE string( ).
        DATA t704 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t704.
        DATA t705 TYPE string.
        DATA(t706) = |msag_consistency|.
        t705 = t706.
        DATA t707 TYPE string.
        DATA(t708) = |MSAG consistency check|.
        t707 = t708.
        DATA t709 TYPE string.
        DATA(t710) = |Checks the validity of messages in message classes|.
        t709 = t710.
        DATA t711 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t711.
        DATA t712 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t712.
        DATA(t713) = abap_true.
        IF t713 = abap_true.
          DATA t714 TYPE string.
          DATA(t715) = |Message numbers must be 3 digits, message text must not be e|.
          t715 = t715 && |mpty,\n|.
          DATA(t716) = |message text must not exceed 73 characters, no message numbe|.
          t716 = t716 && |r duplicates|.
          DATA(t717) = strlen( t715 ).
          t714 = |{ t715 }{ t716 }|.
          DATA(t718) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t718->has = abap_true.
          t718->value = t714.
          t712 = t718.
        ELSE.
          DATA t719 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t719.
          t712 = t719.
        ENDIF.
        t711 = t712.
        DATA t720 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t721 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t721.
        t720 = t721.
        DATA t722 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t723 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t723.
        t722 = t723.
        DATA t724 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t725 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t725.
        t724 = t725.
        DATA t726 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t727 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t727.
        t726 = t727.
        DATA t728 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t729 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t729.
        t728 = t729.
        t704 = NEW zcl_lnt_irule_metadata( i_key = t705 i_title = t707 i_short_description = t709 i_bad_example = t720 i_good_example = t722 i_extended_information = t711 i_tags = t724 i_pragma = t726 i_pseudo_comment = t728 ).
        CREATE OBJECT t704->zlnt_view_ownkeys_b0e8086400eb.
        t704->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t730 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t730.
        IF t704->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t704->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t730 ).
        ENDIF.
        DATA t731 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t731.
        IF t704->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t704->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t731 ).
        ENDIF.
        DATA t732 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t732.
        IF t704->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t704->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t732 ).
        ENDIF.
        DATA t733 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t733.
        IF t704->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t704->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t733 ).
        ENDIF.
        CREATE OBJECT t704->zlnt_json_ownkeys_70e5fd461788.
        t704->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t734) = |key|.
        DATA t735 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t735.
        IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = t734 p1 = t735 ).
        ENDIF.
        DATA(t736) = |title|.
        DATA t737 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t737.
        IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = t736 p1 = t737 ).
        ENDIF.
        DATA(t738) = |shortDescription|.
        DATA t739 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t739.
        IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = t738 p1 = t739 ).
        ENDIF.
        DATA(t740) = |extendedInformation|.
        DATA t741 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t741.
        IF t704->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = t740 p1 = t741 ).
        ENDIF.
        t703 = t704->key.
        DATA t742 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t743) = me->conf.
        t742 = t743->zlnt_view_read_sr_15c06369f827( ).
        DATA t744 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t744.
        t689 = zcl_lnt_issue=>at_position( i_file = t690 i_start = t701 i_message_26cb = t702 i_key = t703 i_severity = t742 i_fix = t744 ).
        t688 = t689.
        DATA(t745) = t2.
        DATA(t746) = t688.
        t745->load( ).
        APPEND t746 TO t745->items.
        t745->save( ).
      ENDIF.
    ENDDO.
    DATA(t747) = VALUE abap_bool( ).
    DATA t748 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t748.
    DATA t749 TYPE REF TO zcl_lnt_parsed_message_class.
    DATA t750 TYPE REF TO zcl_lnt_parsed_message_class.
    DATA t751 TYPE REF TO zcl_lnt_ob_message_class.
    DATA t752 TYPE REF TO zcl_lnt_ob_message_class.
    DATA(t753) = t1.
    DATA t754 TYPE REF TO object.
    t754 = t753.
    t752 ?= t754.
    t751 = t752.
    DATA t755 TYPE REF TO zcl_lnt_parsed_message_class.
    DATA(t756) = t751.
    t756->parse_xml( ).
    DATA t757 TYPE REF TO zcl_lnt_parsed_message_class.
    DATA(t758) = t751.
    t757 = t758->xml.
    t755 = t757.
    t750 = t755.
    t749 = t750.
    DATA t759 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t759.
    DATA(t760) = VALUE abap_bool( ).
    DATA(t761) = t749.
    IF t761 IS INITIAL.
      t760 = abap_true.
    ENDIF.
    IF t760 = abap_true.
      DATA t762 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t762.
      t759 = t762.
    ELSE.
      DATA t763 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t764 TYPE REF TO zcl_lnt_parsed_message_class.
      DATA(t765) = t749.
      t764 = t765.
      t763 = t764->top_name.
      t759 = t763.
    ENDIF.
    t748 = t759.
    DATA t766 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t766.
    DATA(t767) = abap_true.
    IF t767 = abap_true.
      DATA t768 TYPE string.
      DATA t769 TYPE REF TO zcl_lnt_abstract_object.
      DATA t770 TYPE REF TO zcl_lnt_ob_message_class.
      DATA(t771) = t1.
      DATA t772 TYPE REF TO object.
      t772 = t771.
      t770 ?= t772.
      t769 = t770.
      DATA t773 TYPE string.
      DATA(t774) = t769.
      t773 = t774->name.
      t768 = t773.
      DATA(t775) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t775->has = abap_true.
      t775->value = t768.
      t766 = t775.
    ELSE.
      DATA t776 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t776.
      t766 = t776.
    ENDIF.
    DATA(t777) = VALUE abap_bool( ).
    DATA(t778) = VALUE abap_bool( ).
    IF t748 IS BOUND.
      t777 = t748->has.
    ENDIF.
    IF t766 IS BOUND.
      t778 = t766->has.
    ENDIF.
    IF t777 = t778.
      IF t777 = abap_false.
        t747 = abap_true.
      ELSEIF t748->value = t766->value.
        t747 = abap_true.
      ENDIF.
    ENDIF.
    IF t747 = abap_true.
      t747 = abap_false.
    ELSE.
      t747 = abap_true.
    ENDIF.
    IF t747 = abap_true.
      DATA(t779) = VALUE string( ).
      DATA(t780) = VALUE string( ).
      DATA(t781) = VALUE string( ).
      DATA(t782) = VALUE string( ).
      DATA(t783) = VALUE string( ).
      DATA(t784) = |Message class name "|.
      DATA(t785) = VALUE string( ).
      DATA t786 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t786.
      DATA t787 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t787.
      DATA t788 TYPE REF TO zcl_lnt_parsed_message_class.
      DATA t789 TYPE REF TO zcl_lnt_parsed_message_class.
      DATA t790 TYPE REF TO zcl_lnt_ob_message_class.
      DATA t791 TYPE REF TO zcl_lnt_ob_message_class.
      DATA(t792) = t1.
      DATA t793 TYPE REF TO object.
      t793 = t792.
      t791 ?= t793.
      t790 = t791.
      DATA t794 TYPE REF TO zcl_lnt_parsed_message_class.
      DATA(t795) = t790.
      t795->parse_xml( ).
      DATA t796 TYPE REF TO zcl_lnt_parsed_message_class.
      DATA(t797) = t790.
      t796 = t797->xml.
      t794 = t796.
      t789 = t794.
      t788 = t789.
      DATA t798 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t798.
      DATA(t799) = VALUE abap_bool( ).
      DATA(t800) = t788.
      IF t800 IS INITIAL.
        t799 = abap_true.
      ENDIF.
      IF t799 = abap_true.
        DATA t801 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t801.
        t798 = t801.
      ELSE.
        DATA t802 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t803 TYPE REF TO zcl_lnt_parsed_message_class.
        DATA(t804) = t788.
        t803 = t804.
        t802 = t803->top_name.
        t798 = t802.
      ENDIF.
      t787 = t798.
      t786 = t787.
      DATA(t805) = VALUE string( ).
      DATA(t806) = VALUE abap_bool( ).
      DATA(t807) = t786.
      IF t807 IS INITIAL.
        t806 = abap_true.
      ELSEIF t807->has = abap_false.
        t806 = abap_true.
      ENDIF.
      IF t806 = abap_true.
        DATA(t808) = |undefined|.
        t805 = t808.
      ELSE.
        DATA t809 TYPE string.
        DATA(t810) = t786.
        t809 = t810->value.
        t805 = t809.
      ENDIF.
      t785 = t805.
      DATA(t811) = strlen( t784 ).
      t783 = |{ t784 }{ t785 }|.
      DATA(t812) = |" does not match filename "|.
      DATA(t813) = strlen( t783 ).
      t782 = |{ t783 }{ t812 }|.
      DATA t814 TYPE string.
      DATA t815 TYPE REF TO zcl_lnt_abstract_object.
      DATA t816 TYPE REF TO zcl_lnt_ob_message_class.
      DATA(t817) = t1.
      DATA t818 TYPE REF TO object.
      t818 = t817.
      t816 ?= t818.
      t815 = t816.
      DATA t819 TYPE string.
      DATA(t820) = t815.
      t819 = t820->name.
      t814 = t819.
      DATA(t821) = strlen( t782 ).
      t781 = |{ t782 }{ t814 }|.
      DATA(t822) = |"|.
      DATA(t823) = strlen( t781 ).
      t780 = |{ t781 }{ t822 }|.
      t779 = t780.
      DATA t824 TYPE REF TO zcl_lnt_position.
      DATA t825 TYPE REF TO zcl_lnt_position.
      DATA(t826) = CONV f( 1 ).
      DATA(t827) = CONV f( 1 ).
      DATA(t828) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t828->has = abap_true.
      t828->value = t827.
      t825 = NEW zcl_lnt_position( i_row = t826 i_col = t828 ).
      t824 = t825.
      DATA t829 TYPE REF TO zcl_lnt_issue.
      CLEAR t829.
      DATA t830 TYPE REF TO zcl_lnt_issue.
      CLEAR t830.
      DATA t831 TYPE REF TO zif_lnt_file.
      CLEAR t831.
      DATA t832 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t833 TYPE REF TO zcl_lnt_abstract_object.
      DATA t834 TYPE REF TO zcl_lnt_ob_message_class.
      DATA(t835) = t1.
      DATA t836 TYPE REF TO object.
      t836 = t835.
      t834 ?= t836.
      t833 = t834.
      DATA t837 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t838) = t833.
      t837 = t838->files.
      t832 = t837.
      DATA t839 TYPE REF TO object.
      CLEAR t839.
      t832->load( ).
      CLEAR t839.
      READ TABLE t832->items INDEX 1 INTO t839.
      DATA t840 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t840.
      CLEAR t831.
      IF t839 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t840 ?= t839.
        DATA t841 TYPE REF TO object.
        t841 = t840->as_ref( ).
        t831 ?= t841.
      ELSE.
        t831 ?= t839.
      ENDIF.
      DATA(t842) = t824.
      DATA(t843) = t779.
      DATA(t844) = VALUE string( ).
      DATA t845 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t845.
      DATA t846 TYPE string.
      DATA(t847) = |msag_consistency|.
      t846 = t847.
      DATA t848 TYPE string.
      DATA(t849) = |MSAG consistency check|.
      t848 = t849.
      DATA t850 TYPE string.
      DATA(t851) = |Checks the validity of messages in message classes|.
      t850 = t851.
      DATA t852 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t852.
      DATA t853 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t853.
      DATA(t854) = abap_true.
      IF t854 = abap_true.
        DATA t855 TYPE string.
        DATA(t856) = |Message numbers must be 3 digits, message text must not be e|.
        t856 = t856 && |mpty,\n|.
        DATA(t857) = |message text must not exceed 73 characters, no message numbe|.
        t857 = t857 && |r duplicates|.
        DATA(t858) = strlen( t856 ).
        t855 = |{ t856 }{ t857 }|.
        DATA(t859) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t859->has = abap_true.
        t859->value = t855.
        t853 = t859.
      ELSE.
        DATA t860 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t860.
        t853 = t860.
      ENDIF.
      t852 = t853.
      DATA t861 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t862 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t862.
      t861 = t862.
      DATA t863 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t864 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t864.
      t863 = t864.
      DATA t865 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t866 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t866.
      t865 = t866.
      DATA t867 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t868 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t868.
      t867 = t868.
      DATA t869 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t870 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t870.
      t869 = t870.
      t845 = NEW zcl_lnt_irule_metadata( i_key = t846 i_title = t848 i_short_description = t850 i_bad_example = t861 i_good_example = t863 i_extended_information = t852 i_tags = t865 i_pragma = t867 i_pseudo_comment = t869 ).
      CREATE OBJECT t845->zlnt_view_ownkeys_b0e8086400eb.
      t845->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t871 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t871.
      IF t845->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t845->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t871 ).
      ENDIF.
      DATA t872 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t872.
      IF t845->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t845->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t872 ).
      ENDIF.
      DATA t873 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t873.
      IF t845->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t845->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t873 ).
      ENDIF.
      DATA t874 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t874.
      IF t845->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t845->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t874 ).
      ENDIF.
      CREATE OBJECT t845->zlnt_json_ownkeys_70e5fd461788.
      t845->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t875) = |key|.
      DATA t876 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t876.
      IF t845->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t845->zlnt_json_ownkeys_70e5fd461788->put( p0 = t875 p1 = t876 ).
      ENDIF.
      DATA(t877) = |title|.
      DATA t878 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t878.
      IF t845->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t845->zlnt_json_ownkeys_70e5fd461788->put( p0 = t877 p1 = t878 ).
      ENDIF.
      DATA(t879) = |shortDescription|.
      DATA t880 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t880.
      IF t845->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t845->zlnt_json_ownkeys_70e5fd461788->put( p0 = t879 p1 = t880 ).
      ENDIF.
      DATA(t881) = |extendedInformation|.
      DATA t882 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t882.
      IF t845->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t845->zlnt_json_ownkeys_70e5fd461788->put( p0 = t881 p1 = t882 ).
      ENDIF.
      t844 = t845->key.
      DATA t883 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t884) = me->conf.
      t883 = t884->zlnt_view_read_sr_15c06369f827( ).
      DATA t885 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t885.
      t830 = zcl_lnt_issue=>at_position( i_file = t831 i_start = t842 i_message_26cb = t843 i_key = t844 i_severity = t883 i_fix = t885 ).
      t829 = t830.
      DATA(t886) = t2.
      DATA(t887) = t829.
      t886->load( ).
      APPEND t887 TO t886->items.
      t886->save( ).
    ENDIF.
    DATA(t888) = t2.
    result = t888.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_msag_consistency_conf( me->gt_cn_in_sr_rl_ms_cn_ts_ms_cns( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_msag_consistency_conf( me->gt_cn_in_sr_rl_ms_cn_ts_ms_cns( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_msag_consistency_conf.
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
        t2 = NEW zcl_lnt_msag_consistency_conf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_ms_cn_ts_ms_cns( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_msag_consistency.
    DATA(t3) = t1.
    t2 = me->in_in_sr_rl_msg_cns_ts_msg_cns( i_reg_d009 = t3 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1597_bfd1b9595eb0.
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
