* TS: src/rules/space_before_colon.ts:14:1 SpaceBeforeColon
CLASS zcl_lnt_space_before_colon DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_spc_bfr_cln_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_sp_bf_cl_ts_sp_bf_cl RETURNING VALUE(result) TYPE REF TO zcl_lnt_spc_bfr_cln_cnf.
    METHODS s_c_i_s_r_sp_bf_cl_ts_sp_bf_cl IMPORTING i_conf TYPE REF TO zcl_lnt_spc_bfr_cln_cnf.
    METHODS r_p_i_s_r_sp_bf_cl_ts_sp_bf_cl IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_space_before_colon IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_spc_bfr_cln_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that there are no spaces in front of colons in chaine|.
    t7 = t7 && |d statements.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = |https://docs.abapopenchecks.org/checks/80/|.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Whitespace| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Quickfix| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = |DATA : foo TYPE string.|.
    t28 = t32.
    DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t38->has = abap_true.
    t38->value = |DATA: foo TYPE string.|.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |space_before_colon| i_title = |Space before colon| i_short_description = t6 i_bad_example = t28 i_good_example = t38 i_extended_information = t8 i_tags = t14 i_pragma = t40 i_pseudo_comment = t42 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t44 ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t50 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t52 ).
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t54 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t60 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t62 ).
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t64 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    result = |Remove space before colon|.

  ENDMETHOD.

  METHOD g_c_i_s_r_sp_bf_cl_ts_sp_bf_cl.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_sp_bf_cl_ts_sp_bf_cl.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_sp_bf_cl_ts_sp_bf_cl.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = t1->statements.
    DATA t9 TYPE REF TO zcl_lnt_statement_node.
    DATA t10 TYPE REF TO object.
    DATA(t11) = VALUE i( ).
    DO.
      t4->load( ).
      IF t11 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t4->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      t14 = t9->colon.
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = VALUE abap_bool( ).
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      t22 = xsdbool( t14 IS INITIAL ).
      t21 = t22.
      IF t22 = abap_false.
        DATA t30 TYPE REF TO zif_lnt_statement.
        t30 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t21 = xsdbool( t30 IS BOUND AND t30 IS INSTANCE OF zcl_lnt_native_sql ).
      ENDIF.
      t20 = t21.
      IF t21 = abap_false.
        DATA t33 TYPE REF TO zif_lnt_statement.
        t33 = t9->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t20 = xsdbool( t33 IS BOUND AND t33 IS INSTANCE OF zcl_lnt_lx_comment ).
      ENDIF.
      IF t20 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t38.
      t35 = t38->concat( p0 = t9->get_tokens( ) ).
      DATA t46 TYPE REF TO zcl_lnt_abstract_token.
      t46 = t14.
      t35->load( ).
      APPEND t46 TO t35->items.
      t35->save( ).
      DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t48.
      DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t49 = t35.
      DATA t51 TYPE i.
      t51 = 1.
      DO.
        t49->load( ).
        IF xsdbool( t51 < lines( t49->items ) ) = abap_false.
          EXIT.
        ENDIF.
        DATA t57 TYPE i.
        t57 = t51.
        DO.
          IF xsdbool( t57 > 0 ) = abap_false.
            EXIT.
          ENDIF.
          DATA t63 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t63.
          DATA t65 TYPE i.
          DATA(t67) = 1.
          t65 = t57 - t67.
          t65 = t65 + 1.
          DATA t68 TYPE REF TO object.
          CLEAR t68.
          t49->load( ).
          CLEAR t68.
          READ TABLE t49->items INDEX t65 INTO t68.
          DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t69.
          CLEAR t63.
          IF t68 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t69 ?= t68.
            DATA t70 TYPE REF TO object.
            t70 = t69->as_ref( ).
            t63 ?= t70.
          ELSE.
            t63 ?= t68.
          ENDIF.
          DATA t72 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t72.
          DATA(t74) = t57.
          t74 = t74 + 1.
          DATA t75 TYPE REF TO object.
          CLEAR t75.
          t49->load( ).
          CLEAR t75.
          READ TABLE t49->items INDEX t74 INTO t75.
          DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t76.
          CLEAR t72.
          IF t75 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t76 ?= t75.
            DATA t77 TYPE REF TO object.
            t77 = t76->as_ref( ).
            t72 ?= t77.
          ELSE.
            t72 ?= t75.
          ENDIF.
          DATA(t79) = VALUE i( ).
          DATA t81 TYPE REF TO zcl_lnt_position.
          t81 = t63->start.
          DATA t86 TYPE REF TO zcl_lnt_position.
          t86 = t72->start.
          IF t81->is_after( i_p = t86 ) = abap_true.
            t79 = 1.
          ELSE.
            t79 = -1.
          ENDIF.
          IF xsdbool( t79 > 0 ) = abap_true.
            DATA t95 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t95.
            DATA t97 TYPE i.
            DATA(t99) = 1.
            t97 = t57 - t99.
            t97 = t97 + 1.
            DATA t100 TYPE REF TO object.
            CLEAR t100.
            t49->load( ).
            CLEAR t100.
            READ TABLE t49->items INDEX t97 INTO t100.
            DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t101.
            CLEAR t95.
            IF t100 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t101 ?= t100.
              DATA t102 TYPE REF TO object.
              t102 = t101->as_ref( ).
              t95 ?= t102.
            ELSE.
              t95 ?= t100.
            ENDIF.
            DATA t104 TYPE i.
            DATA(t106) = 1.
            t104 = t57 - t106.
            DATA t107 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t107.
            DATA(t109) = t57.
            t109 = t109 + 1.
            DATA t110 TYPE REF TO object.
            CLEAR t110.
            t49->load( ).
            CLEAR t110.
            READ TABLE t49->items INDEX t109 INTO t110.
            DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t111.
            CLEAR t107.
            IF t110 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t111 ?= t110.
              DATA t112 TYPE REF TO object.
              t112 = t111->as_ref( ).
              t107 ?= t112.
            ELSE.
              t107 ?= t110.
            ENDIF.
            t49->put( p0 = t104 p1 = t107 ).
            t49->put( p0 = t57 p1 = t95 ).
            DATA(t118) = 1.
            t57 = t57 - t118.
          ELSE.
            EXIT.
          ENDIF.
        ENDDO.
        DATA(t121) = 1.
        t51 = t51 + t121.
      ENDDO.
      t48 = t49.
      DATA t123 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t123.
      DATA t124 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t124.
      DATA t126 TYPE REF TO object.
      CLEAR t126.
      t35->load( ).
      CLEAR t126.
      READ TABLE t35->items INDEX 1 INTO t126.
      DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t127.
      CLEAR t124.
      IF t126 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t127 ?= t126.
        DATA t128 TYPE REF TO object.
        t128 = t127->as_ref( ).
        t124 ?= t128.
      ELSE.
        t124 ?= t126.
      ENDIF.
      t123 = t124.
      DATA t130 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t130.
      DATA t131 TYPE REF TO object.
      CLEAR t131.
      DATA(t132) = VALUE i( ).
      DO.
        t35->load( ).
        IF t132 >= lines( t35->items ).
          EXIT.
        ENDIF.
        CLEAR t131.
        READ TABLE t35->items INDEX t132 + 1 INTO t131.
        t132 = t132 + 1.
        DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t133.
        CLEAR t130.
        IF t131 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t133 ?= t131.
          DATA t134 TYPE REF TO object.
          t134 = t133->as_ref( ).
          t130 ?= t134.
        ELSE.
          t130 ?= t131.
        ENDIF.
        DATA t135 TYPE abap_bool.
        DATA t136 TYPE abap_bool.
        t136 = xsdbool( t130->str = |:| ).
        t135 = t136.
        IF t136 = abap_true.
          t135 = xsdbool( xsdbool( t123 IS BOUND ) = abap_false ).
        ENDIF.
        IF t135 = abap_true.
          DATA t147 TYPE REF TO zcl_lnt_issue.
          CLEAR t147.
          DATA(t151) = VALUE string( ).
          DATA t152 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t152.
          DATA t157 TYPE string.
          DATA(t158) = |Checks that there are no spaces in front of colons in chaine|.
          t158 = t158 && |d statements.|.
          t157 = t158.
          DATA t159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t159.
          DATA(t163) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t163->has = abap_true.
          t163->value = |https://docs.abapopenchecks.org/checks/80/|.
          t159 = t163.
          DATA t165 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t165.
          DATA t169 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t169.
          t169->load( ).
          APPEND |Whitespace| TO t169->items.
          t169->save( ).
          t169->load( ).
          APPEND |SingleFile| TO t169->items.
          t169->save( ).
          t169->load( ).
          APPEND |Quickfix| TO t169->items.
          t169->save( ).
          t165 = t169.
          DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t179.
          DATA(t183) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t183->has = abap_true.
          t183->value = |DATA : foo TYPE string.|.
          t179 = t183.
          DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t185.
          DATA(t189) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t189->has = abap_true.
          t189->value = |DATA: foo TYPE string.|.
          t185 = t189.
          DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t191.
          DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t193.
          t152 = NEW zcl_lnt_irule_metadata( i_key = |space_before_colon| i_title = |Space before colon| i_short_description = t157 i_bad_example = t179 i_good_example = t185 i_extended_information = t159 i_tags = t165 i_pragma = t191 i_pseudo_comment = t193 ).
          CREATE OBJECT t152->zlnt_view_ownkeys_b0e8086400eb.
          t152->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t195.
          t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t195 ).
          DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t196.
          IF t152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t196 ).
          ENDIF.
          DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t197.
          IF t152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t197 ).
          ENDIF.
          DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t198.
          IF t152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t198 ).
          ENDIF.
          DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t199.
          IF t152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t199 ).
          ENDIF.
          DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t200.
          IF t152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t200 ).
          ENDIF.
          DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t201.
          IF t152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t201 ).
          ENDIF.
          CREATE OBJECT t152->zlnt_json_ownkeys_70e5fd461788.
          t152->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t203.
          t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t203 ).
          DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t205.
          IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t205 ).
          ENDIF.
          DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t207.
          IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t207 ).
          ENDIF.
          DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t209.
          IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t209 ).
          ENDIF.
          DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t211.
          IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t211 ).
          ENDIF.
          DATA t213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t213.
          IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t213 ).
          ENDIF.
          DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t215.
          IF t152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t152->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t215 ).
          ENDIF.
          t151 = t152->key.
          DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t216 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t218 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t218.
          t147 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t130 i_message_26cb = |Remove space before colon| i_key = t151 i_severity = t216 i_fix = t218 ).
          t2->load( ).
          APPEND t147 TO t2->items.
          t2->save( ).
        ELSE.
          DATA(t221) = VALUE abap_bool( ).
          DATA t222 TYPE abap_bool.
          DATA t223 TYPE abap_bool.
          t223 = xsdbool( t130->str = |:| ).
          t222 = t223.
          IF t223 = abap_true.
            t222 = xsdbool( t123->start->row = t130->start->row ).
          ENDIF.
          t221 = t222.
          IF t222 = abap_true.
            DATA t250 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA t251 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t251 = t123->start->col.
            DATA t260 TYPE f.
            t260 = strlen( t123->str ).
            DATA(t268) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t268->has = abap_true.
            t268->value = t260.
            t250 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t251 right = t268 op = `+` ).
            DATA t276 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t276 = t130->start->col.
            t221 = zlnt_runtime_numb_290eb04a9758=>compare( left = t250 right = t276 op = `<` ).
          ENDIF.
          IF t221 = abap_true.
            DATA t278 TYPE REF TO zcl_lnt_position.
            DATA t280 TYPE f.
            t280 = t130->start->row.
            DATA t292 TYPE REF TO zcl_lnt_abstract_token.
            t292 = t123.
            DATA t295 TYPE f.
            t295 = t292->start->row.
            DATA t302 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t302 = t292->start->col.
            DATA t308 TYPE f.
            t308 = strlen( t292->str ).
            DATA(t313) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t313->has = abap_true.
            t313->value = t308.
            DATA t314 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t314 = NEW zcl_lnt_position( i_row = t295 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t302 right = t313 op = `+` ) )->col.
            t278 = NEW zcl_lnt_position( i_row = t280 i_col = t314 ).
            DATA t316 TYPE REF TO zcl_lnt_position.
            DATA t318 TYPE f.
            t318 = t130->start->row.
            DATA t334 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t334 = t130->start->col.
            t316 = NEW zcl_lnt_position( i_row = t318 i_col = t334 ).
            DATA t337 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            t337 = zcl_lnt_edit_helper=>delete_range( i_file = t1 i_start = t278 i_end = t316 ).
            DATA t342 TYPE REF TO zcl_lnt_issue.
            CLEAR t342.
            DATA t344 TYPE f.
            t344 = t278->row.
            DATA t349 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t349 = t278->col.
            DATA t354 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t354 = t316->col.
            DATA(t360) = VALUE string( ).
            DATA t361 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t361.
            DATA t366 TYPE string.
            DATA(t367) = |Checks that there are no spaces in front of colons in chaine|.
            t367 = t367 && |d statements.|.
            t366 = t367.
            DATA t368 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t368.
            DATA(t372) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t372->has = abap_true.
            t372->value = |https://docs.abapopenchecks.org/checks/80/|.
            t368 = t372.
            DATA t374 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t374.
            DATA t378 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t378.
            t378->load( ).
            APPEND |Whitespace| TO t378->items.
            t378->save( ).
            t378->load( ).
            APPEND |SingleFile| TO t378->items.
            t378->save( ).
            t378->load( ).
            APPEND |Quickfix| TO t378->items.
            t378->save( ).
            t374 = t378.
            DATA t388 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t388.
            DATA(t392) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t392->has = abap_true.
            t392->value = |DATA : foo TYPE string.|.
            t388 = t392.
            DATA t394 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t394.
            DATA(t398) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t398->has = abap_true.
            t398->value = |DATA: foo TYPE string.|.
            t394 = t398.
            DATA t400 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t400.
            DATA t402 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t402.
            t361 = NEW zcl_lnt_irule_metadata( i_key = |space_before_colon| i_title = |Space before colon| i_short_description = t366 i_bad_example = t388 i_good_example = t394 i_extended_information = t368 i_tags = t374 i_pragma = t400 i_pseudo_comment = t402 ).
            CREATE OBJECT t361->zlnt_view_ownkeys_b0e8086400eb.
            t361->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t404 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t404.
            t361->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t404 ).
            DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t405.
            IF t361->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t361->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t405 ).
            ENDIF.
            DATA t406 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t406.
            IF t361->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t361->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t406 ).
            ENDIF.
            DATA t407 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t407.
            IF t361->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t361->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t407 ).
            ENDIF.
            DATA t408 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t408.
            IF t361->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t361->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t408 ).
            ENDIF.
            DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t409.
            IF t361->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t361->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t409 ).
            ENDIF.
            DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t410.
            IF t361->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t361->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t410 ).
            ENDIF.
            CREATE OBJECT t361->zlnt_json_ownkeys_70e5fd461788.
            t361->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t412.
            t361->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t412 ).
            DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t414.
            IF t361->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t361->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t414 ).
            ENDIF.
            DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t416.
            IF t361->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t361->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t416 ).
            ENDIF.
            DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t418.
            IF t361->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t361->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t418 ).
            ENDIF.
            DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t420.
            IF t361->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t361->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t420 ).
            ENDIF.
            DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t422.
            IF t361->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t361->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t422 ).
            ENDIF.
            DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t424.
            IF t361->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t361->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t424 ).
            ENDIF.
            t360 = t361->key.
            t342 = zcl_lnt_issue=>at_row_range( i_file = t1 i_row = t344 i_start_col = t349 i_end_col = t354 i_message_26cb = |Remove space before colon| i_key = t360 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t337 ).
            t2->load( ).
            APPEND t342 TO t2->items.
            t2->save( ).
          ENDIF.
        ENDIF.
        t123 = t130.
      ENDDO.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_spc_bfr_cln_cnf( me->g_c_i_s_r_sp_bf_cl_ts_sp_bf_cl( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_spc_bfr_cln_cnf( me->g_c_i_s_r_sp_bf_cl_ts_sp_bf_cl( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_spc_bfr_cln_cnf.
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
        t1 = NEW zcl_lnt_spc_bfr_cln_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_sp_bf_cl_ts_sp_bf_cl( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_sp_bf_cl_ts_sp_bf_cl( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1706_24cac642d7b5.
  ENDMETHOD.
ENDCLASS.
