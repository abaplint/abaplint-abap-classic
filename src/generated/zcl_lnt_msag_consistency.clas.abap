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
    me->conf = NEW zcl_lnt_msag_consistency_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |msag_consistency|.
    DATA t4 TYPE string.
    t4 = |MSAG consistency check|.
    DATA t6 TYPE string.
    t6 = |Checks the validity of messages in message classes|.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
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
    t8 = t15.
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t17 i_good_example = t19 i_extended_information = t8 i_tags = t21 i_pragma = t23 i_pseudo_comment = t25 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t27 ).
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t28 ).
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t29 ).
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t30 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t31) = |key|.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t31 p1 = t32 ).
    DATA(t33) = |title|.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t33 p1 = t34 ).
    ENDIF.
    DATA(t35) = |shortDescription|.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t35 p1 = t36 ).
    ENDIF.
    DATA(t37) = |extendedInformation|.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t37 p1 = t38 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA t2 TYPE string.
    DATA(t3) = |Message class invalid: |.
    DATA(t5) = strlen( t3 ).
    t2 = |{ t3 }{ i_reason }|.
    result = t2.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_ms_cn_ts_ms_cns.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_ms_cn_ts_ms_cns.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD in_in_sr_rl_msg_cns_ts_msg_cns.
    DATA(t1) = i_reg_d009.
    result = me.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    t5 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_message_class ).
    t4 = xsdbool( t5 = abap_false ).
    IF t4 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t7.
      result = t7.
      RETURN.
    ENDIF.
    DATA t8 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    t8 = NEW zlnt_runtime_set__1827558fd4c7( ).
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zcl_lnt_ob_message_class.
    DATA t12 TYPE REF TO zcl_lnt_ob_message_class.
    DATA t14 TYPE REF TO object.
    t14 = t1.
    t12 ?= t14.
    t11 = t12.
    t11->parse_xml( ).
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zcl_lnt_parsed_message_class.
    DATA t20 TYPE REF TO zcl_lnt_parsed_message_class.
    t20 = t11->xml.
    t19 = t20.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t23) = xsdbool( t19 IS INITIAL ).
    IF t23 = abap_true.
    ELSE.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t27 TYPE REF TO zcl_lnt_parsed_message_class.
      t27 = t19.
      t26 = t27->parsed_messages.
      t22 = t26.
    ENDIF.
    t17 = t22.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t30 TYPE abap_bool.
    t30 = xsdbool( t17 IS BOUND ).
    IF t30 = abap_true.
      t29 = t17.
    ELSE.
      DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t34.
      t29 = t34.
    ENDIF.
    t10 = t29.
    DATA t35 TYPE REF TO zcl_lnt_ty_message.
    DATA t36 TYPE REF TO object.
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
      DATA t46 TYPE string.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t47 = t35->number.
      t46 = t47->value.
      DATA t49 TYPE abap_bool.
      DATA t50 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CLEAR t50.
      DATA(t51) = `\d\d\d`.
      DATA(t52) = |[0-9][0-9][0-9]|.
      DATA(t53) = ||.
      CREATE OBJECT t50 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t52 flags = t53.
      t50->source = t51.
      t49 = t50->match_test( p0 = t46 ).
      t41 = t49.
      t40 = xsdbool( t41 = abap_false ).
      IF t40 = abap_true.
        DATA t58 TYPE string.
        DATA(t59) = |Message number must be 3 digits: message |.
        DATA t60 TYPE string.
        DATA t63 TYPE string.
        DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t64 = t35->number.
        t63 = t64->value.
        t60 = t63.
        DATA(t66) = strlen( t59 ).
        t58 = |{ t59 }{ t60 }|.
        DATA t67 TYPE string.
        DATA(t68) = |Message class invalid: |.
        DATA(t70) = strlen( t68 ).
        t67 = |{ t68 }{ t58 }|.
        DATA t72 TYPE REF TO zcl_lnt_position.
        DATA(t73) = CONV f( 1 ).
        DATA(t74) = CONV f( 1 ).
        DATA(t75) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t75->has = abap_true.
        t75->value = t74.
        t72 = NEW zcl_lnt_position( i_row = t73 i_col = t75 ).
        DATA t77 TYPE REF TO zcl_lnt_issue.
        CLEAR t77.
        DATA t78 TYPE REF TO zif_lnt_file.
        CLEAR t78.
        DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t80 TYPE REF TO zcl_lnt_abstract_object.
        DATA t81 TYPE REF TO zcl_lnt_ob_message_class.
        DATA t83 TYPE REF TO object.
        t83 = t1.
        t81 ?= t83.
        t80 = t81.
        DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t84 = t80->files.
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
        DATA(t91) = VALUE string( ).
        DATA t92 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t92.
        DATA t93 TYPE string.
        t93 = |msag_consistency|.
        DATA t95 TYPE string.
        t95 = |MSAG consistency check|.
        DATA t97 TYPE string.
        t97 = |Checks the validity of messages in message classes|.
        DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t99.
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
        t99 = t106.
        DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t108.
        DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t110.
        DATA t112 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t112.
        DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t114.
        DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t116.
        t92 = NEW zcl_lnt_irule_metadata( i_key = t93 i_title = t95 i_short_description = t97 i_bad_example = t108 i_good_example = t110 i_extended_information = t99 i_tags = t112 i_pragma = t114 i_pseudo_comment = t116 ).
        CREATE OBJECT t92->zlnt_view_ownkeys_b0e8086400eb.
        t92->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t118.
        t92->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t118 ).
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
        t92->zlnt_json_ownkeys_70e5fd461788->put( p0 = t122 p1 = t123 ).
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
        t130 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t132 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t132.
        t77 = zcl_lnt_issue=>at_position( i_file = t78 i_start = t72 i_message_26cb = t67 i_key = t91 i_severity = t130 i_fix = t132 ).
        t2->load( ).
        APPEND t77 TO t2->items.
        t2->save( ).
      ENDIF.
      DATA t135 TYPE abap_bool.
      DATA t136 TYPE string.
      DATA t139 TYPE string.
      DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t140 = t35->message_25cb.
      t139 = t140->value.
      t136 = t139.
      DATA(t142) = ||.
      t135 = xsdbool( t136 = t142 ).
      IF t135 = abap_true.
        DATA t144 TYPE string.
        DATA(t145) = |Message text empty: message |.
        DATA t146 TYPE string.
        DATA t149 TYPE string.
        DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t150 = t35->number.
        t149 = t150->value.
        t146 = t149.
        DATA(t152) = strlen( t145 ).
        t144 = |{ t145 }{ t146 }|.
        DATA t154 TYPE REF TO zcl_lnt_position.
        DATA(t155) = CONV f( 1 ).
        DATA(t156) = CONV f( 1 ).
        DATA(t157) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t157->has = abap_true.
        t157->value = t156.
        t154 = NEW zcl_lnt_position( i_row = t155 i_col = t157 ).
        DATA t159 TYPE REF TO zcl_lnt_issue.
        CLEAR t159.
        DATA t160 TYPE REF TO zif_lnt_file.
        CLEAR t160.
        DATA t161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t162 TYPE REF TO zcl_lnt_abstract_object.
        DATA t163 TYPE REF TO zcl_lnt_ob_message_class.
        DATA t165 TYPE REF TO object.
        t165 = t1.
        t163 ?= t165.
        t162 = t163.
        DATA t166 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t166 = t162->files.
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
        DATA(t173) = VALUE string( ).
        DATA t174 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t174.
        DATA t175 TYPE string.
        t175 = |msag_consistency|.
        DATA t177 TYPE string.
        t177 = |MSAG consistency check|.
        DATA t179 TYPE string.
        t179 = |Checks the validity of messages in message classes|.
        DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t181.
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
        t181 = t188.
        DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t190.
        DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t192.
        DATA t194 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t194.
        DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t196.
        DATA t198 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t198.
        t174 = NEW zcl_lnt_irule_metadata( i_key = t175 i_title = t177 i_short_description = t179 i_bad_example = t190 i_good_example = t192 i_extended_information = t181 i_tags = t194 i_pragma = t196 i_pseudo_comment = t198 ).
        CREATE OBJECT t174->zlnt_view_ownkeys_b0e8086400eb.
        t174->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t200.
        t174->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t200 ).
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
        t174->zlnt_json_ownkeys_70e5fd461788->put( p0 = t204 p1 = t205 ).
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
        t212 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t214 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t214.
        t159 = zcl_lnt_issue=>at_position( i_file = t160 i_start = t154 i_message_26cb = t144 i_key = t173 i_severity = t212 i_fix = t214 ).
        t2->load( ).
        APPEND t159 TO t2->items.
        t2->save( ).
      ENDIF.
      DATA t217 TYPE abap_bool.
      DATA t218 TYPE i.
      DATA t219 TYPE string.
      DATA t222 TYPE string.
      DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t223 = t35->message_25cb.
      t222 = t223->value.
      t219 = t222.
      t218 = strlen( t219 ).
      DATA(t226) = 73.
      t217 = xsdbool( t218 > t226 ).
      IF t217 = abap_true.
        DATA t228 TYPE string.
        DATA t229 TYPE string.
        DATA(t230) = |Message text too long (max 73 characters): message |.
        DATA t231 TYPE string.
        DATA t234 TYPE string.
        DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t235 = t35->number.
        t234 = t235->value.
        t231 = t234.
        DATA(t237) = strlen( t230 ).
        t229 = |{ t230 }{ t231 }|.
        DATA(t238) = ||.
        DATA(t239) = strlen( t229 ).
        t228 = |{ t229 }{ t238 }|.
        DATA t241 TYPE REF TO zcl_lnt_position.
        DATA(t242) = CONV f( 1 ).
        DATA(t243) = CONV f( 1 ).
        DATA(t244) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t244->has = abap_true.
        t244->value = t243.
        t241 = NEW zcl_lnt_position( i_row = t242 i_col = t244 ).
        DATA t246 TYPE REF TO zcl_lnt_issue.
        CLEAR t246.
        DATA t247 TYPE REF TO zif_lnt_file.
        CLEAR t247.
        DATA t248 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t249 TYPE REF TO zcl_lnt_abstract_object.
        DATA t250 TYPE REF TO zcl_lnt_ob_message_class.
        DATA t252 TYPE REF TO object.
        t252 = t1.
        t250 ?= t252.
        t249 = t250.
        DATA t253 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t253 = t249->files.
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
        DATA(t260) = VALUE string( ).
        DATA t261 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t261.
        DATA t262 TYPE string.
        t262 = |msag_consistency|.
        DATA t264 TYPE string.
        t264 = |MSAG consistency check|.
        DATA t266 TYPE string.
        t266 = |Checks the validity of messages in message classes|.
        DATA t268 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t268.
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
        t268 = t275.
        DATA t277 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t277.
        DATA t279 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t279.
        DATA t281 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t281.
        DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t283.
        DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t285.
        t261 = NEW zcl_lnt_irule_metadata( i_key = t262 i_title = t264 i_short_description = t266 i_bad_example = t277 i_good_example = t279 i_extended_information = t268 i_tags = t281 i_pragma = t283 i_pseudo_comment = t285 ).
        CREATE OBJECT t261->zlnt_view_ownkeys_b0e8086400eb.
        t261->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t287.
        t261->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t287 ).
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
        t261->zlnt_json_ownkeys_70e5fd461788->put( p0 = t291 p1 = t292 ).
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
        t299 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t301 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t301.
        t246 = zcl_lnt_issue=>at_position( i_file = t247 i_start = t241 i_message_26cb = t228 i_key = t260 i_severity = t299 i_fix = t301 ).
        t2->load( ).
        APPEND t246 TO t2->items.
        t2->save( ).
      ENDIF.
      DATA t304 TYPE string.
      DATA t308 TYPE string.
      DATA t309 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t309 = t35->number.
      t308 = t309->value.
      t304 = t308.
      DATA t311 TYPE abap_bool.
      t311 = t8->has( p0 = t304 ).
      IF t311 = abap_true.
        DATA t315 TYPE string.
        DATA(t316) = |Duplicate message number |.
        DATA(t318) = strlen( t316 ).
        t315 = |{ t316 }{ t304 }|.
        DATA t320 TYPE REF TO zcl_lnt_position.
        DATA(t321) = CONV f( 1 ).
        DATA(t322) = CONV f( 1 ).
        DATA(t323) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t323->has = abap_true.
        t323->value = t322.
        t320 = NEW zcl_lnt_position( i_row = t321 i_col = t323 ).
        DATA t325 TYPE REF TO zcl_lnt_issue.
        CLEAR t325.
        DATA t326 TYPE REF TO zif_lnt_file.
        CLEAR t326.
        DATA t327 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t328 TYPE REF TO zcl_lnt_abstract_object.
        DATA t329 TYPE REF TO zcl_lnt_ob_message_class.
        DATA t331 TYPE REF TO object.
        t331 = t1.
        t329 ?= t331.
        t328 = t329.
        DATA t332 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t332 = t328->files.
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
        DATA(t339) = VALUE string( ).
        DATA t340 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t340.
        DATA t341 TYPE string.
        t341 = |msag_consistency|.
        DATA t343 TYPE string.
        t343 = |MSAG consistency check|.
        DATA t345 TYPE string.
        t345 = |Checks the validity of messages in message classes|.
        DATA t347 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t347.
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
        t347 = t354.
        DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t356.
        DATA t358 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t358.
        DATA t360 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t360.
        DATA t362 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t362.
        DATA t364 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t364.
        t340 = NEW zcl_lnt_irule_metadata( i_key = t341 i_title = t343 i_short_description = t345 i_bad_example = t356 i_good_example = t358 i_extended_information = t347 i_tags = t360 i_pragma = t362 i_pseudo_comment = t364 ).
        CREATE OBJECT t340->zlnt_view_ownkeys_b0e8086400eb.
        t340->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t366.
        t340->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t366 ).
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
        t340->zlnt_json_ownkeys_70e5fd461788->put( p0 = t370 p1 = t371 ).
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
        t378 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t380 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t380.
        t325 = zcl_lnt_issue=>at_position( i_file = t326 i_start = t320 i_message_26cb = t315 i_key = t339 i_severity = t378 i_fix = t380 ).
        t2->load( ).
        APPEND t325 TO t2->items.
        t2->save( ).
      ELSE.
        DATA t383 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
        t383 = t8->add( p0 = t304 ).
      ENDIF.
      DATA t386 TYPE abap_bool.
      DATA t387 TYPE abap_bool.
      DATA(t388) = CAST zcl_lnt_msag_consistency_conf( me->gt_cn_in_sr_rl_ms_cn_ts_ms_cns( ) ).
      t387 = t388->zlnt_view_read_sr_00c52724c39a( ).
      t386 = xsdbool( t387 = abap_true ).
      IF t386 = abap_true.
        DATA(t390) = VALUE int8( ).
        DATA(t391) = VALUE int8( ).
        DATA(t392) = VALUE f( ).
        DATA t393 TYPE REF TO zcl_lnt_ty_message.
        t393 = t35.
        DATA(t395) = VALUE f( ).
        DATA(t396) = VALUE i( ).
        DATA(t397) = VALUE i( ).
        DATA t398 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t398.
        DATA t399 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t402 TYPE string.
        DATA t403 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t403 = t393->message_25cb.
        t402 = t403->value.
        DATA t405 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t407 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t407.
        DATA(t408) = |&&|.
        DATA(t409) = |g|.
        CREATE OBJECT t407 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t408 flags = t409 checked = abap_true.
        t405 = t407->match( t402 ).
        t399 = t405.
        DATA t410 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t410.
        DATA t411 TYPE abap_bool.
        t411 = xsdbool( t399 IS BOUND ).
        IF t411 = abap_true.
          t410 = t399.
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
        DATA t424 TYPE string.
        DATA t425 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t425 = t393->message_25cb.
        t424 = t425->value.
        DATA t427 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t429 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t429.
        DATA(t430) = |&|.
        DATA(t431) = |g|.
        CREATE OBJECT t429 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t430 flags = t431 checked = abap_true.
        t427 = t429->match( t424 ).
        t421 = t427.
        DATA t432 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t432.
        DATA t433 TYPE abap_bool.
        t433 = xsdbool( t421 IS BOUND ).
        IF t433 = abap_true.
          t432 = t421.
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
        t439 = t396.
        DATA(t441) = CONV int8( 2 ).
        t438 = t439 * t441.
        t417 = t418 - t438.
        t416 = t417.
        t395 = t416.
        t392 = t395.
        t391 = t392.
        t390 = t391.
        DATA t442 TYPE abap_bool.
        DATA(t444) = CONV int8( 4 ).
        t442 = xsdbool( t390 > t444 ).
        IF t442 = abap_true.
          DATA t446 TYPE string.
          DATA t447 TYPE string.
          DATA(t448) = |More than 4 placeholders in message |.
          DATA t449 TYPE string.
          DATA t452 TYPE string.
          DATA t453 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t453 = t35->number.
          t452 = t453->value.
          t449 = t452.
          DATA(t455) = strlen( t448 ).
          t447 = |{ t448 }{ t449 }|.
          DATA(t456) = ||.
          DATA(t457) = strlen( t447 ).
          t446 = |{ t447 }{ t456 }|.
          DATA t459 TYPE REF TO zcl_lnt_position.
          DATA(t460) = CONV f( 1 ).
          DATA(t461) = CONV f( 1 ).
          DATA(t462) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t462->has = abap_true.
          t462->value = t461.
          t459 = NEW zcl_lnt_position( i_row = t460 i_col = t462 ).
          DATA t464 TYPE REF TO zcl_lnt_issue.
          CLEAR t464.
          DATA t465 TYPE REF TO zif_lnt_file.
          CLEAR t465.
          DATA t466 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t467 TYPE REF TO zcl_lnt_abstract_object.
          DATA t468 TYPE REF TO zcl_lnt_ob_message_class.
          DATA t470 TYPE REF TO object.
          t470 = t1.
          t468 ?= t470.
          t467 = t468.
          DATA t471 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t471 = t467->files.
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
          DATA(t478) = VALUE string( ).
          DATA t479 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t479.
          DATA t480 TYPE string.
          t480 = |msag_consistency|.
          DATA t482 TYPE string.
          t482 = |MSAG consistency check|.
          DATA t484 TYPE string.
          t484 = |Checks the validity of messages in message classes|.
          DATA t486 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t486.
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
          t486 = t493.
          DATA t495 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t495.
          DATA t497 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t497.
          DATA t499 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t499.
          DATA t501 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t501.
          DATA t503 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t503.
          t479 = NEW zcl_lnt_irule_metadata( i_key = t480 i_title = t482 i_short_description = t484 i_bad_example = t495 i_good_example = t497 i_extended_information = t486 i_tags = t499 i_pragma = t501 i_pseudo_comment = t503 ).
          CREATE OBJECT t479->zlnt_view_ownkeys_b0e8086400eb.
          t479->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t505 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t505.
          t479->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t505 ).
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
          t479->zlnt_json_ownkeys_70e5fd461788->put( p0 = t509 p1 = t510 ).
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
          t517 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t519 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t519.
          t464 = zcl_lnt_issue=>at_position( i_file = t465 i_start = t459 i_message_26cb = t446 i_key = t478 i_severity = t517 i_fix = t519 ).
          t2->load( ).
          APPEND t464 TO t2->items.
          t2->save( ).
        ENDIF.
        DATA t522 TYPE int8.
        DATA(t523) = CONV int8( 1 ).
        t522 = t523.
        DO.
          DATA t524 TYPE abap_bool.
          t524 = xsdbool( t522 <= t390 ).
          IF t524 = abap_false.
            EXIT.
          ENDIF.
          DATA t527 TYPE string.
          DATA t528 TYPE string.
          DATA(t529) = |&|.
          DATA t530 TYPE string.
          DATA t531 TYPE i.
          t531 = t522.
          t530 = |{ t531 }|.
          DATA(t533) = strlen( t529 ).
          t528 = |{ t529 }{ t530 }|.
          t527 = t528.
          DATA(t534) = VALUE abap_bool( ).
          DATA(t535) = VALUE abap_bool( ).
          DATA(t536) = VALUE i( ).
          DATA t537 TYPE string.
          DATA t540 TYPE string.
          DATA t541 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t541 = t35->message_25cb.
          t540 = t541->value.
          t537 = t540.
          DATA(t544) = strlen( t537 ).
          IF t527 IS INITIAL.
            t536 = 0.
          ELSE.
            FIND t527 IN t537 MATCH OFFSET t536.
            IF sy-subrc <> 0.
              t536 = -1.
            ENDIF.
          ENDIF.
          DATA(t545) = 0.
          t535 = xsdbool( t536 >= t545 ).
          t534 = xsdbool( t535 = abap_false ).
          IF t534 = abap_true.
            DATA t548 TYPE string.
            DATA t549 TYPE string.
            DATA t550 TYPE string.
            DATA t551 TYPE string.
            DATA(t552) = |Expected placeholder |.
            DATA(t554) = strlen( t552 ).
            t551 = |{ t552 }{ t527 }|.
            DATA(t555) = | in message |.
            DATA(t556) = strlen( t551 ).
            t550 = |{ t551 }{ t555 }|.
            DATA t557 TYPE string.
            DATA t560 TYPE string.
            DATA t561 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t561 = t35->number.
            t560 = t561->value.
            t557 = t560.
            DATA(t563) = strlen( t550 ).
            t549 = |{ t550 }{ t557 }|.
            DATA(t564) = ||.
            DATA(t565) = strlen( t549 ).
            t548 = |{ t549 }{ t564 }|.
            DATA t567 TYPE REF TO zcl_lnt_position.
            DATA(t568) = CONV f( 1 ).
            DATA(t569) = CONV f( 1 ).
            DATA(t570) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t570->has = abap_true.
            t570->value = t569.
            t567 = NEW zcl_lnt_position( i_row = t568 i_col = t570 ).
            DATA t572 TYPE REF TO zcl_lnt_issue.
            CLEAR t572.
            DATA t573 TYPE REF TO zif_lnt_file.
            CLEAR t573.
            DATA t574 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t575 TYPE REF TO zcl_lnt_abstract_object.
            DATA t576 TYPE REF TO zcl_lnt_ob_message_class.
            DATA t578 TYPE REF TO object.
            t578 = t1.
            t576 ?= t578.
            t575 = t576.
            DATA t579 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t579 = t575->files.
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
            DATA(t586) = VALUE string( ).
            DATA t587 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t587.
            DATA t588 TYPE string.
            t588 = |msag_consistency|.
            DATA t590 TYPE string.
            t590 = |MSAG consistency check|.
            DATA t592 TYPE string.
            t592 = |Checks the validity of messages in message classes|.
            DATA t594 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t594.
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
            t594 = t601.
            DATA t603 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t603.
            DATA t605 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t605.
            DATA t607 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t607.
            DATA t609 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t609.
            DATA t611 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t611.
            t587 = NEW zcl_lnt_irule_metadata( i_key = t588 i_title = t590 i_short_description = t592 i_bad_example = t603 i_good_example = t605 i_extended_information = t594 i_tags = t607 i_pragma = t609 i_pseudo_comment = t611 ).
            CREATE OBJECT t587->zlnt_view_ownkeys_b0e8086400eb.
            t587->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t613 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t613.
            t587->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t613 ).
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
            t587->zlnt_json_ownkeys_70e5fd461788->put( p0 = t617 p1 = t618 ).
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
            t625 = me->conf->zlnt_view_read_sr_15c06369f827( ).
            DATA t627 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t627.
            t572 = zcl_lnt_issue=>at_position( i_file = t573 i_start = t567 i_message_26cb = t548 i_key = t586 i_severity = t625 i_fix = t627 ).
            t2->load( ).
            APPEND t572 TO t2->items.
            t2->save( ).
            EXIT.
          ENDIF.
          DATA t630 TYPE int8.
          DATA(t632) = CONV int8( 1 ).
          t630 = t522 + t632.
          t522 = t630.
        ENDDO.
      ENDIF.
      DATA t633 TYPE abap_bool.
      DATA t634 TYPE string.
      DATA t637 TYPE string.
      DATA t638 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t638 = t35->class_name.
      t637 = t638->value.
      t634 = t637.
      DATA t640 TYPE string.
      DATA t641 TYPE REF TO zcl_lnt_abstract_object.
      DATA t642 TYPE REF TO zcl_lnt_ob_message_class.
      DATA t644 TYPE REF TO object.
      t644 = t1.
      t642 ?= t644.
      t641 = t642.
      DATA t645 TYPE string.
      t645 = t641->name.
      t640 = t645.
      t633 = xsdbool( t634 <> t640 ).
      IF t633 = abap_true.
        DATA t648 TYPE string.
        DATA t649 TYPE string.
        DATA t650 TYPE string.
        DATA t651 TYPE string.
        DATA t652 TYPE string.
        DATA t653 TYPE string.
        DATA(t654) = |Message class "|.
        DATA t655 TYPE string.
        DATA t658 TYPE string.
        DATA t659 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t659 = t35->class_name.
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
        DATA t668 TYPE REF TO object.
        t668 = t1.
        t666 ?= t668.
        t665 = t666.
        DATA t669 TYPE string.
        t669 = t665->name.
        t664 = t669.
        DATA(t671) = strlen( t652 ).
        t651 = |{ t652 }{ t664 }|.
        DATA(t672) = |" for message |.
        DATA(t673) = strlen( t651 ).
        t650 = |{ t651 }{ t672 }|.
        DATA t674 TYPE string.
        DATA t677 TYPE string.
        DATA t678 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t678 = t35->number.
        t677 = t678->value.
        t674 = t677.
        DATA(t680) = strlen( t650 ).
        t649 = |{ t650 }{ t674 }|.
        DATA(t681) = ||.
        DATA(t682) = strlen( t649 ).
        t648 = |{ t649 }{ t681 }|.
        DATA t684 TYPE REF TO zcl_lnt_position.
        DATA(t685) = CONV f( 1 ).
        DATA(t686) = CONV f( 1 ).
        DATA(t687) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t687->has = abap_true.
        t687->value = t686.
        t684 = NEW zcl_lnt_position( i_row = t685 i_col = t687 ).
        DATA t689 TYPE REF TO zcl_lnt_issue.
        CLEAR t689.
        DATA t690 TYPE REF TO zif_lnt_file.
        CLEAR t690.
        DATA t691 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t692 TYPE REF TO zcl_lnt_abstract_object.
        DATA t693 TYPE REF TO zcl_lnt_ob_message_class.
        DATA t695 TYPE REF TO object.
        t695 = t1.
        t693 ?= t695.
        t692 = t693.
        DATA t696 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t696 = t692->files.
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
        DATA(t703) = VALUE string( ).
        DATA t704 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t704.
        DATA t705 TYPE string.
        t705 = |msag_consistency|.
        DATA t707 TYPE string.
        t707 = |MSAG consistency check|.
        DATA t709 TYPE string.
        t709 = |Checks the validity of messages in message classes|.
        DATA t711 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t711.
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
        t711 = t718.
        DATA t720 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t720.
        DATA t722 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t722.
        DATA t724 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t724.
        DATA t726 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t726.
        DATA t728 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t728.
        t704 = NEW zcl_lnt_irule_metadata( i_key = t705 i_title = t707 i_short_description = t709 i_bad_example = t720 i_good_example = t722 i_extended_information = t711 i_tags = t724 i_pragma = t726 i_pseudo_comment = t728 ).
        CREATE OBJECT t704->zlnt_view_ownkeys_b0e8086400eb.
        t704->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t730 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t730.
        t704->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t730 ).
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
        t704->zlnt_json_ownkeys_70e5fd461788->put( p0 = t734 p1 = t735 ).
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
        t742 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t744 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t744.
        t689 = zcl_lnt_issue=>at_position( i_file = t690 i_start = t684 i_message_26cb = t648 i_key = t703 i_severity = t742 i_fix = t744 ).
        t2->load( ).
        APPEND t689 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    DATA(t747) = VALUE abap_bool( ).
    DATA t748 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t749 TYPE REF TO zcl_lnt_parsed_message_class.
    DATA t751 TYPE REF TO zcl_lnt_ob_message_class.
    DATA t752 TYPE REF TO zcl_lnt_ob_message_class.
    DATA t754 TYPE REF TO object.
    t754 = t1.
    t752 ?= t754.
    t751 = t752.
    t751->parse_xml( ).
    DATA t757 TYPE REF TO zcl_lnt_parsed_message_class.
    t757 = t751->xml.
    t749 = t757.
    DATA t759 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t760) = xsdbool( t749 IS INITIAL ).
    IF t760 = abap_true.
    ELSE.
      DATA t763 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t764 TYPE REF TO zcl_lnt_parsed_message_class.
      t764 = t749.
      t763 = t764->top_name.
      t759 = t763.
    ENDIF.
    t748 = t759.
    DATA t766 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t769 TYPE REF TO zcl_lnt_abstract_object.
    DATA t770 TYPE REF TO zcl_lnt_ob_message_class.
    DATA t772 TYPE REF TO object.
    t772 = t1.
    t770 ?= t772.
    t769 = t770.
    DATA t773 TYPE string.
    t773 = t769->name.
    DATA(t775) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t775->has = abap_true.
    t775->value = t773.
    t766 = t775.
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
      DATA t788 TYPE REF TO zcl_lnt_parsed_message_class.
      DATA t790 TYPE REF TO zcl_lnt_ob_message_class.
      DATA t791 TYPE REF TO zcl_lnt_ob_message_class.
      DATA t793 TYPE REF TO object.
      t793 = t1.
      t791 ?= t793.
      t790 = t791.
      t790->parse_xml( ).
      DATA t796 TYPE REF TO zcl_lnt_parsed_message_class.
      t796 = t790->xml.
      t788 = t796.
      DATA t798 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t799) = xsdbool( t788 IS INITIAL ).
      IF t799 = abap_true.
      ELSE.
        DATA t802 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t803 TYPE REF TO zcl_lnt_parsed_message_class.
        t803 = t788.
        t802 = t803->top_name.
        t798 = t802.
      ENDIF.
      t786 = t798.
      DATA(t805) = VALUE string( ).
      DATA(t806) = VALUE abap_bool( ).
      IF t786 IS INITIAL.
        t806 = abap_true.
      ELSEIF t786->has = abap_false.
        t806 = abap_true.
      ENDIF.
      IF t806 = abap_true.
        t805 = |undefined|.
      ELSE.
        DATA t809 TYPE string.
        t809 = t786->value.
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
      DATA t818 TYPE REF TO object.
      t818 = t1.
      t816 ?= t818.
      t815 = t816.
      DATA t819 TYPE string.
      t819 = t815->name.
      t814 = t819.
      DATA(t821) = strlen( t782 ).
      t781 = |{ t782 }{ t814 }|.
      DATA(t822) = |"|.
      DATA(t823) = strlen( t781 ).
      t780 = |{ t781 }{ t822 }|.
      t779 = t780.
      DATA t825 TYPE REF TO zcl_lnt_position.
      DATA(t826) = CONV f( 1 ).
      DATA(t827) = CONV f( 1 ).
      DATA(t828) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t828->has = abap_true.
      t828->value = t827.
      t825 = NEW zcl_lnt_position( i_row = t826 i_col = t828 ).
      DATA t830 TYPE REF TO zcl_lnt_issue.
      DATA t831 TYPE REF TO zif_lnt_file.
      DATA t832 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t833 TYPE REF TO zcl_lnt_abstract_object.
      DATA t834 TYPE REF TO zcl_lnt_ob_message_class.
      DATA t836 TYPE REF TO object.
      t836 = t1.
      t834 ?= t836.
      t833 = t834.
      DATA t837 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t837 = t833->files.
      t832 = t837.
      DATA t839 TYPE REF TO object.
      t832->load( ).
      READ TABLE t832->items INDEX 1 INTO t839.
      DATA t840 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t839 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t840 ?= t839.
        DATA t841 TYPE REF TO object.
        t841 = t840->as_ref( ).
        t831 ?= t841.
      ELSE.
        t831 ?= t839.
      ENDIF.
      DATA(t844) = VALUE string( ).
      DATA t845 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t846 TYPE string.
      t846 = |msag_consistency|.
      DATA t848 TYPE string.
      t848 = |MSAG consistency check|.
      DATA t850 TYPE string.
      t850 = |Checks the validity of messages in message classes|.
      DATA t852 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
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
      t852 = t859.
      DATA t861 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t863 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t865 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t867 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t869 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t845 = NEW zcl_lnt_irule_metadata( i_key = t846 i_title = t848 i_short_description = t850 i_bad_example = t861 i_good_example = t863 i_extended_information = t852 i_tags = t865 i_pragma = t867 i_pseudo_comment = t869 ).
      CREATE OBJECT t845->zlnt_view_ownkeys_b0e8086400eb.
      t845->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t871 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t845->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t871 ).
      DATA t872 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t845->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t845->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t872 ).
      ENDIF.
      DATA t873 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t845->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t845->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t873 ).
      ENDIF.
      DATA t874 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t845->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t845->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t874 ).
      ENDIF.
      CREATE OBJECT t845->zlnt_json_ownkeys_70e5fd461788.
      t845->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t875) = |key|.
      DATA t876 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t845->zlnt_json_ownkeys_70e5fd461788->put( p0 = t875 p1 = t876 ).
      DATA(t877) = |title|.
      DATA t878 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t845->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t845->zlnt_json_ownkeys_70e5fd461788->put( p0 = t877 p1 = t878 ).
      ENDIF.
      DATA(t879) = |shortDescription|.
      DATA t880 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t845->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t845->zlnt_json_ownkeys_70e5fd461788->put( p0 = t879 p1 = t880 ).
      ENDIF.
      DATA(t881) = |extendedInformation|.
      DATA t882 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t845->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t845->zlnt_json_ownkeys_70e5fd461788->put( p0 = t881 p1 = t882 ).
      ENDIF.
      t844 = t845->key.
      DATA t883 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t883 = me->conf->zlnt_view_read_sr_15c06369f827( ).
      DATA t885 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t830 = zcl_lnt_issue=>at_position( i_file = t831 i_start = t825 i_message_26cb = t779 i_key = t844 i_severity = t883 i_fix = t885 ).
      t2->load( ).
      APPEND t830 TO t2->items.
      t2->save( ).
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_msag_consistency_conf( me->gt_cn_in_sr_rl_ms_cn_ts_ms_cns( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_msag_consistency_conf( me->gt_cn_in_sr_rl_ms_cn_ts_ms_cns( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_msag_consistency_conf.
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
        t2 = NEW zcl_lnt_msag_consistency_conf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_ms_cn_ts_ms_cns( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA t2 TYPE REF TO zcl_lnt_msag_consistency.
    DATA(t3) = i_reg_f149.
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
