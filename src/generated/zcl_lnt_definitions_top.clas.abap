* TS: src/rules/definitions_top.ts:22:1 DefinitionsTop
CLASS zcl_lnt_definitions_top DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_definitions_top_conf.
    DATA mode TYPE f.
    DATA fixed TYPE abap_bool.
    DATA move_to TYPE REF TO zcl_lnt_position.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS gt_cn_in_sr_rl_df_tp_ts_dfn_tp RETURNING VALUE(result) TYPE REF TO zcl_lnt_definitions_top_conf.
    METHODS st_cn_in_sr_rl_df_tp_ts_dfn_tp IMPORTING i_conf TYPE REF TO zcl_lnt_definitions_top_conf.
    METHODS rn_pr_in_sr_rl_df_tp_ts_dfn_tp IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS walk IMPORTING i_r_f634 TYPE REF TO zcl_lnt_structure_node i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS build_fix IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_statement TYPE REF TO zcl_lnt_statement_node i_at_e8a7 TYPE REF TO zcl_lnt_position RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_definitions_top IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_definitions_top_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |definitions_top|.
    DATA t4 TYPE string.
    t4 = |Place definitions in top of routine|.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that definitions are placed at the beginning of METHO|.
    t7 = t7 && |Ds, FORMs and FUNCTIONs.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |https://docs.abapopenchecks.org/checks/17/|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t19.
    t18 = t19.
    DATA(t21) = |SingleFile|.
    t18->load( ).
    APPEND t21 TO t18->items.
    t18->save( ).
    DATA(t23) = |Quickfix|.
    t18->load( ).
    APPEND t23 TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t29) = |FORM foo.\n  WRITE 'hello'.\n  DATA int TYPE i.\nENDFORM.|.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t29.
    t26 = t30.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t35) = |FORM foo.\n  DATA int TYPE i.\n  WRITE 'hello'.\nENDFORM.|.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = t35.
    t32 = t36.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t26 i_good_example = t32 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t48 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t49) = |key|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    DATA(t51) = |title|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |shortDescription|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |extendedInformation|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |tags|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |badExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |goodExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    result = |Reorder definitions to top of routine|.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_df_tp_ts_dfn_tp.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_df_tp_ts_dfn_tp.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_df_tp_ts_dfn_tp.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA t8 TYPE REF TO zcl_lnt_structure_node.
    t8 = t1->structure.
    t4 = t8.
    DATA(t10) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t10 = xsdbool( t4 IS INITIAL ).
    IF t10 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t17.
      result = t17.
      RETURN.
    ENDIF.
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = VALUE abap_bool( ).
    DATA t20 TYPE abap_bool.
    t20 = abap_false.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t25 = t1->statements.
    t22 = t25.
    DATA t27 TYPE REF TO zcl_lnt_statement_node.
    DATA t28 TYPE REF TO object.
    DATA(t29) = VALUE i( ).
    DO.
      t22->load( ).
      IF t29 >= lines( t22->items ).
        EXIT.
      ENDIF.
      CLEAR t28.
      READ TABLE t22->items INDEX t29 + 1 INTO t28.
      t29 = t29 + 1.
      DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t30.
      CLEAR t27.
      IF t28 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t30 ?= t28.
        DATA t31 TYPE REF TO object.
        t31 = t30->as_ref( ).
        t27 ?= t31.
      ELSE.
        t27 ?= t28.
      ENDIF.
      DATA t32 TYPE abap_bool.
      DATA t33 TYPE REF TO zif_lnt_statement.
      t33 = t27->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t32 = xsdbool( t33 IS BOUND AND t33 IS INSTANCE OF zcl_lnt_unknown ).
      IF t32 = abap_true.
        t20 = abap_true.
        EXIT.
      ENDIF.
    ENDDO.
    t19 = t20.
    t18 = t19.
    DATA t37 TYPE abap_bool.
    t37 = xsdbool( t18 = abap_true ).
    IF t37 = abap_true.
      DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t40.
      result = t40.
      RETURN.
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t43 TYPE REF TO zcl_lnt_structure_node.
    t43 = t4.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t47.
    t46 = t47.
    DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d697_195ff21ba72a.
    t46->load( ).
    APPEND t49 TO t46->items.
    t46->save( ).
    DATA(t51) = zlnt_runtime_desc_78196487750d=>zlnt_member_d721_06b6159f9afc.
    t46->load( ).
    APPEND t51 TO t46->items.
    t46->save( ).
    DATA(t53) = zlnt_runtime_desc_78196487750d=>zlnt_member_d699_5bd4c856ada5.
    t46->load( ).
    APPEND t53 TO t46->items.
    t46->save( ).
    t45 = t46.
    t42 = t43->find_all_structures_multi( i_type_9913 = t45 ).
    t41 = t42.
    DATA t56 TYPE REF TO zcl_lnt_structure_node.
    DATA t57 TYPE REF TO object.
    DATA(t58) = VALUE i( ).
    DO.
      t41->load( ).
      IF t58 >= lines( t41->items ).
        EXIT.
      ENDIF.
      CLEAR t57.
      READ TABLE t41->items INDEX t58 + 1 INTO t57.
      t58 = t58 + 1.
      DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t59.
      CLEAR t56.
      IF t57 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t59 ?= t57.
        DATA t60 TYPE REF TO object.
        t60 = t59->as_ref( ).
        t56 ?= t60.
      ELSE.
        t56 ?= t57.
      ENDIF.
      me->fixed = abap_false.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `fixed`.
      DATA t62 TYPE f.
      DATA(t63) = CONV i( zcl_lnt_definitions_top_module=>definition_534f ).
      t62 = t63.
      me->mode = t62.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `mode`.
      DATA t65 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t65.
      DATA t67 TYPE REF TO zcl_lnt_statement_node.
      DATA t68 TYPE REF TO zcl_lnt_statement_node.
      t68 = t56->get_first_statement( ).
      t67 = t68.
      DATA t70 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t70.
      DATA(t71) = xsdbool( t67 IS INITIAL ).
      IF t71 = abap_true.
        CLEAR t70.
      ELSE.
        DATA t74 TYPE REF TO zcl_lnt_abstract_token.
        DATA t75 TYPE REF TO zcl_lnt_statement_node.
        t75 = t67.
        t74 = t75->get_last_token( ).
        t70 = t74.
      ENDIF.
      t65 = t70.
      DATA t77 TYPE REF TO zcl_lnt_position.
      CLEAR t77.
      DATA(t78) = xsdbool( t65 IS INITIAL ).
      IF t78 = abap_true.
        CLEAR t77.
      ELSE.
        DATA t82 TYPE REF TO zcl_lnt_abstract_token.
        t82 = t65.
        DATA t85 TYPE REF TO zcl_lnt_position.
        DATA t86 TYPE f.
        DATA t88 TYPE REF TO zcl_lnt_position.
        t88 = t82->start.
        DATA t90 TYPE f.
        t90 = t88->row.
        t86 = t90.
        DATA t92 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t93 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t95 TYPE REF TO zcl_lnt_position.
        t95 = t82->start.
        DATA t97 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t97 = t95->col.
        t93 = t97.
        DATA t99 TYPE f.
        DATA t101 TYPE string.
        t101 = t82->str.
        t99 = strlen( t101 ).
        DATA(t104) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t104->has = abap_true.
        t104->value = t99.
        t92 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t93 right = t104 op = `+` ).
        t85 = NEW zcl_lnt_position( i_row = t86 i_col = t92 ).
        t77 = t85.
      ENDIF.
      me->move_to = t77.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `moveTo`.
      DATA t105 TYPE REF TO zcl_lnt_issue.
      DATA t106 TYPE REF TO zcl_lnt_issue.
      t106 = me->walk( i_r_f634 = t56 i_file = t1 ).
      t105 = t106.
      DATA t109 TYPE abap_bool.
      t109 = xsdbool( t105 IS BOUND ).
      IF t109 = abap_true.
        DATA t112 TYPE REF TO zcl_lnt_issue.
        t112 = t105.
        t2->load( ).
        APPEND t112 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD walk.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zcl_lnt_abstract_node.
    t7 = i_r_f634.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t9 = t7->children.
    t6 = t9.
    t5 ?= t6.
    DATA t11 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t12 TYPE REF TO object.
    DATA(t13) = VALUE i( ).
    DO.
      t5->load( ).
      IF t13 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t12.
      READ TABLE t5->items INDEX t13 + 1 INTO t12.
      t13 = t13 + 1.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      CLEAR t11.
      IF t12 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t14 ?= t12.
        DATA t15 TYPE REF TO object.
        CLEAR t15.
        t15 = t14->as_ref( ).
        t11 ?= t15.
      ELSE.
        t11 ?= t12.
      ENDIF.
      DATA t16 TYPE REF TO zif_lnt_union_dc0fb493.
      CLEAR t16.
      DATA t17 TYPE REF TO zif_lnt_union_dc0fb493.
      CLEAR t17.
      DATA t18 TYPE REF TO object.
      CLEAR t18.
      t18 = t11->get_db65( ).
      DATA t20 TYPE REF TO object.
      CLEAR t20.
      t20 = t18.
      t17 ?= t20.
      t16 = t17.
      DATA(t21) = VALUE abap_bool( ).
      t21 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_statement_node ).
      IF t21 = abap_true.
        DATA(t23) = VALUE abap_bool( ).
        t23 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_comment ).
        IF t23 = abap_true.
          CONTINUE.
        ELSE.
          DATA(t25) = VALUE abap_bool( ).
          t25 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_function_module ).
          IF t25 = abap_true.
            CONTINUE.
          ELSE.
            DATA(t27) = VALUE abap_bool( ).
            t27 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_form ).
            IF t27 = abap_true.
              CONTINUE.
            ELSE.
              DATA(t29) = VALUE abap_bool( ).
              t29 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_mthd_implmnttn ).
              IF t29 = abap_true.
                CONTINUE.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = VALUE abap_bool( ).
      t32 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_structure_node ).
      t31 = t32.
      IF t32 = abap_true.
        DATA(t34) = VALUE abap_bool( ).
        DATA(t35) = VALUE abap_bool( ).
        DATA(t36) = VALUE abap_bool( ).
        DATA(t37) = VALUE abap_bool( ).
        t37 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_sr_data ).
        t36 = t37.
        IF t37 = abap_false.
          DATA(t39) = VALUE abap_bool( ).
          t39 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_sr_types ).
          t36 = t39.
        ENDIF.
        t35 = t36.
        IF t36 = abap_false.
          DATA(t41) = VALUE abap_bool( ).
          t41 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_sr_constants ).
          t35 = t41.
        ENDIF.
        t34 = t35.
        IF t35 = abap_false.
          DATA(t43) = VALUE abap_bool( ).
          t43 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_sr_statics ).
          t34 = t43.
        ENDIF.
        t31 = t34.
      ENDIF.
      IF t31 = abap_true.
        DATA(t45) = VALUE abap_bool( ).
        DATA(t46) = CONV f( me->mode ).
        DATA(t47) = VALUE f( ).
        DATA(t48) = CONV i( zcl_lnt_definitions_top_module=>after_dd74 ).
        t47 = t48.
        t45 = xsdbool( t46 = t47 ).
        IF t45 = abap_true.
          DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t49.
          CLEAR t49.
          DATA(t51) = VALUE abap_bool( ).
          DATA(t52) = VALUE abap_bool( ).
          DATA(t53) = VALUE abap_bool( ).
          DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t54.
          DATA t55 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t55.
          DATA t57 TYPE REF TO zif_lnt_union_1e9858bf.
          CLEAR t57.
          DATA t59 TYPE REF TO zif_lnt_union_8249fcb1.
          CLEAR t59.
          DATA t60 TYPE REF TO zif_lnt_union_8249fcb1.
          CLEAR t60.
          DATA t61 TYPE REF TO zif_lnt_node.
          CLEAR t61.
          DATA t62 TYPE REF TO zcl_lnt_abstract_node.
          CLEAR t62.
          DATA t63 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t63.
          DATA t65 TYPE REF TO object.
          CLEAR t65.
          t65 = t11.
          t63 ?= t65.
          t62 = t63.
          DATA t68 TYPE REF TO zif_lnt_node.
          CLEAR t68.
          DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t69.
          t69 = t62->children.
          DATA(t71) = VALUE i( ).
          DATA(t72) = VALUE i( ).
          DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t73.
          t73 = t62->children.
          t73->load( ).
          t72 = lines( t73->items ).
          DATA(t75) = 1.
          t71 = t72 - t75.
          t71 = t71 + 1.
          DATA t76 TYPE REF TO object.
          CLEAR t76.
          t69->load( ).
          CLEAR t76.
          READ TABLE t69->items INDEX t71 INTO t76.
          DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t77.
          CLEAR t68.
          IF t76 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t77 ?= t76.
            DATA t78 TYPE REF TO object.
            CLEAR t78.
            t78 = t77->as_ref( ).
            t68 ?= t78.
          ELSE.
            t68 ?= t76.
          ENDIF.
          t61 = t68.
          t60 ?= t61.
          t59 = t60.
          DATA t80 TYPE REF TO zif_lnt_union_1e9858bf.
          CLEAR t80.
          DATA(t81) = xsdbool( t59 IS INITIAL ).
          IF t81 = abap_true.
            CLEAR t80.
          ELSE.
            DATA t84 TYPE REF TO zif_lnt_union_1e9858bf.
            CLEAR t84.
            DATA t85 TYPE REF TO zif_lnt_node.
            CLEAR t85.
            DATA t86 TYPE REF TO zif_lnt_union_8249fcb1.
            CLEAR t86.
            t86 = t59.
            t85 = t86->get_last_child( ).
            t84 ?= t85.
            t80 = t84.
          ENDIF.
          t57 = t80.
          DATA t88 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t88.
          DATA(t89) = xsdbool( t57 IS INITIAL ).
          IF t89 = abap_true.
            CLEAR t88.
          ELSE.
            DATA t92 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t92.
            DATA t93 TYPE REF TO zif_lnt_union_1e9858bf.
            CLEAR t93.
            t93 = t57.
            t92 = t93->get_first_token( ).
            t88 = t92.
          ENDIF.
          t55 = t88.
          DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t95.
          DATA(t96) = xsdbool( t55 IS INITIAL ).
          IF t96 = abap_true.
            CLEAR t95.
          ELSE.
            DATA(t99) = VALUE string( ).
            DATA(t103) = VALUE string( ).
            t103 = t55->str.
            t99 = t103.
            DATA(t105) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t105->has = abap_true.
            t105->value = t99.
            t95 = t105.
          ENDIF.
          t54 = t95.
          DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t106.
          DATA(t108) = |.|.
          DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t109->has = abap_true.
          t109->value = t108.
          t106 = t109.
          DATA(t111) = VALUE abap_bool( ).
          DATA(t112) = VALUE abap_bool( ).
          IF t54 IS BOUND.
            t111 = t54->has.
          ENDIF.
          IF t106 IS BOUND.
            t112 = t106->has.
          ENDIF.
          IF t111 = t112.
            IF t111 = abap_false.
              t53 = abap_true.
            ELSEIF t54->value = t106->value.
              t53 = abap_true.
            ENDIF.
          ENDIF.
          t52 = t53.
          IF t53 = abap_true.
            DATA(t113) = VALUE abap_bool( ).
            DATA(t114) = VALUE abap_bool( ).
            DATA(t115) = t3.
            t114 = xsdbool( t115 IS BOUND AND t115 IS INSTANCE OF zcl_lnt_structure_node ).
            t113 = xsdbool( t114 = abap_false ).
            t52 = t113.
          ENDIF.
          t51 = t52.
          IF t52 = abap_true.
            DATA(t116) = VALUE abap_bool( ).
            t116 = xsdbool( me->move_to IS BOUND ).
            t51 = t116.
          ENDIF.
          IF t51 = abap_true.
            DATA t118 TYPE REF TO zcl_lnt_position.
            CLEAR t118.
            DATA t120 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t120.
            DATA t122 TYPE REF TO zif_lnt_union_1e9858bf.
            CLEAR t122.
            DATA t124 TYPE REF TO zif_lnt_union_8249fcb1.
            CLEAR t124.
            DATA t125 TYPE REF TO zif_lnt_union_8249fcb1.
            CLEAR t125.
            DATA t126 TYPE REF TO zif_lnt_node.
            CLEAR t126.
            DATA t127 TYPE REF TO zcl_lnt_abstract_node.
            CLEAR t127.
            DATA t128 TYPE REF TO zcl_lnt_structure_node.
            CLEAR t128.
            DATA t130 TYPE REF TO object.
            CLEAR t130.
            t130 = t11.
            t128 ?= t130.
            t127 = t128.
            DATA t133 TYPE REF TO zif_lnt_node.
            CLEAR t133.
            DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t134.
            t134 = t127->children.
            DATA t136 TYPE REF TO object.
            CLEAR t136.
            t134->load( ).
            CLEAR t136.
            READ TABLE t134->items INDEX 1 INTO t136.
            DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t137.
            CLEAR t133.
            IF t136 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t137 ?= t136.
              DATA t138 TYPE REF TO object.
              CLEAR t138.
              t138 = t137->as_ref( ).
              t133 ?= t138.
            ELSE.
              t133 ?= t136.
            ENDIF.
            t126 = t133.
            t125 ?= t126.
            t124 = t125.
            DATA t140 TYPE REF TO zif_lnt_union_1e9858bf.
            CLEAR t140.
            DATA(t141) = xsdbool( t124 IS INITIAL ).
            IF t141 = abap_true.
              CLEAR t140.
            ELSE.
              DATA t144 TYPE REF TO zif_lnt_union_1e9858bf.
              CLEAR t144.
              DATA t145 TYPE REF TO zif_lnt_node.
              CLEAR t145.
              DATA t146 TYPE REF TO zif_lnt_union_8249fcb1.
              CLEAR t146.
              t146 = t124.
              t145 = t146->get_first_child( ).
              t144 ?= t145.
              t140 = t144.
            ENDIF.
            t122 = t140.
            DATA t148 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t148.
            DATA(t149) = xsdbool( t122 IS INITIAL ).
            IF t149 = abap_true.
              CLEAR t148.
            ELSE.
              DATA t152 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t152.
              DATA t153 TYPE REF TO zif_lnt_union_1e9858bf.
              CLEAR t153.
              t153 = t122.
              t152 = t153->get_first_token( ).
              t148 = t152.
            ENDIF.
            t120 = t148.
            DATA t155 TYPE REF TO zcl_lnt_position.
            CLEAR t155.
            DATA(t156) = xsdbool( t120 IS INITIAL ).
            IF t156 = abap_true.
              CLEAR t155.
            ELSE.
              DATA t163 TYPE REF TO zcl_lnt_position.
              CLEAR t163.
              t163 = t120->start.
              t155 = t163.
            ENDIF.
            t118 = t155.
            DATA t165 TYPE REF TO zcl_lnt_position.
            CLEAR t165.
            DATA t167 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t167.
            DATA t169 TYPE REF TO zif_lnt_union_1e9858bf.
            CLEAR t169.
            DATA t171 TYPE REF TO zif_lnt_union_8249fcb1.
            CLEAR t171.
            DATA t172 TYPE REF TO zif_lnt_union_8249fcb1.
            CLEAR t172.
            DATA t173 TYPE REF TO zif_lnt_node.
            CLEAR t173.
            DATA t174 TYPE REF TO zcl_lnt_abstract_node.
            CLEAR t174.
            DATA t175 TYPE REF TO zcl_lnt_structure_node.
            CLEAR t175.
            DATA t177 TYPE REF TO object.
            CLEAR t177.
            t177 = t11.
            t175 ?= t177.
            t174 = t175.
            DATA t180 TYPE REF TO zif_lnt_node.
            CLEAR t180.
            DATA t181 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t181.
            t181 = t174->children.
            DATA(t183) = VALUE i( ).
            DATA(t184) = VALUE i( ).
            DATA t185 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t185.
            t185 = t174->children.
            t185->load( ).
            t184 = lines( t185->items ).
            DATA(t187) = 1.
            t183 = t184 - t187.
            t183 = t183 + 1.
            DATA t188 TYPE REF TO object.
            CLEAR t188.
            t181->load( ).
            CLEAR t188.
            READ TABLE t181->items INDEX t183 INTO t188.
            DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t189.
            CLEAR t180.
            IF t188 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t189 ?= t188.
              DATA t190 TYPE REF TO object.
              CLEAR t190.
              t190 = t189->as_ref( ).
              t180 ?= t190.
            ELSE.
              t180 ?= t188.
            ENDIF.
            t173 = t180.
            t172 ?= t173.
            t171 = t172.
            DATA t192 TYPE REF TO zif_lnt_union_1e9858bf.
            CLEAR t192.
            DATA(t193) = xsdbool( t171 IS INITIAL ).
            IF t193 = abap_true.
              CLEAR t192.
            ELSE.
              DATA t196 TYPE REF TO zif_lnt_union_1e9858bf.
              CLEAR t196.
              DATA t197 TYPE REF TO zif_lnt_node.
              CLEAR t197.
              DATA t198 TYPE REF TO zif_lnt_union_8249fcb1.
              CLEAR t198.
              t198 = t171.
              t197 = t198->get_last_child( ).
              t196 ?= t197.
              t192 = t196.
            ENDIF.
            t169 = t192.
            DATA t200 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t200.
            DATA(t201) = xsdbool( t169 IS INITIAL ).
            IF t201 = abap_true.
              CLEAR t200.
            ELSE.
              DATA t204 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t204.
              DATA t205 TYPE REF TO zif_lnt_union_1e9858bf.
              CLEAR t205.
              t205 = t169.
              t204 = t205->get_last_token( ).
              t200 = t204.
            ENDIF.
            t167 = t200.
            DATA t207 TYPE REF TO zcl_lnt_position.
            CLEAR t207.
            DATA(t208) = xsdbool( t167 IS INITIAL ).
            IF t208 = abap_true.
              CLEAR t207.
            ELSE.
              DATA t212 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t212.
              t212 = t167.
              DATA t215 TYPE REF TO zcl_lnt_position.
              CLEAR t215.
              DATA(t216) = VALUE f( ).
              DATA t218 TYPE REF TO zcl_lnt_position.
              CLEAR t218.
              t218 = t212->start.
              DATA(t220) = VALUE f( ).
              t220 = t218->row.
              t216 = t220.
              DATA t222 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t222.
              DATA t223 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t223.
              DATA t225 TYPE REF TO zcl_lnt_position.
              CLEAR t225.
              t225 = t212->start.
              DATA t227 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t227.
              t227 = t225->col.
              t223 = t227.
              DATA(t229) = VALUE f( ).
              DATA(t230) = VALUE i( ).
              DATA(t231) = VALUE string( ).
              t231 = t212->str.
              t230 = strlen( t231 ).
              t229 = t230.
              DATA(t234) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
              t234->has = abap_true.
              t234->value = t229.
              t222 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t223 right = t234 op = `+` ).
              t215 = NEW zcl_lnt_position( i_row = t216 i_col = t222 ).
              t207 = t215.
            ENDIF.
            t165 = t207.
            DATA(t235) = VALUE abap_bool( ).
            DATA(t236) = VALUE abap_bool( ).
            t236 = xsdbool( t118 IS BOUND ).
            t235 = t236.
            IF t236 = abap_true.
              DATA(t238) = VALUE abap_bool( ).
              t238 = xsdbool( t165 IS BOUND ).
              t235 = t238.
            ENDIF.
            IF t235 = abap_true.
              DATA(t240) = VALUE string( ).
              DATA(t241) = VALUE string( ).
              DATA t242 TYPE REF TO zcl_lnt_structure_node.
              CLEAR t242.
              DATA t244 TYPE REF TO object.
              CLEAR t244.
              t244 = t11.
              t242 ?= t244.
              t241 = t242->concat_tokens( ).
              t240 = t241.
              DATA(t245) = VALUE string( ).
              DATA(t246) = t240.
              DATA t247 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
              CLEAR t247.
              DATA(t248) = |,|.
              DATA(t249) = |g|.
              CREATE OBJECT t247 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t248 flags = t249 checked = abap_true.
              DATA(t250) = |.\n|.
              DATA(t251) = strlen( t246 ).
              t245 = t247->replace( p0 = t246 p1 = t250 ).
              t240 = t245.
              DATA t253 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t253.
              DATA t255 TYPE REF TO zcl_lnt_position.
              CLEAR t255.
              t255 = t118.
              DATA t257 TYPE REF TO zcl_lnt_position.
              CLEAR t257.
              t257 = t165.
              t253 = zcl_lnt_edit_helper=>delete_range( i_file = t2 i_start = t255 i_end = t257 ).
              DATA t260 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t260.
              DATA t262 TYPE REF TO zcl_lnt_position.
              CLEAR t262.
              t262 = me->move_to.
              DATA(t264) = VALUE string( ).
              DATA(t265) = |\n|.
              DATA(t267) = strlen( t265 ).
              t264 = |{ t265 }{ t240 }|.
              t260 = zcl_lnt_edit_helper=>insert_at( i_file = t2 i_pos = t262 i_text = t264 ).
              DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t270.
              DATA t271 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t271.
              t271 = zcl_lnt_edit_helper=>merge( i_fix1 = t253 i_fix2 = t260 ).
              CLEAR t270.
              IF t271 IS BOUND.
                DATA t274 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t274.
                DATA t275 TYPE REF TO object.
                CLEAR t275.
                CLEAR t274.
                t275 = t271.
                TRY.
                    t270 ?= t275.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t270 IS NOT BOUND.
                  TRY.
                      t274 ?= t271.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t274 IS BOUND.
                    t270 = t274->source( ).
                  ENDIF.
                  IF t270 IS NOT BOUND.
                    CREATE OBJECT t270.
                    t270->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    t270->oval = t271.
                  ENDIF.
                ENDIF.
              ENDIF.
              t49 = t270.
            ENDIF.
          ENDIF.
          DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t280.
          t280 = t49.
          DATA t282 TYPE REF TO zcl_lnt_issue.
          CLEAR t282.
          DATA t284 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t284.
          DATA t285 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t285.
          DATA t286 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t286.
          DATA t288 TYPE REF TO object.
          CLEAR t288.
          t288 = t11.
          t286 ?= t288.
          t285 = t286->get_first_statement( ).
          t284 = t285.
          DATA(t289) = |Reorder definitions to top of routine|.
          DATA(t290) = VALUE string( ).
          DATA t291 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t291.
          DATA(t292) = VALUE string( ).
          t292 = |definitions_top|.
          DATA(t294) = VALUE string( ).
          t294 = |Place definitions in top of routine|.
          DATA(t296) = VALUE string( ).
          DATA(t297) = |Checks that definitions are placed at the beginning of METHO|.
          t297 = t297 && |Ds, FORMs and FUNCTIONs.|.
          t296 = t297.
          DATA t298 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t298.
          DATA(t301) = |https://docs.abapopenchecks.org/checks/17/|.
          DATA(t302) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t302->has = abap_true.
          t302->value = t301.
          t298 = t302.
          DATA t304 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t304.
          DATA t308 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t308.
          DATA t309 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t309.
          CREATE OBJECT t309.
          t308 = t309.
          DATA(t311) = |SingleFile|.
          t308->load( ).
          APPEND t311 TO t308->items.
          t308->save( ).
          DATA(t313) = |Quickfix|.
          t308->load( ).
          APPEND t313 TO t308->items.
          t308->save( ).
          t304 = t308.
          DATA t316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t316.
          DATA(t319) = |FORM foo.\n  WRITE 'hello'.\n  DATA int TYPE i.\nENDFORM.|.
          DATA(t320) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t320->has = abap_true.
          t320->value = t319.
          t316 = t320.
          DATA t322 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t322.
          DATA(t325) = |FORM foo.\n  DATA int TYPE i.\n  WRITE 'hello'.\nENDFORM.|.
          DATA(t326) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t326->has = abap_true.
          t326->value = t325.
          t322 = t326.
          DATA t328 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t328.
          CLEAR t328.
          DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t330.
          CLEAR t330.
          t291 = NEW zcl_lnt_irule_metadata( i_key = t292 i_title = t294 i_short_description = t296 i_bad_example = t316 i_good_example = t322 i_extended_information = t298 i_tags = t304 i_pragma = t328 i_pseudo_comment = t330 ).
          CREATE OBJECT t291->zlnt_view_ownkeys_b0e8086400eb.
          t291->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t332.
          t291->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t332 ).
          DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t333.
          IF t291->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t291->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t333 ).
          ENDIF.
          DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t334.
          IF t291->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t291->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t334 ).
          ENDIF.
          DATA t335 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t335.
          IF t291->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t291->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t335 ).
          ENDIF.
          DATA t336 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t336.
          IF t291->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t291->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t336 ).
          ENDIF.
          DATA t337 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t337.
          IF t291->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t291->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t337 ).
          ENDIF.
          DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t338.
          IF t291->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t291->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t338 ).
          ENDIF.
          CREATE OBJECT t291->zlnt_json_ownkeys_70e5fd461788.
          t291->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t339) = |key|.
          DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t340.
          t291->zlnt_json_ownkeys_70e5fd461788->put( p0 = t339 p1 = t340 ).
          DATA(t341) = |title|.
          DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t342.
          IF t291->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t291->zlnt_json_ownkeys_70e5fd461788->put( p0 = t341 p1 = t342 ).
          ENDIF.
          DATA(t343) = |shortDescription|.
          DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t344.
          IF t291->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t291->zlnt_json_ownkeys_70e5fd461788->put( p0 = t343 p1 = t344 ).
          ENDIF.
          DATA(t345) = |extendedInformation|.
          DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t346.
          IF t291->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t291->zlnt_json_ownkeys_70e5fd461788->put( p0 = t345 p1 = t346 ).
          ENDIF.
          DATA(t347) = |tags|.
          DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t348.
          IF t291->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t291->zlnt_json_ownkeys_70e5fd461788->put( p0 = t347 p1 = t348 ).
          ENDIF.
          DATA(t349) = |badExample|.
          DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t350.
          IF t291->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t291->zlnt_json_ownkeys_70e5fd461788->put( p0 = t349 p1 = t350 ).
          ENDIF.
          DATA(t351) = |goodExample|.
          DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t352.
          IF t291->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t291->zlnt_json_ownkeys_70e5fd461788->put( p0 = t351 p1 = t352 ).
          ENDIF.
          t290 = t291->key.
          DATA t353 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t353.
          t353 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t355 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t355.
          DATA(t356) = xsdbool( t280 IS INITIAL ).
          IF t356 = abap_true.
            CLEAR t355.
          ELSE.
            DATA t359 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t359.
            DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t360.
            t360 = t280.
            DATA t362 TYPE REF TO object.
            CLEAR t362.
            IF t360 IS BOUND AND t360->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              CREATE OBJECT t359.
              LOOP AT t360->entries INTO DATA(t363).
                DATA(t364) = CAST zlnt_runtime_dyna_a429568d5be8( t363-v ).
                DATA t365 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t365.
                DATA t366 TYPE REF TO object.
                CLEAR t366.
                t366 = t364->as_ref( ).
                t365 ?= t366.
                t359->set( p0 = t363-k p1 = t365 ).
              ENDLOOP.
            ELSE.
              t362 = t360->as_ref( ).
              DATA t367 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
              CLEAR t367.
              TRY.
                  t359 ?= t362.
                CATCH cx_sy_move_cast_error.
                  t367 ?= t362.
                  CREATE OBJECT t359.
                  LOOP AT t367->entries INTO DATA(t368).
                    DATA(t369) = CAST zlnt_runtime_dyna_a429568d5be8( t368-v ).
                    DATA t370 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    CLEAR t370.
                    DATA t371 TYPE REF TO object.
                    CLEAR t371.
                    t371 = t369->as_ref( ).
                    t370 ?= t371.
                    t359->set( p0 = t368-k p1 = t370 ).
                  ENDLOOP.
              ENDTRY.
            ENDIF.
            t355 = t359.
          ENDIF.
          DATA t372 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t372.
          t282 = zcl_lnt_issue=>at_statement( i_file = t2 i_statement = t284 i_message_26cb = t289 i_key = t290 i_severity = t353 i_fix = t355 i_alternative_fixes = t372 ).
          result = t282.
          RETURN.
        ELSE.
          DATA t377 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t377.
          DATA t378 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t378.
          DATA t379 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t379.
          DATA t381 TYPE REF TO object.
          CLEAR t381.
          t381 = t11.
          t379 ?= t381.
          t378 = t379->get_last_token( ).
          t377 = t378.
          DATA t382 TYPE REF TO zcl_lnt_position.
          CLEAR t382.
          DATA(t383) = VALUE f( ).
          DATA t385 TYPE REF TO zcl_lnt_position.
          CLEAR t385.
          t385 = t377->start.
          DATA(t387) = VALUE f( ).
          t387 = t385->row.
          t383 = t387.
          DATA t389 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t389.
          DATA t390 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t390.
          DATA t392 TYPE REF TO zcl_lnt_position.
          CLEAR t392.
          t392 = t377->start.
          DATA t394 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          CLEAR t394.
          t394 = t392->col.
          t390 = t394.
          DATA(t396) = VALUE f( ).
          DATA(t397) = VALUE i( ).
          DATA(t398) = VALUE string( ).
          t398 = t377->str.
          t397 = strlen( t398 ).
          t396 = t397.
          DATA(t401) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t401->has = abap_true.
          t401->value = t396.
          t389 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t390 right = t401 op = `+` ).
          t382 = NEW zcl_lnt_position( i_row = t383 i_col = t389 ).
          me->move_to = t382.
          DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `moveTo`.
        ENDIF.
      ELSE.
        DATA(t403) = VALUE abap_bool( ).
        DATA(t404) = VALUE abap_bool( ).
        t404 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_statement_node ).
        t403 = t404.
        IF t404 = abap_true.
          DATA(t406) = VALUE abap_bool( ).
          DATA(t407) = VALUE abap_bool( ).
          DATA(t408) = VALUE abap_bool( ).
          DATA(t409) = VALUE abap_bool( ).
          DATA(t410) = VALUE abap_bool( ).
          DATA(t411) = VALUE abap_bool( ).
          t411 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_data ).
          t410 = t411.
          IF t411 = abap_false.
            DATA(t413) = VALUE abap_bool( ).
            t413 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_statem_type ).
            t410 = t413.
          ENDIF.
          t409 = t410.
          IF t410 = abap_false.
            DATA(t415) = VALUE abap_bool( ).
            t415 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_statem_constant ).
            t409 = t415.
          ENDIF.
          t408 = t409.
          IF t409 = abap_false.
            DATA(t417) = VALUE abap_bool( ).
            DATA(t418) = VALUE abap_bool( ).
            t418 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_move ).
            t417 = t418.
            IF t418 = abap_true.
              DATA(t420) = VALUE abap_bool( ).
              DATA(t421) = VALUE string( ).
              DATA(t422) = VALUE string( ).
              DATA t423 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t423.
              DATA t425 TYPE REF TO object.
              CLEAR t425.
              t425 = t11.
              t423 ?= t425.
              t422 = t423->concat_tokens( ).
              DATA(t426) = strlen( t422 ).
              t421 = t422.
              IF t421 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t421 TO UPPER CASE.
              ELSE.
                t421 = zlnt_runtime_uppe_91169605024d=>full( t421 ).
              ENDIF.
              DATA(t427) = |DATA(|.
              DATA(t428) = strlen( t421 ).
              DATA(t429) = VALUE i( ).
              DATA(t430) = VALUE i( ).
              DATA(t431) = VALUE string( ).
              t429 = strlen( t427 ).
              IF t429 = 0.
                t420 = abap_true.
              ELSEIF t429 <= t428.
                t430 = 0.
                t431 = t421+t430(t429).
                IF t431 = t427.
                  t420 = abap_true.
                ENDIF.
              ENDIF.
              t417 = t420.
            ENDIF.
            t408 = t417.
          ENDIF.
          t407 = t408.
          IF t408 = abap_false.
            DATA(t432) = VALUE abap_bool( ).
            t432 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_static ).
            t407 = t432.
          ENDIF.
          t406 = t407.
          IF t407 = abap_false.
            DATA(t434) = VALUE abap_bool( ).
            t434 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_statem_field_symbol ).
            t406 = t434.
          ENDIF.
          t403 = t406.
        ENDIF.
        IF t403 = abap_true.
          DATA(t436) = VALUE abap_bool( ).
          DATA(t437) = CONV f( me->mode ).
          DATA(t438) = VALUE f( ).
          DATA(t439) = CONV i( zcl_lnt_definitions_top_module=>after_dd74 ).
          t438 = t439.
          t436 = xsdbool( t437 = t438 ).
          IF t436 = abap_true.
            DATA(t440) = VALUE abap_bool( ).
            DATA(t441) = VALUE abap_bool( ).
            DATA(t442) = VALUE abap_bool( ).
            t442 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_st_move ).
            t441 = t442.
            IF t442 = abap_true.
              DATA(t444) = VALUE abap_bool( ).
              DATA(t445) = VALUE string( ).
              DATA(t446) = VALUE string( ).
              DATA t447 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t447.
              DATA t449 TYPE REF TO object.
              CLEAR t449.
              t449 = t11.
              t447 ?= t449.
              t446 = t447->concat_tokens( ).
              DATA(t450) = strlen( t446 ).
              t445 = t446.
              IF t445 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t445 TO UPPER CASE.
              ELSE.
                t445 = zlnt_runtime_uppe_91169605024d=>full( t445 ).
              ENDIF.
              DATA(t451) = |DATA(|.
              DATA(t452) = strlen( t445 ).
              DATA(t453) = VALUE i( ).
              DATA(t454) = VALUE i( ).
              DATA(t455) = VALUE string( ).
              t453 = strlen( t451 ).
              IF t453 = 0.
                t444 = abap_true.
              ELSEIF t453 <= t452.
                t454 = 0.
                t455 = t445+t454(t453).
                IF t455 = t451.
                  t444 = abap_true.
                ENDIF.
              ENDIF.
              t441 = t444.
            ENDIF.
            t440 = xsdbool( t441 = abap_false ).
            IF t440 = abap_true.
              DATA t456 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t456.
              CLEAR t456.
              DATA(t458) = VALUE abap_bool( ).
              DATA(t459) = VALUE abap_bool( ).
              DATA(t460) = CONV abap_bool( me->fixed ).
              t459 = xsdbool( t460 = abap_false ).
              t458 = t459.
              IF t459 = abap_true.
                DATA(t462) = VALUE abap_bool( ).
                t462 = xsdbool( me->move_to IS BOUND ).
                t458 = t462.
              ENDIF.
              IF t458 = abap_true.
                DATA t466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t466.
                DATA t467 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t467.
                DATA t468 TYPE REF TO zcl_lnt_abap_file.
                CLEAR t468.
                t468 = t2.
                DATA t470 TYPE REF TO zcl_lnt_statement_node.
                CLEAR t470.
                DATA t471 TYPE REF TO zcl_lnt_statement_node.
                CLEAR t471.
                DATA t473 TYPE REF TO object.
                CLEAR t473.
                t473 = t11.
                t471 ?= t473.
                t470 = t471.
                DATA(t476) = me->move_to.
                DATA(t478) = VALUE string( ).
                DATA(t479) = VALUE string( ).
                t479 = t470->concat_tokens( ).
                t478 = t479.
                DATA(t481) = VALUE string( ).
                DATA(t482) = t478.
                DATA t483 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
                CLEAR t483.
                DATA(t484) = |,$|.
                DATA(t485) = ||.
                CREATE OBJECT t483 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t484 flags = t485.
                DATA(t486) = |.|.
                DATA(t487) = strlen( t482 ).
                t481 = t483->replace( p0 = t482 p1 = t486 ).
                t478 = t481.
                DATA t489 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t489.
                t489 = zcl_lnt_edit_helper=>delete_statement( i_file = t468 i_statement = t470 ).
                DATA(t492) = VALUE string( ).
                DATA(t493) = VALUE string( ).
                DATA(t494) = VALUE string( ).
                t494 = | |.
                DATA(t496) = VALUE string( ).
                DATA t498 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                CLEAR t498.
                DATA t499 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                CLEAR t499.
                DATA t501 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t501.
                t501 = t470->get_first_token( ).
                DATA t505 TYPE REF TO zcl_lnt_position.
                CLEAR t505.
                t505 = t501->start.
                DATA t507 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                CLEAR t507.
                t507 = t505->col.
                t499 = t507.
                DATA(t509) = CONV f( 1 ).
                DATA(t510) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                t510->has = abap_true.
                t510->value = t509.
                t498 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t499 right = t510 op = `-` ).
                DATA(t511) = CONV f( zlnt_runtime_numb_290eb04a9758=>finite( t498 ) ).
                DATA(t512) = strlen( t494 ).
                DATA(t513) = CONV f( trunc( t511 ) ).
                IF t513 < 0.
                  RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                ENDIF.
                CLEAR t496.
                IF t494 IS NOT INITIAL.
                  IF t513 > 2147483647 OR t513 * strlen( t494 ) > 2147483647.
                    RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                  ENDIF.
                  t496 = repeat( val = t494 occ = CONV i( t513 ) ).
                ENDIF.
                t493 = t496.
                t492 = t493.
                DATA t515 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t515.
                DATA(t518) = VALUE string( ).
                DATA(t519) = VALUE string( ).
                DATA(t520) = |\n|.
                DATA(t522) = strlen( t520 ).
                t519 = |{ t520 }{ t492 }|.
                DATA(t524) = strlen( t519 ).
                t518 = |{ t519 }{ t478 }|.
                t515 = zcl_lnt_edit_helper=>insert_at( i_file = t468 i_pos = t476 i_text = t518 ).
                DATA t525 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t525.
                t525 = zcl_lnt_edit_helper=>merge( i_fix1 = t489 i_fix2 = t515 ).
                t467 = t525.
                CLEAR t466.
                IF t467 IS BOUND.
                  DATA t528 TYPE REF TO zlnt_view_storage_74017ca272ac.
                  CLEAR t528.
                  DATA t529 TYPE REF TO object.
                  CLEAR t529.
                  CLEAR t528.
                  t529 = t467.
                  TRY.
                      t466 ?= t529.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t466 IS NOT BOUND.
                    TRY.
                        t528 ?= t467.
                      CATCH cx_sy_move_cast_error.
                    ENDTRY.
                    IF t528 IS BOUND.
                      t466 = t528->source( ).
                    ENDIF.
                    IF t466 IS NOT BOUND.
                      CREATE OBJECT t466.
                      t466->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      t466->oval = t467.
                    ENDIF.
                  ENDIF.
                ENDIF.
                t456 = t466.
                me->fixed = abap_true.
                DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `fixed`.
              ENDIF.
              DATA t535 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t535.
              t535 = t456.
              DATA t537 TYPE REF TO zcl_lnt_issue.
              CLEAR t537.
              DATA t539 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t539.
              DATA t541 TYPE REF TO object.
              CLEAR t541.
              t541 = t11.
              t539 ?= t541.
              DATA(t542) = |Reorder definitions to top of routine|.
              DATA(t543) = VALUE string( ).
              DATA t544 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t544.
              DATA(t545) = VALUE string( ).
              t545 = |definitions_top|.
              DATA(t547) = VALUE string( ).
              t547 = |Place definitions in top of routine|.
              DATA(t549) = VALUE string( ).
              DATA(t550) = |Checks that definitions are placed at the beginning of METHO|.
              t550 = t550 && |Ds, FORMs and FUNCTIONs.|.
              t549 = t550.
              DATA t551 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t551.
              DATA(t554) = |https://docs.abapopenchecks.org/checks/17/|.
              DATA(t555) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t555->has = abap_true.
              t555->value = t554.
              t551 = t555.
              DATA t557 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t557.
              DATA t561 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t561.
              DATA t562 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t562.
              CREATE OBJECT t562.
              t561 = t562.
              DATA(t564) = |SingleFile|.
              t561->load( ).
              APPEND t564 TO t561->items.
              t561->save( ).
              DATA(t566) = |Quickfix|.
              t561->load( ).
              APPEND t566 TO t561->items.
              t561->save( ).
              t557 = t561.
              DATA t569 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t569.
              DATA(t572) = |FORM foo.\n  WRITE 'hello'.\n  DATA int TYPE i.\nENDFORM.|.
              DATA(t573) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t573->has = abap_true.
              t573->value = t572.
              t569 = t573.
              DATA t575 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t575.
              DATA(t578) = |FORM foo.\n  DATA int TYPE i.\n  WRITE 'hello'.\nENDFORM.|.
              DATA(t579) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t579->has = abap_true.
              t579->value = t578.
              t575 = t579.
              DATA t581 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t581.
              CLEAR t581.
              DATA t583 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t583.
              CLEAR t583.
              t544 = NEW zcl_lnt_irule_metadata( i_key = t545 i_title = t547 i_short_description = t549 i_bad_example = t569 i_good_example = t575 i_extended_information = t551 i_tags = t557 i_pragma = t581 i_pseudo_comment = t583 ).
              CREATE OBJECT t544->zlnt_view_ownkeys_b0e8086400eb.
              t544->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t585 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t585.
              t544->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t585 ).
              DATA t586 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t586.
              IF t544->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t544->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t586 ).
              ENDIF.
              DATA t587 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t587.
              IF t544->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t544->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t587 ).
              ENDIF.
              DATA t588 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t588.
              IF t544->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t544->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t588 ).
              ENDIF.
              DATA t589 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t589.
              IF t544->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t544->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t589 ).
              ENDIF.
              DATA t590 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t590.
              IF t544->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t544->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t590 ).
              ENDIF.
              DATA t591 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t591.
              IF t544->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t544->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t591 ).
              ENDIF.
              CREATE OBJECT t544->zlnt_json_ownkeys_70e5fd461788.
              t544->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t592) = |key|.
              DATA t593 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t593.
              t544->zlnt_json_ownkeys_70e5fd461788->put( p0 = t592 p1 = t593 ).
              DATA(t594) = |title|.
              DATA t595 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t595.
              IF t544->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t544->zlnt_json_ownkeys_70e5fd461788->put( p0 = t594 p1 = t595 ).
              ENDIF.
              DATA(t596) = |shortDescription|.
              DATA t597 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t597.
              IF t544->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t544->zlnt_json_ownkeys_70e5fd461788->put( p0 = t596 p1 = t597 ).
              ENDIF.
              DATA(t598) = |extendedInformation|.
              DATA t599 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t599.
              IF t544->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t544->zlnt_json_ownkeys_70e5fd461788->put( p0 = t598 p1 = t599 ).
              ENDIF.
              DATA(t600) = |tags|.
              DATA t601 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t601.
              IF t544->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t544->zlnt_json_ownkeys_70e5fd461788->put( p0 = t600 p1 = t601 ).
              ENDIF.
              DATA(t602) = |badExample|.
              DATA t603 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t603.
              IF t544->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t544->zlnt_json_ownkeys_70e5fd461788->put( p0 = t602 p1 = t603 ).
              ENDIF.
              DATA(t604) = |goodExample|.
              DATA t605 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t605.
              IF t544->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t544->zlnt_json_ownkeys_70e5fd461788->put( p0 = t604 p1 = t605 ).
              ENDIF.
              t543 = t544->key.
              DATA t606 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t606.
              t606 = me->conf->zlnt_view_read_sr_15c06369f827( ).
              DATA t608 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t608.
              DATA(t609) = xsdbool( t535 IS INITIAL ).
              IF t609 = abap_true.
                CLEAR t608.
              ELSE.
                DATA t612 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t612.
                DATA t613 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t613.
                t613 = t535.
                DATA t615 TYPE REF TO object.
                CLEAR t615.
                IF t613 IS BOUND AND t613->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  CREATE OBJECT t612.
                  LOOP AT t613->entries INTO DATA(t616).
                    DATA(t617) = CAST zlnt_runtime_dyna_a429568d5be8( t616-v ).
                    DATA t618 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    CLEAR t618.
                    DATA t619 TYPE REF TO object.
                    CLEAR t619.
                    t619 = t617->as_ref( ).
                    t618 ?= t619.
                    t612->set( p0 = t616-k p1 = t618 ).
                  ENDLOOP.
                ELSE.
                  t615 = t613->as_ref( ).
                  DATA t620 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
                  CLEAR t620.
                  TRY.
                      t612 ?= t615.
                    CATCH cx_sy_move_cast_error.
                      t620 ?= t615.
                      CREATE OBJECT t612.
                      LOOP AT t620->entries INTO DATA(t621).
                        DATA(t622) = CAST zlnt_runtime_dyna_a429568d5be8( t621-v ).
                        DATA t623 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                        CLEAR t623.
                        DATA t624 TYPE REF TO object.
                        CLEAR t624.
                        t624 = t622->as_ref( ).
                        t623 ?= t624.
                        t612->set( p0 = t621-k p1 = t623 ).
                      ENDLOOP.
                  ENDTRY.
                ENDIF.
                t608 = t612.
              ENDIF.
              DATA t625 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t625.
              t537 = zcl_lnt_issue=>at_statement( i_file = t2 i_statement = t539 i_message_26cb = t542 i_key = t543 i_severity = t606 i_fix = t608 i_alternative_fixes = t625 ).
              result = t537.
              RETURN.
            ENDIF.
          ELSE.
            DATA t630 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t630.
            DATA t631 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t631.
            DATA t632 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t632.
            DATA t634 TYPE REF TO object.
            CLEAR t634.
            t634 = t11.
            t632 ?= t634.
            t631 = t632->get_last_token( ).
            t630 = t631.
            DATA t635 TYPE REF TO zcl_lnt_position.
            CLEAR t635.
            DATA(t636) = VALUE f( ).
            DATA t638 TYPE REF TO zcl_lnt_position.
            CLEAR t638.
            t638 = t630->start.
            DATA(t640) = VALUE f( ).
            t640 = t638->row.
            t636 = t640.
            DATA t642 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t642.
            DATA t643 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t643.
            DATA t645 TYPE REF TO zcl_lnt_position.
            CLEAR t645.
            t645 = t630->start.
            DATA t647 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t647.
            t647 = t645->col.
            t643 = t647.
            DATA(t649) = VALUE f( ).
            DATA(t650) = VALUE i( ).
            DATA(t651) = VALUE string( ).
            t651 = t630->str.
            t650 = strlen( t651 ).
            t649 = t650.
            DATA(t654) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t654->has = abap_true.
            t654->value = t649.
            t642 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t643 right = t654 op = `+` ).
            t635 = NEW zcl_lnt_position( i_row = t636 i_col = t642 ).
            me->move_to = t635.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `moveTo`.
          ENDIF.
        ELSE.
          DATA(t656) = VALUE abap_bool( ).
          DATA(t657) = VALUE abap_bool( ).
          t657 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_structure_node ).
          t656 = t657.
          IF t657 = abap_true.
            DATA(t659) = VALUE abap_bool( ).
            t659 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_sr_define ).
            t656 = t659.
          ENDIF.
          IF t656 = abap_true.
            DATA(t661) = VALUE f( ).
            DATA(t662) = CONV i( zcl_lnt_definitions_top_module=>ignore ).
            t661 = t662.
            me->mode = t661.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `mode`.
            CLEAR result.
            RETURN.
          ELSE.
            DATA(t664) = VALUE abap_bool( ).
            DATA(t665) = VALUE abap_bool( ).
            t665 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_statement_node ).
            t664 = t665.
            IF t665 = abap_true.
              DATA(t667) = VALUE abap_bool( ).
              t667 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_unknown ).
              t664 = t667.
            ENDIF.
            IF t664 = abap_true.
              DATA(t669) = VALUE f( ).
              DATA(t670) = CONV i( zcl_lnt_definitions_top_module=>ignore ).
              t669 = t670.
              me->mode = t669.
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `mode`.
              CLEAR result.
              RETURN.
            ELSE.
              DATA(t672) = VALUE abap_bool( ).
              DATA(t673) = VALUE abap_bool( ).
              t673 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_statement_node ).
              t672 = t673.
              IF t673 = abap_true.
                DATA(t675) = VALUE abap_bool( ).
                DATA(t676) = CONV f( me->mode ).
                DATA(t677) = VALUE f( ).
                DATA(t678) = CONV i( zcl_lnt_definitions_top_module=>definition_534f ).
                t677 = t678.
                t675 = xsdbool( t676 = t677 ).
                t672 = t675.
              ENDIF.
              IF t672 = abap_true.
                DATA(t679) = VALUE f( ).
                DATA(t680) = CONV i( zcl_lnt_definitions_top_module=>after_dd74 ).
                t679 = t680.
                me->mode = t679.
                DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `mode`.
              ELSE.
                DATA(t681) = VALUE abap_bool( ).
                t681 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_structure_node ).
                IF t681 = abap_true.
                  DATA t683 TYPE REF TO zcl_lnt_issue.
                  CLEAR t683.
                  DATA t684 TYPE REF TO zcl_lnt_issue.
                  CLEAR t684.
                  DATA t685 TYPE REF TO zcl_lnt_structure_node.
                  CLEAR t685.
                  DATA t687 TYPE REF TO object.
                  CLEAR t687.
                  t687 = t11.
                  t685 ?= t687.
                  t684 = me->walk( i_r_f634 = t685 i_file = t2 ).
                  t683 = t684.
                  DATA(t689) = VALUE abap_bool( ).
                  t689 = xsdbool( t683 IS BOUND ).
                  IF t689 = abap_true.
                    result = t683.
                    RETURN.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      t3 = t11.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD build_fix.
    DATA(t1) = i_file.
    DATA(t2) = i_statement.
    DATA(t3) = i_at_e8a7.
    DATA t4 TYPE string.
    DATA t5 TYPE string.
    t5 = t2->concat_tokens( ).
    t4 = t5.
    DATA t7 TYPE string.
    DATA(t8) = t4.
    DATA t9 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t10) = |,$|.
    DATA(t11) = ||.
    CREATE OBJECT t9 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t10 flags = t11.
    DATA(t12) = |.|.
    DATA(t13) = strlen( t8 ).
    t7 = t9->replace( p0 = t8 p1 = t12 ).
    t4 = t7.
    DATA t15 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    t15 = zcl_lnt_edit_helper=>delete_statement( i_file = t1 i_statement = t2 ).
    DATA(t18) = VALUE string( ).
    DATA(t19) = VALUE string( ).
    DATA t20 TYPE string.
    t20 = | |.
    DATA(t22) = VALUE string( ).
    DATA t24 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t25 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t27 TYPE REF TO zcl_lnt_abstract_token.
    t27 = t2->get_first_token( ).
    DATA t31 TYPE REF TO zcl_lnt_position.
    t31 = t27->start.
    DATA t33 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    t33 = t31->col.
    t25 = t33.
    DATA(t35) = CONV f( 1 ).
    DATA(t36) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t36->has = abap_true.
    t36->value = t35.
    t24 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t25 right = t36 op = `-` ).
    DATA(t37) = CONV f( zlnt_runtime_numb_290eb04a9758=>finite( t24 ) ).
    DATA(t38) = strlen( t20 ).
    DATA(t39) = CONV f( trunc( t37 ) ).
    IF t39 < 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    CLEAR t22.
    IF t20 IS NOT INITIAL.
      IF t39 > 2147483647 OR t39 * strlen( t20 ) > 2147483647.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t22 = repeat( val = t20 occ = CONV i( t39 ) ).
    ENDIF.
    t19 = t22.
    t18 = t19.
    DATA t41 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t44 TYPE string.
    DATA t45 TYPE string.
    DATA(t46) = |\n|.
    DATA(t48) = strlen( t46 ).
    t45 = |{ t46 }{ t18 }|.
    DATA(t50) = strlen( t45 ).
    t44 = |{ t45 }{ t4 }|.
    t41 = zcl_lnt_edit_helper=>insert_at( i_file = t1 i_pos = t3 i_text = t44 ).
    DATA t51 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    t51 = zcl_lnt_edit_helper=>merge( i_fix1 = t15 i_fix2 = t41 ).
    result = t51.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_definitions_top_conf( me->gt_cn_in_sr_rl_df_tp_ts_dfn_tp( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_definitions_top_conf( me->gt_cn_in_sr_rl_df_tp_ts_dfn_tp( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_definitions_top_conf.
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
        t1 = NEW zcl_lnt_definitions_top_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_df_tp_ts_dfn_tp( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_df_tp_ts_dfn_tp( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1477_68f7c740cec1.
  ENDMETHOD.
ENDCLASS.
