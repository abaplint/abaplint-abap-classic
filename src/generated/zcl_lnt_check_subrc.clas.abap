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
    DATA(t1) = NEW zcl_lnt_check_subrc_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |check_subrc|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Check sy-subrc|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Check sy-subrc|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
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
      DATA(t23) = |Quickfix|.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = t18.
      t17 = t24.
      t15 = t17.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t25.
      t15 = t25.
    ENDIF.
    t14 = t15.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA(t29) = |EC CI_SUBRC|.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t29.
      t27 = t30.
    ELSE.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      t27 = t31.
    ENDIF.
    t26 = t27.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    DATA(t34) = abap_true.
    IF t34 = abap_true.
      DATA(t35) = |##SUBRC_OK|.
      DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t36->has = abap_true.
      t36->value = t35.
      t33 = t36.
    ELSE.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      t33 = t37.
    ENDIF.
    t32 = t33.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t41.
    t40 = t41.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t38 i_good_example = t40 i_extended_information = t8 i_tags = t14 i_pragma = t32 i_pseudo_comment = t26 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t48 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t49) = |key|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |title|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |shortDescription|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |extendedInformation|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |tags|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |pseudoComment|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |pragma|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_ch_sb_ts_ch_sbr.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_ch_sb_ts_ch_sbr.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD build_fix.
    DATA(t1) = i_file.
    DATA(t2) = i_statement.
    DATA t3 TYPE REF TO zcl_lnt_fix.
    DATA t4 TYPE string.
    DATA(t5) = |Add ##SUBRC_OK|.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t7 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t8) = t1.
    DATA t9 TYPE REF TO zcl_lnt_position.
    DATA t10 TYPE REF TO zcl_lnt_abstract_token.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t12) = t2.
    t11 = t12->get_last_token( ).
    t10 = t11.
    DATA t13 TYPE REF TO zcl_lnt_position.
    DATA(t14) = t10.
    t13 = t14->start.
    t9 = t13.
    DATA(t15) = | ##SUBRC_OK|.
    t7 = zcl_lnt_edit_helper=>insert_at( i_file = t8 i_pos = t9 i_text = t15 ).
    t6 = t7.
    t3 = NEW zcl_lnt_fix( i_description = t4 i_edit = t6 ).
    CREATE OBJECT t3->zlnt_view_ownkeys_b0e8086400eb.
    t3->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t16 ).
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    IF t3->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t3->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edit` p1 = t17 ).
    ENDIF.
    CREATE OBJECT t3->zlnt_json_ownkeys_70e5fd461788.
    t3->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t18) = |description|.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = t18 p1 = t19 ).
    ENDIF.
    DATA(t20) = |edit|.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t21.
    IF t3->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t3->zlnt_json_ownkeys_70e5fd461788->put( p0 = t20 p1 = t21 ).
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_ch_sb_ts_ch_sbr.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = t6.
    t8 = t9->statements.
    t5 = t8.
    t4 = t5.
    DATA t10 TYPE string.
    DATA(t11) = |Check sy-subrc|.
    t10 = t11.
    DATA t12 TYPE REF TO zcl_lnt_check_subrc_conf.
    DATA(t13) = CAST zcl_lnt_check_subrc_conf( me->gt_cn_in_sr_rl_ch_sb_ts_ch_sbr( ) ).
    t12 = t13.
    DATA t14 TYPE i.
    DATA(t15) = 0.
    t14 = t15.
    DO.
      DATA t16 TYPE abap_bool.
      DATA(t17) = t14.
      DATA t18 TYPE i.
      DATA(t19) = t4.
      t19->load( ).
      t18 = lines( t19->items ).
      t16 = xsdbool( t17 < t18 ).
      IF t16 = abap_false.
        EXIT.
      ENDIF.
      DATA t20 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t20.
      DATA t21 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t21.
      DATA(t22) = t4.
      DATA(t23) = t14.
      t23 = t23 + 1.
      DATA t24 TYPE REF TO object.
      CLEAR t24.
      t22->load( ).
      CLEAR t24.
      READ TABLE t22->items INDEX t23 INTO t24.
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
      DATA(t27) = VALUE abap_bool( ).
      DATA t28 TYPE abap_bool.
      DATA(t29) = abap_false.
      t28 = t29.
      DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t31 TYPE REF TO zcl_lnt_statement_node.
      DATA(t32) = t20.
      t31 = t32.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t34) = t31.
      t33 = t34->pragmas.
      t30 = t33.
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
        CLEAR t41.
        DATA(t42) = abap_true.
        IF t42 = abap_true.
          DATA t43 TYPE string.
          DATA t44 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t45) = t35.
          t44 = t45.
          DATA t46 TYPE string.
          DATA(t47) = t44.
          t46 = t47->str.
          t43 = t46.
          DATA(t48) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t48->has = abap_true.
          t48->value = t43.
          t41 = t48.
        ELSE.
          DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t49.
          t41 = t49.
        ENDIF.
        DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t50.
        DATA t51 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t51.
        DATA t52 TYPE string.
        DATA(t53) = |check_subrc|.
        t52 = t53.
        DATA t54 TYPE string.
        DATA(t55) = |Check sy-subrc|.
        t54 = t55.
        DATA t56 TYPE string.
        DATA(t57) = |Check sy-subrc|.
        t56 = t57.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t58.
        DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t59.
        DATA(t60) = abap_true.
        IF t60 = abap_true.
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
          t59 = t62.
        ELSE.
          DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t63.
          t59 = t63.
        ENDIF.
        t58 = t59.
        DATA t64 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t64.
        DATA t65 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t65.
        DATA(t66) = abap_true.
        IF t66 = abap_true.
          DATA t67 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t69 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t69.
          t68 = t69.
          DATA(t70) = t68.
          DATA(t71) = |SingleFile|.
          t70->load( ).
          APPEND t71 TO t70->items.
          t70->save( ).
          DATA(t72) = t68.
          DATA(t73) = |Quickfix|.
          t72->load( ).
          APPEND t73 TO t72->items.
          t72->save( ).
          DATA(t74) = t68.
          t67 = t74.
          t65 = t67.
        ELSE.
          DATA t75 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t75.
          t65 = t75.
        ENDIF.
        t64 = t65.
        DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t76.
        DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t77.
        DATA(t78) = abap_true.
        IF t78 = abap_true.
          DATA(t79) = |EC CI_SUBRC|.
          DATA(t80) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t80->has = abap_true.
          t80->value = t79.
          t77 = t80.
        ELSE.
          DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t81.
          t77 = t81.
        ENDIF.
        t76 = t77.
        DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t82.
        DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t83.
        DATA(t84) = abap_true.
        IF t84 = abap_true.
          DATA(t85) = |##SUBRC_OK|.
          DATA(t86) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t86->has = abap_true.
          t86->value = t85.
          t83 = t86.
        ELSE.
          DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t87.
          t83 = t87.
        ENDIF.
        t82 = t83.
        DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t89.
        t88 = t89.
        DATA t90 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t91.
        t90 = t91.
        t51 = NEW zcl_lnt_irule_metadata( i_key = t52 i_title = t54 i_short_description = t56 i_bad_example = t88 i_good_example = t90 i_extended_information = t58 i_tags = t64 i_pragma = t82 i_pseudo_comment = t76 ).
        CREATE OBJECT t51->zlnt_view_ownkeys_b0e8086400eb.
        t51->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t92.
        IF t51->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t51->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t92 ).
        ENDIF.
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
        DATA(t99) = |key|.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t100.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t99 p1 = t100 ).
        ENDIF.
        DATA(t101) = |title|.
        DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t102.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t101 p1 = t102 ).
        ENDIF.
        DATA(t103) = |shortDescription|.
        DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t104.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t103 p1 = t104 ).
        ENDIF.
        DATA(t105) = |extendedInformation|.
        DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t106.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t105 p1 = t106 ).
        ENDIF.
        DATA(t107) = |tags|.
        DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t108.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t107 p1 = t108 ).
        ENDIF.
        DATA(t109) = |pseudoComment|.
        DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t110.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t109 p1 = t110 ).
        ENDIF.
        DATA(t111) = |pragma|.
        DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t112.
        IF t51->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t51->zlnt_json_ownkeys_70e5fd461788->put( p0 = t111 p1 = t112 ).
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
          DATA(t115) = abap_true.
          t28 = t115.
          EXIT.
        ENDIF.
      ENDDO.
      DATA(t116) = t28.
      t27 = t116.
      IF t27 = abap_true.
        DATA t117 TYPE i.
        DATA(t118) = t14.
        DATA(t119) = 1.
        t117 = t118 + t119.
        t14 = t117.
        CONTINUE.
      ENDIF.
      DATA(t120) = VALUE abap_bool( ).
      DATA t121 TYPE abap_bool.
      DATA t122 TYPE abap_bool.
      DATA t123 TYPE abap_bool.
      DATA(t124) = t12.
      t123 = t124->zlnt_view_read_sr_21b2005cffbb( ).
      DATA(t125) = abap_true.
      t122 = xsdbool( t123 = t125 ).
      t121 = t122.
      IF t122 = abap_true.
        DATA t126 TYPE abap_bool.
        DATA t127 TYPE REF TO zif_lnt_statement.
        DATA(t128) = t20.
        t127 = t128->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t126 = xsdbool( t127 IS BOUND AND t127 IS INSTANCE OF zcl_lnt_st_open_dataset ).
        t121 = t126.
      ENDIF.
      t120 = t121.
      IF t121 = abap_true.
        DATA t129 TYPE abap_bool.
        DATA t130 TYPE abap_bool.
        DATA(t131) = t14.
        DATA(t132) = t4.
        t130 = me->is_checked( i_index = t131 i_statements = t132 ).
        DATA(t133) = abap_false.
        t129 = xsdbool( t130 = t133 ).
        t120 = t129.
      ENDIF.
      IF t120 = abap_true.
        DATA(t134) = t2.
        DATA t135 TYPE REF TO zcl_lnt_issue.
        CLEAR t135.
        DATA(t136) = t1.
        DATA(t137) = t20.
        DATA(t138) = t10.
        DATA(t139) = VALUE string( ).
        DATA t140 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t140.
        DATA t141 TYPE string.
        DATA(t142) = |check_subrc|.
        t141 = t142.
        DATA t143 TYPE string.
        DATA(t144) = |Check sy-subrc|.
        t143 = t144.
        DATA t145 TYPE string.
        DATA(t146) = |Check sy-subrc|.
        t145 = t146.
        DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t147.
        DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t148.
        DATA(t149) = abap_true.
        IF t149 = abap_true.
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
          t148 = t151.
        ELSE.
          DATA t152 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t152.
          t148 = t152.
        ENDIF.
        t147 = t148.
        DATA t153 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t153.
        DATA t154 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t154.
        DATA(t155) = abap_true.
        IF t155 = abap_true.
          DATA t156 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t157 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t158 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t158.
          t157 = t158.
          DATA(t159) = t157.
          DATA(t160) = |SingleFile|.
          t159->load( ).
          APPEND t160 TO t159->items.
          t159->save( ).
          DATA(t161) = t157.
          DATA(t162) = |Quickfix|.
          t161->load( ).
          APPEND t162 TO t161->items.
          t161->save( ).
          DATA(t163) = t157.
          t156 = t163.
          t154 = t156.
        ELSE.
          DATA t164 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t164.
          t154 = t164.
        ENDIF.
        t153 = t154.
        DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t165.
        DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t166.
        DATA(t167) = abap_true.
        IF t167 = abap_true.
          DATA(t168) = |EC CI_SUBRC|.
          DATA(t169) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t169->has = abap_true.
          t169->value = t168.
          t166 = t169.
        ELSE.
          DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t170.
          t166 = t170.
        ENDIF.
        t165 = t166.
        DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t171.
        DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t172.
        DATA(t173) = abap_true.
        IF t173 = abap_true.
          DATA(t174) = |##SUBRC_OK|.
          DATA(t175) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t175->has = abap_true.
          t175->value = t174.
          t172 = t175.
        ELSE.
          DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t176.
          t172 = t176.
        ENDIF.
        t171 = t172.
        DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t178.
        t177 = t178.
        DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t180.
        t179 = t180.
        t140 = NEW zcl_lnt_irule_metadata( i_key = t141 i_title = t143 i_short_description = t145 i_bad_example = t177 i_good_example = t179 i_extended_information = t147 i_tags = t153 i_pragma = t171 i_pseudo_comment = t165 ).
        CREATE OBJECT t140->zlnt_view_ownkeys_b0e8086400eb.
        t140->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t181.
        IF t140->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t140->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t181 ).
        ENDIF.
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
        DATA(t188) = |key|.
        DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t189.
        IF t140->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = t188 p1 = t189 ).
        ENDIF.
        DATA(t190) = |title|.
        DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t191.
        IF t140->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = t190 p1 = t191 ).
        ENDIF.
        DATA(t192) = |shortDescription|.
        DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t193.
        IF t140->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = t192 p1 = t193 ).
        ENDIF.
        DATA(t194) = |extendedInformation|.
        DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t195.
        IF t140->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = t194 p1 = t195 ).
        ENDIF.
        DATA(t196) = |tags|.
        DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t197.
        IF t140->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = t196 p1 = t197 ).
        ENDIF.
        DATA(t198) = |pseudoComment|.
        DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t199.
        IF t140->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = t198 p1 = t199 ).
        ENDIF.
        DATA(t200) = |pragma|.
        DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t201.
        IF t140->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t140->zlnt_json_ownkeys_70e5fd461788->put( p0 = t200 p1 = t201 ).
        ENDIF.
        t139 = t140->key.
        DATA t202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t203) = me->conf.
        t202 = t203->zlnt_view_read_sr_15c06369f827( ).
        DATA t204 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t204.
        DATA t205 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t205.
        t135 = zcl_lnt_issue=>at_statement( i_file = t136 i_statement = t137 i_message_26cb = t138 i_key = t139 i_severity = t202 i_fix = t204 i_alternative_fixes = t205 ).
        t134->load( ).
        APPEND t135 TO t134->items.
        t134->save( ).
      ELSE.
        DATA(t206) = VALUE abap_bool( ).
        DATA t207 TYPE abap_bool.
        DATA t208 TYPE abap_bool.
        DATA t209 TYPE abap_bool.
        DATA(t210) = t12.
        t209 = t210->zlnt_view_read_sr_0f4630ed0a64( ).
        DATA(t211) = abap_true.
        t208 = xsdbool( t209 = t211 ).
        t207 = t208.
        IF t208 = abap_true.
          DATA t212 TYPE abap_bool.
          DATA t213 TYPE REF TO zif_lnt_statement.
          DATA(t214) = t20.
          t213 = t214->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t212 = xsdbool( t213 IS BOUND AND t213 IS INSTANCE OF zcl_lnt_st_authority_check ).
          t207 = t212.
        ENDIF.
        t206 = t207.
        IF t207 = abap_true.
          DATA t215 TYPE abap_bool.
          DATA t216 TYPE abap_bool.
          DATA(t217) = t14.
          DATA(t218) = t4.
          t216 = me->is_checked( i_index = t217 i_statements = t218 ).
          DATA(t219) = abap_false.
          t215 = xsdbool( t216 = t219 ).
          t206 = t215.
        ENDIF.
        IF t206 = abap_true.
          DATA(t220) = t2.
          DATA t221 TYPE REF TO zcl_lnt_issue.
          CLEAR t221.
          DATA(t222) = t1.
          DATA(t223) = t20.
          DATA(t224) = t10.
          DATA(t225) = VALUE string( ).
          DATA t226 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t226.
          DATA t227 TYPE string.
          DATA(t228) = |check_subrc|.
          t227 = t228.
          DATA t229 TYPE string.
          DATA(t230) = |Check sy-subrc|.
          t229 = t230.
          DATA t231 TYPE string.
          DATA(t232) = |Check sy-subrc|.
          t231 = t232.
          DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t233.
          DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t234.
          DATA(t235) = abap_true.
          IF t235 = abap_true.
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
            t234 = t237.
          ELSE.
            DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t238.
            t234 = t238.
          ENDIF.
          t233 = t234.
          DATA t239 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t239.
          DATA t240 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t240.
          DATA(t241) = abap_true.
          IF t241 = abap_true.
            DATA t242 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t243 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t244 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t244.
            t243 = t244.
            DATA(t245) = t243.
            DATA(t246) = |SingleFile|.
            t245->load( ).
            APPEND t246 TO t245->items.
            t245->save( ).
            DATA(t247) = t243.
            DATA(t248) = |Quickfix|.
            t247->load( ).
            APPEND t248 TO t247->items.
            t247->save( ).
            DATA(t249) = t243.
            t242 = t249.
            t240 = t242.
          ELSE.
            DATA t250 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t250.
            t240 = t250.
          ENDIF.
          t239 = t240.
          DATA t251 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t251.
          DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t252.
          DATA(t253) = abap_true.
          IF t253 = abap_true.
            DATA(t254) = |EC CI_SUBRC|.
            DATA(t255) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t255->has = abap_true.
            t255->value = t254.
            t252 = t255.
          ELSE.
            DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t256.
            t252 = t256.
          ENDIF.
          t251 = t252.
          DATA t257 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t257.
          DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t258.
          DATA(t259) = abap_true.
          IF t259 = abap_true.
            DATA(t260) = |##SUBRC_OK|.
            DATA(t261) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t261->has = abap_true.
            t261->value = t260.
            t258 = t261.
          ELSE.
            DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t262.
            t258 = t262.
          ENDIF.
          t257 = t258.
          DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t264 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t264.
          t263 = t264.
          DATA t265 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t266 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t266.
          t265 = t266.
          t226 = NEW zcl_lnt_irule_metadata( i_key = t227 i_title = t229 i_short_description = t231 i_bad_example = t263 i_good_example = t265 i_extended_information = t233 i_tags = t239 i_pragma = t257 i_pseudo_comment = t251 ).
          CREATE OBJECT t226->zlnt_view_ownkeys_b0e8086400eb.
          t226->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t267.
          IF t226->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t226->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t267 ).
          ENDIF.
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
          DATA(t274) = |key|.
          DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t275.
          IF t226->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t226->zlnt_json_ownkeys_70e5fd461788->put( p0 = t274 p1 = t275 ).
          ENDIF.
          DATA(t276) = |title|.
          DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t277.
          IF t226->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t226->zlnt_json_ownkeys_70e5fd461788->put( p0 = t276 p1 = t277 ).
          ENDIF.
          DATA(t278) = |shortDescription|.
          DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t279.
          IF t226->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t226->zlnt_json_ownkeys_70e5fd461788->put( p0 = t278 p1 = t279 ).
          ENDIF.
          DATA(t280) = |extendedInformation|.
          DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t281.
          IF t226->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t226->zlnt_json_ownkeys_70e5fd461788->put( p0 = t280 p1 = t281 ).
          ENDIF.
          DATA(t282) = |tags|.
          DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t283.
          IF t226->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t226->zlnt_json_ownkeys_70e5fd461788->put( p0 = t282 p1 = t283 ).
          ENDIF.
          DATA(t284) = |pseudoComment|.
          DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t285.
          IF t226->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t226->zlnt_json_ownkeys_70e5fd461788->put( p0 = t284 p1 = t285 ).
          ENDIF.
          DATA(t286) = |pragma|.
          DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t287.
          IF t226->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t226->zlnt_json_ownkeys_70e5fd461788->put( p0 = t286 p1 = t287 ).
          ENDIF.
          t225 = t226->key.
          DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t289) = me->conf.
          t288 = t289->zlnt_view_read_sr_15c06369f827( ).
          DATA t290 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t290.
          DATA t291 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t291.
          t221 = zcl_lnt_issue=>at_statement( i_file = t222 i_statement = t223 i_message_26cb = t224 i_key = t225 i_severity = t288 i_fix = t290 i_alternative_fixes = t291 ).
          t220->load( ).
          APPEND t221 TO t220->items.
          t220->save( ).
        ELSE.
          DATA(t292) = VALUE abap_bool( ).
          DATA(t293) = VALUE abap_bool( ).
          DATA(t294) = VALUE abap_bool( ).
          DATA t295 TYPE abap_bool.
          DATA t296 TYPE abap_bool.
          DATA t297 TYPE abap_bool.
          DATA(t298) = t12.
          t297 = t298->zlnt_view_read_sr_a81dc9ce2968( ).
          DATA(t299) = abap_true.
          t296 = xsdbool( t297 = t299 ).
          t295 = t296.
          IF t296 = abap_true.
            DATA t300 TYPE abap_bool.
            DATA t301 TYPE REF TO zif_lnt_statement.
            DATA(t302) = t20.
            t301 = t302->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
            t300 = xsdbool( t301 IS BOUND AND t301 IS INSTANCE OF zcl_lnt_st_statem_select ).
            t295 = t300.
          ENDIF.
          t294 = t295.
          IF t295 = abap_true.
            DATA(t303) = VALUE abap_bool( ).
            DATA t304 TYPE string.
            DATA t305 TYPE string.
            DATA(t306) = t20.
            t305 = t306->concat_tokens( ).
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
            DATA t313 TYPE abap_bool.
            DATA t314 TYPE abap_bool.
            DATA(t315) = t14.
            DATA(t316) = t4.
            t314 = me->is_checked( i_index = t315 i_statements = t316 ).
            DATA(t317) = abap_false.
            t313 = xsdbool( t314 = t317 ).
            t293 = t313.
          ENDIF.
          t292 = t293.
          IF t293 = abap_true.
            DATA t318 TYPE abap_bool.
            DATA t319 TYPE abap_bool.
            DATA(t320) = t14.
            DATA(t321) = t4.
            t319 = me->checks_dbcnt( i_index = t320 i_statements = t321 ).
            DATA(t322) = abap_false.
            t318 = xsdbool( t319 = t322 ).
            t292 = t318.
          ENDIF.
          IF t292 = abap_true.
            DATA(t323) = VALUE string( ).
            DATA t324 TYPE string.
            DATA t325 TYPE string.
            DATA(t326) = t20.
            t325 = t326->concat_tokens( ).
            DATA(t327) = strlen( t325 ).
            t324 = t325.
            IF t324 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t324 TO UPPER CASE.
            ELSE.
              t324 = zlnt_runtime_uppe_91169605024d=>full( t324 ).
            ENDIF.
            t323 = t324.
            DATA(t328) = VALUE abap_bool( ).
            DATA(t329) = t323.
            DATA(t330) = |SELECT SINGLE @ABAP_TRUE FROM |.
            DATA(t331) = strlen( t329 ).
            DATA t332 TYPE i.
            DATA(t333) = VALUE i( ).
            DATA(t334) = VALUE string( ).
            t332 = strlen( t330 ).
            IF t332 = 0.
              t328 = abap_true.
            ELSEIF t332 <= t331.
              t333 = 0.
              t334 = t329+t333(t332).
              IF t334 = t330.
                t328 = abap_true.
              ENDIF.
            ENDIF.
            IF t328 = abap_true.
              DATA t335 TYPE i.
              DATA(t336) = t14.
              DATA(t337) = 1.
              t335 = t336 + t337.
              t14 = t335.
              CONTINUE.
            ENDIF.
            DATA t338 TYPE REF TO zcl_lnt_fix.
            CLEAR t338.
            DATA t339 TYPE REF TO zcl_lnt_fix.
            CLEAR t339.
            DATA t340 TYPE REF TO zcl_lnt_abap_file.
            DATA(t341) = t1.
            t340 = t341.
            DATA t342 TYPE REF TO zcl_lnt_statement_node.
            DATA(t343) = t20.
            t342 = t343.
            DATA t344 TYPE REF TO zcl_lnt_fix.
            DATA t345 TYPE string.
            DATA(t346) = |Add ##SUBRC_OK|.
            t345 = t346.
            DATA t347 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            DATA t348 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            DATA(t349) = t340.
            DATA t350 TYPE REF TO zcl_lnt_position.
            DATA t351 TYPE REF TO zcl_lnt_abstract_token.
            DATA t352 TYPE REF TO zcl_lnt_abstract_token.
            DATA(t353) = t342.
            t352 = t353->get_last_token( ).
            t351 = t352.
            DATA t354 TYPE REF TO zcl_lnt_position.
            DATA(t355) = t351.
            t354 = t355->start.
            t350 = t354.
            DATA(t356) = | ##SUBRC_OK|.
            t348 = zcl_lnt_edit_helper=>insert_at( i_file = t349 i_pos = t350 i_text = t356 ).
            t347 = t348.
            t344 = NEW zcl_lnt_fix( i_description = t345 i_edit = t347 ).
            CREATE OBJECT t344->zlnt_view_ownkeys_b0e8086400eb.
            t344->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t357 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t357.
            IF t344->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t344->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t357 ).
            ENDIF.
            DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t358.
            IF t344->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t344->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edit` p1 = t358 ).
            ENDIF.
            CREATE OBJECT t344->zlnt_json_ownkeys_70e5fd461788.
            t344->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t359) = |description|.
            DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t360.
            IF t344->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t344->zlnt_json_ownkeys_70e5fd461788->put( p0 = t359 p1 = t360 ).
            ENDIF.
            DATA(t361) = |edit|.
            DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t362.
            IF t344->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t344->zlnt_json_ownkeys_70e5fd461788->put( p0 = t361 p1 = t362 ).
            ENDIF.
            t339 = t344.
            t338 = t339.
            DATA(t363) = t2.
            DATA t364 TYPE REF TO zcl_lnt_issue.
            CLEAR t364.
            DATA(t365) = t1.
            DATA(t366) = t20.
            DATA(t367) = t10.
            DATA(t368) = VALUE string( ).
            DATA t369 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t369.
            DATA t370 TYPE string.
            DATA(t371) = |check_subrc|.
            t370 = t371.
            DATA t372 TYPE string.
            DATA(t373) = |Check sy-subrc|.
            t372 = t373.
            DATA t374 TYPE string.
            DATA(t375) = |Check sy-subrc|.
            t374 = t375.
            DATA t376 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t376.
            DATA t377 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t377.
            DATA(t378) = abap_true.
            IF t378 = abap_true.
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
              t377 = t380.
            ELSE.
              DATA t381 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t381.
              t377 = t381.
            ENDIF.
            t376 = t377.
            DATA t382 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t382.
            DATA t383 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t383.
            DATA(t384) = abap_true.
            IF t384 = abap_true.
              DATA t385 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t386 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t387 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t387.
              t386 = t387.
              DATA(t388) = t386.
              DATA(t389) = |SingleFile|.
              t388->load( ).
              APPEND t389 TO t388->items.
              t388->save( ).
              DATA(t390) = t386.
              DATA(t391) = |Quickfix|.
              t390->load( ).
              APPEND t391 TO t390->items.
              t390->save( ).
              DATA(t392) = t386.
              t385 = t392.
              t383 = t385.
            ELSE.
              DATA t393 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t393.
              t383 = t393.
            ENDIF.
            t382 = t383.
            DATA t394 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t394.
            DATA t395 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t395.
            DATA(t396) = abap_true.
            IF t396 = abap_true.
              DATA(t397) = |EC CI_SUBRC|.
              DATA(t398) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t398->has = abap_true.
              t398->value = t397.
              t395 = t398.
            ELSE.
              DATA t399 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t399.
              t395 = t399.
            ENDIF.
            t394 = t395.
            DATA t400 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t400.
            DATA t401 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t401.
            DATA(t402) = abap_true.
            IF t402 = abap_true.
              DATA(t403) = |##SUBRC_OK|.
              DATA(t404) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t404->has = abap_true.
              t404->value = t403.
              t401 = t404.
            ELSE.
              DATA t405 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t405.
              t401 = t405.
            ENDIF.
            t400 = t401.
            DATA t406 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t407 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t407.
            t406 = t407.
            DATA t408 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t409 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t409.
            t408 = t409.
            t369 = NEW zcl_lnt_irule_metadata( i_key = t370 i_title = t372 i_short_description = t374 i_bad_example = t406 i_good_example = t408 i_extended_information = t376 i_tags = t382 i_pragma = t400 i_pseudo_comment = t394 ).
            CREATE OBJECT t369->zlnt_view_ownkeys_b0e8086400eb.
            t369->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t410.
            IF t369->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t369->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t410 ).
            ENDIF.
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
            DATA(t417) = |key|.
            DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t418.
            IF t369->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t369->zlnt_json_ownkeys_70e5fd461788->put( p0 = t417 p1 = t418 ).
            ENDIF.
            DATA(t419) = |title|.
            DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t420.
            IF t369->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t369->zlnt_json_ownkeys_70e5fd461788->put( p0 = t419 p1 = t420 ).
            ENDIF.
            DATA(t421) = |shortDescription|.
            DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t422.
            IF t369->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t369->zlnt_json_ownkeys_70e5fd461788->put( p0 = t421 p1 = t422 ).
            ENDIF.
            DATA(t423) = |extendedInformation|.
            DATA t424 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t424.
            IF t369->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t369->zlnt_json_ownkeys_70e5fd461788->put( p0 = t423 p1 = t424 ).
            ENDIF.
            DATA(t425) = |tags|.
            DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t426.
            IF t369->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t369->zlnt_json_ownkeys_70e5fd461788->put( p0 = t425 p1 = t426 ).
            ENDIF.
            DATA(t427) = |pseudoComment|.
            DATA t428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t428.
            IF t369->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t369->zlnt_json_ownkeys_70e5fd461788->put( p0 = t427 p1 = t428 ).
            ENDIF.
            DATA(t429) = |pragma|.
            DATA t430 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t430.
            IF t369->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t369->zlnt_json_ownkeys_70e5fd461788->put( p0 = t429 p1 = t430 ).
            ENDIF.
            t368 = t369->key.
            DATA t431 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t432) = me->conf.
            t431 = t432->zlnt_view_read_sr_15c06369f827( ).
            DATA t433 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t433.
            DATA t434 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t434.
            DATA(t435) = abap_true.
            IF t435 = abap_true.
              DATA t436 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t437 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t438 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CREATE OBJECT t438.
              t437 = t438.
              DATA(t439) = t437.
              DATA(t440) = t338.
              t439->load( ).
              APPEND t440 TO t439->items.
              t439->save( ).
              DATA(t441) = t437.
              t436 = t441.
              t434 = t436.
            ELSE.
              DATA t442 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t442.
              t434 = t442.
            ENDIF.
            t364 = zcl_lnt_issue=>at_statement( i_file = t365 i_statement = t366 i_message_26cb = t367 i_key = t368 i_severity = t431 i_fix = t433 i_alternative_fixes = t434 ).
            t363->load( ).
            APPEND t364 TO t363->items.
            t363->save( ).
          ELSE.
            DATA(t443) = VALUE abap_bool( ).
            DATA(t444) = VALUE abap_bool( ).
            DATA(t445) = VALUE abap_bool( ).
            DATA(t446) = VALUE abap_bool( ).
            DATA(t447) = VALUE abap_bool( ).
            DATA t448 TYPE abap_bool.
            DATA t449 TYPE abap_bool.
            DATA t450 TYPE abap_bool.
            DATA(t451) = t12.
            t450 = t451->zlnt_view_read_sr_678f16bf9d52( ).
            DATA(t452) = abap_true.
            t449 = xsdbool( t450 = t452 ).
            t448 = t449.
            IF t449 = abap_true.
              DATA t453 TYPE abap_bool.
              DATA t454 TYPE REF TO zif_lnt_statement.
              DATA(t455) = t20.
              t454 = t455->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
              t453 = xsdbool( t454 IS BOUND AND t454 IS INSTANCE OF zcl_lnt_st_statem_select ).
              t448 = t453.
            ENDIF.
            t447 = t448.
            IF t448 = abap_true.
              DATA(t456) = VALUE abap_bool( ).
              DATA(t457) = VALUE abap_bool( ).
              DATA t458 TYPE string.
              DATA t459 TYPE string.
              DATA(t460) = t20.
              t459 = t460->concat_tokens( ).
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
              DATA(t467) = abap_false.
              t456 = xsdbool( t457 = t467 ).
              t447 = t456.
            ENDIF.
            t446 = t447.
            IF t447 = abap_true.
              DATA(t468) = VALUE abap_bool( ).
              DATA(t469) = VALUE abap_bool( ).
              DATA t470 TYPE string.
              DATA t471 TYPE string.
              DATA(t472) = t20.
              t471 = t472->concat_tokens( ).
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
              DATA(t479) = abap_false.
              t468 = xsdbool( t469 = t479 ).
              t446 = t468.
            ENDIF.
            t445 = t446.
            IF t446 = abap_true.
              DATA(t480) = VALUE abap_bool( ).
              DATA(t481) = VALUE abap_bool( ).
              DATA t482 TYPE string.
              DATA t483 TYPE string.
              DATA(t484) = t20.
              t483 = t484->concat_tokens( ).
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
              DATA(t491) = abap_false.
              t480 = xsdbool( t481 = t491 ).
              t445 = t480.
            ENDIF.
            t444 = t445.
            IF t445 = abap_true.
              DATA t492 TYPE abap_bool.
              DATA t493 TYPE abap_bool.
              DATA(t494) = t14.
              DATA(t495) = t4.
              t493 = me->is_checked( i_index = t494 i_statements = t495 ).
              DATA(t496) = abap_false.
              t492 = xsdbool( t493 = t496 ).
              t444 = t492.
            ENDIF.
            t443 = t444.
            IF t444 = abap_true.
              DATA t497 TYPE abap_bool.
              DATA t498 TYPE abap_bool.
              DATA(t499) = t14.
              DATA(t500) = t4.
              t498 = me->checks_dbcnt( i_index = t499 i_statements = t500 ).
              DATA(t501) = abap_false.
              t497 = xsdbool( t498 = t501 ).
              t443 = t497.
            ENDIF.
            IF t443 = abap_true.
              DATA t502 TYPE REF TO zcl_lnt_fix.
              CLEAR t502.
              DATA t503 TYPE REF TO zcl_lnt_fix.
              CLEAR t503.
              DATA t504 TYPE REF TO zcl_lnt_abap_file.
              DATA(t505) = t1.
              t504 = t505.
              DATA t506 TYPE REF TO zcl_lnt_statement_node.
              DATA(t507) = t20.
              t506 = t507.
              DATA t508 TYPE REF TO zcl_lnt_fix.
              DATA t509 TYPE string.
              DATA(t510) = |Add ##SUBRC_OK|.
              t509 = t510.
              DATA t511 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              DATA t512 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              DATA(t513) = t504.
              DATA t514 TYPE REF TO zcl_lnt_position.
              DATA t515 TYPE REF TO zcl_lnt_abstract_token.
              DATA t516 TYPE REF TO zcl_lnt_abstract_token.
              DATA(t517) = t506.
              t516 = t517->get_last_token( ).
              t515 = t516.
              DATA t518 TYPE REF TO zcl_lnt_position.
              DATA(t519) = t515.
              t518 = t519->start.
              t514 = t518.
              DATA(t520) = | ##SUBRC_OK|.
              t512 = zcl_lnt_edit_helper=>insert_at( i_file = t513 i_pos = t514 i_text = t520 ).
              t511 = t512.
              t508 = NEW zcl_lnt_fix( i_description = t509 i_edit = t511 ).
              CREATE OBJECT t508->zlnt_view_ownkeys_b0e8086400eb.
              t508->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t521 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t521.
              IF t508->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t508->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t521 ).
              ENDIF.
              DATA t522 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t522.
              IF t508->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t508->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edit` p1 = t522 ).
              ENDIF.
              CREATE OBJECT t508->zlnt_json_ownkeys_70e5fd461788.
              t508->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t523) = |description|.
              DATA t524 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t524.
              IF t508->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t508->zlnt_json_ownkeys_70e5fd461788->put( p0 = t523 p1 = t524 ).
              ENDIF.
              DATA(t525) = |edit|.
              DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t526.
              IF t508->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t508->zlnt_json_ownkeys_70e5fd461788->put( p0 = t525 p1 = t526 ).
              ENDIF.
              t503 = t508.
              t502 = t503.
              DATA(t527) = t2.
              DATA t528 TYPE REF TO zcl_lnt_issue.
              CLEAR t528.
              DATA(t529) = t1.
              DATA(t530) = t20.
              DATA(t531) = t10.
              DATA(t532) = VALUE string( ).
              DATA t533 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t533.
              DATA t534 TYPE string.
              DATA(t535) = |check_subrc|.
              t534 = t535.
              DATA t536 TYPE string.
              DATA(t537) = |Check sy-subrc|.
              t536 = t537.
              DATA t538 TYPE string.
              DATA(t539) = |Check sy-subrc|.
              t538 = t539.
              DATA t540 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t540.
              DATA t541 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t541.
              DATA(t542) = abap_true.
              IF t542 = abap_true.
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
                t541 = t544.
              ELSE.
                DATA t545 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t545.
                t541 = t545.
              ENDIF.
              t540 = t541.
              DATA t546 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t546.
              DATA t547 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t547.
              DATA(t548) = abap_true.
              IF t548 = abap_true.
                DATA t549 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t550 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t551 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CREATE OBJECT t551.
                t550 = t551.
                DATA(t552) = t550.
                DATA(t553) = |SingleFile|.
                t552->load( ).
                APPEND t553 TO t552->items.
                t552->save( ).
                DATA(t554) = t550.
                DATA(t555) = |Quickfix|.
                t554->load( ).
                APPEND t555 TO t554->items.
                t554->save( ).
                DATA(t556) = t550.
                t549 = t556.
                t547 = t549.
              ELSE.
                DATA t557 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t557.
                t547 = t557.
              ENDIF.
              t546 = t547.
              DATA t558 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t558.
              DATA t559 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t559.
              DATA(t560) = abap_true.
              IF t560 = abap_true.
                DATA(t561) = |EC CI_SUBRC|.
                DATA(t562) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t562->has = abap_true.
                t562->value = t561.
                t559 = t562.
              ELSE.
                DATA t563 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t563.
                t559 = t563.
              ENDIF.
              t558 = t559.
              DATA t564 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t564.
              DATA t565 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t565.
              DATA(t566) = abap_true.
              IF t566 = abap_true.
                DATA(t567) = |##SUBRC_OK|.
                DATA(t568) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t568->has = abap_true.
                t568->value = t567.
                t565 = t568.
              ELSE.
                DATA t569 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t569.
                t565 = t569.
              ENDIF.
              t564 = t565.
              DATA t570 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t571 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t571.
              t570 = t571.
              DATA t572 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t573 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t573.
              t572 = t573.
              t533 = NEW zcl_lnt_irule_metadata( i_key = t534 i_title = t536 i_short_description = t538 i_bad_example = t570 i_good_example = t572 i_extended_information = t540 i_tags = t546 i_pragma = t564 i_pseudo_comment = t558 ).
              CREATE OBJECT t533->zlnt_view_ownkeys_b0e8086400eb.
              t533->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t574 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t574.
              IF t533->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t533->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t574 ).
              ENDIF.
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
              DATA(t581) = |key|.
              DATA t582 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t582.
              IF t533->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t533->zlnt_json_ownkeys_70e5fd461788->put( p0 = t581 p1 = t582 ).
              ENDIF.
              DATA(t583) = |title|.
              DATA t584 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t584.
              IF t533->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t533->zlnt_json_ownkeys_70e5fd461788->put( p0 = t583 p1 = t584 ).
              ENDIF.
              DATA(t585) = |shortDescription|.
              DATA t586 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t586.
              IF t533->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t533->zlnt_json_ownkeys_70e5fd461788->put( p0 = t585 p1 = t586 ).
              ENDIF.
              DATA(t587) = |extendedInformation|.
              DATA t588 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t588.
              IF t533->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t533->zlnt_json_ownkeys_70e5fd461788->put( p0 = t587 p1 = t588 ).
              ENDIF.
              DATA(t589) = |tags|.
              DATA t590 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t590.
              IF t533->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t533->zlnt_json_ownkeys_70e5fd461788->put( p0 = t589 p1 = t590 ).
              ENDIF.
              DATA(t591) = |pseudoComment|.
              DATA t592 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t592.
              IF t533->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t533->zlnt_json_ownkeys_70e5fd461788->put( p0 = t591 p1 = t592 ).
              ENDIF.
              DATA(t593) = |pragma|.
              DATA t594 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t594.
              IF t533->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t533->zlnt_json_ownkeys_70e5fd461788->put( p0 = t593 p1 = t594 ).
              ENDIF.
              t532 = t533->key.
              DATA t595 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t596) = me->conf.
              t595 = t596->zlnt_view_read_sr_15c06369f827( ).
              DATA t597 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t597.
              DATA t598 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t598.
              DATA(t599) = abap_true.
              IF t599 = abap_true.
                DATA t600 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA t601 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA t602 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CREATE OBJECT t602.
                t601 = t602.
                DATA(t603) = t601.
                DATA(t604) = t502.
                t603->load( ).
                APPEND t604 TO t603->items.
                t603->save( ).
                DATA(t605) = t601.
                t600 = t605.
                t598 = t600.
              ELSE.
                DATA t606 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t606.
                t598 = t606.
              ENDIF.
              t528 = zcl_lnt_issue=>at_statement( i_file = t529 i_statement = t530 i_message_26cb = t531 i_key = t532 i_severity = t595 i_fix = t597 i_alternative_fixes = t598 ).
              t527->load( ).
              APPEND t528 TO t527->items.
              t527->save( ).
            ELSE.
              DATA(t607) = VALUE abap_bool( ).
              DATA(t608) = VALUE abap_bool( ).
              DATA t609 TYPE abap_bool.
              DATA t610 TYPE abap_bool.
              DATA t611 TYPE abap_bool.
              DATA(t612) = t12.
              t611 = t612->zlnt_view_read_sr_b2ab8f8e06ba( ).
              DATA(t613) = abap_true.
              t610 = xsdbool( t611 = t613 ).
              t609 = t610.
              IF t610 = abap_true.
                DATA t614 TYPE abap_bool.
                DATA t615 TYPE REF TO zif_lnt_statement.
                DATA(t616) = t20.
                t615 = t616->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
                t614 = xsdbool( t615 IS BOUND AND t615 IS INSTANCE OF zcl_lnt_st_update_database ).
                t609 = t614.
              ENDIF.
              t608 = t609.
              IF t609 = abap_true.
                DATA t617 TYPE abap_bool.
                DATA t618 TYPE abap_bool.
                DATA(t619) = t14.
                DATA(t620) = t4.
                t618 = me->is_checked( i_index = t619 i_statements = t620 ).
                DATA(t621) = abap_false.
                t617 = xsdbool( t618 = t621 ).
                t608 = t617.
              ENDIF.
              t607 = t608.
              IF t608 = abap_true.
                DATA t622 TYPE abap_bool.
                DATA t623 TYPE abap_bool.
                DATA(t624) = t14.
                DATA(t625) = t4.
                t623 = me->checks_dbcnt( i_index = t624 i_statements = t625 ).
                DATA(t626) = abap_false.
                t622 = xsdbool( t623 = t626 ).
                t607 = t622.
              ENDIF.
              IF t607 = abap_true.
                DATA t627 TYPE REF TO zcl_lnt_fix.
                CLEAR t627.
                DATA t628 TYPE REF TO zcl_lnt_fix.
                CLEAR t628.
                DATA t629 TYPE REF TO zcl_lnt_abap_file.
                DATA(t630) = t1.
                t629 = t630.
                DATA t631 TYPE REF TO zcl_lnt_statement_node.
                DATA(t632) = t20.
                t631 = t632.
                DATA t633 TYPE REF TO zcl_lnt_fix.
                DATA t634 TYPE string.
                DATA(t635) = |Add ##SUBRC_OK|.
                t634 = t635.
                DATA t636 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                DATA t637 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                DATA(t638) = t629.
                DATA t639 TYPE REF TO zcl_lnt_position.
                DATA t640 TYPE REF TO zcl_lnt_abstract_token.
                DATA t641 TYPE REF TO zcl_lnt_abstract_token.
                DATA(t642) = t631.
                t641 = t642->get_last_token( ).
                t640 = t641.
                DATA t643 TYPE REF TO zcl_lnt_position.
                DATA(t644) = t640.
                t643 = t644->start.
                t639 = t643.
                DATA(t645) = | ##SUBRC_OK|.
                t637 = zcl_lnt_edit_helper=>insert_at( i_file = t638 i_pos = t639 i_text = t645 ).
                t636 = t637.
                t633 = NEW zcl_lnt_fix( i_description = t634 i_edit = t636 ).
                CREATE OBJECT t633->zlnt_view_ownkeys_b0e8086400eb.
                t633->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t646 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t646.
                IF t633->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t633->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t646 ).
                ENDIF.
                DATA t647 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t647.
                IF t633->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t633->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edit` p1 = t647 ).
                ENDIF.
                CREATE OBJECT t633->zlnt_json_ownkeys_70e5fd461788.
                t633->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA(t648) = |description|.
                DATA t649 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t649.
                IF t633->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t633->zlnt_json_ownkeys_70e5fd461788->put( p0 = t648 p1 = t649 ).
                ENDIF.
                DATA(t650) = |edit|.
                DATA t651 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t651.
                IF t633->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t633->zlnt_json_ownkeys_70e5fd461788->put( p0 = t650 p1 = t651 ).
                ENDIF.
                t628 = t633.
                t627 = t628.
                DATA(t652) = t2.
                DATA t653 TYPE REF TO zcl_lnt_issue.
                CLEAR t653.
                DATA(t654) = t1.
                DATA(t655) = t20.
                DATA(t656) = t10.
                DATA(t657) = VALUE string( ).
                DATA t658 TYPE REF TO zcl_lnt_irule_metadata.
                CLEAR t658.
                DATA t659 TYPE string.
                DATA(t660) = |check_subrc|.
                t659 = t660.
                DATA t661 TYPE string.
                DATA(t662) = |Check sy-subrc|.
                t661 = t662.
                DATA t663 TYPE string.
                DATA(t664) = |Check sy-subrc|.
                t663 = t664.
                DATA t665 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t665.
                DATA t666 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t666.
                DATA(t667) = abap_true.
                IF t667 = abap_true.
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
                  t666 = t669.
                ELSE.
                  DATA t670 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t670.
                  t666 = t670.
                ENDIF.
                t665 = t666.
                DATA t671 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t671.
                DATA t672 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t672.
                DATA(t673) = abap_true.
                IF t673 = abap_true.
                  DATA t674 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  DATA t675 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  DATA t676 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CREATE OBJECT t676.
                  t675 = t676.
                  DATA(t677) = t675.
                  DATA(t678) = |SingleFile|.
                  t677->load( ).
                  APPEND t678 TO t677->items.
                  t677->save( ).
                  DATA(t679) = t675.
                  DATA(t680) = |Quickfix|.
                  t679->load( ).
                  APPEND t680 TO t679->items.
                  t679->save( ).
                  DATA(t681) = t675.
                  t674 = t681.
                  t672 = t674.
                ELSE.
                  DATA t682 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t682.
                  t672 = t682.
                ENDIF.
                t671 = t672.
                DATA t683 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t683.
                DATA t684 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t684.
                DATA(t685) = abap_true.
                IF t685 = abap_true.
                  DATA(t686) = |EC CI_SUBRC|.
                  DATA(t687) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t687->has = abap_true.
                  t687->value = t686.
                  t684 = t687.
                ELSE.
                  DATA t688 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t688.
                  t684 = t688.
                ENDIF.
                t683 = t684.
                DATA t689 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t689.
                DATA t690 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t690.
                DATA(t691) = abap_true.
                IF t691 = abap_true.
                  DATA(t692) = |##SUBRC_OK|.
                  DATA(t693) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t693->has = abap_true.
                  t693->value = t692.
                  t690 = t693.
                ELSE.
                  DATA t694 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t694.
                  t690 = t694.
                ENDIF.
                t689 = t690.
                DATA t695 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t696 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t696.
                t695 = t696.
                DATA t697 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t698 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t698.
                t697 = t698.
                t658 = NEW zcl_lnt_irule_metadata( i_key = t659 i_title = t661 i_short_description = t663 i_bad_example = t695 i_good_example = t697 i_extended_information = t665 i_tags = t671 i_pragma = t689 i_pseudo_comment = t683 ).
                CREATE OBJECT t658->zlnt_view_ownkeys_b0e8086400eb.
                t658->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t699 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t699.
                IF t658->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t658->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t699 ).
                ENDIF.
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
                DATA(t706) = |key|.
                DATA t707 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t707.
                IF t658->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t658->zlnt_json_ownkeys_70e5fd461788->put( p0 = t706 p1 = t707 ).
                ENDIF.
                DATA(t708) = |title|.
                DATA t709 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t709.
                IF t658->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t658->zlnt_json_ownkeys_70e5fd461788->put( p0 = t708 p1 = t709 ).
                ENDIF.
                DATA(t710) = |shortDescription|.
                DATA t711 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t711.
                IF t658->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t658->zlnt_json_ownkeys_70e5fd461788->put( p0 = t710 p1 = t711 ).
                ENDIF.
                DATA(t712) = |extendedInformation|.
                DATA t713 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t713.
                IF t658->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t658->zlnt_json_ownkeys_70e5fd461788->put( p0 = t712 p1 = t713 ).
                ENDIF.
                DATA(t714) = |tags|.
                DATA t715 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t715.
                IF t658->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t658->zlnt_json_ownkeys_70e5fd461788->put( p0 = t714 p1 = t715 ).
                ENDIF.
                DATA(t716) = |pseudoComment|.
                DATA t717 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t717.
                IF t658->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t658->zlnt_json_ownkeys_70e5fd461788->put( p0 = t716 p1 = t717 ).
                ENDIF.
                DATA(t718) = |pragma|.
                DATA t719 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t719.
                IF t658->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t658->zlnt_json_ownkeys_70e5fd461788->put( p0 = t718 p1 = t719 ).
                ENDIF.
                t657 = t658->key.
                DATA t720 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t721) = me->conf.
                t720 = t721->zlnt_view_read_sr_15c06369f827( ).
                DATA t722 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t722.
                DATA t723 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t723.
                DATA(t724) = abap_true.
                IF t724 = abap_true.
                  DATA t725 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA t726 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA t727 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CREATE OBJECT t727.
                  t726 = t727.
                  DATA(t728) = t726.
                  DATA(t729) = t627.
                  t728->load( ).
                  APPEND t729 TO t728->items.
                  t728->save( ).
                  DATA(t730) = t726.
                  t725 = t730.
                  t723 = t725.
                ELSE.
                  DATA t731 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t731.
                  t723 = t731.
                ENDIF.
                t653 = zcl_lnt_issue=>at_statement( i_file = t654 i_statement = t655 i_message_26cb = t656 i_key = t657 i_severity = t720 i_fix = t722 i_alternative_fixes = t723 ).
                t652->load( ).
                APPEND t653 TO t652->items.
                t652->save( ).
              ELSE.
                DATA(t732) = VALUE abap_bool( ).
                DATA(t733) = VALUE abap_bool( ).
                DATA t734 TYPE abap_bool.
                DATA t735 TYPE abap_bool.
                DATA t736 TYPE abap_bool.
                DATA(t737) = t12.
                t736 = t737->zlnt_view_read_sr_21752f920f4c( ).
                DATA(t738) = abap_true.
                t735 = xsdbool( t736 = t738 ).
                t734 = t735.
                IF t735 = abap_true.
                  DATA t739 TYPE abap_bool.
                  DATA t740 TYPE REF TO zif_lnt_statement.
                  DATA(t741) = t20.
                  t740 = t741->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
                  t739 = xsdbool( t740 IS BOUND AND t740 IS INSTANCE OF zcl_lnt_st_delete_database ).
                  t734 = t739.
                ENDIF.
                t733 = t734.
                IF t734 = abap_true.
                  DATA t742 TYPE abap_bool.
                  DATA t743 TYPE abap_bool.
                  DATA(t744) = t14.
                  DATA(t745) = t4.
                  t743 = me->is_checked( i_index = t744 i_statements = t745 ).
                  DATA(t746) = abap_false.
                  t742 = xsdbool( t743 = t746 ).
                  t733 = t742.
                ENDIF.
                t732 = t733.
                IF t733 = abap_true.
                  DATA t747 TYPE abap_bool.
                  DATA t748 TYPE abap_bool.
                  DATA(t749) = t14.
                  DATA(t750) = t4.
                  t748 = me->checks_dbcnt( i_index = t749 i_statements = t750 ).
                  DATA(t751) = abap_false.
                  t747 = xsdbool( t748 = t751 ).
                  t732 = t747.
                ENDIF.
                IF t732 = abap_true.
                  DATA t752 TYPE REF TO zcl_lnt_fix.
                  CLEAR t752.
                  DATA t753 TYPE REF TO zcl_lnt_fix.
                  CLEAR t753.
                  DATA t754 TYPE REF TO zcl_lnt_abap_file.
                  DATA(t755) = t1.
                  t754 = t755.
                  DATA t756 TYPE REF TO zcl_lnt_statement_node.
                  DATA(t757) = t20.
                  t756 = t757.
                  DATA t758 TYPE REF TO zcl_lnt_fix.
                  DATA t759 TYPE string.
                  DATA(t760) = |Add ##SUBRC_OK|.
                  t759 = t760.
                  DATA t761 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  DATA t762 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  DATA(t763) = t754.
                  DATA t764 TYPE REF TO zcl_lnt_position.
                  DATA t765 TYPE REF TO zcl_lnt_abstract_token.
                  DATA t766 TYPE REF TO zcl_lnt_abstract_token.
                  DATA(t767) = t756.
                  t766 = t767->get_last_token( ).
                  t765 = t766.
                  DATA t768 TYPE REF TO zcl_lnt_position.
                  DATA(t769) = t765.
                  t768 = t769->start.
                  t764 = t768.
                  DATA(t770) = | ##SUBRC_OK|.
                  t762 = zcl_lnt_edit_helper=>insert_at( i_file = t763 i_pos = t764 i_text = t770 ).
                  t761 = t762.
                  t758 = NEW zcl_lnt_fix( i_description = t759 i_edit = t761 ).
                  CREATE OBJECT t758->zlnt_view_ownkeys_b0e8086400eb.
                  t758->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t771 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t771.
                  IF t758->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t758->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t771 ).
                  ENDIF.
                  DATA t772 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t772.
                  IF t758->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t758->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edit` p1 = t772 ).
                  ENDIF.
                  CREATE OBJECT t758->zlnt_json_ownkeys_70e5fd461788.
                  t758->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA(t773) = |description|.
                  DATA t774 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t774.
                  IF t758->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t758->zlnt_json_ownkeys_70e5fd461788->put( p0 = t773 p1 = t774 ).
                  ENDIF.
                  DATA(t775) = |edit|.
                  DATA t776 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t776.
                  IF t758->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t758->zlnt_json_ownkeys_70e5fd461788->put( p0 = t775 p1 = t776 ).
                  ENDIF.
                  t753 = t758.
                  t752 = t753.
                  DATA(t777) = t2.
                  DATA t778 TYPE REF TO zcl_lnt_issue.
                  CLEAR t778.
                  DATA(t779) = t1.
                  DATA(t780) = t20.
                  DATA(t781) = t10.
                  DATA(t782) = VALUE string( ).
                  DATA t783 TYPE REF TO zcl_lnt_irule_metadata.
                  CLEAR t783.
                  DATA t784 TYPE string.
                  DATA(t785) = |check_subrc|.
                  t784 = t785.
                  DATA t786 TYPE string.
                  DATA(t787) = |Check sy-subrc|.
                  t786 = t787.
                  DATA t788 TYPE string.
                  DATA(t789) = |Check sy-subrc|.
                  t788 = t789.
                  DATA t790 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t790.
                  DATA t791 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t791.
                  DATA(t792) = abap_true.
                  IF t792 = abap_true.
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
                    t791 = t794.
                  ELSE.
                    DATA t795 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t795.
                    t791 = t795.
                  ENDIF.
                  t790 = t791.
                  DATA t796 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t796.
                  DATA t797 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t797.
                  DATA(t798) = abap_true.
                  IF t798 = abap_true.
                    DATA t799 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                    DATA t800 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                    DATA t801 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                    CREATE OBJECT t801.
                    t800 = t801.
                    DATA(t802) = t800.
                    DATA(t803) = |SingleFile|.
                    t802->load( ).
                    APPEND t803 TO t802->items.
                    t802->save( ).
                    DATA(t804) = t800.
                    DATA(t805) = |Quickfix|.
                    t804->load( ).
                    APPEND t805 TO t804->items.
                    t804->save( ).
                    DATA(t806) = t800.
                    t799 = t806.
                    t797 = t799.
                  ELSE.
                    DATA t807 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                    CLEAR t807.
                    t797 = t807.
                  ENDIF.
                  t796 = t797.
                  DATA t808 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t808.
                  DATA t809 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t809.
                  DATA(t810) = abap_true.
                  IF t810 = abap_true.
                    DATA(t811) = |EC CI_SUBRC|.
                    DATA(t812) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t812->has = abap_true.
                    t812->value = t811.
                    t809 = t812.
                  ELSE.
                    DATA t813 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t813.
                    t809 = t813.
                  ENDIF.
                  t808 = t809.
                  DATA t814 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t814.
                  DATA t815 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t815.
                  DATA(t816) = abap_true.
                  IF t816 = abap_true.
                    DATA(t817) = |##SUBRC_OK|.
                    DATA(t818) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t818->has = abap_true.
                    t818->value = t817.
                    t815 = t818.
                  ELSE.
                    DATA t819 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t819.
                    t815 = t819.
                  ENDIF.
                  t814 = t815.
                  DATA t820 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA t821 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t821.
                  t820 = t821.
                  DATA t822 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA t823 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t823.
                  t822 = t823.
                  t783 = NEW zcl_lnt_irule_metadata( i_key = t784 i_title = t786 i_short_description = t788 i_bad_example = t820 i_good_example = t822 i_extended_information = t790 i_tags = t796 i_pragma = t814 i_pseudo_comment = t808 ).
                  CREATE OBJECT t783->zlnt_view_ownkeys_b0e8086400eb.
                  t783->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t824 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t824.
                  IF t783->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t783->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t824 ).
                  ENDIF.
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
                  DATA(t831) = |key|.
                  DATA t832 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t832.
                  IF t783->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t783->zlnt_json_ownkeys_70e5fd461788->put( p0 = t831 p1 = t832 ).
                  ENDIF.
                  DATA(t833) = |title|.
                  DATA t834 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t834.
                  IF t783->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t783->zlnt_json_ownkeys_70e5fd461788->put( p0 = t833 p1 = t834 ).
                  ENDIF.
                  DATA(t835) = |shortDescription|.
                  DATA t836 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t836.
                  IF t783->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t783->zlnt_json_ownkeys_70e5fd461788->put( p0 = t835 p1 = t836 ).
                  ENDIF.
                  DATA(t837) = |extendedInformation|.
                  DATA t838 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t838.
                  IF t783->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t783->zlnt_json_ownkeys_70e5fd461788->put( p0 = t837 p1 = t838 ).
                  ENDIF.
                  DATA(t839) = |tags|.
                  DATA t840 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t840.
                  IF t783->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t783->zlnt_json_ownkeys_70e5fd461788->put( p0 = t839 p1 = t840 ).
                  ENDIF.
                  DATA(t841) = |pseudoComment|.
                  DATA t842 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t842.
                  IF t783->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t783->zlnt_json_ownkeys_70e5fd461788->put( p0 = t841 p1 = t842 ).
                  ENDIF.
                  DATA(t843) = |pragma|.
                  DATA t844 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t844.
                  IF t783->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t783->zlnt_json_ownkeys_70e5fd461788->put( p0 = t843 p1 = t844 ).
                  ENDIF.
                  t782 = t783->key.
                  DATA t845 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t846) = me->conf.
                  t845 = t846->zlnt_view_read_sr_15c06369f827( ).
                  DATA t847 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t847.
                  DATA t848 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t848.
                  DATA(t849) = abap_true.
                  IF t849 = abap_true.
                    DATA t850 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA t851 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA t852 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    CREATE OBJECT t852.
                    t851 = t852.
                    DATA(t853) = t851.
                    DATA(t854) = t752.
                    t853->load( ).
                    APPEND t854 TO t853->items.
                    t853->save( ).
                    DATA(t855) = t851.
                    t850 = t855.
                    t848 = t850.
                  ELSE.
                    DATA t856 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    CLEAR t856.
                    t848 = t856.
                  ENDIF.
                  t778 = zcl_lnt_issue=>at_statement( i_file = t779 i_statement = t780 i_message_26cb = t781 i_key = t782 i_severity = t845 i_fix = t847 i_alternative_fixes = t848 ).
                  t777->load( ).
                  APPEND t778 TO t777->items.
                  t777->save( ).
                ELSE.
                  DATA(t857) = VALUE abap_bool( ).
                  DATA(t858) = VALUE abap_bool( ).
                  DATA t859 TYPE abap_bool.
                  DATA t860 TYPE abap_bool.
                  DATA t861 TYPE abap_bool.
                  DATA(t862) = t12.
                  t861 = t862->zlnt_view_read_sr_309ef80029f2( ).
                  DATA(t863) = abap_true.
                  t860 = xsdbool( t861 = t863 ).
                  t859 = t860.
                  IF t860 = abap_true.
                    DATA t864 TYPE abap_bool.
                    DATA t865 TYPE REF TO zif_lnt_statement.
                    DATA(t866) = t20.
                    t865 = t866->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
                    t864 = xsdbool( t865 IS BOUND AND t865 IS INSTANCE OF zcl_lnt_st_insert_database ).
                    t859 = t864.
                  ENDIF.
                  t858 = t859.
                  IF t859 = abap_true.
                    DATA t867 TYPE abap_bool.
                    DATA t868 TYPE abap_bool.
                    DATA(t869) = t14.
                    DATA(t870) = t4.
                    t868 = me->is_checked( i_index = t869 i_statements = t870 ).
                    DATA(t871) = abap_false.
                    t867 = xsdbool( t868 = t871 ).
                    t858 = t867.
                  ENDIF.
                  t857 = t858.
                  IF t858 = abap_true.
                    DATA t872 TYPE abap_bool.
                    DATA t873 TYPE abap_bool.
                    DATA(t874) = t14.
                    DATA(t875) = t4.
                    t873 = me->checks_dbcnt( i_index = t874 i_statements = t875 ).
                    DATA(t876) = abap_false.
                    t872 = xsdbool( t873 = t876 ).
                    t857 = t872.
                  ENDIF.
                  IF t857 = abap_true.
                    DATA t877 TYPE REF TO zcl_lnt_fix.
                    CLEAR t877.
                    DATA t878 TYPE REF TO zcl_lnt_fix.
                    CLEAR t878.
                    DATA t879 TYPE REF TO zcl_lnt_abap_file.
                    DATA(t880) = t1.
                    t879 = t880.
                    DATA t881 TYPE REF TO zcl_lnt_statement_node.
                    DATA(t882) = t20.
                    t881 = t882.
                    DATA t883 TYPE REF TO zcl_lnt_fix.
                    DATA t884 TYPE string.
                    DATA(t885) = |Add ##SUBRC_OK|.
                    t884 = t885.
                    DATA t886 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                    DATA t887 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                    DATA(t888) = t879.
                    DATA t889 TYPE REF TO zcl_lnt_position.
                    DATA t890 TYPE REF TO zcl_lnt_abstract_token.
                    DATA t891 TYPE REF TO zcl_lnt_abstract_token.
                    DATA(t892) = t881.
                    t891 = t892->get_last_token( ).
                    t890 = t891.
                    DATA t893 TYPE REF TO zcl_lnt_position.
                    DATA(t894) = t890.
                    t893 = t894->start.
                    t889 = t893.
                    DATA(t895) = | ##SUBRC_OK|.
                    t887 = zcl_lnt_edit_helper=>insert_at( i_file = t888 i_pos = t889 i_text = t895 ).
                    t886 = t887.
                    t883 = NEW zcl_lnt_fix( i_description = t884 i_edit = t886 ).
                    CREATE OBJECT t883->zlnt_view_ownkeys_b0e8086400eb.
                    t883->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t896 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t896.
                    IF t883->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t883->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t896 ).
                    ENDIF.
                    DATA t897 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t897.
                    IF t883->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t883->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edit` p1 = t897 ).
                    ENDIF.
                    CREATE OBJECT t883->zlnt_json_ownkeys_70e5fd461788.
                    t883->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t898) = |description|.
                    DATA t899 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t899.
                    IF t883->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t883->zlnt_json_ownkeys_70e5fd461788->put( p0 = t898 p1 = t899 ).
                    ENDIF.
                    DATA(t900) = |edit|.
                    DATA t901 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t901.
                    IF t883->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t883->zlnt_json_ownkeys_70e5fd461788->put( p0 = t900 p1 = t901 ).
                    ENDIF.
                    t878 = t883.
                    t877 = t878.
                    DATA(t902) = t2.
                    DATA t903 TYPE REF TO zcl_lnt_issue.
                    CLEAR t903.
                    DATA(t904) = t1.
                    DATA(t905) = t20.
                    DATA(t906) = t10.
                    DATA(t907) = VALUE string( ).
                    DATA t908 TYPE REF TO zcl_lnt_irule_metadata.
                    CLEAR t908.
                    DATA t909 TYPE string.
                    DATA(t910) = |check_subrc|.
                    t909 = t910.
                    DATA t911 TYPE string.
                    DATA(t912) = |Check sy-subrc|.
                    t911 = t912.
                    DATA t913 TYPE string.
                    DATA(t914) = |Check sy-subrc|.
                    t913 = t914.
                    DATA t915 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t915.
                    DATA t916 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t916.
                    DATA(t917) = abap_true.
                    IF t917 = abap_true.
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
                      t916 = t919.
                    ELSE.
                      DATA t920 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t920.
                      t916 = t920.
                    ENDIF.
                    t915 = t916.
                    DATA t921 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                    CLEAR t921.
                    DATA t922 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                    CLEAR t922.
                    DATA(t923) = abap_true.
                    IF t923 = abap_true.
                      DATA t924 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                      DATA t925 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                      DATA t926 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                      CREATE OBJECT t926.
                      t925 = t926.
                      DATA(t927) = t925.
                      DATA(t928) = |SingleFile|.
                      t927->load( ).
                      APPEND t928 TO t927->items.
                      t927->save( ).
                      DATA(t929) = t925.
                      DATA(t930) = |Quickfix|.
                      t929->load( ).
                      APPEND t930 TO t929->items.
                      t929->save( ).
                      DATA(t931) = t925.
                      t924 = t931.
                      t922 = t924.
                    ELSE.
                      DATA t932 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                      CLEAR t932.
                      t922 = t932.
                    ENDIF.
                    t921 = t922.
                    DATA t933 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t933.
                    DATA t934 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t934.
                    DATA(t935) = abap_true.
                    IF t935 = abap_true.
                      DATA(t936) = |EC CI_SUBRC|.
                      DATA(t937) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t937->has = abap_true.
                      t937->value = t936.
                      t934 = t937.
                    ELSE.
                      DATA t938 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t938.
                      t934 = t938.
                    ENDIF.
                    t933 = t934.
                    DATA t939 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t939.
                    DATA t940 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t940.
                    DATA(t941) = abap_true.
                    IF t941 = abap_true.
                      DATA(t942) = |##SUBRC_OK|.
                      DATA(t943) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t943->has = abap_true.
                      t943->value = t942.
                      t940 = t943.
                    ELSE.
                      DATA t944 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t944.
                      t940 = t944.
                    ENDIF.
                    t939 = t940.
                    DATA t945 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t946 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t946.
                    t945 = t946.
                    DATA t947 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t948 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t948.
                    t947 = t948.
                    t908 = NEW zcl_lnt_irule_metadata( i_key = t909 i_title = t911 i_short_description = t913 i_bad_example = t945 i_good_example = t947 i_extended_information = t915 i_tags = t921 i_pragma = t939 i_pseudo_comment = t933 ).
                    CREATE OBJECT t908->zlnt_view_ownkeys_b0e8086400eb.
                    t908->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t949 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t949.
                    IF t908->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t908->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t949 ).
                    ENDIF.
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
                    DATA(t956) = |key|.
                    DATA t957 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t957.
                    IF t908->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t908->zlnt_json_ownkeys_70e5fd461788->put( p0 = t956 p1 = t957 ).
                    ENDIF.
                    DATA(t958) = |title|.
                    DATA t959 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t959.
                    IF t908->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t908->zlnt_json_ownkeys_70e5fd461788->put( p0 = t958 p1 = t959 ).
                    ENDIF.
                    DATA(t960) = |shortDescription|.
                    DATA t961 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t961.
                    IF t908->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t908->zlnt_json_ownkeys_70e5fd461788->put( p0 = t960 p1 = t961 ).
                    ENDIF.
                    DATA(t962) = |extendedInformation|.
                    DATA t963 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t963.
                    IF t908->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t908->zlnt_json_ownkeys_70e5fd461788->put( p0 = t962 p1 = t963 ).
                    ENDIF.
                    DATA(t964) = |tags|.
                    DATA t965 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t965.
                    IF t908->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t908->zlnt_json_ownkeys_70e5fd461788->put( p0 = t964 p1 = t965 ).
                    ENDIF.
                    DATA(t966) = |pseudoComment|.
                    DATA t967 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t967.
                    IF t908->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t908->zlnt_json_ownkeys_70e5fd461788->put( p0 = t966 p1 = t967 ).
                    ENDIF.
                    DATA(t968) = |pragma|.
                    DATA t969 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t969.
                    IF t908->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t908->zlnt_json_ownkeys_70e5fd461788->put( p0 = t968 p1 = t969 ).
                    ENDIF.
                    t907 = t908->key.
                    DATA t970 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA(t971) = me->conf.
                    t970 = t971->zlnt_view_read_sr_15c06369f827( ).
                    DATA t972 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                    CLEAR t972.
                    DATA t973 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    CLEAR t973.
                    DATA(t974) = abap_true.
                    IF t974 = abap_true.
                      DATA t975 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                      DATA t976 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                      DATA t977 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                      CREATE OBJECT t977.
                      t976 = t977.
                      DATA(t978) = t976.
                      DATA(t979) = t877.
                      t978->load( ).
                      APPEND t979 TO t978->items.
                      t978->save( ).
                      DATA(t980) = t976.
                      t975 = t980.
                      t973 = t975.
                    ELSE.
                      DATA t981 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                      CLEAR t981.
                      t973 = t981.
                    ENDIF.
                    t903 = zcl_lnt_issue=>at_statement( i_file = t904 i_statement = t905 i_message_26cb = t906 i_key = t907 i_severity = t970 i_fix = t972 i_alternative_fixes = t973 ).
                    t902->load( ).
                    APPEND t903 TO t902->items.
                    t902->save( ).
                  ELSE.
                    DATA(t982) = VALUE abap_bool( ).
                    DATA(t983) = VALUE abap_bool( ).
                    DATA t984 TYPE abap_bool.
                    DATA t985 TYPE abap_bool.
                    DATA t986 TYPE abap_bool.
                    DATA(t987) = t12.
                    t986 = t987->zlnt_view_read_sr_44b0dcf87623( ).
                    DATA(t988) = abap_true.
                    t985 = xsdbool( t986 = t988 ).
                    t984 = t985.
                    IF t985 = abap_true.
                      DATA t989 TYPE abap_bool.
                      DATA t990 TYPE REF TO zif_lnt_statement.
                      DATA(t991) = t20.
                      t990 = t991->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
                      t989 = xsdbool( t990 IS BOUND AND t990 IS INSTANCE OF zcl_lnt_st_modify_database ).
                      t984 = t989.
                    ENDIF.
                    t983 = t984.
                    IF t984 = abap_true.
                      DATA t992 TYPE abap_bool.
                      DATA t993 TYPE abap_bool.
                      DATA(t994) = t14.
                      DATA(t995) = t4.
                      t993 = me->is_checked( i_index = t994 i_statements = t995 ).
                      DATA(t996) = abap_false.
                      t992 = xsdbool( t993 = t996 ).
                      t983 = t992.
                    ENDIF.
                    t982 = t983.
                    IF t983 = abap_true.
                      DATA t997 TYPE abap_bool.
                      DATA t998 TYPE abap_bool.
                      DATA(t999) = t14.
                      DATA(t1000) = t4.
                      t998 = me->checks_dbcnt( i_index = t999 i_statements = t1000 ).
                      DATA(t1001) = abap_false.
                      t997 = xsdbool( t998 = t1001 ).
                      t982 = t997.
                    ENDIF.
                    IF t982 = abap_true.
                      DATA t1002 TYPE REF TO zcl_lnt_fix.
                      CLEAR t1002.
                      DATA t1003 TYPE REF TO zcl_lnt_fix.
                      CLEAR t1003.
                      DATA t1004 TYPE REF TO zcl_lnt_abap_file.
                      DATA(t1005) = t1.
                      t1004 = t1005.
                      DATA t1006 TYPE REF TO zcl_lnt_statement_node.
                      DATA(t1007) = t20.
                      t1006 = t1007.
                      DATA t1008 TYPE REF TO zcl_lnt_fix.
                      DATA t1009 TYPE string.
                      DATA(t1010) = |Add ##SUBRC_OK|.
                      t1009 = t1010.
                      DATA t1011 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                      DATA t1012 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                      DATA(t1013) = t1004.
                      DATA t1014 TYPE REF TO zcl_lnt_position.
                      DATA t1015 TYPE REF TO zcl_lnt_abstract_token.
                      DATA t1016 TYPE REF TO zcl_lnt_abstract_token.
                      DATA(t1017) = t1006.
                      t1016 = t1017->get_last_token( ).
                      t1015 = t1016.
                      DATA t1018 TYPE REF TO zcl_lnt_position.
                      DATA(t1019) = t1015.
                      t1018 = t1019->start.
                      t1014 = t1018.
                      DATA(t1020) = | ##SUBRC_OK|.
                      t1012 = zcl_lnt_edit_helper=>insert_at( i_file = t1013 i_pos = t1014 i_text = t1020 ).
                      t1011 = t1012.
                      t1008 = NEW zcl_lnt_fix( i_description = t1009 i_edit = t1011 ).
                      CREATE OBJECT t1008->zlnt_view_ownkeys_b0e8086400eb.
                      t1008->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t1021 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1021.
                      IF t1008->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t1008->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t1021 ).
                      ENDIF.
                      DATA t1022 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1022.
                      IF t1008->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t1008->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edit` p1 = t1022 ).
                      ENDIF.
                      CREATE OBJECT t1008->zlnt_json_ownkeys_70e5fd461788.
                      t1008->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA(t1023) = |description|.
                      DATA t1024 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1024.
                      IF t1008->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t1008->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1023 p1 = t1024 ).
                      ENDIF.
                      DATA(t1025) = |edit|.
                      DATA t1026 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1026.
                      IF t1008->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t1008->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1025 p1 = t1026 ).
                      ENDIF.
                      t1003 = t1008.
                      t1002 = t1003.
                      DATA(t1027) = t2.
                      DATA t1028 TYPE REF TO zcl_lnt_issue.
                      CLEAR t1028.
                      DATA(t1029) = t1.
                      DATA(t1030) = t20.
                      DATA(t1031) = t10.
                      DATA(t1032) = VALUE string( ).
                      DATA t1033 TYPE REF TO zcl_lnt_irule_metadata.
                      CLEAR t1033.
                      DATA t1034 TYPE string.
                      DATA(t1035) = |check_subrc|.
                      t1034 = t1035.
                      DATA t1036 TYPE string.
                      DATA(t1037) = |Check sy-subrc|.
                      t1036 = t1037.
                      DATA t1038 TYPE string.
                      DATA(t1039) = |Check sy-subrc|.
                      t1038 = t1039.
                      DATA t1040 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1040.
                      DATA t1041 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1041.
                      DATA(t1042) = abap_true.
                      IF t1042 = abap_true.
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
                        t1041 = t1044.
                      ELSE.
                        DATA t1045 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1045.
                        t1041 = t1045.
                      ENDIF.
                      t1040 = t1041.
                      DATA t1046 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                      CLEAR t1046.
                      DATA t1047 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                      CLEAR t1047.
                      DATA(t1048) = abap_true.
                      IF t1048 = abap_true.
                        DATA t1049 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                        DATA t1050 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                        DATA t1051 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                        CREATE OBJECT t1051.
                        t1050 = t1051.
                        DATA(t1052) = t1050.
                        DATA(t1053) = |SingleFile|.
                        t1052->load( ).
                        APPEND t1053 TO t1052->items.
                        t1052->save( ).
                        DATA(t1054) = t1050.
                        DATA(t1055) = |Quickfix|.
                        t1054->load( ).
                        APPEND t1055 TO t1054->items.
                        t1054->save( ).
                        DATA(t1056) = t1050.
                        t1049 = t1056.
                        t1047 = t1049.
                      ELSE.
                        DATA t1057 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                        CLEAR t1057.
                        t1047 = t1057.
                      ENDIF.
                      t1046 = t1047.
                      DATA t1058 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1058.
                      DATA t1059 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1059.
                      DATA(t1060) = abap_true.
                      IF t1060 = abap_true.
                        DATA(t1061) = |EC CI_SUBRC|.
                        DATA(t1062) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t1062->has = abap_true.
                        t1062->value = t1061.
                        t1059 = t1062.
                      ELSE.
                        DATA t1063 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1063.
                        t1059 = t1063.
                      ENDIF.
                      t1058 = t1059.
                      DATA t1064 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1064.
                      DATA t1065 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1065.
                      DATA(t1066) = abap_true.
                      IF t1066 = abap_true.
                        DATA(t1067) = |##SUBRC_OK|.
                        DATA(t1068) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t1068->has = abap_true.
                        t1068->value = t1067.
                        t1065 = t1068.
                      ELSE.
                        DATA t1069 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1069.
                        t1065 = t1069.
                      ENDIF.
                      t1064 = t1065.
                      DATA t1070 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA t1071 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1071.
                      t1070 = t1071.
                      DATA t1072 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA t1073 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t1073.
                      t1072 = t1073.
                      t1033 = NEW zcl_lnt_irule_metadata( i_key = t1034 i_title = t1036 i_short_description = t1038 i_bad_example = t1070 i_good_example = t1072 i_extended_information = t1040 i_tags = t1046 i_pragma = t1064 i_pseudo_comment = t1058 ).
                      CREATE OBJECT t1033->zlnt_view_ownkeys_b0e8086400eb.
                      t1033->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t1074 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1074.
                      IF t1033->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t1033->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1074 ).
                      ENDIF.
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
                      DATA(t1081) = |key|.
                      DATA t1082 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1082.
                      IF t1033->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t1033->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1081 p1 = t1082 ).
                      ENDIF.
                      DATA(t1083) = |title|.
                      DATA t1084 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1084.
                      IF t1033->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t1033->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1083 p1 = t1084 ).
                      ENDIF.
                      DATA(t1085) = |shortDescription|.
                      DATA t1086 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1086.
                      IF t1033->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t1033->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1085 p1 = t1086 ).
                      ENDIF.
                      DATA(t1087) = |extendedInformation|.
                      DATA t1088 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1088.
                      IF t1033->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t1033->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1087 p1 = t1088 ).
                      ENDIF.
                      DATA(t1089) = |tags|.
                      DATA t1090 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1090.
                      IF t1033->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t1033->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1089 p1 = t1090 ).
                      ENDIF.
                      DATA(t1091) = |pseudoComment|.
                      DATA t1092 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1092.
                      IF t1033->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t1033->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1091 p1 = t1092 ).
                      ENDIF.
                      DATA(t1093) = |pragma|.
                      DATA t1094 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t1094.
                      IF t1033->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t1033->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1093 p1 = t1094 ).
                      ENDIF.
                      t1032 = t1033->key.
                      DATA t1095 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA(t1096) = me->conf.
                      t1095 = t1096->zlnt_view_read_sr_15c06369f827( ).
                      DATA t1097 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                      CLEAR t1097.
                      DATA t1098 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                      CLEAR t1098.
                      DATA(t1099) = abap_true.
                      IF t1099 = abap_true.
                        DATA t1100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                        DATA t1101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                        DATA t1102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                        CREATE OBJECT t1102.
                        t1101 = t1102.
                        DATA(t1103) = t1101.
                        DATA(t1104) = t1002.
                        t1103->load( ).
                        APPEND t1104 TO t1103->items.
                        t1103->save( ).
                        DATA(t1105) = t1101.
                        t1100 = t1105.
                        t1098 = t1100.
                      ELSE.
                        DATA t1106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                        CLEAR t1106.
                        t1098 = t1106.
                      ENDIF.
                      t1028 = zcl_lnt_issue=>at_statement( i_file = t1029 i_statement = t1030 i_message_26cb = t1031 i_key = t1032 i_severity = t1095 i_fix = t1097 i_alternative_fixes = t1098 ).
                      t1027->load( ).
                      APPEND t1028 TO t1027->items.
                      t1027->save( ).
                    ELSE.
                      DATA(t1107) = VALUE abap_bool( ).
                      DATA t1108 TYPE abap_bool.
                      DATA t1109 TYPE abap_bool.
                      DATA t1110 TYPE abap_bool.
                      DATA(t1111) = t12.
                      t1110 = t1111->zlnt_view_read_sr_3ef8bc0e5713( ).
                      DATA(t1112) = abap_true.
                      t1109 = xsdbool( t1110 = t1112 ).
                      t1108 = t1109.
                      IF t1109 = abap_true.
                        DATA t1113 TYPE abap_bool.
                        DATA t1114 TYPE REF TO zif_lnt_statement.
                        DATA(t1115) = t20.
                        t1114 = t1115->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
                        t1113 = xsdbool( t1114 IS BOUND AND t1114 IS INSTANCE OF zcl_lnt_st_read_table ).
                        t1108 = t1113.
                      ENDIF.
                      t1107 = t1108.
                      IF t1108 = abap_true.
                        DATA t1116 TYPE abap_bool.
                        DATA t1117 TYPE abap_bool.
                        DATA(t1118) = t14.
                        DATA(t1119) = t4.
                        t1117 = me->is_checked( i_index = t1118 i_statements = t1119 ).
                        DATA(t1120) = abap_false.
                        t1116 = xsdbool( t1117 = t1120 ).
                        t1107 = t1116.
                      ENDIF.
                      IF t1107 = abap_true.
                        DATA t1121 TYPE REF TO zcl_lnt_fix.
                        CLEAR t1121.
                        DATA t1122 TYPE REF TO zcl_lnt_fix.
                        CLEAR t1122.
                        DATA t1123 TYPE REF TO zcl_lnt_abap_file.
                        DATA(t1124) = t1.
                        t1123 = t1124.
                        DATA t1125 TYPE REF TO zcl_lnt_statement_node.
                        DATA(t1126) = t20.
                        t1125 = t1126.
                        DATA t1127 TYPE REF TO zcl_lnt_fix.
                        DATA t1128 TYPE string.
                        DATA(t1129) = |Add ##SUBRC_OK|.
                        t1128 = t1129.
                        DATA t1130 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                        DATA t1131 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                        DATA(t1132) = t1123.
                        DATA t1133 TYPE REF TO zcl_lnt_position.
                        DATA t1134 TYPE REF TO zcl_lnt_abstract_token.
                        DATA t1135 TYPE REF TO zcl_lnt_abstract_token.
                        DATA(t1136) = t1125.
                        t1135 = t1136->get_last_token( ).
                        t1134 = t1135.
                        DATA t1137 TYPE REF TO zcl_lnt_position.
                        DATA(t1138) = t1134.
                        t1137 = t1138->start.
                        t1133 = t1137.
                        DATA(t1139) = | ##SUBRC_OK|.
                        t1131 = zcl_lnt_edit_helper=>insert_at( i_file = t1132 i_pos = t1133 i_text = t1139 ).
                        t1130 = t1131.
                        t1127 = NEW zcl_lnt_fix( i_description = t1128 i_edit = t1130 ).
                        CREATE OBJECT t1127->zlnt_view_ownkeys_b0e8086400eb.
                        t1127->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t1140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1140.
                        IF t1127->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                          t1127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t1140 ).
                        ENDIF.
                        DATA t1141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1141.
                        IF t1127->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                          t1127->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edit` p1 = t1141 ).
                        ENDIF.
                        CREATE OBJECT t1127->zlnt_json_ownkeys_70e5fd461788.
                        t1127->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA(t1142) = |description|.
                        DATA t1143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1143.
                        IF t1127->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t1127->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1142 p1 = t1143 ).
                        ENDIF.
                        DATA(t1144) = |edit|.
                        DATA t1145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1145.
                        IF t1127->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t1127->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1144 p1 = t1145 ).
                        ENDIF.
                        t1122 = t1127.
                        t1121 = t1122.
                        DATA(t1146) = t2.
                        DATA t1147 TYPE REF TO zcl_lnt_issue.
                        CLEAR t1147.
                        DATA(t1148) = t1.
                        DATA(t1149) = t20.
                        DATA(t1150) = t10.
                        DATA(t1151) = VALUE string( ).
                        DATA t1152 TYPE REF TO zcl_lnt_irule_metadata.
                        CLEAR t1152.
                        DATA t1153 TYPE string.
                        DATA(t1154) = |check_subrc|.
                        t1153 = t1154.
                        DATA t1155 TYPE string.
                        DATA(t1156) = |Check sy-subrc|.
                        t1155 = t1156.
                        DATA t1157 TYPE string.
                        DATA(t1158) = |Check sy-subrc|.
                        t1157 = t1158.
                        DATA t1159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1159.
                        DATA t1160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1160.
                        DATA(t1161) = abap_true.
                        IF t1161 = abap_true.
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
                          t1160 = t1163.
                        ELSE.
                          DATA t1164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1164.
                          t1160 = t1164.
                        ENDIF.
                        t1159 = t1160.
                        DATA t1165 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                        CLEAR t1165.
                        DATA t1166 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                        CLEAR t1166.
                        DATA(t1167) = abap_true.
                        IF t1167 = abap_true.
                          DATA t1168 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                          DATA t1169 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                          DATA t1170 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                          CREATE OBJECT t1170.
                          t1169 = t1170.
                          DATA(t1171) = t1169.
                          DATA(t1172) = |SingleFile|.
                          t1171->load( ).
                          APPEND t1172 TO t1171->items.
                          t1171->save( ).
                          DATA(t1173) = t1169.
                          DATA(t1174) = |Quickfix|.
                          t1173->load( ).
                          APPEND t1174 TO t1173->items.
                          t1173->save( ).
                          DATA(t1175) = t1169.
                          t1168 = t1175.
                          t1166 = t1168.
                        ELSE.
                          DATA t1176 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                          CLEAR t1176.
                          t1166 = t1176.
                        ENDIF.
                        t1165 = t1166.
                        DATA t1177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1177.
                        DATA t1178 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1178.
                        DATA(t1179) = abap_true.
                        IF t1179 = abap_true.
                          DATA(t1180) = |EC CI_SUBRC|.
                          DATA(t1181) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t1181->has = abap_true.
                          t1181->value = t1180.
                          t1178 = t1181.
                        ELSE.
                          DATA t1182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1182.
                          t1178 = t1182.
                        ENDIF.
                        t1177 = t1178.
                        DATA t1183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1183.
                        DATA t1184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1184.
                        DATA(t1185) = abap_true.
                        IF t1185 = abap_true.
                          DATA(t1186) = |##SUBRC_OK|.
                          DATA(t1187) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                          t1187->has = abap_true.
                          t1187->value = t1186.
                          t1184 = t1187.
                        ELSE.
                          DATA t1188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1188.
                          t1184 = t1188.
                        ENDIF.
                        t1183 = t1184.
                        DATA t1189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        DATA t1190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1190.
                        t1189 = t1190.
                        DATA t1191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        DATA t1192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t1192.
                        t1191 = t1192.
                        t1152 = NEW zcl_lnt_irule_metadata( i_key = t1153 i_title = t1155 i_short_description = t1157 i_bad_example = t1189 i_good_example = t1191 i_extended_information = t1159 i_tags = t1165 i_pragma = t1183 i_pseudo_comment = t1177 ).
                        CREATE OBJECT t1152->zlnt_view_ownkeys_b0e8086400eb.
                        t1152->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t1193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1193.
                        IF t1152->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                          t1152->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1193 ).
                        ENDIF.
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
                        DATA(t1200) = |key|.
                        DATA t1201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1201.
                        IF t1152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t1152->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1200 p1 = t1201 ).
                        ENDIF.
                        DATA(t1202) = |title|.
                        DATA t1203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1203.
                        IF t1152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t1152->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1202 p1 = t1203 ).
                        ENDIF.
                        DATA(t1204) = |shortDescription|.
                        DATA t1205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1205.
                        IF t1152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t1152->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1204 p1 = t1205 ).
                        ENDIF.
                        DATA(t1206) = |extendedInformation|.
                        DATA t1207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1207.
                        IF t1152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t1152->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1206 p1 = t1207 ).
                        ENDIF.
                        DATA(t1208) = |tags|.
                        DATA t1209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1209.
                        IF t1152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t1152->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1208 p1 = t1209 ).
                        ENDIF.
                        DATA(t1210) = |pseudoComment|.
                        DATA t1211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1211.
                        IF t1152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t1152->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1210 p1 = t1211 ).
                        ENDIF.
                        DATA(t1212) = |pragma|.
                        DATA t1213 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t1213.
                        IF t1152->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                          t1152->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1212 p1 = t1213 ).
                        ENDIF.
                        t1151 = t1152->key.
                        DATA t1214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        DATA(t1215) = me->conf.
                        t1214 = t1215->zlnt_view_read_sr_15c06369f827( ).
                        DATA t1216 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                        CLEAR t1216.
                        DATA t1217 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                        CLEAR t1217.
                        DATA(t1218) = abap_true.
                        IF t1218 = abap_true.
                          DATA t1219 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                          DATA t1220 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                          DATA t1221 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                          CREATE OBJECT t1221.
                          t1220 = t1221.
                          DATA(t1222) = t1220.
                          DATA(t1223) = t1121.
                          t1222->load( ).
                          APPEND t1223 TO t1222->items.
                          t1222->save( ).
                          DATA(t1224) = t1220.
                          t1219 = t1224.
                          t1217 = t1219.
                        ELSE.
                          DATA t1225 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                          CLEAR t1225.
                          t1217 = t1225.
                        ENDIF.
                        t1147 = zcl_lnt_issue=>at_statement( i_file = t1148 i_statement = t1149 i_message_26cb = t1150 i_key = t1151 i_severity = t1214 i_fix = t1216 i_alternative_fixes = t1217 ).
                        t1146->load( ).
                        APPEND t1147 TO t1146->items.
                        t1146->save( ).
                      ELSE.
                        DATA(t1226) = VALUE abap_bool( ).
                        DATA(t1227) = VALUE abap_bool( ).
                        DATA t1228 TYPE abap_bool.
                        DATA t1229 TYPE abap_bool.
                        DATA t1230 TYPE abap_bool.
                        DATA(t1231) = t12.
                        t1230 = t1231->zlnt_view_read_sr_4786a0a75bed( ).
                        DATA(t1232) = abap_true.
                        t1229 = xsdbool( t1230 = t1232 ).
                        t1228 = t1229.
                        IF t1229 = abap_true.
                          DATA t1233 TYPE abap_bool.
                          DATA t1234 TYPE REF TO zif_lnt_statement.
                          DATA(t1235) = t20.
                          t1234 = t1235->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
                          t1233 = xsdbool( t1234 IS BOUND AND t1234 IS INSTANCE OF zcl_lnt_st_assign ).
                          t1228 = t1233.
                        ENDIF.
                        t1227 = t1228.
                        IF t1228 = abap_true.
                          DATA t1236 TYPE abap_bool.
                          DATA t1237 TYPE abap_bool.
                          DATA(t1238) = t20.
                          t1237 = me->is_simple_assign( i_statement = t1238 ).
                          DATA(t1239) = abap_false.
                          t1236 = xsdbool( t1237 = t1239 ).
                          t1227 = t1236.
                        ENDIF.
                        t1226 = t1227.
                        IF t1227 = abap_true.
                          DATA t1240 TYPE abap_bool.
                          DATA t1241 TYPE abap_bool.
                          DATA(t1242) = t14.
                          DATA(t1243) = t4.
                          t1241 = me->is_checked( i_index = t1242 i_statements = t1243 ).
                          DATA(t1244) = abap_false.
                          t1240 = xsdbool( t1241 = t1244 ).
                          t1226 = t1240.
                        ENDIF.
                        IF t1226 = abap_true.
                          DATA t1245 TYPE REF TO zcl_lnt_fix.
                          CLEAR t1245.
                          DATA t1246 TYPE REF TO zcl_lnt_fix.
                          CLEAR t1246.
                          DATA t1247 TYPE REF TO zcl_lnt_abap_file.
                          DATA(t1248) = t1.
                          t1247 = t1248.
                          DATA t1249 TYPE REF TO zcl_lnt_statement_node.
                          DATA(t1250) = t20.
                          t1249 = t1250.
                          DATA t1251 TYPE REF TO zcl_lnt_fix.
                          DATA t1252 TYPE string.
                          DATA(t1253) = |Add ##SUBRC_OK|.
                          t1252 = t1253.
                          DATA t1254 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                          DATA t1255 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                          DATA(t1256) = t1247.
                          DATA t1257 TYPE REF TO zcl_lnt_position.
                          DATA t1258 TYPE REF TO zcl_lnt_abstract_token.
                          DATA t1259 TYPE REF TO zcl_lnt_abstract_token.
                          DATA(t1260) = t1249.
                          t1259 = t1260->get_last_token( ).
                          t1258 = t1259.
                          DATA t1261 TYPE REF TO zcl_lnt_position.
                          DATA(t1262) = t1258.
                          t1261 = t1262->start.
                          t1257 = t1261.
                          DATA(t1263) = | ##SUBRC_OK|.
                          t1255 = zcl_lnt_edit_helper=>insert_at( i_file = t1256 i_pos = t1257 i_text = t1263 ).
                          t1254 = t1255.
                          t1251 = NEW zcl_lnt_fix( i_description = t1252 i_edit = t1254 ).
                          CREATE OBJECT t1251->zlnt_view_ownkeys_b0e8086400eb.
                          t1251->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                          DATA t1264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1264.
                          IF t1251->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                            t1251->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t1264 ).
                          ENDIF.
                          DATA t1265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1265.
                          IF t1251->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                            t1251->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edit` p1 = t1265 ).
                          ENDIF.
                          CREATE OBJECT t1251->zlnt_json_ownkeys_70e5fd461788.
                          t1251->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                          DATA(t1266) = |description|.
                          DATA t1267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1267.
                          IF t1251->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                            t1251->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1266 p1 = t1267 ).
                          ENDIF.
                          DATA(t1268) = |edit|.
                          DATA t1269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1269.
                          IF t1251->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                            t1251->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1268 p1 = t1269 ).
                          ENDIF.
                          t1246 = t1251.
                          t1245 = t1246.
                          DATA(t1270) = t2.
                          DATA t1271 TYPE REF TO zcl_lnt_issue.
                          CLEAR t1271.
                          DATA(t1272) = t1.
                          DATA(t1273) = t20.
                          DATA(t1274) = t10.
                          DATA(t1275) = VALUE string( ).
                          DATA t1276 TYPE REF TO zcl_lnt_irule_metadata.
                          CLEAR t1276.
                          DATA t1277 TYPE string.
                          DATA(t1278) = |check_subrc|.
                          t1277 = t1278.
                          DATA t1279 TYPE string.
                          DATA(t1280) = |Check sy-subrc|.
                          t1279 = t1280.
                          DATA t1281 TYPE string.
                          DATA(t1282) = |Check sy-subrc|.
                          t1281 = t1282.
                          DATA t1283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1283.
                          DATA t1284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1284.
                          DATA(t1285) = abap_true.
                          IF t1285 = abap_true.
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
                            t1284 = t1287.
                          ELSE.
                            DATA t1288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1288.
                            t1284 = t1288.
                          ENDIF.
                          t1283 = t1284.
                          DATA t1289 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                          CLEAR t1289.
                          DATA t1290 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                          CLEAR t1290.
                          DATA(t1291) = abap_true.
                          IF t1291 = abap_true.
                            DATA t1292 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                            DATA t1293 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                            DATA t1294 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                            CREATE OBJECT t1294.
                            t1293 = t1294.
                            DATA(t1295) = t1293.
                            DATA(t1296) = |SingleFile|.
                            t1295->load( ).
                            APPEND t1296 TO t1295->items.
                            t1295->save( ).
                            DATA(t1297) = t1293.
                            DATA(t1298) = |Quickfix|.
                            t1297->load( ).
                            APPEND t1298 TO t1297->items.
                            t1297->save( ).
                            DATA(t1299) = t1293.
                            t1292 = t1299.
                            t1290 = t1292.
                          ELSE.
                            DATA t1300 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                            CLEAR t1300.
                            t1290 = t1300.
                          ENDIF.
                          t1289 = t1290.
                          DATA t1301 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1301.
                          DATA t1302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1302.
                          DATA(t1303) = abap_true.
                          IF t1303 = abap_true.
                            DATA(t1304) = |EC CI_SUBRC|.
                            DATA(t1305) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                            t1305->has = abap_true.
                            t1305->value = t1304.
                            t1302 = t1305.
                          ELSE.
                            DATA t1306 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1306.
                            t1302 = t1306.
                          ENDIF.
                          t1301 = t1302.
                          DATA t1307 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1307.
                          DATA t1308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1308.
                          DATA(t1309) = abap_true.
                          IF t1309 = abap_true.
                            DATA(t1310) = |##SUBRC_OK|.
                            DATA(t1311) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                            t1311->has = abap_true.
                            t1311->value = t1310.
                            t1308 = t1311.
                          ELSE.
                            DATA t1312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1312.
                            t1308 = t1312.
                          ENDIF.
                          t1307 = t1308.
                          DATA t1313 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          DATA t1314 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1314.
                          t1313 = t1314.
                          DATA t1315 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          DATA t1316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t1316.
                          t1315 = t1316.
                          t1276 = NEW zcl_lnt_irule_metadata( i_key = t1277 i_title = t1279 i_short_description = t1281 i_bad_example = t1313 i_good_example = t1315 i_extended_information = t1283 i_tags = t1289 i_pragma = t1307 i_pseudo_comment = t1301 ).
                          CREATE OBJECT t1276->zlnt_view_ownkeys_b0e8086400eb.
                          t1276->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                          DATA t1317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1317.
                          IF t1276->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                            t1276->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1317 ).
                          ENDIF.
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
                          DATA(t1324) = |key|.
                          DATA t1325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1325.
                          IF t1276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                            t1276->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1324 p1 = t1325 ).
                          ENDIF.
                          DATA(t1326) = |title|.
                          DATA t1327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1327.
                          IF t1276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                            t1276->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1326 p1 = t1327 ).
                          ENDIF.
                          DATA(t1328) = |shortDescription|.
                          DATA t1329 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1329.
                          IF t1276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                            t1276->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1328 p1 = t1329 ).
                          ENDIF.
                          DATA(t1330) = |extendedInformation|.
                          DATA t1331 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1331.
                          IF t1276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                            t1276->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1330 p1 = t1331 ).
                          ENDIF.
                          DATA(t1332) = |tags|.
                          DATA t1333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1333.
                          IF t1276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                            t1276->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1332 p1 = t1333 ).
                          ENDIF.
                          DATA(t1334) = |pseudoComment|.
                          DATA t1335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1335.
                          IF t1276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                            t1276->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1334 p1 = t1335 ).
                          ENDIF.
                          DATA(t1336) = |pragma|.
                          DATA t1337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t1337.
                          IF t1276->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                            t1276->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1336 p1 = t1337 ).
                          ENDIF.
                          t1275 = t1276->key.
                          DATA t1338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          DATA(t1339) = me->conf.
                          t1338 = t1339->zlnt_view_read_sr_15c06369f827( ).
                          DATA t1340 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                          CLEAR t1340.
                          DATA t1341 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                          CLEAR t1341.
                          DATA(t1342) = abap_true.
                          IF t1342 = abap_true.
                            DATA t1343 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                            DATA t1344 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                            DATA t1345 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                            CREATE OBJECT t1345.
                            t1344 = t1345.
                            DATA(t1346) = t1344.
                            DATA(t1347) = t1245.
                            t1346->load( ).
                            APPEND t1347 TO t1346->items.
                            t1346->save( ).
                            DATA(t1348) = t1344.
                            t1343 = t1348.
                            t1341 = t1343.
                          ELSE.
                            DATA t1349 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                            CLEAR t1349.
                            t1341 = t1349.
                          ENDIF.
                          t1271 = zcl_lnt_issue=>at_statement( i_file = t1272 i_statement = t1273 i_message_26cb = t1274 i_key = t1275 i_severity = t1338 i_fix = t1340 i_alternative_fixes = t1341 ).
                          t1270->load( ).
                          APPEND t1271 TO t1270->items.
                          t1270->save( ).
                        ELSE.
                          DATA(t1350) = VALUE abap_bool( ).
                          DATA(t1351) = VALUE abap_bool( ).
                          DATA t1352 TYPE abap_bool.
                          DATA t1353 TYPE abap_bool.
                          DATA t1354 TYPE abap_bool.
                          DATA(t1355) = t12.
                          t1354 = t1355->zlnt_view_read_sr_2950c67596a4( ).
                          DATA(t1356) = abap_true.
                          t1353 = xsdbool( t1354 = t1356 ).
                          t1352 = t1353.
                          IF t1353 = abap_true.
                            DATA t1357 TYPE abap_bool.
                            DATA t1358 TYPE REF TO zif_lnt_statement.
                            DATA(t1359) = t20.
                            t1358 = t1359->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
                            t1357 = xsdbool( t1358 IS BOUND AND t1358 IS INSTANCE OF zcl_lnt_st_find ).
                            t1352 = t1357.
                          ENDIF.
                          t1351 = t1352.
                          IF t1352 = abap_true.
                            DATA(t1360) = VALUE abap_bool( ).
                            DATA(t1361) = VALUE abap_bool( ).
                            DATA t1362 TYPE REF TO zcl_lnt_statement_node.
                            DATA(t1363) = t20.
                            t1362 = t1363.
                            DATA(t1364) = VALUE abap_bool( ).
                            DATA(t1365) = VALUE abap_bool( ).
                            DATA(t1366) = VALUE i( ).
                            DATA t1367 TYPE string.
                            DATA t1368 TYPE string.
                            DATA(t1369) = t1362.
                            t1368 = t1369->concat_tokens( ).
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
                            DATA(t1373) = 0.
                            t1365 = xsdbool( t1366 >= t1373 ).
                            DATA(t1374) = abap_true.
                            t1364 = xsdbool( t1365 = t1374 ).
                            t1361 = t1364.
                            DATA(t1375) = abap_false.
                            t1360 = xsdbool( t1361 = t1375 ).
                            t1351 = t1360.
                          ENDIF.
                          t1350 = t1351.
                          IF t1351 = abap_true.
                            DATA t1376 TYPE abap_bool.
                            DATA t1377 TYPE abap_bool.
                            DATA(t1378) = t14.
                            DATA(t1379) = t4.
                            t1377 = me->is_checked( i_index = t1378 i_statements = t1379 ).
                            DATA(t1380) = abap_false.
                            t1376 = xsdbool( t1377 = t1380 ).
                            t1350 = t1376.
                          ENDIF.
                          IF t1350 = abap_true.
                            DATA t1381 TYPE REF TO zcl_lnt_fix.
                            CLEAR t1381.
                            DATA t1382 TYPE REF TO zcl_lnt_fix.
                            CLEAR t1382.
                            DATA t1383 TYPE REF TO zcl_lnt_abap_file.
                            DATA(t1384) = t1.
                            t1383 = t1384.
                            DATA t1385 TYPE REF TO zcl_lnt_statement_node.
                            DATA(t1386) = t20.
                            t1385 = t1386.
                            DATA t1387 TYPE REF TO zcl_lnt_fix.
                            DATA t1388 TYPE string.
                            DATA(t1389) = |Add ##SUBRC_OK|.
                            t1388 = t1389.
                            DATA t1390 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                            DATA t1391 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                            DATA(t1392) = t1383.
                            DATA t1393 TYPE REF TO zcl_lnt_position.
                            DATA t1394 TYPE REF TO zcl_lnt_abstract_token.
                            DATA t1395 TYPE REF TO zcl_lnt_abstract_token.
                            DATA(t1396) = t1385.
                            t1395 = t1396->get_last_token( ).
                            t1394 = t1395.
                            DATA t1397 TYPE REF TO zcl_lnt_position.
                            DATA(t1398) = t1394.
                            t1397 = t1398->start.
                            t1393 = t1397.
                            DATA(t1399) = | ##SUBRC_OK|.
                            t1391 = zcl_lnt_edit_helper=>insert_at( i_file = t1392 i_pos = t1393 i_text = t1399 ).
                            t1390 = t1391.
                            t1387 = NEW zcl_lnt_fix( i_description = t1388 i_edit = t1390 ).
                            CREATE OBJECT t1387->zlnt_view_ownkeys_b0e8086400eb.
                            t1387->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                            DATA t1400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1400.
                            IF t1387->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                              t1387->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `description` p1 = t1400 ).
                            ENDIF.
                            DATA t1401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1401.
                            IF t1387->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                              t1387->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `edit` p1 = t1401 ).
                            ENDIF.
                            CREATE OBJECT t1387->zlnt_json_ownkeys_70e5fd461788.
                            t1387->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                            DATA(t1402) = |description|.
                            DATA t1403 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1403.
                            IF t1387->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                              t1387->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1402 p1 = t1403 ).
                            ENDIF.
                            DATA(t1404) = |edit|.
                            DATA t1405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1405.
                            IF t1387->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                              t1387->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1404 p1 = t1405 ).
                            ENDIF.
                            t1382 = t1387.
                            t1381 = t1382.
                            DATA(t1406) = t2.
                            DATA t1407 TYPE REF TO zcl_lnt_issue.
                            CLEAR t1407.
                            DATA(t1408) = t1.
                            DATA(t1409) = t20.
                            DATA(t1410) = t10.
                            DATA(t1411) = VALUE string( ).
                            DATA t1412 TYPE REF TO zcl_lnt_irule_metadata.
                            CLEAR t1412.
                            DATA t1413 TYPE string.
                            DATA(t1414) = |check_subrc|.
                            t1413 = t1414.
                            DATA t1415 TYPE string.
                            DATA(t1416) = |Check sy-subrc|.
                            t1415 = t1416.
                            DATA t1417 TYPE string.
                            DATA(t1418) = |Check sy-subrc|.
                            t1417 = t1418.
                            DATA t1419 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1419.
                            DATA t1420 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1420.
                            DATA(t1421) = abap_true.
                            IF t1421 = abap_true.
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
                              t1420 = t1423.
                            ELSE.
                              DATA t1424 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t1424.
                              t1420 = t1424.
                            ENDIF.
                            t1419 = t1420.
                            DATA t1425 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                            CLEAR t1425.
                            DATA t1426 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                            CLEAR t1426.
                            DATA(t1427) = abap_true.
                            IF t1427 = abap_true.
                              DATA t1428 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                              DATA t1429 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                              DATA t1430 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                              CREATE OBJECT t1430.
                              t1429 = t1430.
                              DATA(t1431) = t1429.
                              DATA(t1432) = |SingleFile|.
                              t1431->load( ).
                              APPEND t1432 TO t1431->items.
                              t1431->save( ).
                              DATA(t1433) = t1429.
                              DATA(t1434) = |Quickfix|.
                              t1433->load( ).
                              APPEND t1434 TO t1433->items.
                              t1433->save( ).
                              DATA(t1435) = t1429.
                              t1428 = t1435.
                              t1426 = t1428.
                            ELSE.
                              DATA t1436 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                              CLEAR t1436.
                              t1426 = t1436.
                            ENDIF.
                            t1425 = t1426.
                            DATA t1437 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1437.
                            DATA t1438 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1438.
                            DATA(t1439) = abap_true.
                            IF t1439 = abap_true.
                              DATA(t1440) = |EC CI_SUBRC|.
                              DATA(t1441) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                              t1441->has = abap_true.
                              t1441->value = t1440.
                              t1438 = t1441.
                            ELSE.
                              DATA t1442 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t1442.
                              t1438 = t1442.
                            ENDIF.
                            t1437 = t1438.
                            DATA t1443 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1443.
                            DATA t1444 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1444.
                            DATA(t1445) = abap_true.
                            IF t1445 = abap_true.
                              DATA(t1446) = |##SUBRC_OK|.
                              DATA(t1447) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                              t1447->has = abap_true.
                              t1447->value = t1446.
                              t1444 = t1447.
                            ELSE.
                              DATA t1448 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t1448.
                              t1444 = t1448.
                            ENDIF.
                            t1443 = t1444.
                            DATA t1449 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            DATA t1450 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1450.
                            t1449 = t1450.
                            DATA t1451 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            DATA t1452 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t1452.
                            t1451 = t1452.
                            t1412 = NEW zcl_lnt_irule_metadata( i_key = t1413 i_title = t1415 i_short_description = t1417 i_bad_example = t1449 i_good_example = t1451 i_extended_information = t1419 i_tags = t1425 i_pragma = t1443
                            i_pseudo_comment = t1437 ).
                            CREATE OBJECT t1412->zlnt_view_ownkeys_b0e8086400eb.
                            t1412->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                            DATA t1453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1453.
                            IF t1412->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                              t1412->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t1453 ).
                            ENDIF.
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
                            DATA(t1460) = |key|.
                            DATA t1461 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1461.
                            IF t1412->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                              t1412->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1460 p1 = t1461 ).
                            ENDIF.
                            DATA(t1462) = |title|.
                            DATA t1463 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1463.
                            IF t1412->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                              t1412->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1462 p1 = t1463 ).
                            ENDIF.
                            DATA(t1464) = |shortDescription|.
                            DATA t1465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1465.
                            IF t1412->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                              t1412->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1464 p1 = t1465 ).
                            ENDIF.
                            DATA(t1466) = |extendedInformation|.
                            DATA t1467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1467.
                            IF t1412->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                              t1412->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1466 p1 = t1467 ).
                            ENDIF.
                            DATA(t1468) = |tags|.
                            DATA t1469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1469.
                            IF t1412->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                              t1412->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1468 p1 = t1469 ).
                            ENDIF.
                            DATA(t1470) = |pseudoComment|.
                            DATA t1471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1471.
                            IF t1412->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                              t1412->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1470 p1 = t1471 ).
                            ENDIF.
                            DATA(t1472) = |pragma|.
                            DATA t1473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                            CLEAR t1473.
                            IF t1412->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                              t1412->zlnt_json_ownkeys_70e5fd461788->put( p0 = t1472 p1 = t1473 ).
                            ENDIF.
                            t1411 = t1412->key.
                            DATA t1474 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            DATA(t1475) = me->conf.
                            t1474 = t1475->zlnt_view_read_sr_15c06369f827( ).
                            DATA t1476 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                            CLEAR t1476.
                            DATA t1477 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                            CLEAR t1477.
                            DATA(t1478) = abap_true.
                            IF t1478 = abap_true.
                              DATA t1479 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                              DATA t1480 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                              DATA t1481 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                              CREATE OBJECT t1481.
                              t1480 = t1481.
                              DATA(t1482) = t1480.
                              DATA(t1483) = t1381.
                              t1482->load( ).
                              APPEND t1483 TO t1482->items.
                              t1482->save( ).
                              DATA(t1484) = t1480.
                              t1479 = t1484.
                              t1477 = t1479.
                            ELSE.
                              DATA t1485 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                              CLEAR t1485.
                              t1477 = t1485.
                            ENDIF.
                            t1407 = zcl_lnt_issue=>at_statement( i_file = t1408 i_statement = t1409 i_message_26cb = t1410 i_key = t1411 i_severity = t1474 i_fix = t1476 i_alternative_fixes = t1477 ).
                            t1406->load( ).
                            APPEND t1407 TO t1406->items.
                            t1406->save( ).
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
      DATA t1486 TYPE i.
      DATA(t1487) = t14.
      DATA(t1488) = 1.
      t1486 = t1487 + t1488.
      t14 = t1486.
    ENDDO.
    DATA(t1489) = t2.
    result = t1489.

  ENDMETHOD.

  METHOD is_simple_assign.
    DATA(t1) = i_statement.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE i.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = t6.
    t8 = t9->children.
    t5 = t8.
    t4 ?= t5.
    t4->load( ).
    t3 = lines( t4->items ).
    DATA(t10) = 5.
    t2 = xsdbool( t3 = t10 ).
    IF t2 = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_expression_node.
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      DATA(t13) = t1.
      DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d98_aa488fc184edca.
      t12 = t13->find_direct_expression( i_type_9913 = t14 ).
      t11 = t12.
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = VALUE abap_bool( ).
      DATA t17 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t18.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t19.
      DATA t20 TYPE REF TO zcl_lnt_expression_node.
      DATA(t21) = t11.
      t20 = t21.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t22.
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = t20.
      IF t24 IS INITIAL.
        t23 = abap_true.
      ENDIF.
      IF t23 = abap_true.
        DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t25.
        t22 = t25.
      ELSE.
        DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t28 TYPE REF TO zcl_lnt_abstract_node.
        DATA t29 TYPE REF TO zcl_lnt_expression_node.
        DATA(t30) = t20.
        t29 = t30.
        t28 = t29.
        DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t32) = t28.
        t31 = t32->children.
        t27 = t31.
        t26 ?= t27.
        t22 = t26.
      ENDIF.
      t19 = t22.
      t18 = t19.
      DATA t33 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t33.
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = t18.
      IF t35 IS INITIAL.
        t34 = abap_true.
      ENDIF.
      IF t34 = abap_true.
        DATA t36 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t36.
        t33 = t36.
      ELSE.
        DATA t37 TYPE f.
        DATA t38 TYPE i.
        DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t40) = t18.
        t39 = t40.
        t39->load( ).
        t38 = lines( t39->items ).
        t37 = t38.
        DATA(t41) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t41->has = abap_true.
        t41->value = t37.
        t33 = t41.
      ENDIF.
      t17 = t33.
      DATA t42 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t42.
      DATA(t43) = abap_true.
      IF t43 = abap_true.
        DATA(t44) = CONV f( 1 ).
        DATA(t45) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t45->has = abap_true.
        t45->value = t44.
        t42 = t45.
      ELSE.
        DATA t46 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t46.
        t42 = t46.
      ENDIF.
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
        DATA(t49) = VALUE abap_bool( ).
        DATA t50 TYPE REF TO zcl_lnt_expression_node.
        DATA t51 TYPE REF TO zcl_lnt_expression_node.
        DATA t52 TYPE REF TO zcl_lnt_expression_node.
        DATA(t53) = t11.
        t52 = t53.
        DATA(t54) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
        t51 = t52->find_direct_expression( i_type_9913 = t54 ).
        t50 = t51.
        DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t56.
        t55 = t56.
        DATA(t57) = VALUE abap_bool( ).
        DATA(t58) = VALUE abap_bool( ).
        DATA(t59) = t50.
        IF t59 IS INITIAL.
          t58 = abap_true.
        ENDIF.
        t57 = xsdbool( t58 = abap_false ).
        t49 = t57.
        t15 = t49.
      ENDIF.
      IF t15 = abap_true.
        DATA(t60) = abap_true.
        result = t60.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t61) = abap_false.
    result = t61.

  ENDMETHOD.

  METHOD is_exempted_find.
    DATA(t1) = i_s.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE i( ).
    DATA t5 TYPE string.
    DATA t6 TYPE string.
    DATA(t7) = t1.
    t6 = t7->concat_tokens( ).
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
    DATA(t11) = 0.
    t3 = xsdbool( t4 >= t11 ).
    DATA(t12) = abap_true.
    t2 = xsdbool( t3 = t12 ).
    result = t2.

  ENDMETHOD.

  METHOD checks_dbcnt.
    DATA(t1) = i_index.
    DATA(t2) = i_statements.
    DATA t3 TYPE i.
    DATA t4 TYPE i.
    DATA(t5) = t1.
    DATA(t6) = 1.
    t4 = t5 + t6.
    t3 = t4.
    DO.
      DATA t7 TYPE abap_bool.
      DATA(t8) = t3.
      DATA t9 TYPE i.
      DATA(t10) = t2.
      t10->load( ).
      t9 = lines( t10->items ).
      t7 = xsdbool( t8 < t9 ).
      IF t7 = abap_false.
        EXIT.
      ENDIF.
      DATA t11 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t12.
      DATA(t13) = t2.
      DATA(t14) = t3.
      t14 = t14 + 1.
      DATA t15 TYPE REF TO object.
      CLEAR t15.
      t13->load( ).
      CLEAR t15.
      READ TABLE t13->items INDEX t14 INTO t15.
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
      DATA(t21) = t11.
      t20 = t21->concat_tokens( ).
      DATA(t22) = strlen( t20 ).
      t19 = t20.
      IF t19 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t19 TO UPPER CASE.
      ELSE.
        t19 = zlnt_runtime_uppe_91169605024d=>full( t19 ).
      ENDIF.
      t18 = t19.
      DATA t23 TYPE abap_bool.
      DATA t24 TYPE REF TO zif_lnt_statement.
      DATA(t25) = t11.
      t24 = t25->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t23 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_st_comment ).
      IF t23 = abap_true.
        DATA t26 TYPE i.
        DATA(t27) = t3.
        DATA(t28) = 1.
        t26 = t27 + t28.
        t3 = t26.
        CONTINUE.
      ELSE.
        DATA t29 TYPE abap_bool.
        DATA t30 TYPE abap_bool.
        DATA t31 TYPE REF TO zif_lnt_statement.
        DATA(t32) = t11.
        t31 = t32->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t30 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_end_if ).
        t29 = t30.
        IF t30 = abap_false.
          DATA t33 TYPE abap_bool.
          DATA t34 TYPE REF TO zif_lnt_statement.
          DATA(t35) = t11.
          t34 = t35->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t33 = xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_end_test_seam ).
          t29 = t33.
        ENDIF.
        IF t29 = abap_true.
          DATA t36 TYPE i.
          DATA(t37) = t3.
          DATA(t38) = 1.
          t36 = t37 + t38.
          t3 = t36.
          CONTINUE.
        ELSE.
          DATA(t39) = VALUE abap_bool( ).
          DATA(t40) = VALUE i( ).
          DATA(t41) = t18.
          DATA(t42) = |SY-DBCNT|.
          DATA(t43) = strlen( t41 ).
          IF t42 IS INITIAL.
            t40 = 0.
          ELSE.
            FIND t42 IN t41 MATCH OFFSET t40.
            IF sy-subrc <> 0.
              t40 = -1.
            ENDIF.
          ENDIF.
          DATA(t44) = 0.
          t39 = xsdbool( t40 >= t44 ).
          result = t39.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t45 TYPE i.
      DATA(t46) = t3.
      DATA(t47) = 1.
      t45 = t46 + t47.
      t3 = t45.
    ENDDO.
    DATA(t48) = abap_false.
    result = t48.

  ENDMETHOD.

  METHOD is_checked.
    DATA(t1) = i_index.
    DATA(t2) = i_statements.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zif_lnt_statement.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t10.
    DATA(t11) = t2.
    DATA(t12) = t1.
    t12 = t12 + 1.
    DATA t13 TYPE REF TO object.
    CLEAR t13.
    t11->load( ).
    CLEAR t13.
    READ TABLE t11->items INDEX t12 INTO t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    CLEAR t10.
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
      DATA(t16) = VALUE abap_bool( ).
      DATA t17 TYPE REF TO zif_lnt_statement.
      CLEAR t17.
      DATA t18 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t18.
      DATA(t19) = t2.
      DATA(t20) = t1.
      t20 = t20 + 1.
      DATA t21 TYPE REF TO object.
      CLEAR t21.
      t19->load( ).
      CLEAR t21.
      READ TABLE t19->items INDEX t20 INTO t21.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t22.
      CLEAR t18.
      IF t21 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t22 ?= t21.
        DATA t23 TYPE REF TO object.
        t23 = t22->as_ref( ).
        t18 ?= t23.
      ELSE.
        t18 ?= t21.
      ENDIF.
      t17 = t18->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t16 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_st_read_table ).
      t7 = t16.
    ENDIF.
    IF t7 = abap_true.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      DATA t26 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t26.
      DATA t27 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t27.
      DATA t28 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t28.
      DATA t29 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t29.
      DATA t30 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t30.
      DATA t31 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t31.
      DATA t32 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t32.
      DATA(t33) = t2.
      DATA(t34) = t1.
      t34 = t34 + 1.
      DATA t35 TYPE REF TO object.
      CLEAR t35.
      t33->load( ).
      CLEAR t35.
      READ TABLE t33->items INDEX t34 INTO t35.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t36.
      CLEAR t32.
      IF t35 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t36 ?= t35.
        DATA t37 TYPE REF TO object.
        t37 = t36->as_ref( ).
        t32 ?= t37.
      ELSE.
        t32 ?= t35.
      ENDIF.
      DATA(t38) = zlnt_runtime_desc_78196487750d=>zlnt_member_d194_b8c1a7611ef6.
      t31 = t32->find_first_expression( i_type_9913 = t38 ).
      t30 = t31.
      DATA t39 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t39.
      DATA(t40) = VALUE abap_bool( ).
      DATA(t41) = t30.
      IF t41 IS INITIAL.
        t40 = abap_true.
      ENDIF.
      IF t40 = abap_true.
        DATA t42 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t42.
        t39 = t42.
      ELSE.
        DATA t43 TYPE REF TO zcl_lnt_expression_node.
        DATA t44 TYPE REF TO zcl_lnt_expression_node.
        DATA(t45) = t30.
        t44 = t45.
        DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d172_090204a1a05d.
        t43 = t44->find_first_expression( i_type_9913 = t46 ).
        t39 = t43.
      ENDIF.
      t29 = t39.
      t28 = t29.
      DATA t47 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t47.
      DATA(t48) = VALUE abap_bool( ).
      DATA(t49) = t28.
      IF t49 IS INITIAL.
        t48 = abap_true.
      ENDIF.
      IF t48 = abap_true.
        DATA t50 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t50.
        t47 = t50.
      ELSE.
        DATA t51 TYPE REF TO zcl_lnt_abstract_token.
        DATA t52 TYPE REF TO zcl_lnt_expression_node.
        DATA(t53) = t28.
        t52 = t53.
        t51 = t52->get_first_token( ).
        t47 = t51.
      ENDIF.
      t27 = t47.
      t26 = t27.
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t54.
      DATA(t55) = VALUE abap_bool( ).
      DATA(t56) = t26.
      IF t56 IS INITIAL.
        t55 = abap_true.
      ENDIF.
      IF t55 = abap_true.
        DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t57.
        t54 = t57.
      ELSE.
        DATA t58 TYPE string.
        DATA t59 TYPE REF TO zcl_lnt_abstract_token.
        DATA t60 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t61) = t26.
        t60 = t61.
        t59 = t60.
        DATA t62 TYPE string.
        DATA(t63) = t59.
        t62 = t63->str.
        t58 = t62.
        DATA(t64) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t64->has = abap_true.
        t64->value = t58.
        t54 = t64.
      ENDIF.
      t25 = t54.
      t24 = t25.
      DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t65.
      DATA(t66) = abap_true.
      IF t66 = abap_true.
        DATA(t67) = VALUE string( ).
        DATA(t68) = VALUE string( ).
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t69.
        DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t70.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t72) = t24.
        t71 = t72.
        DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t73.
        DATA(t74) = VALUE abap_bool( ).
        DATA(t75) = t71.
        IF t75 IS INITIAL.
          t74 = abap_true.
        ELSEIF t75->has = abap_false.
          t74 = abap_true.
        ENDIF.
        IF t74 = abap_true.
          DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t76.
          t73 = t76.
        ELSE.
          DATA t77 TYPE string.
          DATA t78 TYPE string.
          DATA(t79) = t71.
          t78 = t79->value.
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
        t70 = t73.
        t69 = t70.
        DATA(t82) = VALUE string( ).
        DATA(t83) = VALUE abap_bool( ).
        DATA(t84) = t69.
        IF t84 IS INITIAL.
          t83 = abap_true.
        ELSEIF t84->has = abap_false.
          t83 = abap_true.
        ENDIF.
        IF t83 = abap_true.
          DATA(t85) = |undefined|.
          t82 = t85.
        ELSE.
          DATA t86 TYPE string.
          DATA(t87) = t69.
          t86 = t87->value.
          t82 = t86.
        ENDIF.
        t68 = t82.
        DATA(t88) = | IS ASSIGNED|.
        DATA(t89) = strlen( t68 ).
        t67 = |{ t68 }{ t88 }|.
        DATA(t90) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t90->has = abap_true.
        t90->value = t67.
        t65 = t90.
      ELSE.
        DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t91.
        t65 = t91.
      ENDIF.
      t3 = t65.
      DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t92.
      DATA(t93) = abap_true.
      IF t93 = abap_true.
        DATA(t94) = VALUE string( ).
        DATA(t95) = VALUE string( ).
        DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t96.
        DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t97.
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t99) = t24.
        t98 = t99.
        DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t100.
        DATA(t101) = VALUE abap_bool( ).
        DATA(t102) = t98.
        IF t102 IS INITIAL.
          t101 = abap_true.
        ELSEIF t102->has = abap_false.
          t101 = abap_true.
        ENDIF.
        IF t101 = abap_true.
          DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t103.
          t100 = t103.
        ELSE.
          DATA t104 TYPE string.
          DATA t105 TYPE string.
          DATA(t106) = t98.
          t105 = t106->value.
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
        t97 = t100.
        t96 = t97.
        DATA(t109) = VALUE string( ).
        DATA(t110) = VALUE abap_bool( ).
        DATA(t111) = t96.
        IF t111 IS INITIAL.
          t110 = abap_true.
        ELSEIF t111->has = abap_false.
          t110 = abap_true.
        ENDIF.
        IF t110 = abap_true.
          DATA(t112) = |undefined|.
          t109 = t112.
        ELSE.
          DATA t113 TYPE string.
          DATA(t114) = t96.
          t113 = t114->value.
          t109 = t113.
        ENDIF.
        t95 = t109.
        DATA(t115) = | IS NOT ASSIGNED|.
        DATA(t116) = strlen( t95 ).
        t94 = |{ t95 }{ t115 }|.
        DATA(t117) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t117->has = abap_true.
        t117->value = t94.
        t92 = t117.
      ELSE.
        DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t118.
        t92 = t118.
      ENDIF.
      t5 = t92.
    ENDIF.
    DATA t119 TYPE i.
    DATA t120 TYPE i.
    DATA(t121) = t1.
    DATA(t122) = 1.
    t120 = t121 + t122.
    t119 = t120.
    DO.
      DATA t123 TYPE abap_bool.
      DATA(t124) = t119.
      DATA t125 TYPE i.
      DATA(t126) = t2.
      t126->load( ).
      t125 = lines( t126->items ).
      t123 = xsdbool( t124 < t125 ).
      IF t123 = abap_false.
        EXIT.
      ENDIF.
      DATA t127 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t127.
      DATA t128 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t128.
      DATA(t129) = t2.
      DATA(t130) = t119.
      t130 = t130 + 1.
      DATA t131 TYPE REF TO object.
      CLEAR t131.
      t129->load( ).
      CLEAR t131.
      READ TABLE t129->items INDEX t130 INTO t131.
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
      DATA(t137) = t127.
      t136 = t137->concat_tokens( ).
      DATA(t138) = strlen( t136 ).
      t135 = t136.
      IF t135 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t135 TO UPPER CASE.
      ELSE.
        t135 = zlnt_runtime_uppe_91169605024d=>full( t135 ).
      ENDIF.
      t134 = t135.
      DATA t139 TYPE abap_bool.
      DATA t140 TYPE REF TO zif_lnt_statement.
      DATA(t141) = t127.
      t140 = t141->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t139 = xsdbool( t140 IS BOUND AND t140 IS INSTANCE OF zcl_lnt_st_comment ).
      IF t139 = abap_true.
        DATA(t142) = VALUE abap_bool( ).
        DATA(t143) = VALUE i( ).
        DATA(t144) = t134.
        DATA(t145) = VALUE string( ).
        DATA(t146) = ||.
        DATA(t147) = VALUE string( ).
        DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t148.
        DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t149.
        DATA t150 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t150.
        DATA t151 TYPE string.
        DATA(t152) = |check_subrc|.
        t151 = t152.
        DATA t153 TYPE string.
        DATA(t154) = |Check sy-subrc|.
        t153 = t154.
        DATA t155 TYPE string.
        DATA(t156) = |Check sy-subrc|.
        t155 = t156.
        DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t157.
        DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t158.
        DATA(t159) = abap_true.
        IF t159 = abap_true.
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
          t158 = t161.
        ELSE.
          DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t162.
          t158 = t162.
        ENDIF.
        t157 = t158.
        DATA t163 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t163.
        DATA t164 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t164.
        DATA(t165) = abap_true.
        IF t165 = abap_true.
          DATA t166 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t167 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t168 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t168.
          t167 = t168.
          DATA(t169) = t167.
          DATA(t170) = |SingleFile|.
          t169->load( ).
          APPEND t170 TO t169->items.
          t169->save( ).
          DATA(t171) = t167.
          DATA(t172) = |Quickfix|.
          t171->load( ).
          APPEND t172 TO t171->items.
          t171->save( ).
          DATA(t173) = t167.
          t166 = t173.
          t164 = t166.
        ELSE.
          DATA t174 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t174.
          t164 = t174.
        ENDIF.
        t163 = t164.
        DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t175.
        DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t176.
        DATA(t177) = abap_true.
        IF t177 = abap_true.
          DATA(t178) = |EC CI_SUBRC|.
          DATA(t179) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t179->has = abap_true.
          t179->value = t178.
          t176 = t179.
        ELSE.
          DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t180.
          t176 = t180.
        ENDIF.
        t175 = t176.
        DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t181.
        DATA t182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t182.
        DATA(t183) = abap_true.
        IF t183 = abap_true.
          DATA(t184) = |##SUBRC_OK|.
          DATA(t185) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t185->has = abap_true.
          t185->value = t184.
          t182 = t185.
        ELSE.
          DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t186.
          t182 = t186.
        ENDIF.
        t181 = t182.
        DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t188.
        t187 = t188.
        DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t190 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t190.
        t189 = t190.
        t150 = NEW zcl_lnt_irule_metadata( i_key = t151 i_title = t153 i_short_description = t155 i_bad_example = t187 i_good_example = t189 i_extended_information = t157 i_tags = t163 i_pragma = t181 i_pseudo_comment = t175 ).
        CREATE OBJECT t150->zlnt_view_ownkeys_b0e8086400eb.
        t150->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t191 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t191.
        IF t150->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t150->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t191 ).
        ENDIF.
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
        DATA(t198) = |key|.
        DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t199.
        IF t150->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t150->zlnt_json_ownkeys_70e5fd461788->put( p0 = t198 p1 = t199 ).
        ENDIF.
        DATA(t200) = |title|.
        DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t201.
        IF t150->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t150->zlnt_json_ownkeys_70e5fd461788->put( p0 = t200 p1 = t201 ).
        ENDIF.
        DATA(t202) = |shortDescription|.
        DATA t203 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t203.
        IF t150->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t150->zlnt_json_ownkeys_70e5fd461788->put( p0 = t202 p1 = t203 ).
        ENDIF.
        DATA(t204) = |extendedInformation|.
        DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t205.
        IF t150->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t150->zlnt_json_ownkeys_70e5fd461788->put( p0 = t204 p1 = t205 ).
        ENDIF.
        DATA(t206) = |tags|.
        DATA t207 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t207.
        IF t150->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t150->zlnt_json_ownkeys_70e5fd461788->put( p0 = t206 p1 = t207 ).
        ENDIF.
        DATA(t208) = |pseudoComment|.
        DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t209.
        IF t150->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t150->zlnt_json_ownkeys_70e5fd461788->put( p0 = t208 p1 = t209 ).
        ENDIF.
        DATA(t210) = |pragma|.
        DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t211.
        IF t150->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t150->zlnt_json_ownkeys_70e5fd461788->put( p0 = t210 p1 = t211 ).
        ENDIF.
        t149 = t150->pseudo_comment.
        t148 = t149.
        DATA(t212) = VALUE string( ).
        DATA(t213) = VALUE abap_bool( ).
        DATA(t214) = t148.
        IF t214 IS INITIAL.
          t213 = abap_true.
        ELSEIF t214->has = abap_false.
          t213 = abap_true.
        ENDIF.
        IF t213 = abap_true.
          DATA(t215) = |undefined|.
          t212 = t215.
        ELSE.
          DATA t216 TYPE string.
          DATA(t217) = t148.
          t216 = t217->value.
          t212 = t216.
        ENDIF.
        t147 = t212.
        DATA(t218) = strlen( t146 ).
        t145 = |{ t146 }{ t147 }|.
        DATA(t219) = strlen( t144 ).
        IF t145 IS INITIAL.
          t143 = 0.
        ELSE.
          FIND t145 IN t144 MATCH OFFSET t143.
          IF sy-subrc <> 0.
            t143 = -1.
          ENDIF.
        ENDIF.
        DATA(t220) = 0.
        t142 = xsdbool( t143 >= t220 ).
        IF t142 = abap_true.
          DATA(t221) = abap_true.
          result = t221.
          RETURN.
        ENDIF.
      ELSE.
        DATA t222 TYPE abap_bool.
        DATA t223 TYPE abap_bool.
        DATA t224 TYPE REF TO zif_lnt_statement.
        DATA(t225) = t127.
        t224 = t225->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t223 = xsdbool( t224 IS BOUND AND t224 IS INSTANCE OF zcl_lnt_end_if ).
        t222 = t223.
        IF t223 = abap_false.
          DATA t226 TYPE abap_bool.
          DATA t227 TYPE REF TO zif_lnt_statement.
          DATA(t228) = t127.
          t227 = t228->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
          t226 = xsdbool( t227 IS BOUND AND t227 IS INSTANCE OF zcl_lnt_end_test_seam ).
          t222 = t226.
        ENDIF.
        IF t222 = abap_true.
          DATA t229 TYPE i.
          DATA(t230) = t119.
          DATA(t231) = 1.
          t229 = t230 + t231.
          t119 = t229.
          CONTINUE.
        ELSE.
          DATA(t232) = VALUE abap_bool( ).
          DATA(t233) = VALUE abap_bool( ).
          DATA(t234) = t3.
          IF t234 IS BOUND.
            IF t234->has = abap_true.
              t233 = xsdbool( strlen( t234->value ) > 0 ).
            ENDIF.
          ENDIF.
          t232 = t233.
          IF t233 = abap_true.
            DATA(t235) = VALUE abap_bool( ).
            DATA(t236) = VALUE i( ).
            DATA(t237) = t134.
            DATA t238 TYPE string.
            DATA(t239) = t3.
            t238 = t239->value.
            DATA(t240) = strlen( t237 ).
            IF t238 IS INITIAL.
              t236 = 0.
            ELSE.
              FIND t238 IN t237 MATCH OFFSET t236.
              IF sy-subrc <> 0.
                t236 = -1.
              ENDIF.
            ENDIF.
            DATA(t241) = 0.
            t235 = xsdbool( t236 >= t241 ).
            t232 = t235.
          ENDIF.
          IF t232 = abap_true.
            DATA(t242) = abap_true.
            result = t242.
            RETURN.
          ENDIF.
          DATA(t243) = VALUE abap_bool( ).
          DATA(t244) = VALUE abap_bool( ).
          DATA(t245) = t5.
          IF t245 IS BOUND.
            IF t245->has = abap_true.
              t244 = xsdbool( strlen( t245->value ) > 0 ).
            ENDIF.
          ENDIF.
          t243 = t244.
          IF t244 = abap_true.
            DATA(t246) = VALUE abap_bool( ).
            DATA(t247) = VALUE i( ).
            DATA(t248) = t134.
            DATA t249 TYPE string.
            DATA(t250) = t5.
            t249 = t250->value.
            DATA(t251) = strlen( t248 ).
            IF t249 IS INITIAL.
              t247 = 0.
            ELSE.
              FIND t249 IN t248 MATCH OFFSET t247.
              IF sy-subrc <> 0.
                t247 = -1.
              ENDIF.
            ENDIF.
            DATA(t252) = 0.
            t246 = xsdbool( t247 >= t252 ).
            t243 = t246.
          ENDIF.
          IF t243 = abap_true.
            DATA(t253) = abap_true.
            result = t253.
            RETURN.
          ENDIF.
          DATA(t254) = VALUE abap_bool( ).
          DATA(t255) = VALUE abap_bool( ).
          DATA(t256) = VALUE i( ).
          DATA(t257) = t134.
          DATA(t258) = | SY-SUBRC|.
          DATA(t259) = strlen( t257 ).
          IF t258 IS INITIAL.
            t256 = 0.
          ELSE.
            FIND t258 IN t257 MATCH OFFSET t256.
            IF sy-subrc <> 0.
              t256 = -1.
            ENDIF.
          ENDIF.
          DATA(t260) = 0.
          t255 = xsdbool( t256 >= t260 ).
          t254 = t255.
          IF t255 = abap_false.
            DATA(t261) = VALUE abap_bool( ).
            DATA(t262) = VALUE i( ).
            DATA(t263) = t134.
            DATA(t264) = |CL_ABAP_UNIT_ASSERT=>ASSERT_SUBRC|.
            DATA(t265) = strlen( t263 ).
            IF t264 IS INITIAL.
              t262 = 0.
            ELSE.
              FIND t264 IN t263 MATCH OFFSET t262.
              IF sy-subrc <> 0.
                t262 = -1.
              ENDIF.
            ENDIF.
            DATA(t266) = 0.
            t261 = xsdbool( t262 >= t266 ).
            t254 = t261.
          ENDIF.
          result = t254.
          RETURN.
        ENDIF.
      ENDIF.
      DATA t267 TYPE i.
      DATA(t268) = t119.
      DATA(t269) = 1.
      t267 = t268 + t269.
      t119 = t267.
    ENDDO.
    DATA(t270) = abap_false.
    result = t270.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_check_subrc_conf( me->gt_cn_in_sr_rl_ch_sb_ts_ch_sbr( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_check_subrc_conf( me->gt_cn_in_sr_rl_ch_sb_ts_ch_sbr( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_check_subrc_conf.
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
        t1 = NEW zcl_lnt_check_subrc_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_ch_sb_ts_ch_sbr( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_ch_sb_ts_ch_sbr( i_file = i_file ) ).
    result = t1.

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
