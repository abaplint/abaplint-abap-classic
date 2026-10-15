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
    DATA(t1) = NEW zcl_lnt_definitions_top_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |definitions_top|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Place definitions in top of routine|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks that definitions are placed at the beginning of METHO|.
    t7 = t7 && |Ds, FORMs and FUNCTIONs.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://docs.abapopenchecks.org/checks/17/|.
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
      DATA(t29) = |FORM foo.\n  WRITE 'hello'.\n  DATA int TYPE i.\nENDFORM.|.
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
      DATA(t35) = |FORM foo.\n  DATA int TYPE i.\n  WRITE 'hello'.\nENDFORM.|.
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
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t26 i_good_example = t32 i_extended_information = t8 i_tags = t14 i_pragma = t38 i_pseudo_comment = t40 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t48 ).
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
    DATA(t59) = |badExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |goodExample|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    DATA(t1) = |Reorder definitions to top of routine|.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_df_tp_ts_dfn_tp.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_df_tp_ts_dfn_tp.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_df_tp_ts_dfn_tp.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA t5 TYPE REF TO zcl_lnt_structure_node.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zcl_lnt_structure_node.
    DATA(t9) = t6.
    t8 = t9->structure.
    t5 = t8.
    t4 = t5.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zcl_lnt_structure_node.
    DATA(t12) = t4.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    t13 = t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = t11.
    IF t16 IS INITIAL.
      t15 = abap_true.
    ENDIF.
    t10 = t15.
    IF t10 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t17.
      result = t17.
      RETURN.
    ENDIF.
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = VALUE abap_bool( ).
    DATA t20 TYPE abap_bool.
    DATA(t21) = abap_false.
    t20 = t21.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t23 TYPE REF TO zcl_lnt_abap_file.
    DATA(t24) = t1.
    t23 = t24.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t26) = t23.
    t25 = t26->statements.
    t22 = t25.
    DATA t27 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t27.
    DATA t28 TYPE REF TO object.
    CLEAR t28.
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
      DATA(t34) = t27.
      t33 = t34->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t32 = xsdbool( t33 IS BOUND AND t33 IS INSTANCE OF zcl_lnt_unknown ).
      IF t32 = abap_true.
        DATA(t35) = abap_true.
        t20 = t35.
        EXIT.
      ENDIF.
    ENDDO.
    DATA(t36) = t20.
    t19 = t36.
    t18 = t19.
    DATA t37 TYPE abap_bool.
    DATA(t38) = t18.
    DATA(t39) = abap_true.
    t37 = xsdbool( t38 = t39 ).
    IF t37 = abap_true.
      DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t40.
      result = t40.
      RETURN.
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t43 TYPE REF TO zcl_lnt_structure_node.
    DATA(t44) = t4.
    t43 = t44.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t47.
    t46 = t47.
    DATA(t48) = t46.
    DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d697_195ff21ba72a.
    t48->load( ).
    APPEND t49 TO t48->items.
    t48->save( ).
    DATA(t50) = t46.
    DATA(t51) = zlnt_runtime_desc_78196487750d=>zlnt_member_d721_06b6159f9afc.
    t50->load( ).
    APPEND t51 TO t50->items.
    t50->save( ).
    DATA(t52) = t46.
    DATA(t53) = zlnt_runtime_desc_78196487750d=>zlnt_member_d699_5bd4c856ada5.
    t52->load( ).
    APPEND t53 TO t52->items.
    t52->save( ).
    DATA(t54) = t46.
    t45 = t54.
    t42 = t43->find_all_structures_multi( i_type_9913 = t45 ).
    t41 = t42.
    DATA(t55) = t41.
    DATA t56 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t56.
    DATA t57 TYPE REF TO object.
    CLEAR t57.
    DATA(t58) = VALUE i( ).
    DO.
      t55->load( ).
      IF t58 >= lines( t55->items ).
        EXIT.
      ENDIF.
      CLEAR t57.
      READ TABLE t55->items INDEX t58 + 1 INTO t57.
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
      DATA(t61) = abap_false.
      me->fixed = t61.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `fixed`.
      DATA t62 TYPE f.
      DATA(t63) = CONV i( zcl_lnt_definitions_top_module=>definition_534f ).
      t62 = t63.
      me->mode = t62.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `mode`.
      DATA t64 TYPE REF TO zcl_lnt_position.
      CLEAR t64.
      DATA t65 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t65.
      DATA t66 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t66.
      DATA t67 TYPE REF TO zcl_lnt_statement_node.
      DATA t68 TYPE REF TO zcl_lnt_statement_node.
      DATA(t69) = t56.
      t68 = t69->get_first_statement( ).
      t67 = t68.
      DATA t70 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t70.
      DATA(t71) = VALUE abap_bool( ).
      DATA(t72) = t67.
      IF t72 IS INITIAL.
        t71 = abap_true.
      ENDIF.
      IF t71 = abap_true.
        DATA t73 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t73.
        t70 = t73.
      ELSE.
        DATA t74 TYPE REF TO zcl_lnt_abstract_token.
        DATA t75 TYPE REF TO zcl_lnt_statement_node.
        DATA(t76) = t67.
        t75 = t76.
        t74 = t75->get_last_token( ).
        t70 = t74.
      ENDIF.
      t66 = t70.
      t65 = t66.
      DATA t77 TYPE REF TO zcl_lnt_position.
      CLEAR t77.
      DATA(t78) = VALUE abap_bool( ).
      DATA(t79) = t65.
      IF t79 IS INITIAL.
        t78 = abap_true.
      ENDIF.
      IF t78 = abap_true.
        DATA t80 TYPE REF TO zcl_lnt_position.
        CLEAR t80.
        t77 = t80.
      ELSE.
        DATA t81 TYPE REF TO zcl_lnt_position.
        DATA t82 TYPE REF TO zcl_lnt_abstract_token.
        DATA t83 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t84) = t65.
        t83 = t84.
        t82 = t83.
        DATA t85 TYPE REF TO zcl_lnt_position.
        DATA t86 TYPE f.
        DATA t87 TYPE REF TO zcl_lnt_position.
        DATA t88 TYPE REF TO zcl_lnt_position.
        DATA(t89) = t82.
        t88 = t89->start.
        t87 = t88.
        DATA t90 TYPE f.
        DATA(t91) = t87.
        t90 = t91->row.
        t86 = t90.
        DATA t92 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t93 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t94 TYPE REF TO zcl_lnt_position.
        DATA t95 TYPE REF TO zcl_lnt_position.
        DATA(t96) = t82.
        t95 = t96->start.
        t94 = t95.
        DATA t97 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t98) = t94.
        t97 = t98->col.
        t93 = t97.
        DATA t99 TYPE f.
        DATA t100 TYPE i.
        DATA t101 TYPE string.
        DATA(t102) = t82.
        t101 = t102->str.
        DATA(t103) = strlen( t101 ).
        t100 = t103.
        t99 = t100.
        DATA(t104) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t104->has = abap_true.
        t104->value = t99.
        t92 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t93 right = t104 op = `+` ).
        t85 = NEW zcl_lnt_position( i_row = t86 i_col = t92 ).
        t81 = t85.
        t77 = t81.
      ENDIF.
      t64 = t77.
      me->move_to = t64.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `moveTo`.
      DATA t105 TYPE REF TO zcl_lnt_issue.
      DATA t106 TYPE REF TO zcl_lnt_issue.
      DATA(t107) = t56.
      DATA(t108) = t1.
      t106 = me->walk( i_r_f634 = t107 i_file = t108 ).
      t105 = t106.
      DATA t109 TYPE abap_bool.
      DATA(t110) = t105.
      t109 = xsdbool( t110 IS BOUND ).
      IF t109 = abap_true.
        DATA(t111) = t2.
        DATA t112 TYPE REF TO zcl_lnt_issue.
        DATA(t113) = t105.
        t112 = t113.
        t111->load( ).
        APPEND t112 TO t111->items.
        t111->save( ).
      ENDIF.
    ENDDO.
    DATA(t114) = t2.
    result = t114.

  ENDMETHOD.

  METHOD walk.
    DATA(t1) = i_r_f634.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_abstract_node.
    CLEAR t7.
    DATA(t8) = t1.
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t9.
    DATA(t10) = t7.
    t9 = t10->children.
    t6 = t9.
    t5 ?= t6.
    DATA t11 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t11.
    DATA t12 TYPE REF TO object.
    CLEAR t12.
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
      DATA(t19) = t11.
      t18 = t19->get_db65( ).
      DATA t20 TYPE REF TO object.
      CLEAR t20.
      t20 = t18.
      t17 ?= t20.
      t16 = t17.
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = t11.
      t21 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_statement_node ).
      IF t21 = abap_true.
        DATA(t23) = VALUE abap_bool( ).
        DATA(t24) = t16.
        t23 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_st_comment ).
        IF t23 = abap_true.
          CONTINUE.
        ELSE.
          DATA(t25) = VALUE abap_bool( ).
          DATA(t26) = t16.
          t25 = xsdbool( t26 IS BOUND AND t26 IS INSTANCE OF zcl_lnt_st_function_module ).
          IF t25 = abap_true.
            CONTINUE.
          ELSE.
            DATA(t27) = VALUE abap_bool( ).
            DATA(t28) = t16.
            t27 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_st_form ).
            IF t27 = abap_true.
              CONTINUE.
            ELSE.
              DATA(t29) = VALUE abap_bool( ).
              DATA(t30) = t16.
              t29 = xsdbool( t30 IS BOUND AND t30 IS INSTANCE OF zcl_lnt_st_mthd_implmnttn ).
              IF t29 = abap_true.
                CONTINUE.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = VALUE abap_bool( ).
      DATA(t33) = t11.
      t32 = xsdbool( t33 IS BOUND AND t33 IS INSTANCE OF zcl_lnt_structure_node ).
      t31 = t32.
      IF t32 = abap_true.
        DATA(t34) = VALUE abap_bool( ).
        DATA(t35) = VALUE abap_bool( ).
        DATA(t36) = VALUE abap_bool( ).
        DATA(t37) = VALUE abap_bool( ).
        DATA(t38) = t16.
        t37 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_sr_data ).
        t36 = t37.
        IF t37 = abap_false.
          DATA(t39) = VALUE abap_bool( ).
          DATA(t40) = t16.
          t39 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_sr_types ).
          t36 = t39.
        ENDIF.
        t35 = t36.
        IF t36 = abap_false.
          DATA(t41) = VALUE abap_bool( ).
          DATA(t42) = t16.
          t41 = xsdbool( t42 IS BOUND AND t42 IS INSTANCE OF zcl_lnt_sr_constants ).
          t35 = t41.
        ENDIF.
        t34 = t35.
        IF t35 = abap_false.
          DATA(t43) = VALUE abap_bool( ).
          DATA(t44) = t16.
          t43 = xsdbool( t44 IS BOUND AND t44 IS INSTANCE OF zcl_lnt_sr_statics ).
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
          DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t50.
          t49 = t50.
          DATA(t51) = VALUE abap_bool( ).
          DATA(t52) = VALUE abap_bool( ).
          DATA(t53) = VALUE abap_bool( ).
          DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t54.
          DATA t55 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t55.
          DATA t56 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t56.
          DATA t57 TYPE REF TO zif_lnt_union_1e9858bf.
          CLEAR t57.
          DATA t58 TYPE REF TO zif_lnt_union_1e9858bf.
          CLEAR t58.
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
          DATA(t64) = t11.
          DATA t65 TYPE REF TO object.
          CLEAR t65.
          t65 = t64.
          t63 ?= t65.
          t62 = t63.
          DATA t66 TYPE REF TO zif_lnt_node.
          CLEAR t66.
          DATA(t67) = abap_true.
          IF t67 = abap_true.
            DATA t68 TYPE REF TO zif_lnt_node.
            CLEAR t68.
            DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t69.
            DATA(t70) = t62.
            t69 = t70->children.
            DATA(t71) = VALUE i( ).
            DATA(t72) = VALUE i( ).
            DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t73.
            DATA(t74) = t62.
            t73 = t74->children.
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
            t66 = t68.
          ELSE.
            DATA t79 TYPE REF TO zif_lnt_node.
            CLEAR t79.
            t66 = t79.
          ENDIF.
          t61 = t66.
          t60 ?= t61.
          t59 = t60.
          DATA t80 TYPE REF TO zif_lnt_union_1e9858bf.
          CLEAR t80.
          DATA(t81) = VALUE abap_bool( ).
          DATA(t82) = t59.
          IF t82 IS INITIAL.
            t81 = abap_true.
          ENDIF.
          IF t81 = abap_true.
            DATA t83 TYPE REF TO zif_lnt_union_1e9858bf.
            CLEAR t83.
            t80 = t83.
          ELSE.
            DATA t84 TYPE REF TO zif_lnt_union_1e9858bf.
            CLEAR t84.
            DATA t85 TYPE REF TO zif_lnt_node.
            CLEAR t85.
            DATA t86 TYPE REF TO zif_lnt_union_8249fcb1.
            CLEAR t86.
            DATA(t87) = t59.
            t86 = t87.
            t85 = t86->get_last_child( ).
            t84 ?= t85.
            t80 = t84.
          ENDIF.
          t58 = t80.
          t57 = t58.
          DATA t88 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t88.
          DATA(t89) = VALUE abap_bool( ).
          DATA(t90) = t57.
          IF t90 IS INITIAL.
            t89 = abap_true.
          ENDIF.
          IF t89 = abap_true.
            DATA t91 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t91.
            t88 = t91.
          ELSE.
            DATA t92 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t92.
            DATA t93 TYPE REF TO zif_lnt_union_1e9858bf.
            CLEAR t93.
            DATA(t94) = t57.
            t93 = t94.
            t92 = t93->get_first_token( ).
            t88 = t92.
          ENDIF.
          t56 = t88.
          t55 = t56.
          DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t95.
          DATA(t96) = VALUE abap_bool( ).
          DATA(t97) = t55.
          IF t97 IS INITIAL.
            t96 = abap_true.
          ENDIF.
          IF t96 = abap_true.
            DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t98.
            t95 = t98.
          ELSE.
            DATA(t99) = VALUE string( ).
            DATA t100 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t100.
            DATA t101 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t101.
            DATA(t102) = t55.
            t101 = t102.
            t100 = t101.
            DATA(t103) = VALUE string( ).
            DATA(t104) = t100.
            t103 = t104->str.
            t99 = t103.
            DATA(t105) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t105->has = abap_true.
            t105->value = t99.
            t95 = t105.
          ENDIF.
          t54 = t95.
          DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t106.
          DATA(t107) = abap_true.
          IF t107 = abap_true.
            DATA(t108) = |.|.
            DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t109->has = abap_true.
            t109->value = t108.
            t106 = t109.
          ELSE.
            DATA t110 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t110.
            t106 = t110.
          ENDIF.
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
            DATA(t117) = me->move_to.
            t116 = xsdbool( t117 IS BOUND ).
            t51 = t116.
          ENDIF.
          IF t51 = abap_true.
            DATA t118 TYPE REF TO zcl_lnt_position.
            CLEAR t118.
            DATA t119 TYPE REF TO zcl_lnt_position.
            CLEAR t119.
            DATA t120 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t120.
            DATA t121 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t121.
            DATA t122 TYPE REF TO zif_lnt_union_1e9858bf.
            CLEAR t122.
            DATA t123 TYPE REF TO zif_lnt_union_1e9858bf.
            CLEAR t123.
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
            DATA(t129) = t11.
            DATA t130 TYPE REF TO object.
            CLEAR t130.
            t130 = t129.
            t128 ?= t130.
            t127 = t128.
            DATA t131 TYPE REF TO zif_lnt_node.
            CLEAR t131.
            DATA(t132) = abap_true.
            IF t132 = abap_true.
              DATA t133 TYPE REF TO zif_lnt_node.
              CLEAR t133.
              DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t134.
              DATA(t135) = t127.
              t134 = t135->children.
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
              t131 = t133.
            ELSE.
              DATA t139 TYPE REF TO zif_lnt_node.
              CLEAR t139.
              t131 = t139.
            ENDIF.
            t126 = t131.
            t125 ?= t126.
            t124 = t125.
            DATA t140 TYPE REF TO zif_lnt_union_1e9858bf.
            CLEAR t140.
            DATA(t141) = VALUE abap_bool( ).
            DATA(t142) = t124.
            IF t142 IS INITIAL.
              t141 = abap_true.
            ENDIF.
            IF t141 = abap_true.
              DATA t143 TYPE REF TO zif_lnt_union_1e9858bf.
              CLEAR t143.
              t140 = t143.
            ELSE.
              DATA t144 TYPE REF TO zif_lnt_union_1e9858bf.
              CLEAR t144.
              DATA t145 TYPE REF TO zif_lnt_node.
              CLEAR t145.
              DATA t146 TYPE REF TO zif_lnt_union_8249fcb1.
              CLEAR t146.
              DATA(t147) = t124.
              t146 = t147.
              t145 = t146->get_first_child( ).
              t144 ?= t145.
              t140 = t144.
            ENDIF.
            t123 = t140.
            t122 = t123.
            DATA t148 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t148.
            DATA(t149) = VALUE abap_bool( ).
            DATA(t150) = t122.
            IF t150 IS INITIAL.
              t149 = abap_true.
            ENDIF.
            IF t149 = abap_true.
              DATA t151 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t151.
              t148 = t151.
            ELSE.
              DATA t152 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t152.
              DATA t153 TYPE REF TO zif_lnt_union_1e9858bf.
              CLEAR t153.
              DATA(t154) = t122.
              t153 = t154.
              t152 = t153->get_first_token( ).
              t148 = t152.
            ENDIF.
            t121 = t148.
            t120 = t121.
            DATA t155 TYPE REF TO zcl_lnt_position.
            CLEAR t155.
            DATA(t156) = VALUE abap_bool( ).
            DATA(t157) = t120.
            IF t157 IS INITIAL.
              t156 = abap_true.
            ENDIF.
            IF t156 = abap_true.
              DATA t158 TYPE REF TO zcl_lnt_position.
              CLEAR t158.
              t155 = t158.
            ELSE.
              DATA t159 TYPE REF TO zcl_lnt_position.
              CLEAR t159.
              DATA t160 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t160.
              DATA t161 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t161.
              DATA(t162) = t120.
              t161 = t162.
              t160 = t161.
              DATA t163 TYPE REF TO zcl_lnt_position.
              CLEAR t163.
              DATA(t164) = t160.
              t163 = t164->start.
              t159 = t163.
              t155 = t159.
            ENDIF.
            t119 = t155.
            t118 = t119.
            DATA t165 TYPE REF TO zcl_lnt_position.
            CLEAR t165.
            DATA t166 TYPE REF TO zcl_lnt_position.
            CLEAR t166.
            DATA t167 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t167.
            DATA t168 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t168.
            DATA t169 TYPE REF TO zif_lnt_union_1e9858bf.
            CLEAR t169.
            DATA t170 TYPE REF TO zif_lnt_union_1e9858bf.
            CLEAR t170.
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
            DATA(t176) = t11.
            DATA t177 TYPE REF TO object.
            CLEAR t177.
            t177 = t176.
            t175 ?= t177.
            t174 = t175.
            DATA t178 TYPE REF TO zif_lnt_node.
            CLEAR t178.
            DATA(t179) = abap_true.
            IF t179 = abap_true.
              DATA t180 TYPE REF TO zif_lnt_node.
              CLEAR t180.
              DATA t181 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t181.
              DATA(t182) = t174.
              t181 = t182->children.
              DATA(t183) = VALUE i( ).
              DATA(t184) = VALUE i( ).
              DATA t185 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t185.
              DATA(t186) = t174.
              t185 = t186->children.
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
              t178 = t180.
            ELSE.
              DATA t191 TYPE REF TO zif_lnt_node.
              CLEAR t191.
              t178 = t191.
            ENDIF.
            t173 = t178.
            t172 ?= t173.
            t171 = t172.
            DATA t192 TYPE REF TO zif_lnt_union_1e9858bf.
            CLEAR t192.
            DATA(t193) = VALUE abap_bool( ).
            DATA(t194) = t171.
            IF t194 IS INITIAL.
              t193 = abap_true.
            ENDIF.
            IF t193 = abap_true.
              DATA t195 TYPE REF TO zif_lnt_union_1e9858bf.
              CLEAR t195.
              t192 = t195.
            ELSE.
              DATA t196 TYPE REF TO zif_lnt_union_1e9858bf.
              CLEAR t196.
              DATA t197 TYPE REF TO zif_lnt_node.
              CLEAR t197.
              DATA t198 TYPE REF TO zif_lnt_union_8249fcb1.
              CLEAR t198.
              DATA(t199) = t171.
              t198 = t199.
              t197 = t198->get_last_child( ).
              t196 ?= t197.
              t192 = t196.
            ENDIF.
            t170 = t192.
            t169 = t170.
            DATA t200 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t200.
            DATA(t201) = VALUE abap_bool( ).
            DATA(t202) = t169.
            IF t202 IS INITIAL.
              t201 = abap_true.
            ENDIF.
            IF t201 = abap_true.
              DATA t203 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t203.
              t200 = t203.
            ELSE.
              DATA t204 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t204.
              DATA t205 TYPE REF TO zif_lnt_union_1e9858bf.
              CLEAR t205.
              DATA(t206) = t169.
              t205 = t206.
              t204 = t205->get_last_token( ).
              t200 = t204.
            ENDIF.
            t168 = t200.
            t167 = t168.
            DATA t207 TYPE REF TO zcl_lnt_position.
            CLEAR t207.
            DATA(t208) = VALUE abap_bool( ).
            DATA(t209) = t167.
            IF t209 IS INITIAL.
              t208 = abap_true.
            ENDIF.
            IF t208 = abap_true.
              DATA t210 TYPE REF TO zcl_lnt_position.
              CLEAR t210.
              t207 = t210.
            ELSE.
              DATA t211 TYPE REF TO zcl_lnt_position.
              CLEAR t211.
              DATA t212 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t212.
              DATA t213 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t213.
              DATA(t214) = t167.
              t213 = t214.
              t212 = t213.
              DATA t215 TYPE REF TO zcl_lnt_position.
              CLEAR t215.
              DATA(t216) = VALUE f( ).
              DATA t217 TYPE REF TO zcl_lnt_position.
              CLEAR t217.
              DATA t218 TYPE REF TO zcl_lnt_position.
              CLEAR t218.
              DATA(t219) = t212.
              t218 = t219->start.
              t217 = t218.
              DATA(t220) = VALUE f( ).
              DATA(t221) = t217.
              t220 = t221->row.
              t216 = t220.
              DATA t222 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t222.
              DATA t223 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t223.
              DATA t224 TYPE REF TO zcl_lnt_position.
              CLEAR t224.
              DATA t225 TYPE REF TO zcl_lnt_position.
              CLEAR t225.
              DATA(t226) = t212.
              t225 = t226->start.
              t224 = t225.
              DATA t227 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t227.
              DATA(t228) = t224.
              t227 = t228->col.
              t223 = t227.
              DATA(t229) = VALUE f( ).
              DATA(t230) = VALUE i( ).
              DATA(t231) = VALUE string( ).
              DATA(t232) = t212.
              t231 = t232->str.
              DATA(t233) = strlen( t231 ).
              t230 = t233.
              t229 = t230.
              DATA(t234) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
              t234->has = abap_true.
              t234->value = t229.
              t222 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t223 right = t234 op = `+` ).
              t215 = NEW zcl_lnt_position( i_row = t216 i_col = t222 ).
              t211 = t215.
              t207 = t211.
            ENDIF.
            t166 = t207.
            t165 = t166.
            DATA(t235) = VALUE abap_bool( ).
            DATA(t236) = VALUE abap_bool( ).
            DATA(t237) = t118.
            t236 = xsdbool( t237 IS BOUND ).
            t235 = t236.
            IF t236 = abap_true.
              DATA(t238) = VALUE abap_bool( ).
              DATA(t239) = t165.
              t238 = xsdbool( t239 IS BOUND ).
              t235 = t238.
            ENDIF.
            IF t235 = abap_true.
              DATA(t240) = VALUE string( ).
              DATA(t241) = VALUE string( ).
              DATA t242 TYPE REF TO zcl_lnt_structure_node.
              CLEAR t242.
              DATA(t243) = t11.
              DATA t244 TYPE REF TO object.
              CLEAR t244.
              t244 = t243.
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
              DATA t252 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t252.
              DATA t253 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t253.
              DATA(t254) = t2.
              DATA t255 TYPE REF TO zcl_lnt_position.
              CLEAR t255.
              DATA(t256) = t118.
              t255 = t256.
              DATA t257 TYPE REF TO zcl_lnt_position.
              CLEAR t257.
              DATA(t258) = t165.
              t257 = t258.
              t253 = zcl_lnt_edit_helper=>delete_range( i_file = t254 i_start = t255 i_end = t257 ).
              t252 = t253.
              DATA t259 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t259.
              DATA t260 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t260.
              DATA(t261) = t2.
              DATA t262 TYPE REF TO zcl_lnt_position.
              CLEAR t262.
              DATA(t263) = me->move_to.
              t262 = t263.
              DATA(t264) = VALUE string( ).
              DATA(t265) = |\n|.
              DATA(t266) = t240.
              DATA(t267) = strlen( t265 ).
              t264 = |{ t265 }{ t266 }|.
              t260 = zcl_lnt_edit_helper=>insert_at( i_file = t261 i_pos = t262 i_text = t264 ).
              t259 = t260.
              DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t268.
              DATA(t269) = abap_true.
              IF t269 = abap_true.
                DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t270.
                DATA t271 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t271.
                DATA(t272) = t252.
                DATA(t273) = t259.
                t271 = zcl_lnt_edit_helper=>merge( i_fix1 = t272 i_fix2 = t273 ).
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
                t268 = t270.
              ELSE.
                DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t276.
                t268 = t276.
              ENDIF.
              t49 = t268.
            ENDIF.
          ENDIF.
          DATA t277 TYPE REF TO zcl_lnt_issue.
          CLEAR t277.
          DATA(t278) = abap_true.
          IF t278 = abap_true.
            DATA t279 TYPE REF TO zcl_lnt_issue.
            CLEAR t279.
            DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t280.
            DATA(t281) = t49.
            t280 = t281.
            DATA t282 TYPE REF TO zcl_lnt_issue.
            CLEAR t282.
            DATA(t283) = t2.
            DATA t284 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t284.
            DATA t285 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t285.
            DATA t286 TYPE REF TO zcl_lnt_structure_node.
            CLEAR t286.
            DATA(t287) = t11.
            DATA t288 TYPE REF TO object.
            CLEAR t288.
            t288 = t287.
            t286 ?= t288.
            t285 = t286->get_first_statement( ).
            t284 = t285.
            DATA(t289) = |Reorder definitions to top of routine|.
            DATA(t290) = VALUE string( ).
            DATA t291 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t291.
            DATA(t292) = VALUE string( ).
            DATA(t293) = |definitions_top|.
            t292 = t293.
            DATA(t294) = VALUE string( ).
            DATA(t295) = |Place definitions in top of routine|.
            t294 = t295.
            DATA(t296) = VALUE string( ).
            DATA(t297) = |Checks that definitions are placed at the beginning of METHO|.
            t297 = t297 && |Ds, FORMs and FUNCTIONs.|.
            t296 = t297.
            DATA t298 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t298.
            DATA t299 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t299.
            DATA(t300) = abap_true.
            IF t300 = abap_true.
              DATA(t301) = |https://docs.abapopenchecks.org/checks/17/|.
              DATA(t302) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t302->has = abap_true.
              t302->value = t301.
              t299 = t302.
            ELSE.
              DATA t303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t303.
              t299 = t303.
            ENDIF.
            t298 = t299.
            DATA t304 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t304.
            DATA t305 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t305.
            DATA(t306) = abap_true.
            IF t306 = abap_true.
              DATA t307 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t307.
              DATA t308 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t308.
              DATA t309 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t309.
              CREATE OBJECT t309.
              t308 = t309.
              DATA(t310) = t308.
              DATA(t311) = |SingleFile|.
              t310->load( ).
              APPEND t311 TO t310->items.
              t310->save( ).
              DATA(t312) = t308.
              DATA(t313) = |Quickfix|.
              t312->load( ).
              APPEND t313 TO t312->items.
              t312->save( ).
              DATA(t314) = t308.
              t307 = t314.
              t305 = t307.
            ELSE.
              DATA t315 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t315.
              t305 = t315.
            ENDIF.
            t304 = t305.
            DATA t316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t316.
            DATA t317 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t317.
            DATA(t318) = abap_true.
            IF t318 = abap_true.
              DATA(t319) = |FORM foo.\n  WRITE 'hello'.\n  DATA int TYPE i.\nENDFORM.|.
              DATA(t320) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t320->has = abap_true.
              t320->value = t319.
              t317 = t320.
            ELSE.
              DATA t321 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t321.
              t317 = t321.
            ENDIF.
            t316 = t317.
            DATA t322 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t322.
            DATA t323 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t323.
            DATA(t324) = abap_true.
            IF t324 = abap_true.
              DATA(t325) = |FORM foo.\n  DATA int TYPE i.\n  WRITE 'hello'.\nENDFORM.|.
              DATA(t326) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t326->has = abap_true.
              t326->value = t325.
              t323 = t326.
            ELSE.
              DATA t327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t327.
              t323 = t327.
            ENDIF.
            t322 = t323.
            DATA t328 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t328.
            DATA t329 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t329.
            t328 = t329.
            DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t330.
            DATA t331 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t331.
            t330 = t331.
            t291 = NEW zcl_lnt_irule_metadata( i_key = t292 i_title = t294 i_short_description = t296 i_bad_example = t316 i_good_example = t322 i_extended_information = t298 i_tags = t304 i_pragma = t328 i_pseudo_comment = t330 ).
            CREATE OBJECT t291->zlnt_view_ownkeys_b0e8086400eb.
            t291->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t332.
            IF t291->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t291->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t332 ).
            ENDIF.
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
            IF t291->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t291->zlnt_json_ownkeys_70e5fd461788->put( p0 = t339 p1 = t340 ).
            ENDIF.
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
            DATA(t354) = me->conf.
            t353 = t354->zlnt_view_read_sr_15c06369f827( ).
            DATA t355 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t355.
            DATA(t356) = VALUE abap_bool( ).
            DATA(t357) = t280.
            IF t357 IS INITIAL.
              t356 = abap_true.
            ENDIF.
            IF t356 = abap_true.
              DATA t358 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t358.
              t355 = t358.
            ELSE.
              DATA t359 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t359.
              DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t360.
              DATA(t361) = t280.
              t360 = t361.
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
            t282 = zcl_lnt_issue=>at_statement( i_file = t283 i_statement = t284 i_message_26cb = t289 i_key = t290 i_severity = t353 i_fix = t355 i_alternative_fixes = t372 ).
            t279 = t282.
            t277 = t279.
          ELSE.
            DATA t373 TYPE REF TO zcl_lnt_issue.
            CLEAR t373.
            t277 = t373.
          ENDIF.
          result = t277.
          RETURN.
        ELSE.
          DATA t374 TYPE REF TO zcl_lnt_position.
          CLEAR t374.
          DATA(t375) = abap_true.
          IF t375 = abap_true.
            DATA t376 TYPE REF TO zcl_lnt_position.
            CLEAR t376.
            DATA t377 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t377.
            DATA t378 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t378.
            DATA t379 TYPE REF TO zcl_lnt_structure_node.
            CLEAR t379.
            DATA(t380) = t11.
            DATA t381 TYPE REF TO object.
            CLEAR t381.
            t381 = t380.
            t379 ?= t381.
            t378 = t379->get_last_token( ).
            t377 = t378.
            DATA t382 TYPE REF TO zcl_lnt_position.
            CLEAR t382.
            DATA(t383) = VALUE f( ).
            DATA t384 TYPE REF TO zcl_lnt_position.
            CLEAR t384.
            DATA t385 TYPE REF TO zcl_lnt_position.
            CLEAR t385.
            DATA(t386) = t377.
            t385 = t386->start.
            t384 = t385.
            DATA(t387) = VALUE f( ).
            DATA(t388) = t384.
            t387 = t388->row.
            t383 = t387.
            DATA t389 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t389.
            DATA t390 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t390.
            DATA t391 TYPE REF TO zcl_lnt_position.
            CLEAR t391.
            DATA t392 TYPE REF TO zcl_lnt_position.
            CLEAR t392.
            DATA(t393) = t377.
            t392 = t393->start.
            t391 = t392.
            DATA t394 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t394.
            DATA(t395) = t391.
            t394 = t395->col.
            t390 = t394.
            DATA(t396) = VALUE f( ).
            DATA(t397) = VALUE i( ).
            DATA(t398) = VALUE string( ).
            DATA(t399) = t377.
            t398 = t399->str.
            DATA(t400) = strlen( t398 ).
            t397 = t400.
            t396 = t397.
            DATA(t401) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t401->has = abap_true.
            t401->value = t396.
            t389 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t390 right = t401 op = `+` ).
            t382 = NEW zcl_lnt_position( i_row = t383 i_col = t389 ).
            t376 = t382.
            t374 = t376.
          ELSE.
            DATA t402 TYPE REF TO zcl_lnt_position.
            CLEAR t402.
            t374 = t402.
          ENDIF.
          me->move_to = t374.
          DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `moveTo`.
        ENDIF.
      ELSE.
        DATA(t403) = VALUE abap_bool( ).
        DATA(t404) = VALUE abap_bool( ).
        DATA(t405) = t11.
        t404 = xsdbool( t405 IS BOUND AND t405 IS INSTANCE OF zcl_lnt_statement_node ).
        t403 = t404.
        IF t404 = abap_true.
          DATA(t406) = VALUE abap_bool( ).
          DATA(t407) = VALUE abap_bool( ).
          DATA(t408) = VALUE abap_bool( ).
          DATA(t409) = VALUE abap_bool( ).
          DATA(t410) = VALUE abap_bool( ).
          DATA(t411) = VALUE abap_bool( ).
          DATA(t412) = t16.
          t411 = xsdbool( t412 IS BOUND AND t412 IS INSTANCE OF zcl_lnt_st_data ).
          t410 = t411.
          IF t411 = abap_false.
            DATA(t413) = VALUE abap_bool( ).
            DATA(t414) = t16.
            t413 = xsdbool( t414 IS BOUND AND t414 IS INSTANCE OF zcl_lnt_st_statem_type ).
            t410 = t413.
          ENDIF.
          t409 = t410.
          IF t410 = abap_false.
            DATA(t415) = VALUE abap_bool( ).
            DATA(t416) = t16.
            t415 = xsdbool( t416 IS BOUND AND t416 IS INSTANCE OF zcl_lnt_st_statem_constant ).
            t409 = t415.
          ENDIF.
          t408 = t409.
          IF t409 = abap_false.
            DATA(t417) = VALUE abap_bool( ).
            DATA(t418) = VALUE abap_bool( ).
            DATA(t419) = t16.
            t418 = xsdbool( t419 IS BOUND AND t419 IS INSTANCE OF zcl_lnt_st_move ).
            t417 = t418.
            IF t418 = abap_true.
              DATA(t420) = VALUE abap_bool( ).
              DATA(t421) = VALUE string( ).
              DATA(t422) = VALUE string( ).
              DATA t423 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t423.
              DATA(t424) = t11.
              DATA t425 TYPE REF TO object.
              CLEAR t425.
              t425 = t424.
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
            DATA(t433) = t16.
            t432 = xsdbool( t433 IS BOUND AND t433 IS INSTANCE OF zcl_lnt_st_static ).
            t407 = t432.
          ENDIF.
          t406 = t407.
          IF t407 = abap_false.
            DATA(t434) = VALUE abap_bool( ).
            DATA(t435) = t16.
            t434 = xsdbool( t435 IS BOUND AND t435 IS INSTANCE OF zcl_lnt_st_statem_field_symbol ).
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
            DATA(t443) = t16.
            t442 = xsdbool( t443 IS BOUND AND t443 IS INSTANCE OF zcl_lnt_st_move ).
            t441 = t442.
            IF t442 = abap_true.
              DATA(t444) = VALUE abap_bool( ).
              DATA(t445) = VALUE string( ).
              DATA(t446) = VALUE string( ).
              DATA t447 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t447.
              DATA(t448) = t11.
              DATA t449 TYPE REF TO object.
              CLEAR t449.
              t449 = t448.
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
              DATA t457 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t457.
              t456 = t457.
              DATA(t458) = VALUE abap_bool( ).
              DATA(t459) = VALUE abap_bool( ).
              DATA(t460) = CONV abap_bool( me->fixed ).
              DATA(t461) = abap_false.
              t459 = xsdbool( t460 = t461 ).
              t458 = t459.
              IF t459 = abap_true.
                DATA(t462) = VALUE abap_bool( ).
                DATA(t463) = me->move_to.
                t462 = xsdbool( t463 IS BOUND ).
                t458 = t462.
              ENDIF.
              IF t458 = abap_true.
                DATA t464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t464.
                DATA(t465) = abap_true.
                IF t465 = abap_true.
                  DATA t466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t466.
                  DATA t467 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t467.
                  DATA t468 TYPE REF TO zcl_lnt_abap_file.
                  CLEAR t468.
                  DATA(t469) = t2.
                  t468 = t469.
                  DATA t470 TYPE REF TO zcl_lnt_statement_node.
                  CLEAR t470.
                  DATA t471 TYPE REF TO zcl_lnt_statement_node.
                  CLEAR t471.
                  DATA(t472) = t11.
                  DATA t473 TYPE REF TO object.
                  CLEAR t473.
                  t473 = t472.
                  t471 ?= t473.
                  t470 = t471.
                  DATA t474 TYPE REF TO zcl_lnt_position.
                  CLEAR t474.
                  DATA t475 TYPE REF TO zcl_lnt_position.
                  CLEAR t475.
                  DATA(t476) = me->move_to.
                  t475 = t476.
                  t474 = t475.
                  DATA t477 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t477.
                  DATA(t478) = VALUE string( ).
                  DATA(t479) = VALUE string( ).
                  DATA(t480) = t470.
                  t479 = t480->concat_tokens( ).
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
                  DATA t488 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t488.
                  DATA t489 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t489.
                  DATA(t490) = t468.
                  DATA(t491) = t470.
                  t489 = zcl_lnt_edit_helper=>delete_statement( i_file = t490 i_statement = t491 ).
                  t488 = t489.
                  DATA(t492) = VALUE string( ).
                  DATA(t493) = VALUE string( ).
                  DATA(t494) = VALUE string( ).
                  DATA(t495) = | |.
                  t494 = t495.
                  DATA(t496) = VALUE string( ).
                  DATA(t497) = t494.
                  DATA t498 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                  CLEAR t498.
                  DATA t499 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                  CLEAR t499.
                  DATA t500 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t500.
                  DATA t501 TYPE REF TO zcl_lnt_abstract_token.
                  CLEAR t501.
                  DATA(t502) = t470.
                  t501 = t502->get_first_token( ).
                  t500 = t501.
                  DATA t503 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                  CLEAR t503.
                  DATA t504 TYPE REF TO zcl_lnt_position.
                  CLEAR t504.
                  DATA t505 TYPE REF TO zcl_lnt_position.
                  CLEAR t505.
                  DATA(t506) = t500.
                  t505 = t506->start.
                  t504 = t505.
                  DATA t507 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                  CLEAR t507.
                  DATA(t508) = t504.
                  t507 = t508->col.
                  t503 = t507.
                  t499 = t503.
                  DATA(t509) = CONV f( 1 ).
                  DATA(t510) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                  t510->has = abap_true.
                  t510->value = t509.
                  t498 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t499 right = t510 op = `-` ).
                  DATA(t511) = CONV f( zlnt_runtime_numb_290eb04a9758=>finite( t498 ) ).
                  DATA(t512) = strlen( t497 ).
                  DATA(t513) = CONV f( trunc( t511 ) ).
                  IF t513 < 0.
                    RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                  ENDIF.
                  CLEAR t496.
                  IF t497 IS NOT INITIAL.
                    IF t513 > 2147483647 OR t513 * strlen( t497 ) > 2147483647.
                      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                    ENDIF.
                    t496 = repeat( val = t497 occ = CONV i( t513 ) ).
                  ENDIF.
                  t493 = t496.
                  t492 = t493.
                  DATA t514 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t514.
                  DATA t515 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t515.
                  DATA(t516) = t468.
                  DATA(t517) = t474.
                  DATA(t518) = VALUE string( ).
                  DATA(t519) = VALUE string( ).
                  DATA(t520) = |\n|.
                  DATA(t521) = t492.
                  DATA(t522) = strlen( t520 ).
                  t519 = |{ t520 }{ t521 }|.
                  DATA(t523) = t478.
                  DATA(t524) = strlen( t519 ).
                  t518 = |{ t519 }{ t523 }|.
                  t515 = zcl_lnt_edit_helper=>insert_at( i_file = t516 i_pos = t517 i_text = t518 ).
                  t514 = t515.
                  DATA t525 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t525.
                  DATA(t526) = t488.
                  DATA(t527) = t514.
                  t525 = zcl_lnt_edit_helper=>merge( i_fix1 = t526 i_fix2 = t527 ).
                  t477 = t525.
                  t467 = t477.
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
                  t464 = t466.
                ELSE.
                  DATA t530 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t530.
                  t464 = t530.
                ENDIF.
                t456 = t464.
                DATA(t531) = abap_true.
                me->fixed = t531.
                DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `fixed`.
              ENDIF.
              DATA t532 TYPE REF TO zcl_lnt_issue.
              CLEAR t532.
              DATA(t533) = abap_true.
              IF t533 = abap_true.
                DATA t534 TYPE REF TO zcl_lnt_issue.
                CLEAR t534.
                DATA t535 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t535.
                DATA(t536) = t456.
                t535 = t536.
                DATA t537 TYPE REF TO zcl_lnt_issue.
                CLEAR t537.
                DATA(t538) = t2.
                DATA t539 TYPE REF TO zcl_lnt_statement_node.
                CLEAR t539.
                DATA(t540) = t11.
                DATA t541 TYPE REF TO object.
                CLEAR t541.
                t541 = t540.
                t539 ?= t541.
                DATA(t542) = |Reorder definitions to top of routine|.
                DATA(t543) = VALUE string( ).
                DATA t544 TYPE REF TO zcl_lnt_irule_metadata.
                CLEAR t544.
                DATA(t545) = VALUE string( ).
                DATA(t546) = |definitions_top|.
                t545 = t546.
                DATA(t547) = VALUE string( ).
                DATA(t548) = |Place definitions in top of routine|.
                t547 = t548.
                DATA(t549) = VALUE string( ).
                DATA(t550) = |Checks that definitions are placed at the beginning of METHO|.
                t550 = t550 && |Ds, FORMs and FUNCTIONs.|.
                t549 = t550.
                DATA t551 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t551.
                DATA t552 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t552.
                DATA(t553) = abap_true.
                IF t553 = abap_true.
                  DATA(t554) = |https://docs.abapopenchecks.org/checks/17/|.
                  DATA(t555) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t555->has = abap_true.
                  t555->value = t554.
                  t552 = t555.
                ELSE.
                  DATA t556 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t556.
                  t552 = t556.
                ENDIF.
                t551 = t552.
                DATA t557 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t557.
                DATA t558 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t558.
                DATA(t559) = abap_true.
                IF t559 = abap_true.
                  DATA t560 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t560.
                  DATA t561 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t561.
                  DATA t562 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t562.
                  CREATE OBJECT t562.
                  t561 = t562.
                  DATA(t563) = t561.
                  DATA(t564) = |SingleFile|.
                  t563->load( ).
                  APPEND t564 TO t563->items.
                  t563->save( ).
                  DATA(t565) = t561.
                  DATA(t566) = |Quickfix|.
                  t565->load( ).
                  APPEND t566 TO t565->items.
                  t565->save( ).
                  DATA(t567) = t561.
                  t560 = t567.
                  t558 = t560.
                ELSE.
                  DATA t568 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                  CLEAR t568.
                  t558 = t568.
                ENDIF.
                t557 = t558.
                DATA t569 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t569.
                DATA t570 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t570.
                DATA(t571) = abap_true.
                IF t571 = abap_true.
                  DATA(t572) = |FORM foo.\n  WRITE 'hello'.\n  DATA int TYPE i.\nENDFORM.|.
                  DATA(t573) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t573->has = abap_true.
                  t573->value = t572.
                  t570 = t573.
                ELSE.
                  DATA t574 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t574.
                  t570 = t574.
                ENDIF.
                t569 = t570.
                DATA t575 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t575.
                DATA t576 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t576.
                DATA(t577) = abap_true.
                IF t577 = abap_true.
                  DATA(t578) = |FORM foo.\n  DATA int TYPE i.\n  WRITE 'hello'.\nENDFORM.|.
                  DATA(t579) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t579->has = abap_true.
                  t579->value = t578.
                  t576 = t579.
                ELSE.
                  DATA t580 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t580.
                  t576 = t580.
                ENDIF.
                t575 = t576.
                DATA t581 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t581.
                DATA t582 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t582.
                t581 = t582.
                DATA t583 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t583.
                DATA t584 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t584.
                t583 = t584.
                t544 = NEW zcl_lnt_irule_metadata( i_key = t545 i_title = t547 i_short_description = t549 i_bad_example = t569 i_good_example = t575 i_extended_information = t551 i_tags = t557 i_pragma = t581 i_pseudo_comment = t583 ).
                CREATE OBJECT t544->zlnt_view_ownkeys_b0e8086400eb.
                t544->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t585 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t585.
                IF t544->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t544->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t585 ).
                ENDIF.
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
                IF t544->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t544->zlnt_json_ownkeys_70e5fd461788->put( p0 = t592 p1 = t593 ).
                ENDIF.
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
                DATA(t607) = me->conf.
                t606 = t607->zlnt_view_read_sr_15c06369f827( ).
                DATA t608 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                CLEAR t608.
                DATA(t609) = VALUE abap_bool( ).
                DATA(t610) = t535.
                IF t610 IS INITIAL.
                  t609 = abap_true.
                ENDIF.
                IF t609 = abap_true.
                  DATA t611 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t611.
                  t608 = t611.
                ELSE.
                  DATA t612 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                  CLEAR t612.
                  DATA t613 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  CLEAR t613.
                  DATA(t614) = t535.
                  t613 = t614.
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
                t537 = zcl_lnt_issue=>at_statement( i_file = t538 i_statement = t539 i_message_26cb = t542 i_key = t543 i_severity = t606 i_fix = t608 i_alternative_fixes = t625 ).
                t534 = t537.
                t532 = t534.
              ELSE.
                DATA t626 TYPE REF TO zcl_lnt_issue.
                CLEAR t626.
                t532 = t626.
              ENDIF.
              result = t532.
              RETURN.
            ENDIF.
          ELSE.
            DATA t627 TYPE REF TO zcl_lnt_position.
            CLEAR t627.
            DATA(t628) = abap_true.
            IF t628 = abap_true.
              DATA t629 TYPE REF TO zcl_lnt_position.
              CLEAR t629.
              DATA t630 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t630.
              DATA t631 TYPE REF TO zcl_lnt_abstract_token.
              CLEAR t631.
              DATA t632 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t632.
              DATA(t633) = t11.
              DATA t634 TYPE REF TO object.
              CLEAR t634.
              t634 = t633.
              t632 ?= t634.
              t631 = t632->get_last_token( ).
              t630 = t631.
              DATA t635 TYPE REF TO zcl_lnt_position.
              CLEAR t635.
              DATA(t636) = VALUE f( ).
              DATA t637 TYPE REF TO zcl_lnt_position.
              CLEAR t637.
              DATA t638 TYPE REF TO zcl_lnt_position.
              CLEAR t638.
              DATA(t639) = t630.
              t638 = t639->start.
              t637 = t638.
              DATA(t640) = VALUE f( ).
              DATA(t641) = t637.
              t640 = t641->row.
              t636 = t640.
              DATA t642 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t642.
              DATA t643 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t643.
              DATA t644 TYPE REF TO zcl_lnt_position.
              CLEAR t644.
              DATA t645 TYPE REF TO zcl_lnt_position.
              CLEAR t645.
              DATA(t646) = t630.
              t645 = t646->start.
              t644 = t645.
              DATA t647 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              CLEAR t647.
              DATA(t648) = t644.
              t647 = t648->col.
              t643 = t647.
              DATA(t649) = VALUE f( ).
              DATA(t650) = VALUE i( ).
              DATA(t651) = VALUE string( ).
              DATA(t652) = t630.
              t651 = t652->str.
              DATA(t653) = strlen( t651 ).
              t650 = t653.
              t649 = t650.
              DATA(t654) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
              t654->has = abap_true.
              t654->value = t649.
              t642 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t643 right = t654 op = `+` ).
              t635 = NEW zcl_lnt_position( i_row = t636 i_col = t642 ).
              t629 = t635.
              t627 = t629.
            ELSE.
              DATA t655 TYPE REF TO zcl_lnt_position.
              CLEAR t655.
              t627 = t655.
            ENDIF.
            me->move_to = t627.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `moveTo`.
          ENDIF.
        ELSE.
          DATA(t656) = VALUE abap_bool( ).
          DATA(t657) = VALUE abap_bool( ).
          DATA(t658) = t11.
          t657 = xsdbool( t658 IS BOUND AND t658 IS INSTANCE OF zcl_lnt_structure_node ).
          t656 = t657.
          IF t657 = abap_true.
            DATA(t659) = VALUE abap_bool( ).
            DATA(t660) = t16.
            t659 = xsdbool( t660 IS BOUND AND t660 IS INSTANCE OF zcl_lnt_sr_define ).
            t656 = t659.
          ENDIF.
          IF t656 = abap_true.
            DATA(t661) = VALUE f( ).
            DATA(t662) = CONV i( zcl_lnt_definitions_top_module=>ignore ).
            t661 = t662.
            me->mode = t661.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `mode`.
            DATA t663 TYPE REF TO zcl_lnt_issue.
            CLEAR t663.
            result = t663.
            RETURN.
          ELSE.
            DATA(t664) = VALUE abap_bool( ).
            DATA(t665) = VALUE abap_bool( ).
            DATA(t666) = t11.
            t665 = xsdbool( t666 IS BOUND AND t666 IS INSTANCE OF zcl_lnt_statement_node ).
            t664 = t665.
            IF t665 = abap_true.
              DATA(t667) = VALUE abap_bool( ).
              DATA(t668) = t16.
              t667 = xsdbool( t668 IS BOUND AND t668 IS INSTANCE OF zcl_lnt_unknown ).
              t664 = t667.
            ENDIF.
            IF t664 = abap_true.
              DATA(t669) = VALUE f( ).
              DATA(t670) = CONV i( zcl_lnt_definitions_top_module=>ignore ).
              t669 = t670.
              me->mode = t669.
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `mode`.
              DATA t671 TYPE REF TO zcl_lnt_issue.
              CLEAR t671.
              result = t671.
              RETURN.
            ELSE.
              DATA(t672) = VALUE abap_bool( ).
              DATA(t673) = VALUE abap_bool( ).
              DATA(t674) = t11.
              t673 = xsdbool( t674 IS BOUND AND t674 IS INSTANCE OF zcl_lnt_statement_node ).
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
                DATA(t682) = t11.
                t681 = xsdbool( t682 IS BOUND AND t682 IS INSTANCE OF zcl_lnt_structure_node ).
                IF t681 = abap_true.
                  DATA t683 TYPE REF TO zcl_lnt_issue.
                  CLEAR t683.
                  DATA t684 TYPE REF TO zcl_lnt_issue.
                  CLEAR t684.
                  DATA t685 TYPE REF TO zcl_lnt_structure_node.
                  CLEAR t685.
                  DATA(t686) = t11.
                  DATA t687 TYPE REF TO object.
                  CLEAR t687.
                  t687 = t686.
                  t685 ?= t687.
                  DATA(t688) = t2.
                  t684 = me->walk( i_r_f634 = t685 i_file = t688 ).
                  t683 = t684.
                  DATA(t689) = VALUE abap_bool( ).
                  DATA(t690) = t683.
                  t689 = xsdbool( t690 IS BOUND ).
                  IF t689 = abap_true.
                    DATA t691 TYPE REF TO zcl_lnt_issue.
                    CLEAR t691.
                    DATA(t692) = abap_true.
                    IF t692 = abap_true.
                      DATA t693 TYPE REF TO zcl_lnt_issue.
                      CLEAR t693.
                      DATA(t694) = t683.
                      t693 = t694.
                      t691 = t693.
                    ELSE.
                      DATA t695 TYPE REF TO zcl_lnt_issue.
                      CLEAR t695.
                      t691 = t695.
                    ENDIF.
                    result = t691.
                    RETURN.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t696 TYPE REF TO zif_lnt_union_8249fcb1.
      CLEAR t696.
      DATA(t697) = abap_true.
      IF t697 = abap_true.
        DATA(t698) = t11.
        t696 = t698.
      ELSE.
        DATA t699 TYPE REF TO zif_lnt_union_8249fcb1.
        CLEAR t699.
        t696 = t699.
      ENDIF.
      t3 = t696.
    ENDDO.
    DATA t700 TYPE REF TO zcl_lnt_issue.
    CLEAR t700.
    result = t700.

  ENDMETHOD.

  METHOD build_fix.
    DATA(t1) = i_file.
    DATA(t2) = i_statement.
    DATA(t3) = i_at_e8a7.
    DATA t4 TYPE string.
    DATA t5 TYPE string.
    DATA(t6) = t2.
    t5 = t6->concat_tokens( ).
    t4 = t5.
    DATA t7 TYPE string.
    DATA(t8) = t4.
    DATA t9 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t9.
    DATA(t10) = |,$|.
    DATA(t11) = ||.
    CREATE OBJECT t9 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t10 flags = t11.
    DATA(t12) = |.|.
    DATA(t13) = strlen( t8 ).
    t7 = t9->replace( p0 = t8 p1 = t12 ).
    t4 = t7.
    DATA t14 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t15 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t16) = t1.
    DATA(t17) = t2.
    t15 = zcl_lnt_edit_helper=>delete_statement( i_file = t16 i_statement = t17 ).
    t14 = t15.
    DATA(t18) = VALUE string( ).
    DATA(t19) = VALUE string( ).
    DATA t20 TYPE string.
    DATA(t21) = | |.
    t20 = t21.
    DATA(t22) = VALUE string( ).
    DATA(t23) = t20.
    DATA t24 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t25 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t26 TYPE REF TO zcl_lnt_abstract_token.
    DATA t27 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t28) = t2.
    t27 = t28->get_first_token( ).
    t26 = t27.
    DATA t29 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t30 TYPE REF TO zcl_lnt_position.
    DATA t31 TYPE REF TO zcl_lnt_position.
    DATA(t32) = t26.
    t31 = t32->start.
    t30 = t31.
    DATA t33 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t34) = t30.
    t33 = t34->col.
    t29 = t33.
    t25 = t29.
    DATA(t35) = CONV f( 1 ).
    DATA(t36) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t36->has = abap_true.
    t36->value = t35.
    t24 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t25 right = t36 op = `-` ).
    DATA(t37) = CONV f( zlnt_runtime_numb_290eb04a9758=>finite( t24 ) ).
    DATA(t38) = strlen( t23 ).
    DATA(t39) = CONV f( trunc( t37 ) ).
    IF t39 < 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    CLEAR t22.
    IF t23 IS NOT INITIAL.
      IF t39 > 2147483647 OR t39 * strlen( t23 ) > 2147483647.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t22 = repeat( val = t23 occ = CONV i( t39 ) ).
    ENDIF.
    t19 = t22.
    t18 = t19.
    DATA t40 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t41 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t42) = t1.
    DATA(t43) = t3.
    DATA t44 TYPE string.
    DATA t45 TYPE string.
    DATA(t46) = |\n|.
    DATA(t47) = t18.
    DATA(t48) = strlen( t46 ).
    t45 = |{ t46 }{ t47 }|.
    DATA(t49) = t4.
    DATA(t50) = strlen( t45 ).
    t44 = |{ t45 }{ t49 }|.
    t41 = zcl_lnt_edit_helper=>insert_at( i_file = t42 i_pos = t43 i_text = t44 ).
    t40 = t41.
    DATA t51 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA(t52) = t14.
    DATA(t53) = t40.
    t51 = zcl_lnt_edit_helper=>merge( i_fix1 = t52 i_fix2 = t53 ).
    result = t51.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_definitions_top_conf( me->gt_cn_in_sr_rl_df_tp_ts_dfn_tp( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_definitions_top_conf( me->gt_cn_in_sr_rl_df_tp_ts_dfn_tp( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_definitions_top_conf.
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
        t1 = NEW zcl_lnt_definitions_top_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_df_tp_ts_dfn_tp( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_df_tp_ts_dfn_tp( i_file = i_file ) ).
    result = t1.

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
