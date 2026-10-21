* TS: src/rules/check_subrc.ts:26:1 CheckSubrc
CLASS zcl_lnt_check_subrc DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_check_subrc_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_ch_sb_ts_ch_sbr RETURNING VALUE(result) TYPE REF TO zcl_lnt_check_subrc_conf.
    METHODS st_cn_in_sr_rl_ch_sb_ts_ch_sbr IMPORTING i_conf TYPE REF TO zcl_lnt_check_subrc_conf.
    METHODS build_fix IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_fix.
    METHODS rn_pr_in_sr_rl_ch_sb_ts_ch_sbr IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS is_simple_assign IMPORTING i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_exempted_find IMPORTING i_s TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS checks_dbcnt IMPORTING i_index TYPE i i_statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_checked IMPORTING i_index TYPE i i_statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_check_subrc IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_check_subrc_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Pseudo comment "#EC CI_SUBRC can be added to suppress findin|.
    t11 = t11 && |gs\n\nIf sy-dbcnt is checked after database statements, it is |.
    t11 = t11 && |considered okay.\n\n"SELECT SINGLE @abap_true FROM " is consid|.
    t11 = t11 && |ered as an existence check, also "SELECT COUNT( * )" is cons|.
    t11 = t11 && |idered okay\n\nIf IS ASSIGNED is checked after assigning, it i|.
    t11 = t11 && |s considered okay.\n\nFIND statement with MATCH COUNT is consi|.
    t11 = t11 && |dered okay if subrc is not checked|.
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
    t18->load( ).
    APPEND |Quickfix| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = |EC CI_SUBRC|.
    t26 = t30.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = |##SUBRC_OK|.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |check_subrc| i_title = |Check sy-subrc| i_short_description = |Check sy-subrc| i_bad_example = t38 i_good_example = t40 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t26 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t42 ).
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t48 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t50 ).
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t52 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t54 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pseudoComment| p1 = t60 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pragma| p1 = t62 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_ch_sb_ts_ch_sbr.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_ch_sb_ts_ch_sbr.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD build_fix.
    DATA t3 TYPE REF TO zcl_lnt_fix.
    DATA(t8) = i_file.
    DATA t9 TYPE REF TO zcl_lnt_position.
    t9 = i_statement->get_last_token( )->start.
    t3 = NEW zcl_lnt_fix( i_description = |Add ##SUBRC_OK| i_edit = zcl_lnt_edit_helper=>insert_at( i_file = t8 i_pos = t9 i_text = | ##SUBRC_OK| ) ).
    CREATE OBJECT t3->zlnt_view_ownkeys_b0e8086400eb.
    t3->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t16 ).
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edit` p1 = t17 ).
    ENDIF.
    CREATE OBJECT t3->zlnt_json_ownkeys_70e5fd461788.
    t3->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t19 ).
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = |edit| p1 = t21 ).
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_ch_sb_ts_ch_sbr.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = t1->statements.
    DATA t10 TYPE string.
    t10 = |Check sy-subrc|.
    DATA t12 TYPE REF TO zcl_lnt_check_subrc_conf.
    t12 = CAST zcl_lnt_check_subrc_conf( me->gt_cn_in_sr_rl_ch_sb_ts_ch_sbr( ) ).
    DATA t14 TYPE i.
    t14 = 0.
    DO.
      t4->load( ).
      IF xsdbool( t14 < lines( t4->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA t20 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t20.
      DATA t21 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t21.
      DATA(t23) = t14.
      t23 = t23 + 1.
      DATA t24 TYPE REF TO object.
      CLEAR t24.
      t4->load( ).
      CLEAR t24.
      READ TABLE t4->items INDEX t23 INTO t24.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      CLEAR t21.
      IF t24 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t25 ?= t24.
        DATA t26 TYPE REF TO object.
        t26 = t25->as_ref( ).
        t21 ?= t26.
      ELSE.
        t21 ?= t24.
      ENDIF.
      t20 = t21.
      DATA t28 TYPE abap_bool.
      t28 = abap_false.
      DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t30 = t20->pragmas.
      DATA t35 TYPE REF TO zcl_lnt_abstract_token.
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
        DATA(t40) = VALUE abap_bool( ).
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t46 TYPE string.
        t46 = t35->str.
        DATA(t48) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t48->has = abap_true.
        t48->value = t46.
        t41 = t48.
        DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t50.
        DATA t51 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t58.
        DATA(t61) = |Pseudo comment "#EC CI_SUBRC can be added to suppress findin|.
        t61 = t61 && |gs\n\nIf sy-dbcnt is checked after database statements, it is |.
        t61 = t61 && |considered okay.\n\n"SELECT SINGLE @abap_true FROM " is consid|.
        t61 = t61 && |ered as an existence check, also "SELECT COUNT( * )" is cons|.
        t61 = t61 && |idered okay\n\nIf IS ASSIGNED is checked after assigning, it i|.
        t61 = t61 && |s considered okay.\n\nFIND statement with MATCH COUNT is consi|.
        t61 = t61 && |dered okay if subrc is not checked|.
        DATA(t62) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t62->has = abap_true.
        t62->value = t61.
        t58 = t62.
        DATA t64 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t64.
        DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t68.
        t68->load( ).
        APPEND |SingleFile| TO t68->items.
        t68->save( ).
        t68->load( ).
        APPEND |Quickfix| TO t68->items.
        t68->save( ).
        t64 = t68.
        DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t76.
        DATA(t80) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t80->has = abap_true.
        t80->value = |EC CI_SUBRC|.
        t76 = t80.
        DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t82.
        DATA(t86) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t86->has = abap_true.
        t86->value = |##SUBRC_OK|.
        t82 = t86.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t88.
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t90.
        t51 = NEW zcl_lnt_irule_metadata( i_key = |check_subrc| i_title = |Check sy-subrc| i_short_description = |Check sy-subrc| i_bad_example = t88 i_good_example = t90 i_extended_information = t58 i_tags = t64 i_pragma = t82 i_pseudo_comment = t76 ).
        CREATE OBJECT t51->zlnt_view_ownkeys_b0e8086400eb.
        t51->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t92.
        t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t92 ).
        DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t93.
        IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t93 ).
        ENDIF.
        DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t94.
        IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t94 ).
        ENDIF.
        DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t95.
        IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t95 ).
        ENDIF.
        DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t96.
        IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t96 ).
        ENDIF.
        DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t97.
        IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t97 ).
        ENDIF.
        DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t98.
        IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t98 ).
        ENDIF.
        CREATE OBJECT t51->zlnt_json_ownkeys_70e5fd461788.
        t51->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t100.
        t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t100 ).
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t102 ).
        ENDIF.
        DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t104.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t104 ).
        ENDIF.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t106 ).
        ENDIF.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t108.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t108 ).
        ENDIF.
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t110.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pseudoComment| p1 = t110 ).
        ENDIF.
        DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t112.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pragma| p1 = t112 ).
        ENDIF.
        t50 = t51->pragma.
        DATA(t113) = VALUE abap_bool( ).
        DATA(t114) = VALUE abap_bool( ).
        IF t41 IS BOUND.
          t113 = t41->has.
        ENDIF.
        IF t50 IS BOUND.
          t114 = t50->has.
        ENDIF.
        IF t113 = t114.
          IF t113 = abap_false.
            t40 = abap_true.
          ELSEIF t41->value = t50->value.
            t40 = abap_true.
          ENDIF.
        ENDIF.
        IF t40 = abap_true.
          t28 = abap_true.
          EXIT.
        ENDIF.
      ENDDO.
      IF t28 = abap_true.
        DATA(t119) = 1.
        t14 = t14 + t119.
        CONTINUE.
      ENDIF.
      DATA(t120) = VALUE abap_bool( ).
      DATA t121 TYPE abap_bool.
      DATA t122 TYPE abap_bool.
      t122 = xsdbool( t12->zlnt_view_read_sr_21b2005cffbb( ) = abap_true ).
      t121 = t122.
      IF t122 = abap_true.
        DATA t127 TYPE REF TO zif_lnt_statement.
        t127 = t20->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t121 = xsdbool( t127 IS BOUND AND t127 IS INSTANCE OF zcl_lnt_st_open_dataset ).
      ENDIF.
      t120 = t121.
      IF t121 = abap_true.
        DATA t130 TYPE abap_bool.
        t130 = me->is_checked( i_index = t14 i_statements = t4 ).
        t120 = xsdbool( t130 = abap_false ).
      ENDIF.
      IF t120 = abap_true.
        DATA t135 TYPE REF TO zcl_lnt_issue.
        CLEAR t135.
        DATA(t139) = VALUE string( ).
        DATA t140 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t147.
        DATA(t150) = |Pseudo comment "#EC CI_SUBRC can be added to suppress findin|.
        t150 = t150 && |gs\n\nIf sy-dbcnt is checked after database statements, it is |.
        t150 = t150 && |considered okay.\n\n"SELECT SINGLE @abap_true FROM " is consid|.
        t150 = t150 && |ered as an existence check, also "SELECT COUNT( * )" is cons|.
        t150 = t150 && |idered okay\n\nIf IS ASSIGNED is checked after assigning, it i|.
        t150 = t150 && |s considered okay.\n\nFIND statement with MATCH COUNT is consi|.
        t150 = t150 && |dered okay if subrc is not checked|.
        DATA(t151) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t151->has = abap_true.
        t151->value = t150.
        t147 = t151.
        DATA t153 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t153.
        DATA t157 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t157.
        t157->load( ).
        APPEND |SingleFile| TO t157->items.
        t157->save( ).
        t157->load( ).
        APPEND |Quickfix| TO t157->items.
        t157->save( ).
        t153 = t157.
        DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t165.
        DATA(t169) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t169->has = abap_true.
        t169->value = |EC CI_SUBRC|.
        t165 = t169.
        DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t171.
        DATA(t175) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t175->has = abap_true.
        t175->value = |##SUBRC_OK|.
        t171 = t175.
        DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t177.
        DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t179.
        t140 = NEW zcl_lnt_irule_metadata( i_key = |check_subrc| i_title = |Check sy-subrc| i_short_description = |Check sy-subrc| i_bad_example = t177 i_good_example = t179 i_extended_information = t147 i_tags = t153 i_pragma = t171 i_pseudo_comment = t165 ).
        CREATE OBJECT t140->zlnt_view_ownkeys_b0e8086400eb.
        t140->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t181.
        t140->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t181 ).
        DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t182.
        IF t140->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t140->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t182 ).
        ENDIF.
        DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t183.
        IF t140->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t140->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t183 ).
        ENDIF.
        DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t184.
        IF t140->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t140->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t184 ).
        ENDIF.
        DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t185.
        IF t140->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t140->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t185 ).
        ENDIF.
        DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t186.
        IF t140->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t140->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t186 ).
        ENDIF.
        DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t187.
        IF t140->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t140->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t187 ).
        ENDIF.
        CREATE OBJECT t140->zlnt_json_ownkeys_70e5fd461788.
        t140->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t189.
        t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t189 ).
        DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t191.
        IF t140->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t191 ).
        ENDIF.
        DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t193.
        IF t140->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t193 ).
        ENDIF.
        DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t195.
        IF t140->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t195 ).
        ENDIF.
        DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t197.
        IF t140->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t197 ).
        ENDIF.
        DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t199.
        IF t140->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pseudoComment| p1 = t199 ).
        ENDIF.
        DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t201.
        IF t140->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pragma| p1 = t201 ).
        ENDIF.
        t139 = t140->key.
        DATA t202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t202 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t204 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t204.
        DATA t205 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t205.
        t135 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t20 i_message_26cb = t10 i_key = t139 i_severity = t202 i_fix = t204 i_alternative_fixes = t205 ).
        t2->load( ).
        APPEND t135 TO t2->items.
        t2->save( ).
      ELSE.
        DATA(t206) = VALUE abap_bool( ).
        DATA t207 TYPE abap_bool.
        DATA t208 TYPE abap_bool.
        t208 = xsdbool( t12->zlnt_view_read_sr_0f4630ed0a64( ) = abap_true ).
        t207 = t208.
        IF t208 = abap_true.
          DATA t213 TYPE REF TO zif_lnt_statement.
          t213 = t20->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t207 = xsdbool( t213 IS BOUND AND t213 IS INSTANCE OF zcl_lnt_st_authority_check ).
        ENDIF.
        t206 = t207.
        IF t207 = abap_true.
          DATA t216 TYPE abap_bool.
          t216 = me->is_checked( i_index = t14 i_statements = t4 ).
          t206 = xsdbool( t216 = abap_false ).
        ENDIF.
        IF t206 = abap_true.
          DATA t221 TYPE REF TO zcl_lnt_issue.
          CLEAR t221.
          DATA(t225) = VALUE string( ).
          DATA t226 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t233.
          DATA(t236) = |Pseudo comment "#EC CI_SUBRC can be added to suppress findin|.
          t236 = t236 && |gs\n\nIf sy-dbcnt is checked after database statements, it is |.
          t236 = t236 && |considered okay.\n\n"SELECT SINGLE @abap_true FROM " is consid|.
          t236 = t236 && |ered as an existence check, also "SELECT COUNT( * )" is cons|.
          t236 = t236 && |idered okay\n\nIf IS ASSIGNED is checked after assigning, it i|.
          t236 = t236 && |s considered okay.\n\nFIND statement with MATCH COUNT is consi|.
          t236 = t236 && |dered okay if subrc is not checked|.
          DATA(t237) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t237->has = abap_true.
          t237->value = t236.
          t233 = t237.
          DATA t239 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t239.
          DATA t243 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t243.
          t243->load( ).
          APPEND |SingleFile| TO t243->items.
          t243->save( ).
          t243->load( ).
          APPEND |Quickfix| TO t243->items.
          t243->save( ).
          t239 = t243.
          DATA t251 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t251.
          DATA(t255) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t255->has = abap_true.
          t255->value = |EC CI_SUBRC|.
          t251 = t255.
          DATA t257 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t257.
          DATA(t261) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t261->has = abap_true.
          t261->value = |##SUBRC_OK|.
          t257 = t261.
          DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t263.
          DATA t265 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t265.
          t226 = NEW zcl_lnt_irule_metadata( i_key = |check_subrc| i_title = |Check sy-subrc| i_short_description = |Check sy-subrc| i_bad_example = t263 i_good_example = t265 i_extended_information = t233 i_tags = t239 i_pragma = t257 i_pseudo_comment = t251 ).
          CREATE OBJECT t226->zlnt_view_ownkeys_b0e8086400eb.
          t226->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t267.
          t226->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t267 ).
          DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t268.
          IF t226->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t226->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t268 ).
          ENDIF.
          DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t269.
          IF t226->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t226->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t269 ).
          ENDIF.
          DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t270.
          IF t226->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t226->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t270 ).
          ENDIF.
          DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t271.
          IF t226->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t226->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t271 ).
          ENDIF.
          DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t272.
          IF t226->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t226->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t272 ).
          ENDIF.
          DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t273.
          IF t226->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t226->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t273 ).
          ENDIF.
          CREATE OBJECT t226->zlnt_json_ownkeys_70e5fd461788.
          t226->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t275.
          t226->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t275 ).
          DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t277.
          IF t226->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t226->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t277 ).
          ENDIF.
          DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t279.
          IF t226->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t226->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t279 ).
          ENDIF.
          DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t281.
          IF t226->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t226->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t281 ).
          ENDIF.
          DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t283.
          IF t226->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t226->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t283 ).
          ENDIF.
          DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t285.
          IF t226->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t226->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pseudoComment| p1 = t285 ).
          ENDIF.
          DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t287.
          IF t226->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t226->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pragma| p1 = t287 ).
          ENDIF.
          t225 = t226->key.
          DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t288 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t290 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t290.
          DATA t291 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t291.
          t221 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t20 i_message_26cb = t10 i_key = t225 i_severity = t288 i_fix = t290 i_alternative_fixes = t291 ).
          t2->load( ).
          APPEND t221 TO t2->items.
          t2->save( ).
        ELSE.
          DATA(t292) = VALUE abap_bool( ).
          DATA(t293) = VALUE abap_bool( ).
          DATA(t294) = VALUE abap_bool( ).
          DATA t295 TYPE abap_bool.
          DATA t296 TYPE abap_bool.
          t296 = xsdbool( t12->zlnt_view_read_sr_a81dc9ce2968( ) = abap_true ).
          t295 = t296.
          IF t296 = abap_true.
            DATA t301 TYPE REF TO zif_lnt_statement.
            t301 = t20->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
            t295 = xsdbool( t301 IS BOUND AND t301 IS INSTANCE OF zcl_lnt_st_statem_select ).
          ENDIF.
          t294 = t295.
          IF t295 = abap_true.
            DATA(t303) = VALUE abap_bool( ).
            DATA t304 TYPE string.
            DATA t305 TYPE string.
            t305 = t20->concat_tokens( ).
            DATA(t307) = strlen( t305 ).
            t304 = t305.
            IF t304 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t304 TO UPPER CASE.
            ELSE.
              t304 = zlnt_runtime_uppe_91169605024d=>full( t304 ).
            ENDIF.
            DATA(t308) = |SELECT SINGLE |.
            DATA(t309) = strlen( t304 ).
            DATA t310 TYPE i.
            DATA(t311) = VALUE i( ).
            DATA(t312) = VALUE string( ).
            t310 = strlen( t308 ).
            IF t310 = 0.
              t303 = abap_true.
            ELSEIF t310 <= t309.
              t311 = 0.
              t312 = t304+t311(t310).
              IF t312 = t308.
                t303 = abap_true.
              ENDIF.
            ENDIF.
            t294 = t303.
          ENDIF.
          t293 = t294.
          IF t294 = abap_true.
            DATA t314 TYPE abap_bool.
            t314 = me->is_checked( i_index = t14 i_statements = t4 ).
            t293 = xsdbool( t314 = abap_false ).
          ENDIF.
          t292 = t293.
          IF t293 = abap_true.
            DATA t319 TYPE abap_bool.
            t319 = me->checks_dbcnt( i_index = t14 i_statements = t4 ).
            t292 = xsdbool( t319 = abap_false ).
          ENDIF.
          IF t292 = abap_true.
            DATA(t323) = VALUE string( ).
            DATA t324 TYPE string.
            DATA t325 TYPE string.
            t325 = t20->concat_tokens( ).
            DATA(t327) = strlen( t325 ).
            t324 = t325.
            IF t324 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t324 TO UPPER CASE.
            ELSE.
              t324 = zlnt_runtime_uppe_91169605024d=>full( t324 ).
            ENDIF.
            t323 = t324.
            DATA(t328) = VALUE abap_bool( ).
            DATA(t330) = |SELECT SINGLE @ABAP_TRUE FROM |.
            DATA(t331) = strlen( t323 ).
            DATA t332 TYPE i.
            DATA(t333) = VALUE i( ).
            DATA(t334) = VALUE string( ).
            t332 = strlen( t330 ).
            IF t332 = 0.
              t328 = abap_true.
            ELSEIF t332 <= t331.
              t333 = 0.
              t334 = t323+t333(t332).
              IF t334 = t330.
                t328 = abap_true.
              ENDIF.
            ENDIF.
            IF t328 = abap_true.
              DATA(t337) = 1.
              t14 = t14 + t337.
              CONTINUE.
            ENDIF.
            DATA t344 TYPE REF TO zcl_lnt_fix.
            DATA t350 TYPE REF TO zcl_lnt_position.
            t350 = t20->get_last_token( )->start.
            t344 = NEW zcl_lnt_fix( i_description = |Add ##SUBRC_OK| i_edit = zcl_lnt_edit_helper=>insert_at( i_file = t1 i_pos = t350 i_text = | ##SUBRC_OK| ) ).
            CREATE OBJECT t344->zlnt_view_ownkeys_b0e8086400eb.
            t344->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t357.
            t344->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t357 ).
            DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t358.
            IF t344->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t344->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edit` p1 = t358 ).
            ENDIF.
            CREATE OBJECT t344->zlnt_json_ownkeys_70e5fd461788.
            t344->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t360.
            t344->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t360 ).
            DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t362.
            IF t344->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t344->zlnt_json_ownkeys_70e5fd461788->put( p0 = |edit| p1 = t362 ).
            ENDIF.
            DATA t364 TYPE REF TO zcl_lnt_issue.
            CLEAR t364.
            DATA(t368) = VALUE string( ).
            DATA t369 TYPE REF TO zcl_lnt_irule_metadata.
            DATA t376 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t376.
            DATA(t379) = |Pseudo comment "#EC CI_SUBRC can be added to suppress findin|.
            t379 = t379 && |gs\n\nIf sy-dbcnt is checked after database statements, it is |.
            t379 = t379 && |considered okay.\n\n"SELECT SINGLE @abap_true FROM " is consid|.
            t379 = t379 && |ered as an existence check, also "SELECT COUNT( * )" is cons|.
            t379 = t379 && |idered okay\n\nIf IS ASSIGNED is checked after assigning, it i|.
            t379 = t379 && |s considered okay.\n\nFIND statement with MATCH COUNT is consi|.
            t379 = t379 && |dered okay if subrc is not checked|.
            DATA(t380) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t380->has = abap_true.
            t380->value = t379.
            t376 = t380.
            DATA t382 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t382.
            DATA t386 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t386.
            t386->load( ).
            APPEND |SingleFile| TO t386->items.
            t386->save( ).
            t386->load( ).
            APPEND |Quickfix| TO t386->items.
            t386->save( ).
            t382 = t386.
            DATA t394 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t394.
            DATA(t398) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t398->has = abap_true.
            t398->value = |EC CI_SUBRC|.
            t394 = t398.
            DATA t400 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t400.
            DATA(t404) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t404->has = abap_true.
            t404->value = |##SUBRC_OK|.
            t400 = t404.
            DATA t406 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t406.
            DATA t408 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t408.
            t369 = NEW zcl_lnt_irule_metadata( i_key = |check_subrc| i_title = |Check sy-subrc| i_short_description = |Check sy-subrc| i_bad_example = t406 i_good_example = t408 i_extended_information = t376 i_tags = t382 i_pragma = t400 i_pseudo_comment = t394 ).
            CREATE OBJECT t369->zlnt_view_ownkeys_b0e8086400eb.
            t369->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t410.
            t369->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t410 ).
            DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t411.
            IF t369->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t369->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t411 ).
            ENDIF.
            DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t412.
            IF t369->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t369->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t412 ).
            ENDIF.
            DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t413.
            IF t369->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t369->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t413 ).
            ENDIF.
            DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t414.
            IF t369->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t369->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t414 ).
            ENDIF.
            DATA t415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t415.
            IF t369->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t369->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t415 ).
            ENDIF.
            DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t416.
            IF t369->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t369->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t416 ).
            ENDIF.
            CREATE OBJECT t369->zlnt_json_ownkeys_70e5fd461788.
            t369->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t418.
            t369->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t418 ).
            DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t420.
            IF t369->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t369->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t420 ).
            ENDIF.
            DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t422.
            IF t369->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t369->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t422 ).
            ENDIF.
            DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t424.
            IF t369->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t369->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t424 ).
            ENDIF.
            DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t426.
            IF t369->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t369->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t426 ).
            ENDIF.
            DATA t428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t428.
            IF t369->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t369->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pseudoComment| p1 = t428 ).
            ENDIF.
            DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t430.
            IF t369->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t369->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pragma| p1 = t430 ).
            ENDIF.
            t368 = t369->key.
            DATA t431 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t431 = me->conf->zlnt_view_read_sr_15c06369f827( ).
            DATA t433 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t433.
            DATA t437 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CREATE OBJECT t437.
            t437->load( ).
            APPEND t344 TO t437->items.
            t437->save( ).
            t364 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t20 i_message_26cb = t10 i_key = t368 i_severity = t431 i_fix = t433 i_alternative_fixes = t437 ).
            t2->load( ).
            APPEND t364 TO t2->items.
            t2->save( ).
          ELSE.
            DATA(t443) = VALUE abap_bool( ).
            DATA(t444) = VALUE abap_bool( ).
            DATA(t445) = VALUE abap_bool( ).
            DATA(t446) = VALUE abap_bool( ).
            DATA(t447) = VALUE abap_bool( ).
            DATA t448 TYPE abap_bool.
            DATA t449 TYPE abap_bool.
            t449 = xsdbool( t12->zlnt_view_read_sr_678f16bf9d52( ) = abap_true ).
            t448 = t449.
            IF t449 = abap_true.
              DATA t454 TYPE REF TO zif_lnt_statement.
              t454 = t20->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
              t448 = xsdbool( t454 IS BOUND AND t454 IS INSTANCE OF zcl_lnt_st_statem_select ).
            ENDIF.
            t447 = t448.
            IF t448 = abap_true.
              DATA(t457) = VALUE abap_bool( ).
              DATA t458 TYPE string.
              DATA t459 TYPE string.
              t459 = t20->concat_tokens( ).
              DATA(t461) = strlen( t459 ).
              t458 = t459.
              IF t458 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t458 TO UPPER CASE.
              ELSE.
                t458 = zlnt_runtime_uppe_91169605024d=>full( t458 ).
              ENDIF.
              DATA(t462) = |SELECT SINGLE |.
              DATA(t463) = strlen( t458 ).
              DATA t464 TYPE i.
              DATA(t465) = VALUE i( ).
              DATA(t466) = VALUE string( ).
              t464 = strlen( t462 ).
              IF t464 = 0.
                t457 = abap_true.
              ELSEIF t464 <= t463.
                t465 = 0.
                t466 = t458+t465(t464).
                IF t466 = t462.
                  t457 = abap_true.
                ENDIF.
              ENDIF.
              t447 = xsdbool( t457 = abap_false ).
            ENDIF.
            t446 = t447.
            IF t447 = abap_true.
              DATA(t469) = VALUE abap_bool( ).
              DATA t470 TYPE string.
              DATA t471 TYPE string.
              t471 = t20->concat_tokens( ).
              DATA(t473) = strlen( t471 ).
              t470 = t471.
              IF t470 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t470 TO UPPER CASE.
              ELSE.
                t470 = zlnt_runtime_uppe_91169605024d=>full( t470 ).
              ENDIF.
              DATA(t474) = |SELECT COUNT( * ) |.
              DATA(t475) = strlen( t470 ).
              DATA t476 TYPE i.
              DATA(t477) = VALUE i( ).
              DATA(t478) = VALUE string( ).
              t476 = strlen( t474 ).
              IF t476 = 0.
                t469 = abap_true.
              ELSEIF t476 <= t475.
                t477 = 0.
                t478 = t470+t477(t476).
                IF t478 = t474.
                  t469 = abap_true.
                ENDIF.
              ENDIF.
              t446 = xsdbool( t469 = abap_false ).
            ENDIF.
            t445 = t446.
            IF t446 = abap_true.
              DATA(t481) = VALUE abap_bool( ).
              DATA t482 TYPE string.
              DATA t483 TYPE string.
              t483 = t20->concat_tokens( ).
              DATA(t485) = strlen( t483 ).
              t482 = t483.
              IF t482 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t482 TO UPPER CASE.
              ELSE.
                t482 = zlnt_runtime_uppe_91169605024d=>full( t482 ).
              ENDIF.
              DATA(t486) = |SELECT COUNT(*) |.
              DATA(t487) = strlen( t482 ).
              DATA t488 TYPE i.
              DATA(t489) = VALUE i( ).
              DATA(t490) = VALUE string( ).
              t488 = strlen( t486 ).
              IF t488 = 0.
                t481 = abap_true.
              ELSEIF t488 <= t487.
                t489 = 0.
                t490 = t482+t489(t488).
                IF t490 = t486.
                  t481 = abap_true.
                ENDIF.
              ENDIF.
              t445 = xsdbool( t481 = abap_false ).
            ENDIF.
            t444 = t445.
            IF t445 = abap_true.
              DATA t493 TYPE abap_bool.
              t493 = me->is_checked( i_index = t14 i_statements = t4 ).
              t444 = xsdbool( t493 = abap_false ).
            ENDIF.
            t443 = t444.
            IF t444 = abap_true.
              DATA t498 TYPE abap_bool.
              t498 = me->checks_dbcnt( i_index = t14 i_statements = t4 ).
              t443 = xsdbool( t498 = abap_false ).
            ENDIF.
            IF t443 = abap_true.
              DATA t508 TYPE REF TO zcl_lnt_fix.
              DATA t514 TYPE REF TO zcl_lnt_position.
              t514 = t20->get_last_token( )->start.
              t508 = NEW zcl_lnt_fix( i_description = |Add ##SUBRC_OK| i_edit = zcl_lnt_edit_helper=>insert_at( i_file = t1 i_pos = t514 i_text = | ##SUBRC_OK| ) ).
              CREATE OBJECT t508->zlnt_view_ownkeys_b0e8086400eb.
              t508->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t521 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t521.
              t508->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t521 ).
              DATA t522 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t522.
              IF t508->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t508->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edit` p1 = t522 ).
              ENDIF.
              CREATE OBJECT t508->zlnt_json_ownkeys_70e5fd461788.
              t508->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t524 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t524.
              t508->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t524 ).
              DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t526.
              IF t508->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t508->zlnt_json_ownkeys_70e5fd461788->put( p0 = |edit| p1 = t526 ).
              ENDIF.
              DATA t528 TYPE REF TO zcl_lnt_issue.
              CLEAR t528.
              DATA(t532) = VALUE string( ).
              DATA t533 TYPE REF TO zcl_lnt_irule_metadata.
              DATA t540 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t540.
              DATA(t543) = |Pseudo comment "#EC CI_SUBRC can be added to suppress findin|.
              t543 = t543 && |gs\n\nIf sy-dbcnt is checked after database statements, it is |.
              t543 = t543 && |considered okay.\n\n"SELECT SINGLE @abap_true FROM " is consid|.
              t543 = t543 && |ered as an existence check, also "SELECT COUNT( * )" is cons|.
              t543 = t543 && |idered okay\n\nIf IS ASSIGNED is checked after assigning, it i|.
              t543 = t543 && |s considered okay.\n\nFIND statement with MATCH COUNT is consi|.
              t543 = t543 && |dered okay if subrc is not checked|.
              DATA(t544) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t544->has = abap_true.
              t544->value = t543.
              t540 = t544.
              DATA t546 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t546.
              DATA t550 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t550.
              t550->load( ).
              APPEND |SingleFile| TO t550->items.
              t550->save( ).
              t550->load( ).
              APPEND |Quickfix| TO t550->items.
              t550->save( ).
              t546 = t550.
              DATA t558 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t558.
              DATA(t562) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t562->has = abap_true.
              t562->value = |EC CI_SUBRC|.
              t558 = t562.
              DATA t564 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t564.
              DATA(t568) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t568->has = abap_true.
              t568->value = |##SUBRC_OK|.
              t564 = t568.
              DATA t570 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t570.
              DATA t572 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t572.
              t533 = NEW zcl_lnt_irule_metadata( i_key = |check_subrc| i_title = |Check sy-subrc| i_short_description = |Check sy-subrc| i_bad_example = t570 i_good_example = t572 i_extended_information = t540 i_tags = t546 i_pragma = t564 i_pseudo_comment = t558 ).
              CREATE OBJECT t533->zlnt_view_ownkeys_b0e8086400eb.
              t533->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t574 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t574.
              t533->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t574 ).
              DATA t575 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t575.
              IF t533->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t533->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t575 ).
              ENDIF.
              DATA t576 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t576.
              IF t533->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t533->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t576 ).
              ENDIF.
              DATA t577 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t577.
              IF t533->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t533->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t577 ).
              ENDIF.
              DATA t578 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t578.
              IF t533->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t533->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t578 ).
              ENDIF.
              DATA t579 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t579.
              IF t533->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t533->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t579 ).
              ENDIF.
              DATA t580 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t580.
              IF t533->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t533->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t580 ).
              ENDIF.
              CREATE OBJECT t533->zlnt_json_ownkeys_70e5fd461788.
              t533->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t582.
              t533->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t582 ).
              DATA t584 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t584.
              IF t533->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t533->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t584 ).
              ENDIF.
              DATA t586 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t586.
              IF t533->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t533->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t586 ).
              ENDIF.
              DATA t588 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t588.
              IF t533->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t533->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t588 ).
              ENDIF.
              DATA t590 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t590.
              IF t533->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t533->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t590 ).
              ENDIF.
              DATA t592 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t592.
              IF t533->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t533->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pseudoComment| p1 = t592 ).
              ENDIF.
              DATA t594 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t594.
              IF t533->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t533->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pragma| p1 = t594 ).
              ENDIF.
              t532 = t533->key.
              DATA t595 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t595 = me->conf->zlnt_view_read_sr_15c06369f827( ).
              DATA t597 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t597.
              DATA t601 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CREATE OBJECT t601.
              t601->load( ).
              APPEND t508 TO t601->items.
              t601->save( ).
              t528 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t20 i_message_26cb = t10 i_key = t532 i_severity = t595 i_fix = t597 i_alternative_fixes = t601 ).
              t2->load( ).
              APPEND t528 TO t2->items.
              t2->save( ).
            ELSE.
              DATA(t607) = VALUE abap_bool( ).
              DATA(t608) = VALUE abap_bool( ).
              DATA t609 TYPE abap_bool.
              DATA t610 TYPE abap_bool.
              t610 = xsdbool( t12->zlnt_view_read_sr_b2ab8f8e06ba( ) = abap_true ).
              t609 = t610.
              IF t610 = abap_true.
                DATA t615 TYPE REF TO zif_lnt_statement.
                t615 = t20->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
                t609 = xsdbool( t615 IS BOUND AND t615 IS INSTANCE OF zcl_lnt_st_update_database ).
              ENDIF.
              t608 = t609.
              IF t609 = abap_true.
                DATA t618 TYPE abap_bool.
                t618 = me->is_checked( i_index = t14 i_statements = t4 ).
                t608 = xsdbool( t618 = abap_false ).
              ENDIF.
              t607 = t608.
              IF t608 = abap_true.
                DATA t623 TYPE abap_bool.
                t623 = me->checks_dbcnt( i_index = t14 i_statements = t4 ).
                t607 = xsdbool( t623 = abap_false ).
              ENDIF.
              IF t607 = abap_true.
                DATA t633 TYPE REF TO zcl_lnt_fix.
                DATA t639 TYPE REF TO zcl_lnt_position.
                t639 = t20->get_last_token( )->start.
                t633 = NEW zcl_lnt_fix( i_description = |Add ##SUBRC_OK| i_edit = zcl_lnt_edit_helper=>insert_at( i_file = t1 i_pos = t639 i_text = | ##SUBRC_OK| ) ).
                CREATE OBJECT t633->zlnt_view_ownkeys_b0e8086400eb.
                t633->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t646 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t646.
                t633->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t646 ).
                DATA t647 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t647.
                IF t633->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t633->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edit` p1 = t647 ).
                ENDIF.
                CREATE OBJECT t633->zlnt_json_ownkeys_70e5fd461788.
                t633->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t649 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t649.
                t633->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t649 ).
                DATA t651 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t651.
                IF t633->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t633->zlnt_json_ownkeys_70e5fd461788->put( p0 = |edit| p1 = t651 ).
                ENDIF.
                DATA t653 TYPE REF TO zcl_lnt_issue.
                CLEAR t653.
                DATA(t657) = VALUE string( ).
                DATA t658 TYPE REF TO zcl_lnt_irule_metadata.
                DATA t665 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t665.
                DATA(t668) = |Pseudo comment "#EC CI_SUBRC can be added to suppress findin|.
                t668 = t668 && |gs\n\nIf sy-dbcnt is checked after database statements, it is |.
                t668 = t668 && |considered okay.\n\n"SELECT SINGLE @abap_true FROM " is consid|.
                t668 = t668 && |ered as an existence check, also "SELECT COUNT( * )" is cons|.
                t668 = t668 && |idered okay\n\nIf IS ASSIGNED is checked after assigning, it i|.
                t668 = t668 && |s considered okay.\n\nFIND statement with MATCH COUNT is consi|.
                t668 = t668 && |dered okay if subrc is not checked|.
                DATA(t669) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t669->has = abap_true.
                t669->value = t668.
                t665 = t669.
                DATA t671 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t671.
                DATA t675 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CREATE OBJECT t675.
                t675->load( ).
                APPEND |SingleFile| TO t675->items.
                t675->save( ).
                t675->load( ).
                APPEND |Quickfix| TO t675->items.
                t675->save( ).
                t671 = t675.
                DATA t683 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t683.
                DATA(t687) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t687->has = abap_true.
                t687->value = |EC CI_SUBRC|.
                t683 = t687.
                DATA t689 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t689.
                DATA(t693) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t693->has = abap_true.
                t693->value = |##SUBRC_OK|.
                t689 = t693.
                DATA t695 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t695.
                DATA t697 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t697.
                t658 = NEW zcl_lnt_irule_metadata( i_key = |check_subrc| i_title = |Check sy-subrc| i_short_description = |Check sy-subrc| i_bad_example = t695 i_good_example = t697 i_extended_information = t665 i_tags = t671 i_pragma = t689 i_pseudo_comment = t683 ).
                CREATE OBJECT t658->zlnt_view_ownkeys_b0e8086400eb.
                t658->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t699 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t699.
                t658->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t699 ).
                DATA t700 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t700.
                IF t658->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t658->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t700 ).
                ENDIF.
                DATA t701 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t701.
                IF t658->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t658->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t701 ).
                ENDIF.
                DATA t702 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t702.
                IF t658->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t658->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t702 ).
                ENDIF.
                DATA t703 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t703.
                IF t658->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t658->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t703 ).
                ENDIF.
                DATA t704 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t704.
                IF t658->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t658->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t704 ).
                ENDIF.
                DATA t705 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t705.
                IF t658->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t658->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t705 ).
                ENDIF.
                CREATE OBJECT t658->zlnt_json_ownkeys_70e5fd461788.
                t658->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t707 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t707.
                t658->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t707 ).
                DATA t709 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t709.
                IF t658->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t658->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t709 ).
                ENDIF.
                DATA t711 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t711.
                IF t658->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t658->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t711 ).
                ENDIF.
                DATA t713 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t713.
                IF t658->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t658->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t713 ).
                ENDIF.
                DATA t715 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t715.
                IF t658->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t658->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t715 ).
                ENDIF.
                DATA t717 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t717.
                IF t658->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t658->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pseudoComment| p1 = t717 ).
                ENDIF.
                DATA t719 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t719.
                IF t658->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t658->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pragma| p1 = t719 ).
                ENDIF.
                t657 = t658->key.
                DATA t720 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t720 = me->conf->zlnt_view_read_sr_15c06369f827( ).
                DATA t722 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t722.
                DATA t726 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CREATE OBJECT t726.
                t726->load( ).
                APPEND t633 TO t726->items.
                t726->save( ).
                t653 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t20 i_message_26cb = t10 i_key = t657 i_severity = t720 i_fix = t722 i_alternative_fixes = t726 ).
                t2->load( ).
                APPEND t653 TO t2->items.
                t2->save( ).
              ELSE.
                DATA(t732) = VALUE abap_bool( ).
                DATA(t733) = VALUE abap_bool( ).
                DATA t734 TYPE abap_bool.
                DATA t735 TYPE abap_bool.
                t735 = xsdbool( t12->zlnt_view_read_sr_21752f920f4c( ) = abap_true ).
                t734 = t735.
                IF t735 = abap_true.
                  DATA t740 TYPE REF TO zif_lnt_statement.
                  t740 = t20->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
                  t734 = xsdbool( t740 IS BOUND AND t740 IS INSTANCE OF zcl_lnt_st_delete_database ).
                ENDIF.
                t733 = t734.
                IF t734 = abap_true.
                  DATA t743 TYPE abap_bool.
                  t743 = me->is_checked( i_index = t14 i_statements = t4 ).
                  t733 = xsdbool( t743 = abap_false ).
                ENDIF.
                t732 = t733.
                IF t733 = abap_true.
                  DATA t748 TYPE abap_bool.
                  t748 = me->checks_dbcnt( i_index = t14 i_statements = t4 ).
                  t732 = xsdbool( t748 = abap_false ).
                ENDIF.
                IF t732 = abap_true.
                  DATA t758 TYPE REF TO zcl_lnt_fix.
                  DATA t764 TYPE REF TO zcl_lnt_position.
                  t764 = t20->get_last_token( )->start.
                  t758 = NEW zcl_lnt_fix( i_description = |Add ##SUBRC_OK| i_edit = zcl_lnt_edit_helper=>insert_at( i_file = t1 i_pos = t764 i_text = | ##SUBRC_OK| ) ).
                  CREATE OBJECT t758->zlnt_view_ownkeys_b0e8086400eb.
                  t758->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t771 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t771.
                  t758->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t771 ).
                  DATA t772 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t772.
                  IF t758->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t758->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edit` p1 = t772 ).
                  ENDIF.
                  CREATE OBJECT t758->zlnt_json_ownkeys_70e5fd461788.
                  t758->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t774 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t774.
                  t758->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t774 ).
                  DATA t776 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t776.
                  IF t758->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t758->zlnt_json_ownkeys_70e5fd461788->put( p0 = |edit| p1 = t776 ).
                  ENDIF.
                  DATA t778 TYPE REF TO zcl_lnt_issue.
                  CLEAR t778.
                  DATA(t782) = VALUE string( ).
                  DATA t783 TYPE REF TO zcl_lnt_irule_metadata.
                  DATA t790 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t790.
                  DATA(t793) = |Pseudo comment "#EC CI_SUBRC can be added to suppress findin|.
                  t793 = t793 && |gs\n\nIf sy-dbcnt is checked after database statements, it is |.
                  t793 = t793 && |considered okay.\n\n"SELECT SINGLE @abap_true FROM " is consid|.
                  t793 = t793 && |ered as an existence check, also "SELECT COUNT( * )" is cons|.
                  t793 = t793 && |idered okay\n\nIf IS ASSIGNED is checked after assigning, it i|.
                  t793 = t793 && |s considered okay.\n\nFIND statement with MATCH COUNT is consi|.
                  t793 = t793 && |dered okay if subrc is not checked|.
                  DATA(t794) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t794->has = abap_true.
                  t794->value = t793.
                  t790 = t794.
                  DATA t796 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t796.
                  DATA t800 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CREATE OBJECT t800.
                  t800->load( ).
                  APPEND |SingleFile| TO t800->items.
                  t800->save( ).
                  t800->load( ).
                  APPEND |Quickfix| TO t800->items.
                  t800->save( ).
                  t796 = t800.
                  DATA t808 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t808.
                  DATA(t812) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t812->has = abap_true.
                  t812->value = |EC CI_SUBRC|.
                  t808 = t812.
                  DATA t814 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t814.
                  DATA(t818) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t818->has = abap_true.
                  t818->value = |##SUBRC_OK|.
                  t814 = t818.
                  DATA t820 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t820.
                  DATA t822 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t822.
                  t783 = NEW zcl_lnt_irule_metadata( i_key = |check_subrc| i_title = |Check sy-subrc| i_short_description = |Check sy-subrc| i_bad_example = t820 i_good_example = t822 i_extended_information = t790 i_tags = t796 i_pragma = t814 i_pseudo_comment = t808 ).
                  CREATE OBJECT t783->zlnt_view_ownkeys_b0e8086400eb.
                  t783->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t824 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t824.
                  t783->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t824 ).
                  DATA t825 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t825.
                  IF t783->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t783->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t825 ).
                  ENDIF.
                  DATA t826 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t826.
                  IF t783->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t783->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t826 ).
                  ENDIF.
                  DATA t827 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t827.
                  IF t783->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t783->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t827 ).
                  ENDIF.
                  DATA t828 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t828.
                  IF t783->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t783->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t828 ).
                  ENDIF.
                  DATA t829 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t829.
                  IF t783->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t783->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t829 ).
                  ENDIF.
                  DATA t830 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t830.
                  IF t783->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t783->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t830 ).
                  ENDIF.
                  CREATE OBJECT t783->zlnt_json_ownkeys_70e5fd461788.
                  t783->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t832 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t832.
                  t783->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t832 ).
                  DATA t834 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t834.
                  IF t783->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t783->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t834 ).
                  ENDIF.
                  DATA t836 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t836.
                  IF t783->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t783->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t836 ).
                  ENDIF.
                  DATA t838 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t838.
                  IF t783->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t783->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t838 ).
                  ENDIF.
                  DATA t840 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t840.
                  IF t783->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t783->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t840 ).
                  ENDIF.
                  DATA t842 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t842.
                  IF t783->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t783->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pseudoComment| p1 = t842 ).
                  ENDIF.
                  DATA t844 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t844.
                  IF t783->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t783->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pragma| p1 = t844 ).
                  ENDIF.
                  t782 = t783->key.
                  DATA t845 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  t845 = me->conf->zlnt_view_read_sr_15c06369f827( ).
                  DATA t847 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t847.
                  DATA t851 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CREATE OBJECT t851.
                  t851->load( ).
                  APPEND t758 TO t851->items.
                  t851->save( ).
                  t778 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t20 i_message_26cb = t10 i_key = t782 i_severity = t845 i_fix = t847 i_alternative_fixes = t851 ).
                  t2->load( ).
                  APPEND t778 TO t2->items.
                  t2->save( ).
                ELSE.
                  DATA(t857) = VALUE abap_bool( ).
                  DATA(t858) = VALUE abap_bool( ).
                  DATA t859 TYPE abap_bool.
                  DATA t860 TYPE abap_bool.
                  t860 = xsdbool( t12->zlnt_view_read_sr_309ef80029f2( ) = abap_true ).
                  t859 = t860.
                  IF t860 = abap_true.
                    DATA t865 TYPE REF TO zif_lnt_statement.
                    t865 = t20->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
                    t859 = xsdbool( t865 IS BOUND AND t865 IS INSTANCE OF zcl_lnt_st_insert_database ).
                  ENDIF.
                  t858 = t859.
                  IF t859 = abap_true.
                    DATA t868 TYPE abap_bool.
                    t868 = me->is_checked( i_index = t14 i_statements = t4 ).
                    t858 = xsdbool( t868 = abap_false ).
                  ENDIF.
                  t857 = t858.
                  IF t858 = abap_true.
                    DATA t873 TYPE abap_bool.
                    t873 = me->checks_dbcnt( i_index = t14 i_statements = t4 ).
                    t857 = xsdbool( t873 = abap_false ).
                  ENDIF.
                  IF t857 = abap_true.
                    DATA t883 TYPE REF TO zcl_lnt_fix.
                    DATA t889 TYPE REF TO zcl_lnt_position.
                    t889 = t20->get_last_token( )->start.
                    t883 = NEW zcl_lnt_fix( i_description = |Add ##SUBRC_OK| i_edit = zcl_lnt_edit_helper=>insert_at( i_file = t1 i_pos = t889 i_text = | ##SUBRC_OK| ) ).
                    CREATE OBJECT t883->zlnt_view_ownkeys_b0e8086400eb.
                    t883->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t896 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t896.
                    t883->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t896 ).
                    DATA t897 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t897.
                    IF t883->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t883->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edit` p1 = t897 ).
                    ENDIF.
                    CREATE OBJECT t883->zlnt_json_ownkeys_70e5fd461788.
                    t883->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t899 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t899.
                    t883->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t899 ).
                    DATA t901 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t901.
                    IF t883->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t883->zlnt_json_ownkeys_70e5fd461788->put( p0 = |edit| p1 = t901 ).
                    ENDIF.
                    DATA t903 TYPE REF TO zcl_lnt_issue.
                    CLEAR t903.
                    DATA(t907) = VALUE string( ).
                    DATA t908 TYPE REF TO zcl_lnt_irule_metadata.
                    DATA t915 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t915.
                    DATA(t918) = |Pseudo comment "#EC CI_SUBRC can be added to suppress findin|.
                    t918 = t918 && |gs\n\nIf sy-dbcnt is checked after database statements, it is |.
                    t918 = t918 && |considered okay.\n\n"SELECT SINGLE @abap_true FROM " is consid|.
                    t918 = t918 && |ered as an existence check, also "SELECT COUNT( * )" is cons|.
                    t918 = t918 && |idered okay\n\nIf IS ASSIGNED is checked after assigning, it i|.
                    t918 = t918 && |s considered okay.\n\nFIND statement with MATCH COUNT is consi|.
                    t918 = t918 && |dered okay if subrc is not checked|.
                    DATA(t919) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t919->has = abap_true.
                    t919->value = t918.
                    t915 = t919.
                    DATA t921 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                    CLEAR t921.
                    DATA t925 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                    CREATE OBJECT t925.
                    t925->load( ).
                    APPEND |SingleFile| TO t925->items.
                    t925->save( ).
                    t925->load( ).
                    APPEND |Quickfix| TO t925->items.
                    t925->save( ).
                    t921 = t925.
                    DATA t933 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t933.
                    DATA(t937) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t937->has = abap_true.
                    t937->value = |EC CI_SUBRC|.
                    t933 = t937.
                    DATA t939 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t939.
                    DATA(t943) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t943->has = abap_true.
                    t943->value = |##SUBRC_OK|.
                    t939 = t943.
                    DATA t945 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t945.
                    DATA t947 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t947.
                    t908 = NEW zcl_lnt_irule_metadata( i_key = |check_subrc| i_title = |Check sy-subrc| i_short_description = |Check sy-subrc| i_bad_example = t945 i_good_example = t947 i_extended_information = t915 i_tags = t921 i_pragma = t939 i_pseudo_comment = t933 ).
                    CREATE OBJECT t908->zlnt_view_ownkeys_b0e8086400eb.
                    t908->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t949 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t949.
                    t908->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t949 ).
                    DATA t950 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t950.
                    IF t908->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t908->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t950 ).
                    ENDIF.
                    DATA t951 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t951.
                    IF t908->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t908->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t951 ).
                    ENDIF.
                    DATA t952 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t952.
                    IF t908->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t908->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t952 ).
                    ENDIF.
                    DATA t953 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t953.
                    IF t908->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t908->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t953 ).
                    ENDIF.
                    DATA t954 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t954.
                    IF t908->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t908->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t954 ).
                    ENDIF.
                    DATA t955 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t955.
                    IF t908->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t908->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t955 ).
                    ENDIF.
                    CREATE OBJECT t908->zlnt_json_ownkeys_70e5fd461788.
                    t908->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t957 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t957.
                    t908->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t957 ).
                    DATA t959 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t959.
                    IF t908->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t908->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t959 ).
                    ENDIF.
                    DATA t961 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t961.
                    IF t908->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t908->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t961 ).
                    ENDIF.
                    DATA t963 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t963.
                    IF t908->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t908->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t963 ).
                    ENDIF.
                    DATA t965 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t965.
                    IF t908->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t908->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t965 ).
                    ENDIF.
                    DATA t967 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t967.
                    IF t908->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t908->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pseudoComment| p1 = t967 ).
                    ENDIF.
                    DATA t969 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t969.
                    IF t908->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t908->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pragma| p1 = t969 ).
                    ENDIF.
                    t907 = t908->key.
                    DATA t970 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    t970 = me->conf->zlnt_view_read_sr_15c06369f827( ).
                    DATA t972 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                    CLEAR t972.
                    DATA t976 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    CREATE OBJECT t976.
                    t976->load( ).
                    APPEND t883 TO t976->items.
                    t976->save( ).
                    t903 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t20 i_message_26cb = t10 i_key = t907 i_severity = t970 i_fix = t972 i_alternative_fixes = t976 ).
                    t2->load( ).
                    APPEND t903 TO t2->items.
                    t2->save( ).
                  ELSE.
                    DATA(t982) = VALUE abap_bool( ).
                    DATA(t983) = VALUE abap_bool( ).
                    DATA t984 TYPE abap_bool.
                    DATA t985 TYPE abap_bool.
                    t985 = xsdbool( t12->zlnt_view_read_sr_44b0dcf87623( ) = abap_true ).
                    t984 = t985.
                    IF t985 = abap_true.
                      DATA t990 TYPE REF TO zif_lnt_statement.
                      t990 = t20->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
                      t984 = xsdbool( t990 IS BOUND AND t990 IS INSTANCE OF zcl_lnt_st_modify_database ).
                    ENDIF.
                    t983 = t984.
                    IF t984 = abap_true.
                      DATA t993 TYPE abap_bool.
                      t993 = me->is_checked( i_index = t14 i_statements = t4 ).
                      t983 = xsdbool( t993 = abap_false ).
                    ENDIF.
                    t982 = t983.
                    IF t983 = abap_true.
                      DATA t998 TYPE abap_bool.
                      t998 = me->checks_dbcnt( i_index = t14 i_statements = t4 ).
                      t982 = xsdbool( t998 = abap_false ).
                    ENDIF.
                    IF t982 = abap_true.
                      DATA t1008 TYPE REF TO zcl_lnt_fix.
                      DATA t1014 TYPE REF TO zcl_lnt_position.
                      t1014 = t20->get_last_token( )->start.
                      t1008 = NEW zcl_lnt_fix( i_description = |Add ##SUBRC_OK| i_edit = zcl_lnt_edit_helper=>insert_at( i_file = t1 i_pos = t1014 i_text = | ##SUBRC_OK| ) ).
                      CREATE OBJECT t1008->zlnt_view_ownkeys_b0e8086400eb.
                      t1008->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t1021 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1021.
                      t1008->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t1021 ).
                      DATA t1022 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1022.
                      IF t1008->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t1008->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edit` p1 = t1022 ).
                      ENDIF.
                      CREATE OBJECT t1008->zlnt_json_ownkeys_70e5fd461788.
                      t1008->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t1024 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1024.
                      t1008->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t1024 ).
                      DATA t1026 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1026.
                      IF t1008->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t1008->zlnt_json_ownkeys_70e5fd461788->put( p0 = |edit| p1 = t1026 ).
                      ENDIF.
                      DATA t1028 TYPE REF TO zcl_lnt_issue.
                      CLEAR t1028.
                      DATA(t1032) = VALUE string( ).
                      DATA t1033 TYPE REF TO zcl_lnt_irule_metadata.
                      DATA t1040 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1040.
                      DATA(t1043) = |Pseudo comment "#EC CI_SUBRC can be added to suppress findin|.
                      t1043 = t1043 && |gs\n\nIf sy-dbcnt is checked after database statements, it is |.
                      t1043 = t1043 && |considered okay.\n\n"SELECT SINGLE @abap_true FROM " is consid|.
                      t1043 = t1043 && |ered as an existence check, also "SELECT COUNT( * )" is cons|.
                      t1043 = t1043 && |idered okay\n\nIf IS ASSIGNED is checked after assigning, it i|.
                      t1043 = t1043 && |s considered okay.\n\nFIND statement with MATCH COUNT is consi|.
                      t1043 = t1043 && |dered okay if subrc is not checked|.
                      DATA(t1044) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t1044->has = abap_true.
                      t1044->value = t1043.
                      t1040 = t1044.
                      DATA t1046 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                      CLEAR t1046.
                      DATA t1050 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                      CREATE OBJECT t1050.
                      t1050->load( ).
                      APPEND |SingleFile| TO t1050->items.
                      t1050->save( ).
                      t1050->load( ).
                      APPEND |Quickfix| TO t1050->items.
                      t1050->save( ).
                      t1046 = t1050.
                      DATA t1058 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1058.
                      DATA(t1062) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t1062->has = abap_true.
                      t1062->value = |EC CI_SUBRC|.
                      t1058 = t1062.
                      DATA t1064 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1064.
                      DATA(t1068) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t1068->has = abap_true.
                      t1068->value = |##SUBRC_OK|.
                      t1064 = t1068.
                      DATA t1070 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1070.
                      DATA t1072 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1072.
                      t1033 = NEW zcl_lnt_irule_metadata( i_key = |check_subrc| i_title = |Check sy-subrc| i_short_description = |Check sy-subrc| i_bad_example = t1070 i_good_example = t1072 i_extended_information = t1040 i_tags = t1046 i_pragma = t1064 i_pseudo_comment = t1058 ).
                      CREATE OBJECT t1033->zlnt_view_ownkeys_b0e8086400eb.
                      t1033->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t1074 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1074.
                      t1033->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1074 ).
                      DATA t1075 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1075.
                      IF t1033->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t1033->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t1075 ).
                      ENDIF.
                      DATA t1076 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1076.
                      IF t1033->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t1033->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t1076 ).
                      ENDIF.
                      DATA t1077 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1077.
                      IF t1033->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t1033->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t1077 ).
                      ENDIF.
                      DATA t1078 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1078.
                      IF t1033->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t1033->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t1078 ).
                      ENDIF.
                      DATA t1079 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1079.
                      IF t1033->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t1033->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t1079 ).
                      ENDIF.
                      DATA t1080 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1080.
                      IF t1033->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t1033->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t1080 ).
                      ENDIF.
                      CREATE OBJECT t1033->zlnt_json_ownkeys_70e5fd461788.
                      t1033->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t1082 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1082.
                      t1033->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t1082 ).
                      DATA t1084 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1084.
                      IF t1033->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t1033->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t1084 ).
                      ENDIF.
                      DATA t1086 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1086.
                      IF t1033->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t1033->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t1086 ).
                      ENDIF.
                      DATA t1088 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1088.
                      IF t1033->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t1033->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t1088 ).
                      ENDIF.
                      DATA t1090 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1090.
                      IF t1033->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t1033->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t1090 ).
                      ENDIF.
                      DATA t1092 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1092.
                      IF t1033->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t1033->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pseudoComment| p1 = t1092 ).
                      ENDIF.
                      DATA t1094 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1094.
                      IF t1033->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t1033->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pragma| p1 = t1094 ).
                      ENDIF.
                      t1032 = t1033->key.
                      DATA t1095 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      t1095 = me->conf->zlnt_view_read_sr_15c06369f827( ).
                      DATA t1097 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                      CLEAR t1097.
                      DATA t1101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                      CREATE OBJECT t1101.
                      t1101->load( ).
                      APPEND t1008 TO t1101->items.
                      t1101->save( ).
                      t1028 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t20 i_message_26cb = t10 i_key = t1032 i_severity = t1095 i_fix = t1097 i_alternative_fixes = t1101 ).
                      t2->load( ).
                      APPEND t1028 TO t2->items.
                      t2->save( ).
                    ELSE.
                      DATA(t1107) = VALUE abap_bool( ).
                      DATA t1108 TYPE abap_bool.
                      DATA t1109 TYPE abap_bool.
                      t1109 = xsdbool( t12->zlnt_view_read_sr_3ef8bc0e5713( ) = abap_true ).
                      t1108 = t1109.
                      IF t1109 = abap_true.
                        DATA t1114 TYPE REF TO zif_lnt_statement.
                        t1114 = t20->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
                        t1108 = xsdbool( t1114 IS BOUND AND t1114 IS INSTANCE OF zcl_lnt_st_read_table ).
                      ENDIF.
                      t1107 = t1108.
                      IF t1108 = abap_true.
                        DATA t1117 TYPE abap_bool.
                        t1117 = me->is_checked( i_index = t14 i_statements = t4 ).
                        t1107 = xsdbool( t1117 = abap_false ).
                      ENDIF.
                      IF t1107 = abap_true.
                        DATA t1127 TYPE REF TO zcl_lnt_fix.
                        DATA t1133 TYPE REF TO zcl_lnt_position.
                        t1133 = t20->get_last_token( )->start.
                        t1127 = NEW zcl_lnt_fix( i_description = |Add ##SUBRC_OK| i_edit = zcl_lnt_edit_helper=>insert_at( i_file = t1 i_pos = t1133 i_text = | ##SUBRC_OK| ) ).
                        CREATE OBJECT t1127->zlnt_view_ownkeys_b0e8086400eb.
                        t1127->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t1140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1140.
                        t1127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t1140 ).
                        DATA t1141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1141.
                        IF t1127->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                          t1127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edit` p1 = t1141 ).
                        ENDIF.
                        CREATE OBJECT t1127->zlnt_json_ownkeys_70e5fd461788.
                        t1127->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t1143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1143.
                        t1127->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t1143 ).
                        DATA t1145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1145.
                        IF t1127->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t1127->zlnt_json_ownkeys_70e5fd461788->put( p0 = |edit| p1 = t1145 ).
                        ENDIF.
                        DATA t1147 TYPE REF TO zcl_lnt_issue.
                        CLEAR t1147.
                        DATA(t1151) = VALUE string( ).
                        DATA t1152 TYPE REF TO zcl_lnt_irule_metadata.
                        DATA t1159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1159.
                        DATA(t1162) = |Pseudo comment "#EC CI_SUBRC can be added to suppress findin|.
                        t1162 = t1162 && |gs\n\nIf sy-dbcnt is checked after database statements, it is |.
                        t1162 = t1162 && |considered okay.\n\n"SELECT SINGLE @abap_true FROM " is consid|.
                        t1162 = t1162 && |ered as an existence check, also "SELECT COUNT( * )" is cons|.
                        t1162 = t1162 && |idered okay\n\nIf IS ASSIGNED is checked after assigning, it i|.
                        t1162 = t1162 && |s considered okay.\n\nFIND statement with MATCH COUNT is consi|.
                        t1162 = t1162 && |dered okay if subrc is not checked|.
                        DATA(t1163) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t1163->has = abap_true.
                        t1163->value = t1162.
                        t1159 = t1163.
                        DATA t1165 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                        CLEAR t1165.
                        DATA t1169 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                        CREATE OBJECT t1169.
                        t1169->load( ).
                        APPEND |SingleFile| TO t1169->items.
                        t1169->save( ).
                        t1169->load( ).
                        APPEND |Quickfix| TO t1169->items.
                        t1169->save( ).
                        t1165 = t1169.
                        DATA t1177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1177.
                        DATA(t1181) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t1181->has = abap_true.
                        t1181->value = |EC CI_SUBRC|.
                        t1177 = t1181.
                        DATA t1183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1183.
                        DATA(t1187) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t1187->has = abap_true.
                        t1187->value = |##SUBRC_OK|.
                        t1183 = t1187.
                        DATA t1189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1189.
                        DATA t1191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1191.
                        t1152 = NEW zcl_lnt_irule_metadata( i_key = |check_subrc| i_title = |Check sy-subrc| i_short_description = |Check sy-subrc| i_bad_example = t1189 i_good_example = t1191 i_extended_information = t1159 i_tags = t1165 i_pragma = t1183 i_pseudo_comment = t1177 ).
                        CREATE OBJECT t1152->zlnt_view_ownkeys_b0e8086400eb.
                        t1152->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t1193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1193.
                        t1152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1193 ).
                        DATA t1194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1194.
                        IF t1152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                          t1152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t1194 ).
                        ENDIF.
                        DATA t1195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1195.
                        IF t1152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                          t1152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t1195 ).
                        ENDIF.
                        DATA t1196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1196.
                        IF t1152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                          t1152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t1196 ).
                        ENDIF.
                        DATA t1197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1197.
                        IF t1152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                          t1152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t1197 ).
                        ENDIF.
                        DATA t1198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1198.
                        IF t1152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                          t1152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t1198 ).
                        ENDIF.
                        DATA t1199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1199.
                        IF t1152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                          t1152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t1199 ).
                        ENDIF.
                        CREATE OBJECT t1152->zlnt_json_ownkeys_70e5fd461788.
                        t1152->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t1201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1201.
                        t1152->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t1201 ).
                        DATA t1203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1203.
                        IF t1152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t1152->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t1203 ).
                        ENDIF.
                        DATA t1205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1205.
                        IF t1152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t1152->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t1205 ).
                        ENDIF.
                        DATA t1207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1207.
                        IF t1152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t1152->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t1207 ).
                        ENDIF.
                        DATA t1209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1209.
                        IF t1152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t1152->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t1209 ).
                        ENDIF.
                        DATA t1211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1211.
                        IF t1152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t1152->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pseudoComment| p1 = t1211 ).
                        ENDIF.
                        DATA t1213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1213.
                        IF t1152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t1152->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pragma| p1 = t1213 ).
                        ENDIF.
                        t1151 = t1152->key.
                        DATA t1214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        t1214 = me->conf->zlnt_view_read_sr_15c06369f827( ).
                        DATA t1216 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                        CLEAR t1216.
                        DATA t1220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                        CREATE OBJECT t1220.
                        t1220->load( ).
                        APPEND t1127 TO t1220->items.
                        t1220->save( ).
                        t1147 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t20 i_message_26cb = t10 i_key = t1151 i_severity = t1214 i_fix = t1216 i_alternative_fixes = t1220 ).
                        t2->load( ).
                        APPEND t1147 TO t2->items.
                        t2->save( ).
                      ELSE.
                        DATA(t1226) = VALUE abap_bool( ).
                        DATA(t1227) = VALUE abap_bool( ).
                        DATA t1228 TYPE abap_bool.
                        DATA t1229 TYPE abap_bool.
                        t1229 = xsdbool( t12->zlnt_view_read_sr_4786a0a75bed( ) = abap_true ).
                        t1228 = t1229.
                        IF t1229 = abap_true.
                          DATA t1234 TYPE REF TO zif_lnt_statement.
                          t1234 = t20->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
                          t1228 = xsdbool( t1234 IS BOUND AND t1234 IS INSTANCE OF zcl_lnt_st_assign ).
                        ENDIF.
                        t1227 = t1228.
                        IF t1228 = abap_true.
                          DATA t1237 TYPE abap_bool.
                          t1237 = me->is_simple_assign( i_statement = t20 ).
                          t1227 = xsdbool( t1237 = abap_false ).
                        ENDIF.
                        t1226 = t1227.
                        IF t1227 = abap_true.
                          DATA t1241 TYPE abap_bool.
                          t1241 = me->is_checked( i_index = t14 i_statements = t4 ).
                          t1226 = xsdbool( t1241 = abap_false ).
                        ENDIF.
                        IF t1226 = abap_true.
                          DATA t1251 TYPE REF TO zcl_lnt_fix.
                          DATA t1257 TYPE REF TO zcl_lnt_position.
                          t1257 = t20->get_last_token( )->start.
                          t1251 = NEW zcl_lnt_fix( i_description = |Add ##SUBRC_OK| i_edit = zcl_lnt_edit_helper=>insert_at( i_file = t1 i_pos = t1257 i_text = | ##SUBRC_OK| ) ).
                          CREATE OBJECT t1251->zlnt_view_ownkeys_b0e8086400eb.
                          t1251->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                          DATA t1264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1264.
                          t1251->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t1264 ).
                          DATA t1265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1265.
                          IF t1251->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                            t1251->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edit` p1 = t1265 ).
                          ENDIF.
                          CREATE OBJECT t1251->zlnt_json_ownkeys_70e5fd461788.
                          t1251->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                          DATA t1267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1267.
                          t1251->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t1267 ).
                          DATA t1269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1269.
                          IF t1251->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                            t1251->zlnt_json_ownkeys_70e5fd461788->put( p0 = |edit| p1 = t1269 ).
                          ENDIF.
                          DATA t1271 TYPE REF TO zcl_lnt_issue.
                          CLEAR t1271.
                          DATA(t1275) = VALUE string( ).
                          DATA t1276 TYPE REF TO zcl_lnt_irule_metadata.
                          DATA t1283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1283.
                          DATA(t1286) = |Pseudo comment "#EC CI_SUBRC can be added to suppress findin|.
                          t1286 = t1286 && |gs\n\nIf sy-dbcnt is checked after database statements, it is |.
                          t1286 = t1286 && |considered okay.\n\n"SELECT SINGLE @abap_true FROM " is consid|.
                          t1286 = t1286 && |ered as an existence check, also "SELECT COUNT( * )" is cons|.
                          t1286 = t1286 && |idered okay\n\nIf IS ASSIGNED is checked after assigning, it i|.
                          t1286 = t1286 && |s considered okay.\n\nFIND statement with MATCH COUNT is consi|.
                          t1286 = t1286 && |dered okay if subrc is not checked|.
                          DATA(t1287) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t1287->has = abap_true.
                          t1287->value = t1286.
                          t1283 = t1287.
                          DATA t1289 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                          CLEAR t1289.
                          DATA t1293 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                          CREATE OBJECT t1293.
                          t1293->load( ).
                          APPEND |SingleFile| TO t1293->items.
                          t1293->save( ).
                          t1293->load( ).
                          APPEND |Quickfix| TO t1293->items.
                          t1293->save( ).
                          t1289 = t1293.
                          DATA t1301 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1301.
                          DATA(t1305) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t1305->has = abap_true.
                          t1305->value = |EC CI_SUBRC|.
                          t1301 = t1305.
                          DATA t1307 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1307.
                          DATA(t1311) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t1311->has = abap_true.
                          t1311->value = |##SUBRC_OK|.
                          t1307 = t1311.
                          DATA t1313 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1313.
                          DATA t1315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1315.
                          t1276 = NEW zcl_lnt_irule_metadata( i_key = |check_subrc| i_title = |Check sy-subrc| i_short_description = |Check sy-subrc| i_bad_example = t1313 i_good_example = t1315 i_extended_information = t1283 i_tags = t1289 i_pragma = t1307 i_pseudo_comment = t1301 ).
                          CREATE OBJECT t1276->zlnt_view_ownkeys_b0e8086400eb.
                          t1276->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                          DATA t1317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1317.
                          t1276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1317 ).
                          DATA t1318 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1318.
                          IF t1276->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                            t1276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t1318 ).
                          ENDIF.
                          DATA t1319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1319.
                          IF t1276->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                            t1276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t1319 ).
                          ENDIF.
                          DATA t1320 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1320.
                          IF t1276->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                            t1276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t1320 ).
                          ENDIF.
                          DATA t1321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1321.
                          IF t1276->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                            t1276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t1321 ).
                          ENDIF.
                          DATA t1322 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1322.
                          IF t1276->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                            t1276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t1322 ).
                          ENDIF.
                          DATA t1323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1323.
                          IF t1276->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                            t1276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t1323 ).
                          ENDIF.
                          CREATE OBJECT t1276->zlnt_json_ownkeys_70e5fd461788.
                          t1276->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                          DATA t1325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1325.
                          t1276->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t1325 ).
                          DATA t1327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1327.
                          IF t1276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                            t1276->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t1327 ).
                          ENDIF.
                          DATA t1329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1329.
                          IF t1276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                            t1276->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t1329 ).
                          ENDIF.
                          DATA t1331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1331.
                          IF t1276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                            t1276->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t1331 ).
                          ENDIF.
                          DATA t1333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1333.
                          IF t1276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                            t1276->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t1333 ).
                          ENDIF.
                          DATA t1335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1335.
                          IF t1276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                            t1276->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pseudoComment| p1 = t1335 ).
                          ENDIF.
                          DATA t1337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1337.
                          IF t1276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                            t1276->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pragma| p1 = t1337 ).
                          ENDIF.
                          t1275 = t1276->key.
                          DATA t1338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          t1338 = me->conf->zlnt_view_read_sr_15c06369f827( ).
                          DATA t1340 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                          CLEAR t1340.
                          DATA t1344 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                          CREATE OBJECT t1344.
                          t1344->load( ).
                          APPEND t1251 TO t1344->items.
                          t1344->save( ).
                          t1271 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t20 i_message_26cb = t10 i_key = t1275 i_severity = t1338 i_fix = t1340 i_alternative_fixes = t1344 ).
                          t2->load( ).
                          APPEND t1271 TO t2->items.
                          t2->save( ).
                        ELSE.
                          DATA(t1350) = VALUE abap_bool( ).
                          DATA(t1351) = VALUE abap_bool( ).
                          DATA t1352 TYPE abap_bool.
                          DATA t1353 TYPE abap_bool.
                          t1353 = xsdbool( t12->zlnt_view_read_sr_2950c67596a4( ) = abap_true ).
                          t1352 = t1353.
                          IF t1353 = abap_true.
                            DATA t1358 TYPE REF TO zif_lnt_statement.
                            t1358 = t20->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
                            t1352 = xsdbool( t1358 IS BOUND AND t1358 IS INSTANCE OF zcl_lnt_st_find ).
                          ENDIF.
                          t1351 = t1352.
                          IF t1352 = abap_true.
                            DATA(t1366) = VALUE i( ).
                            DATA t1367 TYPE string.
                            DATA t1368 TYPE string.
                            t1368 = t20->concat_tokens( ).
                            DATA(t1370) = strlen( t1368 ).
                            t1367 = t1368.
                            IF t1367 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                              TRANSLATE t1367 TO UPPER CASE.
                            ELSE.
                              t1367 = zlnt_runtime_uppe_91169605024d=>full( t1367 ).
                            ENDIF.
                            DATA(t1371) = | MATCH COUNT |.
                            DATA(t1372) = strlen( t1367 ).
                            IF t1371 IS INITIAL.
                              t1366 = 0.
                            ELSE.
                              FIND t1371 IN t1367 MATCH OFFSET t1366.
                              IF sy-subrc <> 0.
                                t1366 = -1.
                              ENDIF.
                            ENDIF.
                            t1351 = xsdbool( xsdbool( xsdbool( t1366 >= 0 ) = abap_true ) = abap_false ).
                          ENDIF.
                          t1350 = t1351.
                          IF t1351 = abap_true.
                            DATA t1377 TYPE abap_bool.
                            t1377 = me->is_checked( i_index = t14 i_statements = t4 ).
                            t1350 = xsdbool( t1377 = abap_false ).
                          ENDIF.
                          IF t1350 = abap_true.
                            DATA t1387 TYPE REF TO zcl_lnt_fix.
                            DATA t1393 TYPE REF TO zcl_lnt_position.
                            t1393 = t20->get_last_token( )->start.
                            t1387 = NEW zcl_lnt_fix( i_description = |Add ##SUBRC_OK| i_edit = zcl_lnt_edit_helper=>insert_at( i_file = t1 i_pos = t1393 i_text = | ##SUBRC_OK| ) ).
                            CREATE OBJECT t1387->zlnt_view_ownkeys_b0e8086400eb.
                            t1387->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                            DATA t1400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1400.
                            t1387->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t1400 ).
                            DATA t1401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1401.
                            IF t1387->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                              t1387->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edit` p1 = t1401 ).
                            ENDIF.
                            CREATE OBJECT t1387->zlnt_json_ownkeys_70e5fd461788.
                            t1387->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                            DATA t1403 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1403.
                            t1387->zlnt_json_ownkeys_70e5fd461788->put( p0 = |description| p1 = t1403 ).
                            DATA t1405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1405.
                            IF t1387->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                              t1387->zlnt_json_ownkeys_70e5fd461788->put( p0 = |edit| p1 = t1405 ).
                            ENDIF.
                            DATA t1407 TYPE REF TO zcl_lnt_issue.
                            CLEAR t1407.
                            DATA(t1411) = VALUE string( ).
                            DATA t1412 TYPE REF TO zcl_lnt_irule_metadata.
                            DATA t1419 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1419.
                            DATA(t1422) = |Pseudo comment "#EC CI_SUBRC can be added to suppress findin|.
                            t1422 = t1422 && |gs\n\nIf sy-dbcnt is checked after database statements, it is |.
                            t1422 = t1422 && |considered okay.\n\n"SELECT SINGLE @abap_true FROM " is consid|.
                            t1422 = t1422 && |ered as an existence check, also "SELECT COUNT( * )" is cons|.
                            t1422 = t1422 && |idered okay\n\nIf IS ASSIGNED is checked after assigning, it i|.
                            t1422 = t1422 && |s considered okay.\n\nFIND statement with MATCH COUNT is consi|.
                            t1422 = t1422 && |dered okay if subrc is not checked|.
                            DATA(t1423) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                            t1423->has = abap_true.
                            t1423->value = t1422.
                            t1419 = t1423.
                            DATA t1425 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                            CLEAR t1425.
                            DATA t1429 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                            CREATE OBJECT t1429.
                            t1429->load( ).
                            APPEND |SingleFile| TO t1429->items.
                            t1429->save( ).
                            t1429->load( ).
                            APPEND |Quickfix| TO t1429->items.
                            t1429->save( ).
                            t1425 = t1429.
                            DATA t1437 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1437.
                            DATA(t1441) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                            t1441->has = abap_true.
                            t1441->value = |EC CI_SUBRC|.
                            t1437 = t1441.
                            DATA t1443 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1443.
                            DATA(t1447) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                            t1447->has = abap_true.
                            t1447->value = |##SUBRC_OK|.
                            t1443 = t1447.
                            DATA t1449 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1449.
                            DATA t1451 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1451.
                            t1412 = NEW zcl_lnt_irule_metadata( i_key = |check_subrc| i_title = |Check sy-subrc| i_short_description = |Check sy-subrc| i_bad_example = t1449 i_good_example = t1451 i_extended_information = t1419 i_tags = t1425 i_pragma = t1443
                            i_pseudo_comment = t1437 ).
                            CREATE OBJECT t1412->zlnt_view_ownkeys_b0e8086400eb.
                            t1412->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                            DATA t1453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1453.
                            t1412->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1453 ).
                            DATA t1454 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1454.
                            IF t1412->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                              t1412->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t1454 ).
                            ENDIF.
                            DATA t1455 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1455.
                            IF t1412->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                              t1412->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t1455 ).
                            ENDIF.
                            DATA t1456 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1456.
                            IF t1412->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                              t1412->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t1456 ).
                            ENDIF.
                            DATA t1457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1457.
                            IF t1412->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                              t1412->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t1457 ).
                            ENDIF.
                            DATA t1458 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1458.
                            IF t1412->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                              t1412->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t1458 ).
                            ENDIF.
                            DATA t1459 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1459.
                            IF t1412->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                              t1412->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t1459 ).
                            ENDIF.
                            CREATE OBJECT t1412->zlnt_json_ownkeys_70e5fd461788.
                            t1412->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                            DATA t1461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1461.
                            t1412->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t1461 ).
                            DATA t1463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1463.
                            IF t1412->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                              t1412->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t1463 ).
                            ENDIF.
                            DATA t1465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1465.
                            IF t1412->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                              t1412->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t1465 ).
                            ENDIF.
                            DATA t1467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1467.
                            IF t1412->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                              t1412->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t1467 ).
                            ENDIF.
                            DATA t1469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1469.
                            IF t1412->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                              t1412->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t1469 ).
                            ENDIF.
                            DATA t1471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1471.
                            IF t1412->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                              t1412->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pseudoComment| p1 = t1471 ).
                            ENDIF.
                            DATA t1473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1473.
                            IF t1412->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                              t1412->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pragma| p1 = t1473 ).
                            ENDIF.
                            t1411 = t1412->key.
                            DATA t1474 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            t1474 = me->conf->zlnt_view_read_sr_15c06369f827( ).
                            DATA t1476 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                            CLEAR t1476.
                            DATA t1480 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                            CREATE OBJECT t1480.
                            t1480->load( ).
                            APPEND t1387 TO t1480->items.
                            t1480->save( ).
                            t1407 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t20 i_message_26cb = t10 i_key = t1411 i_severity = t1474 i_fix = t1476 i_alternative_fixes = t1480 ).
                            t2->load( ).
                            APPEND t1407 TO t2->items.
                            t2->save( ).
                          ENDIF.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t1488) = 1.
      t14 = t14 + t1488.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD is_simple_assign.
    DATA(t1) = i_statement.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    t6 = t1.
    t4 ?= t6->children.
    t4->load( ).
    IF xsdbool( lines( t4->items ) = 5 ) = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_expression_node.
      DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d98_aa488fc184edca.
      t11 = t1->find_direct_expression( i_type_9913 = t14 ).
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = VALUE abap_bool( ).
      DATA t17 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t20 TYPE REF TO zcl_lnt_expression_node.
      t20 = t11.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF xsdbool( t20 IS INITIAL ) = abap_true.
      ELSE.
        DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t28 TYPE REF TO zcl_lnt_abstract_node.
        t28 = t20.
        t26 ?= t28->children.
        t22 = t26.
      ENDIF.
      t18 = t22.
      DATA t33 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      IF xsdbool( t18 IS INITIAL ) = abap_true.
      ELSE.
        DATA t37 TYPE f.
        DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t39 = t18.
        t39->load( ).
        t37 = lines( t39->items ).
        DATA(t41) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t41->has = abap_true.
        t41->value = t37.
        t33 = t41.
      ENDIF.
      t17 = t33.
      DATA t42 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t45) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t45->has = abap_true.
      t45->value = CONV f( 1 ).
      t42 = t45.
      DATA(t47) = VALUE abap_bool( ).
      DATA(t48) = VALUE abap_bool( ).
      IF t17 IS BOUND.
        t47 = t17->has.
      ENDIF.
      IF t42 IS BOUND.
        t48 = t42->has.
      ENDIF.
      IF t47 = t48.
        IF t47 = abap_false.
          t16 = abap_true.
        ELSE.
          IF t17->number_special <> 0 OR t42->number_special <> 0.
            t16 = xsdbool( t17->number_special = t42->number_special AND t17->number_special <> 1 ).
          ELSE.
            t16 = xsdbool( t17->value = t42->value ).
          ENDIF.
        ENDIF.
      ENDIF.
      t15 = t16.
      IF t16 = abap_true.
        DATA t51 TYPE REF TO zcl_lnt_expression_node.
        DATA t52 TYPE REF TO zcl_lnt_expression_node.
        t52 = t11.
        DATA(t54) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
        t51 = t52->find_direct_expression( i_type_9913 = t54 ).
        DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t15 = xsdbool( xsdbool( t51 IS INITIAL ) = abap_false ).
      ENDIF.
      IF t15 = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
    ENDIF.
    result = abap_false.

  ENDMETHOD.

  METHOD is_exempted_find.
    DATA(t4) = VALUE i( ).
    DATA t5 TYPE string.
    DATA t6 TYPE string.
    t6 = i_s->concat_tokens( ).
    DATA(t8) = strlen( t6 ).
    t5 = t6.
    IF t5 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t5 TO UPPER CASE.
    ELSE.
      t5 = zlnt_runtime_uppe_91169605024d=>full( t5 ).
    ENDIF.
    DATA(t9) = | MATCH COUNT |.
    DATA(t10) = strlen( t5 ).
    IF t9 IS INITIAL.
      t4 = 0.
    ELSE.
      FIND t9 IN t5 MATCH OFFSET t4.
      IF sy-subrc <> 0.
        t4 = -1.
      ENDIF.
    ENDIF.
    result = xsdbool( xsdbool( t4 >= 0 ) = abap_true ).

  ENDMETHOD.

  METHOD checks_dbcnt.
    DATA(t2) = i_statements.
    DATA t3 TYPE i.
    DATA(t6) = 1.
    t3 = i_index + t6.
    DO.
      t2->load( ).
      IF xsdbool( t3 < lines( t2->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA t11 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t12.
      DATA(t14) = t3.
      t14 = t14 + 1.
      DATA t15 TYPE REF TO object.
      CLEAR t15.
      t2->load( ).
      CLEAR t15.
      READ TABLE t2->items INDEX t14 INTO t15.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      CLEAR t12.
      IF t15 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t16 ?= t15.
        DATA t17 TYPE REF TO object.
        t17 = t16->as_ref( ).
        t12 ?= t17.
      ELSE.
        t12 ?= t15.
      ENDIF.
      t11 = t12.
      DATA(t18) = VALUE string( ).
      DATA t19 TYPE string.
      DATA t20 TYPE string.
      t20 = t11->concat_tokens( ).
      DATA(t22) = strlen( t20 ).
      t19 = t20.
      IF t19 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t19 TO UPPER CASE.
      ELSE.
        t19 = zlnt_runtime_uppe_91169605024d=>full( t19 ).
      ENDIF.
      t18 = t19.
      DATA t24 TYPE REF TO zif_lnt_statement.
      t24 = t11->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      IF xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_st_comment ) = abap_true.
        DATA(t28) = 1.
        t3 = t3 + t28.
        CONTINUE.
      ENDIF.
      DATA t29 TYPE abap_bool.
      DATA t30 TYPE abap_bool.
      DATA t31 TYPE REF TO zif_lnt_statement.
      t31 = t11->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t30 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_end_if ).
      t29 = t30.
      IF t30 = abap_false.
        DATA t34 TYPE REF TO zif_lnt_statement.
        t34 = t11->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t29 = xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_end_test_seam ).
      ENDIF.
      IF t29 = abap_true.
        DATA(t38) = 1.
        t3 = t3 + t38.
        CONTINUE.
      ENDIF.
      DATA(t40) = VALUE i( ).
      DATA(t42) = |SY-DBCNT|.
      DATA(t43) = strlen( t18 ).
      IF t42 IS INITIAL.
        t40 = 0.
      ELSE.
        FIND t42 IN t18 MATCH OFFSET t40.
        IF sy-subrc <> 0.
          t40 = -1.
        ENDIF.
      ENDIF.
      result = xsdbool( t40 >= 0 ).
      RETURN.


      DATA(t47) = 1.
      t3 = t3 + t47.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD is_checked.
    DATA(t1) = i_index.
    DATA(t2) = i_statements.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zif_lnt_statement.
    DATA t10 TYPE REF TO zcl_lnt_statement_node.
    DATA(t12) = t1.
    t12 = t12 + 1.
    DATA t13 TYPE REF TO object.
    t2->load( ).
    READ TABLE t2->items INDEX t12 INTO t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t14 ?= t13.
      DATA t15 TYPE REF TO object.
      t15 = t14->as_ref( ).
      t10 ?= t15.
    ELSE.
      t10 ?= t13.
    ENDIF.
    t9 = t10->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    t8 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_st_assign ).
    t7 = t8.
    IF t8 = abap_false.
      DATA t17 TYPE REF TO zif_lnt_statement.
      DATA t18 TYPE REF TO zcl_lnt_statement_node.
      DATA(t20) = t1.
      t20 = t20 + 1.
      DATA t21 TYPE REF TO object.
      t2->load( ).
      READ TABLE t2->items INDEX t20 INTO t21.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t21 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t22 ?= t21.
        DATA t23 TYPE REF TO object.
        t23 = t22->as_ref( ).
        t18 ?= t23.
      ELSE.
        t18 ?= t21.
      ENDIF.
      t17 = t18->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t7 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_st_read_table ).
    ENDIF.
    IF t7 = abap_true.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t26 TYPE REF TO zcl_lnt_abstract_token.
      DATA t28 TYPE REF TO zcl_lnt_expression_node.
      DATA t30 TYPE REF TO zcl_lnt_expression_node.
      DATA t32 TYPE REF TO zcl_lnt_statement_node.
      DATA(t34) = t1.
      t34 = t34 + 1.
      DATA t35 TYPE REF TO object.
      t2->load( ).
      READ TABLE t2->items INDEX t34 INTO t35.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t35 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t36 ?= t35.
        DATA t37 TYPE REF TO object.
        t37 = t36->as_ref( ).
        t32 ?= t37.
      ELSE.
        t32 ?= t35.
      ENDIF.
      DATA(t38) = zlnt_runtime_desc_78196487750d=>zlnt_member_d194_b8c1a7611ef6.
      t30 = t32->find_first_expression( i_type_9913 = t38 ).
      DATA t39 TYPE REF TO zcl_lnt_expression_node.
      IF xsdbool( t30 IS INITIAL ) = abap_true.
      ELSE.
        DATA t44 TYPE REF TO zcl_lnt_expression_node.
        t44 = t30.
        DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d172_090204a1a05d.
        t39 = t44->find_first_expression( i_type_9913 = t46 ).
      ENDIF.
      t28 = t39.
      DATA t47 TYPE REF TO zcl_lnt_abstract_token.
      IF xsdbool( t28 IS INITIAL ) = abap_true.
      ELSE.
        t47 = t28->get_first_token( ).
      ENDIF.
      t26 = t47.
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t26 IS INITIAL ) = abap_true.
      ELSE.
        DATA t62 TYPE string.
        t62 = t26->str.
        DATA(t64) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t64->has = abap_true.
        t64->value = t62.
        t54 = t64.
      ENDIF.
      t24 = t54.
      DATA(t67) = VALUE string( ).
      DATA(t68) = VALUE string( ).
      DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t71 = t24.
      DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t74) = VALUE abap_bool( ).
      IF t71 IS INITIAL.
        t74 = abap_true.
      ELSEIF t71->has = abap_false.
        t74 = abap_true.
      ENDIF.
      IF t74 = abap_true.
      ELSE.
        DATA t77 TYPE string.
        DATA t78 TYPE string.
        t78 = t71->value.
        DATA(t80) = strlen( t78 ).
        t77 = t78.
        IF t77 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t77 TO UPPER CASE.
        ELSE.
          t77 = zlnt_runtime_uppe_91169605024d=>full( t77 ).
        ENDIF.
        DATA(t81) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t81->has = abap_true.
        t81->value = t77.
        t73 = t81.
      ENDIF.
      t69 = t73.
      DATA(t82) = VALUE string( ).
      DATA(t83) = VALUE abap_bool( ).
      IF t69 IS INITIAL.
        t83 = abap_true.
      ELSEIF t69->has = abap_false.
        t83 = abap_true.
      ENDIF.
      IF t83 = abap_true.
        t82 = |undefined|.
      ELSE.
        t82 = t69->value.
      ENDIF.
      t68 = t82.
      DATA(t89) = strlen( t68 ).
      t67 = |{ t68 }{ | IS ASSIGNED| }|.
      DATA(t90) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t90->has = abap_true.
      t90->value = t67.
      t3 = t90.
      DATA(t94) = VALUE string( ).
      DATA(t95) = VALUE string( ).
      DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t98 = t24.
      DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t101) = VALUE abap_bool( ).
      IF t98 IS INITIAL.
        t101 = abap_true.
      ELSEIF t98->has = abap_false.
        t101 = abap_true.
      ENDIF.
      IF t101 = abap_true.
      ELSE.
        DATA t104 TYPE string.
        DATA t105 TYPE string.
        t105 = t98->value.
        DATA(t107) = strlen( t105 ).
        t104 = t105.
        IF t104 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t104 TO UPPER CASE.
        ELSE.
          t104 = zlnt_runtime_uppe_91169605024d=>full( t104 ).
        ENDIF.
        DATA(t108) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t108->has = abap_true.
        t108->value = t104.
        t100 = t108.
      ENDIF.
      t96 = t100.
      DATA(t109) = VALUE string( ).
      DATA(t110) = VALUE abap_bool( ).
      IF t96 IS INITIAL.
        t110 = abap_true.
      ELSEIF t96->has = abap_false.
        t110 = abap_true.
      ENDIF.
      IF t110 = abap_true.
        t109 = |undefined|.
      ELSE.
        t109 = t96->value.
      ENDIF.
      t95 = t109.
      DATA(t116) = strlen( t95 ).
      t94 = |{ t95 }{ | IS NOT ASSIGNED| }|.
      DATA(t117) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t117->has = abap_true.
      t117->value = t94.
      t5 = t117.
    ENDIF.
    DATA t119 TYPE i.
    DATA(t122) = 1.
    t119 = t1 + t122.
    DO.
      t2->load( ).
      IF xsdbool( t119 < lines( t2->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA t127 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t127.
      DATA t128 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t128.
      DATA(t130) = t119.
      t130 = t130 + 1.
      DATA t131 TYPE REF TO object.
      CLEAR t131.
      t2->load( ).
      CLEAR t131.
      READ TABLE t2->items INDEX t130 INTO t131.
      DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t132.
      CLEAR t128.
      IF t131 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t132 ?= t131.
        DATA t133 TYPE REF TO object.
        t133 = t132->as_ref( ).
        t128 ?= t133.
      ELSE.
        t128 ?= t131.
      ENDIF.
      t127 = t128.
      DATA(t134) = VALUE string( ).
      DATA t135 TYPE string.
      DATA t136 TYPE string.
      t136 = t127->concat_tokens( ).
      DATA(t138) = strlen( t136 ).
      t135 = t136.
      IF t135 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t135 TO UPPER CASE.
      ELSE.
        t135 = zlnt_runtime_uppe_91169605024d=>full( t135 ).
      ENDIF.
      t134 = t135.
      DATA t140 TYPE REF TO zif_lnt_statement.
      t140 = t127->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      IF xsdbool( t140 IS BOUND AND t140 IS INSTANCE OF zcl_lnt_st_comment ) = abap_true.
        DATA(t143) = VALUE i( ).
        DATA(t145) = VALUE string( ).
        DATA(t146) = ||.
        DATA(t147) = VALUE string( ).
        DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t148.
        DATA t150 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t157.
        DATA(t160) = |Pseudo comment "#EC CI_SUBRC can be added to suppress findin|.
        t160 = t160 && |gs\n\nIf sy-dbcnt is checked after database statements, it is |.
        t160 = t160 && |considered okay.\n\n"SELECT SINGLE @abap_true FROM " is consid|.
        t160 = t160 && |ered as an existence check, also "SELECT COUNT( * )" is cons|.
        t160 = t160 && |idered okay\n\nIf IS ASSIGNED is checked after assigning, it i|.
        t160 = t160 && |s considered okay.\n\nFIND statement with MATCH COUNT is consi|.
        t160 = t160 && |dered okay if subrc is not checked|.
        DATA(t161) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t161->has = abap_true.
        t161->value = t160.
        t157 = t161.
        DATA t163 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t163.
        DATA t167 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t167.
        t167->load( ).
        APPEND |SingleFile| TO t167->items.
        t167->save( ).
        t167->load( ).
        APPEND |Quickfix| TO t167->items.
        t167->save( ).
        t163 = t167.
        DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t175.
        DATA(t179) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t179->has = abap_true.
        t179->value = |EC CI_SUBRC|.
        t175 = t179.
        DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t181.
        DATA(t185) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t185->has = abap_true.
        t185->value = |##SUBRC_OK|.
        t181 = t185.
        DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t187.
        DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t189.
        t150 = NEW zcl_lnt_irule_metadata( i_key = |check_subrc| i_title = |Check sy-subrc| i_short_description = |Check sy-subrc| i_bad_example = t187 i_good_example = t189 i_extended_information = t157 i_tags = t163 i_pragma = t181 i_pseudo_comment = t175 ).
        CREATE OBJECT t150->zlnt_view_ownkeys_b0e8086400eb.
        t150->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t191.
        t150->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t191 ).
        DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t192.
        IF t150->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t150->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t192 ).
        ENDIF.
        DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t193.
        IF t150->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t150->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t193 ).
        ENDIF.
        DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t194.
        IF t150->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t150->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t194 ).
        ENDIF.
        DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t195.
        IF t150->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t150->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t195 ).
        ENDIF.
        DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t196.
        IF t150->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t150->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t196 ).
        ENDIF.
        DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t197.
        IF t150->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t150->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t197 ).
        ENDIF.
        CREATE OBJECT t150->zlnt_json_ownkeys_70e5fd461788.
        t150->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t199.
        t150->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t199 ).
        DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t201.
        IF t150->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t150->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t201 ).
        ENDIF.
        DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t203.
        IF t150->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t150->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t203 ).
        ENDIF.
        DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t205.
        IF t150->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t150->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t205 ).
        ENDIF.
        DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t207.
        IF t150->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t150->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t207 ).
        ENDIF.
        DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t209.
        IF t150->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t150->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pseudoComment| p1 = t209 ).
        ENDIF.
        DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t211.
        IF t150->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t150->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pragma| p1 = t211 ).
        ENDIF.
        t148 = t150->pseudo_comment.
        DATA(t212) = VALUE string( ).
        DATA(t213) = VALUE abap_bool( ).
        IF t148 IS INITIAL.
          t213 = abap_true.
        ELSEIF t148->has = abap_false.
          t213 = abap_true.
        ENDIF.
        IF t213 = abap_true.
          t212 = |undefined|.
        ELSE.
          t212 = t148->value.
        ENDIF.
        t147 = t212.
        DATA(t218) = strlen( t146 ).
        t145 = |{ t146 }{ t147 }|.
        DATA(t219) = strlen( t134 ).
        IF t145 IS INITIAL.
          t143 = 0.
        ELSE.
          FIND t145 IN t134 MATCH OFFSET t143.
          IF sy-subrc <> 0.
            t143 = -1.
          ENDIF.
        ENDIF.
        IF xsdbool( t143 >= 0 ) = abap_true.
          result = abap_true.
          RETURN.
        ENDIF.
      ELSE.
        DATA t222 TYPE abap_bool.
        DATA t223 TYPE abap_bool.
        DATA t224 TYPE REF TO zif_lnt_statement.
        t224 = t127->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t223 = xsdbool( t224 IS BOUND AND t224 IS INSTANCE OF zcl_lnt_end_if ).
        t222 = t223.
        IF t223 = abap_false.
          DATA t227 TYPE REF TO zif_lnt_statement.
          t227 = t127->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t222 = xsdbool( t227 IS BOUND AND t227 IS INSTANCE OF zcl_lnt_end_test_seam ).
        ENDIF.
        IF t222 = abap_true.
          DATA(t231) = 1.
          t119 = t119 + t231.
          CONTINUE.
        ELSE.
          DATA(t232) = VALUE abap_bool( ).
          DATA(t233) = VALUE abap_bool( ).
          IF t3 IS BOUND.
            IF t3->has = abap_true.
              t233 = xsdbool( strlen( t3->value ) > 0 ).
            ENDIF.
          ENDIF.
          t232 = t233.
          IF t233 = abap_true.
            DATA(t236) = VALUE i( ).
            DATA t238 TYPE string.
            t238 = t3->value.
            DATA(t240) = strlen( t134 ).
            IF t238 IS INITIAL.
              t236 = 0.
            ELSE.
              FIND t238 IN t134 MATCH OFFSET t236.
              IF sy-subrc <> 0.
                t236 = -1.
              ENDIF.
            ENDIF.
            t232 = xsdbool( t236 >= 0 ).
          ENDIF.
          IF t232 = abap_true.
            result = abap_true.
            RETURN.
          ENDIF.
          DATA(t243) = VALUE abap_bool( ).
          DATA(t244) = VALUE abap_bool( ).
          IF t5 IS BOUND.
            IF t5->has = abap_true.
              t244 = xsdbool( strlen( t5->value ) > 0 ).
            ENDIF.
          ENDIF.
          t243 = t244.
          IF t244 = abap_true.
            DATA(t247) = VALUE i( ).
            DATA t249 TYPE string.
            t249 = t5->value.
            DATA(t251) = strlen( t134 ).
            IF t249 IS INITIAL.
              t247 = 0.
            ELSE.
              FIND t249 IN t134 MATCH OFFSET t247.
              IF sy-subrc <> 0.
                t247 = -1.
              ENDIF.
            ENDIF.
            t243 = xsdbool( t247 >= 0 ).
          ENDIF.
          IF t243 = abap_true.
            result = abap_true.
            RETURN.
          ENDIF.
          DATA(t254) = VALUE abap_bool( ).
          DATA(t255) = VALUE abap_bool( ).
          DATA(t256) = VALUE i( ).
          DATA(t258) = | SY-SUBRC|.
          DATA(t259) = strlen( t134 ).
          IF t258 IS INITIAL.
            t256 = 0.
          ELSE.
            FIND t258 IN t134 MATCH OFFSET t256.
            IF sy-subrc <> 0.
              t256 = -1.
            ENDIF.
          ENDIF.
          t255 = xsdbool( t256 >= 0 ).
          t254 = t255.
          IF t255 = abap_false.
            DATA(t262) = VALUE i( ).
            DATA(t264) = |CL_ABAP_UNIT_ASSERT=>ASSERT_SUBRC|.
            DATA(t265) = strlen( t134 ).
            IF t264 IS INITIAL.
              t262 = 0.
            ELSE.
              FIND t264 IN t134 MATCH OFFSET t262.
              IF sy-subrc <> 0.
                t262 = -1.
              ENDIF.
            ENDIF.
            t254 = xsdbool( t262 >= 0 ).
          ENDIF.
          result = t254.
          RETURN.
        ENDIF.
      ENDIF.
      DATA(t269) = 1.
      t119 = t119 + t269.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_check_subrc_conf( me->gt_cn_in_sr_rl_ch_sb_ts_ch_sbr( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_check_subrc_conf( me->gt_cn_in_sr_rl_ch_sb_ts_ch_sbr( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_check_subrc_conf.
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
        t1 = NEW zcl_lnt_check_subrc_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_ch_sb_ts_ch_sbr( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_ch_sb_ts_ch_sbr( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1442_e2b1dc42a34f.
  ENDMETHOD.
ENDCLASS.
