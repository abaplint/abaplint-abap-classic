* TS: src/rules/empty_event.ts:15:1 EmptyEvent
CLASS zcl_lnt_empty_event DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_empty_event_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_em_ev_ts_em_evn RETURNING VALUE(result) TYPE REF TO zcl_lnt_empty_event_conf.
    METHODS st_cn_in_sr_rl_em_ev_ts_em_evn IMPORTING i_conf TYPE REF TO zcl_lnt_empty_event_conf.
    METHODS run_parsed REDEFINITION.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_empty_event IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_empty_event_conf(  ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.
  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = CONV string( |empty_event| ).
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = CONV string( |Empty selection screen or list processing event block| ).
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = CONV string( |Empty selection screen or list processing event block| ).
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = CONV abap_bool( abap_true ).
    IF t10 = abap_true.
      DATA(t11) = CONV string( || ).
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
    DATA(t16) = CONV abap_bool( abap_true ).
    IF t16 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t19.
      t18 = t19.
      DATA(t20) = CAST zlnt_runtime_arra_8ecd6afe19e0( t18 ).
      DATA(t21) = CONV string( |SingleFile| ).
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = CAST zlnt_runtime_arra_8ecd6afe19e0( t18 ).
      t17 = t22.
      t15 = t17.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t23.
      t15 = t23.
    ENDIF.
    t14 = t15.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    DATA(t26) = CONV abap_bool( abap_true ).
    IF t26 = abap_true.
      DATA(t27) = CONV string( |\nINITIALIZATION.\n  WRITE 'hello'.\nEND-OF-SELECTION.| ).
      DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t28->has = abap_true.
      t28->value = t27.
      t25 = t28.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      t25 = t29.
    ENDIF.
    t24 = t25.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    DATA(t32) = CONV abap_bool( abap_true ).
    IF t32 = abap_true.
      DATA(t33) = CONV string( |\nSTART-OF-SELECTION.\n  PERFORM sdf.\n  COMMIT WORK.| ).
      DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t34->has = abap_true.
      t34->value = t33.
      t31 = t34.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t31 = t35.
    ENDIF.
    t30 = t31.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t36 = t37.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t24 i_good_example = t30 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t38 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t46 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t47) = CONV string( |key| ).
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    ENDIF.
    DATA(t49) = CONV string( |title| ).
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = CONV string( |shortDescription| ).
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = CONV string( |extendedInformation| ).
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = CONV string( |tags| ).
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = CONV string( |badExample| ).
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = CONV string( |goodExample| ).
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    result = t1.
    RETURN.
  ENDMETHOD.
  METHOD gt_cn_in_sr_rl_em_ev_ts_em_evn.
    DATA(t1) = CAST zcl_lnt_empty_event_conf( me->conf ).
    result = t1.
    RETURN.
  ENDMETHOD.
  METHOD st_cn_in_sr_rl_em_ev_ts_em_evn.
    DATA(t1) = CAST zcl_lnt_empty_event_conf( i_conf ).
    DATA(t2) = CAST zcl_lnt_empty_event_conf( t1 ).
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.
  METHOD run_parsed.
    DATA(t1) = CAST zcl_lnt_abap_file( i_file ).
    DATA(t2) = CAST zcl_lnt_abap_object( i_obj_1ed0 ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE abap_bool.
    DATA t7 TYPE abap_bool.
    DATA(t8) = CAST zcl_lnt_abap_object( t2 ).
    t7 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_ob_program ).
    t6 = xsdbool( t7 = abap_false ).
    t5 = t6.
    IF t6 = abap_false.
      DATA t9 TYPE abap_bool.
      DATA t10 TYPE REF TO zcl_lnt_ob_program.
      DATA t11 TYPE REF TO zcl_lnt_ob_program.
      DATA(t12) = CAST zcl_lnt_abap_object( t2 ).
      t11 ?= t12.
      t10 = t11.
      DATA t13 TYPE abap_bool.
      DATA(t14) = CAST zcl_lnt_ob_program( t10 ).
      t14->parse_xml(  ).
      DATA t15 TYPE abap_bool.
      DATA t16 TYPE REF TO zcl_lnt_shape_d77da4ed.
      DATA t17 TYPE REF TO zcl_lnt_shape_d77da4ed.
      DATA(t18) = CAST zcl_lnt_ob_program( t10 ).
      t17 = t18->parsed_xml.
      t16 = t17.
      t15 = t16->is_include.
      t13 = t15.
      t9 = t13.
      t5 = t9.
    ENDIF.
    IF t5 = abap_true.
      DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
      result = t19.
      RETURN.
    ENDIF.
    DATA t20 TYPE REF TO zcl_lnt_structure_node.
    DATA t21 TYPE REF TO zcl_lnt_structure_node.
    DATA t22 TYPE REF TO zcl_lnt_abap_file.
    DATA(t23) = CAST zcl_lnt_abap_file( t1 ).
    t22 = t23.
    DATA t24 TYPE REF TO zcl_lnt_structure_node.
    DATA(t25) = CAST zcl_lnt_abap_file( t22 ).
    t24 = t25->structure.
    t21 = t24.
    t20 = t21.
    DATA(t26) = VALUE abap_bool( ).
    DATA t27 TYPE REF TO zcl_lnt_structure_node.
    DATA(t28) = CAST zcl_lnt_structure_node( t20 ).
    t27 = t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    t29 = t30.
    DATA(t31) = VALUE abap_bool( ).
    DATA(t32) = CAST zcl_lnt_structure_node( t27 ).
    IF t32 IS INITIAL.
      t31 = abap_true.
    ENDIF.
    t26 = t31.
    IF t26 = abap_true.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t33.
      result = t33.
      RETURN.
    ENDIF.
    DATA t34 TYPE REF TO zcl_lnt_statement_node.
    DATA t35 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t35.
    t34 = t35.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t37.
    t36 = t37.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t38.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t41 TYPE REF TO zcl_lnt_abstract_node.
    DATA t42 TYPE REF TO zcl_lnt_structure_node.
    DATA(t43) = CAST zcl_lnt_structure_node( t20 ).
    t42 = t43.
    t41 = t42.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t45) = CAST zcl_lnt_abstract_node( t41 ).
    t44 = t45->children.
    t40 = t44.
    t39 = t40.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t46.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t47.
    DATA t48 TYPE abap_bool.
    DATA(t49) = CAST zlnt_runtime_arra_c22708faf2e3( t39 ).
    t48 = xsdbool( t49 IS BOUND ).
    IF t48 = abap_true.
      DATA(t50) = CAST zlnt_runtime_arra_c22708faf2e3( t39 ).
      t47 = t50.
    ELSE.
      DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t51.
      t47 = t51.
    ENDIF.
    t46 ?= t47.
    t38 = t46.
    DATA t52 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t52.
    DATA t53 TYPE REF TO object.
    CLEAR t53.
    DATA(t54) = VALUE i( ).
    DO.
      t38->load( ).
      IF t54 >= lines( t38->items ).
        EXIT.
      ENDIF.
      CLEAR t53.
      READ TABLE t38->items INDEX t54 + 1 INTO t53.
      t54 = t54 + 1.
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t55.
      CLEAR t52.
      IF t53 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t55 ?= t53.
        DATA t56 TYPE REF TO object.
        t56 = t55->as_ref( ).
        t52 ?= t56.
      ELSE.
        t52 ?= t53.
      ENDIF.
      DATA(t57) = VALUE abap_bool( ).
      DATA t58 TYPE abap_bool.
      DATA(t59) = CONV abap_bool( abap_false ).
      t58 = t59.
      DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t60.
      IF zcl_lnt_stuff_module=>zlnt_builtin_init_e342877270d6 = abap_false.
        zcl_lnt_stuff_module=>zlnt_builtin_init_bdd646de0219( ).
      ENDIF.
      t60 = zcl_lnt_stuff_module=>selection_events.
      DATA t61 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t61.
      DATA t62 TYPE REF TO object.
      CLEAR t62.
      DATA(t63) = VALUE i( ).
      DO.
        t60->load( ).
        IF t63 >= lines( t60->items ).
          EXIT.
        ENDIF.
        CLEAR t62.
        READ TABLE t60->items INDEX t63 + 1 INTO t62.
        t63 = t63 + 1.
        DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t64.
        CLEAR t61.
        IF t62 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t64 ?= t62.
          t61 = t64->as_classvalue( ).
        ELSE.
          t61 ?= t62.
        ENDIF.
        DATA(t65) = VALUE abap_bool( ).
        DATA t66 TYPE REF TO object.
        DATA(t67) = CAST zif_lnt_union_8249fcb1( t52 ).
        t66 = t67->get_db65(  ).
        DATA(t68) = CAST zlnt_runtime_clas_a39833db3295( t61 ).
        DATA t69 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t69.
        IF t66 IS BOUND.
          DATA t70 TYPE REF TO zlnt_runtime_desc_e5fe811e0f42.
          t70 ?= t66.
          t69 = t70->zlnt_builtin_clas_3f891b097658( ).
          WHILE t69 IS BOUND.
            IF t69 = t68.
              t65 = abap_true.
              EXIT.
            ENDIF.
            t69 = t69->parent.
          ENDWHILE.
        ENDIF.
        IF t65 = abap_true.
          DATA(t71) = CONV abap_bool( abap_true ).
          t58 = t71.
          EXIT.
        ENDIF.
      ENDDO.
      DATA(t72) = CONV abap_bool( t58 ).
      t57 = t72.
      IF t57 = abap_true.
        DATA(t73) = VALUE abap_bool( ).
        DATA(t74) = VALUE abap_bool( ).
        DATA t75 TYPE REF TO zcl_lnt_statement_node.
        DATA(t76) = CAST zcl_lnt_statement_node( t34 ).
        t75 = t76.
        DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t78.
        t77 = t78.
        DATA(t79) = VALUE abap_bool( ).
        DATA(t80) = VALUE abap_bool( ).
        DATA(t81) = CAST zcl_lnt_statement_node( t75 ).
        IF t81 IS INITIAL.
          t80 = abap_true.
        ENDIF.
        t79 = xsdbool( t80 = abap_false ).
        t74 = t79.
        t73 = t74.
        IF t74 = abap_true.
          DATA t82 TYPE abap_bool.
          DATA t83 TYPE i.
          DATA(t84) = CAST zlnt_runtime_arra_c22708faf2e3( t36 ).
          t84->load( ).
          t83 = lines( t84->items ).
          DATA(t85) = CONV i( 0 ).
          t82 = xsdbool( t83 = t85 ).
          t73 = t82.
        ENDIF.
        IF t73 = abap_true.
          DATA(t86) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
          DATA t87 TYPE REF TO zcl_lnt_issue.
          CLEAR t87.
          DATA(t88) = CAST zcl_lnt_abap_file( t1 ).
          DATA t89 TYPE REF TO zcl_lnt_statement_node.
          DATA(t90) = CAST zcl_lnt_statement_node( t34 ).
          t89 = t90.
          DATA(t91) = CONV string( |Empty event| ).
          DATA(t92) = VALUE string( ).
          DATA t93 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t93.
          DATA t94 TYPE string.
          DATA(t95) = CONV string( |empty_event| ).
          t94 = t95.
          DATA t96 TYPE string.
          DATA(t97) = CONV string( |Empty selection screen or list processing event block| ).
          t96 = t97.
          DATA t98 TYPE string.
          DATA(t99) = CONV string( |Empty selection screen or list processing event block| ).
          t98 = t99.
          DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t100.
          DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t101.
          DATA(t102) = CONV abap_bool( abap_true ).
          IF t102 = abap_true.
            DATA(t103) = CONV string( || ).
            DATA(t104) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t104->has = abap_true.
            t104->value = t103.
            t101 = t104.
          ELSE.
            DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t105.
            t101 = t105.
          ENDIF.
          t100 = t101.
          DATA t106 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t106.
          DATA t107 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t107.
          DATA(t108) = CONV abap_bool( abap_true ).
          IF t108 = abap_true.
            DATA t109 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t110 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t111 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t111.
            t110 = t111.
            DATA(t112) = CAST zlnt_runtime_arra_8ecd6afe19e0( t110 ).
            DATA(t113) = CONV string( |SingleFile| ).
            t112->load( ).
            APPEND t113 TO t112->items.
            t112->save( ).
            DATA(t114) = CAST zlnt_runtime_arra_8ecd6afe19e0( t110 ).
            t109 = t114.
            t107 = t109.
          ELSE.
            DATA t115 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t115.
            t107 = t115.
          ENDIF.
          t106 = t107.
          DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t116.
          DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t117.
          DATA(t118) = CONV abap_bool( abap_true ).
          IF t118 = abap_true.
            DATA(t119) = CONV string( |\nINITIALIZATION.\n  WRITE 'hello'.\nEND-OF-SELECTION.| ).
            DATA(t120) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t120->has = abap_true.
            t120->value = t119.
            t117 = t120.
          ELSE.
            DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t121.
            t117 = t121.
          ENDIF.
          t116 = t117.
          DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t122.
          DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t123.
          DATA(t124) = CONV abap_bool( abap_true ).
          IF t124 = abap_true.
            DATA(t125) = CONV string( |\nSTART-OF-SELECTION.\n  PERFORM sdf.\n  COMMIT WORK.| ).
            DATA(t126) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t126->has = abap_true.
            t126->value = t125.
            t123 = t126.
          ELSE.
            DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t127.
            t123 = t127.
          ENDIF.
          t122 = t123.
          DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t129.
          t128 = t129.
          DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t131.
          t130 = t131.
          t93 = NEW zcl_lnt_irule_metadata( i_key = t94 i_title = t96 i_short_description = t98 i_bad_example = t116 i_good_example = t122 i_extended_information = t100 i_tags = t106 i_pragma = t128 i_pseudo_comment = t130 ).
          CREATE OBJECT t93->zlnt_view_ownkeys_b0e8086400eb.
          t93->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t132.
          IF t93->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t93->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t132 ).
          ENDIF.
          DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t133.
          IF t93->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t93->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t133 ).
          ENDIF.
          DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t134.
          IF t93->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t93->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t134 ).
          ENDIF.
          DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t135.
          IF t93->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t93->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t135 ).
          ENDIF.
          DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t136.
          IF t93->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t93->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t136 ).
          ENDIF.
          DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t137.
          IF t93->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t93->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t137 ).
          ENDIF.
          DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t138.
          IF t93->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t93->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t138 ).
          ENDIF.
          CREATE OBJECT t93->zlnt_json_ownkeys_70e5fd461788.
          t93->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t139) = CONV string( |key| ).
          DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t140.
          IF t93->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t93->zlnt_json_ownkeys_70e5fd461788->put( p0 = t139 p1 = t140 ).
          ENDIF.
          DATA(t141) = CONV string( |title| ).
          DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t142.
          IF t93->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t93->zlnt_json_ownkeys_70e5fd461788->put( p0 = t141 p1 = t142 ).
          ENDIF.
          DATA(t143) = CONV string( |shortDescription| ).
          DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t144.
          IF t93->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t93->zlnt_json_ownkeys_70e5fd461788->put( p0 = t143 p1 = t144 ).
          ENDIF.
          DATA(t145) = CONV string( |extendedInformation| ).
          DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t146.
          IF t93->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t93->zlnt_json_ownkeys_70e5fd461788->put( p0 = t145 p1 = t146 ).
          ENDIF.
          DATA(t147) = CONV string( |tags| ).
          DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t148.
          IF t93->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t93->zlnt_json_ownkeys_70e5fd461788->put( p0 = t147 p1 = t148 ).
          ENDIF.
          DATA(t149) = CONV string( |badExample| ).
          DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t150.
          IF t93->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t93->zlnt_json_ownkeys_70e5fd461788->put( p0 = t149 p1 = t150 ).
          ENDIF.
          DATA(t151) = CONV string( |goodExample| ).
          DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t152.
          IF t93->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t93->zlnt_json_ownkeys_70e5fd461788->put( p0 = t151 p1 = t152 ).
          ENDIF.
          t92 = t93->key.
          DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t154) = CAST zcl_lnt_empty_event_conf( me->gt_cn_in_sr_rl_em_ev_ts_em_evn(  ) ).
          t153 = t154->zlnt_view_read_sr_15c06369f827( ).
          DATA t155 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t155.
          DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t156.
          t87 = zcl_lnt_issue=>at_statement( i_file = t88 i_statement = t89 i_message_26cb = t91 i_key = t92 i_severity = t153 i_fix = t155 i_alternative_fixes = t156 ).
          t86->load( ).
          APPEND t87 TO t86->items.
          t86->save( ).
        ENDIF.
        DATA t157 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t157.
        t36 = t157.
        DATA t158 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t158.
        DATA(t159) = CONV abap_bool( abap_true ).
        IF t159 = abap_true.
          DATA t160 TYPE REF TO zcl_lnt_statement_node.
          DATA(t161) = CAST zif_lnt_union_8249fcb1( t52 ).
          t160 ?= t161.
          t158 = t160.
        ELSE.
          DATA t162 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t162.
          t158 = t162.
        ENDIF.
        t34 = t158.
      ELSE.
        DATA t163 TYPE abap_bool.
        DATA t164 TYPE REF TO object.
        DATA(t165) = CAST zif_lnt_union_8249fcb1( t52 ).
        t164 = t165->get_db65(  ).
        t163 = xsdbool( t164 IS BOUND AND t164 IS INSTANCE OF zcl_lnt_normal ).
        IF t163 = abap_true.
          DATA t166 TYPE REF TO zcl_lnt_structure_node.
          DATA t167 TYPE REF TO zcl_lnt_structure_node.
          DATA(t168) = CAST zif_lnt_union_8249fcb1( t52 ).
          t167 ?= t168.
          t166 = t167.
          DATA(t169) = VALUE abap_bool( ).
          DATA t170 TYPE abap_bool.
          DATA(t171) = CONV abap_bool( abap_false ).
          t170 = t171.
          DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t172.
          IF zcl_lnt_stuff_module=>zlnt_builtin_init_e342877270d6 = abap_false.
            zcl_lnt_stuff_module=>zlnt_builtin_init_bdd646de0219( ).
          ENDIF.
          t172 = zcl_lnt_stuff_module=>declaration_stuff.
          DATA t173 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t173.
          DATA t174 TYPE REF TO object.
          CLEAR t174.
          DATA(t175) = VALUE i( ).
          DO.
            t172->load( ).
            IF t175 >= lines( t172->items ).
              EXIT.
            ENDIF.
            CLEAR t174.
            READ TABLE t172->items INDEX t175 + 1 INTO t174.
            t175 = t175 + 1.
            DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t176.
            CLEAR t173.
            IF t174 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t176 ?= t174.
              t173 = t176->as_classvalue( ).
            ELSE.
              t173 ?= t174.
            ENDIF.
            DATA(t177) = VALUE abap_bool( ).
            DATA t178 TYPE REF TO zif_lnt_statement.
            CLEAR t178.
            DATA t179 TYPE REF TO zcl_lnt_statement_node.
            DATA t180 TYPE REF TO zcl_lnt_statement_node.
            DATA(t181) = CAST zcl_lnt_structure_node( t166 ).
            t180 = t181->get_first_statement(  ).
            t179 = t180.
            DATA t182 TYPE REF TO zif_lnt_statement.
            CLEAR t182.
            DATA(t183) = VALUE abap_bool( ).
            DATA(t184) = CAST zcl_lnt_statement_node( t179 ).
            IF t184 IS INITIAL.
              t183 = abap_true.
            ENDIF.
            IF t183 = abap_true.
              DATA t185 TYPE REF TO zif_lnt_statement.
              CLEAR t185.
              t182 = t185.
            ELSE.
              DATA t186 TYPE REF TO zif_lnt_statement.
              DATA t187 TYPE REF TO zcl_lnt_statement_node.
              DATA(t188) = CAST zcl_lnt_statement_node( t179 ).
              t187 = t188.
              t186 = t187->gt_in_sr_ab_nd_st_nd_ts_stt_nd(  ).
              t182 = t186.
            ENDIF.
            t178 = t182.
            DATA(t189) = CAST zlnt_runtime_clas_a39833db3295( t173 ).
            DATA t190 TYPE REF TO zlnt_runtime_clas_a39833db3295.
            CLEAR t190.
            IF t178 IS BOUND.
              t190 = t178->zlnt_builtin_clas_3f891b097658( ).
              WHILE t190 IS BOUND.
                IF t190 = t189.
                  t177 = abap_true.
                  EXIT.
                ENDIF.
                t190 = t190->parent.
              ENDWHILE.
            ENDIF.
            IF t177 = abap_true.
              DATA(t191) = CONV abap_bool( abap_true ).
              t170 = t191.
              EXIT.
            ENDIF.
          ENDDO.
          DATA(t192) = CONV abap_bool( t170 ).
          t169 = t192.
          IF t169 = abap_true.
            CONTINUE.
          ENDIF.
          DATA(t193) = CAST zlnt_runtime_arra_c22708faf2e3( t36 ).
          DATA(t194) = CAST zif_lnt_union_8249fcb1( t52 ).
          t193->load( ).
          APPEND t194 TO t193->items.
          t193->save( ).
        ELSE.
          DATA(t195) = VALUE abap_bool( ).
          DATA(t196) = VALUE abap_bool( ).
          DATA t197 TYPE REF TO zcl_lnt_statement_node.
          DATA(t198) = CAST zcl_lnt_statement_node( t34 ).
          t197 = t198.
          DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t200.
          t199 = t200.
          DATA(t201) = VALUE abap_bool( ).
          DATA(t202) = VALUE abap_bool( ).
          DATA(t203) = CAST zcl_lnt_statement_node( t197 ).
          IF t203 IS INITIAL.
            t202 = abap_true.
          ENDIF.
          t201 = xsdbool( t202 = abap_false ).
          t196 = t201.
          t195 = t196.
          IF t196 = abap_true.
            DATA t204 TYPE abap_bool.
            DATA t205 TYPE i.
            DATA(t206) = CAST zlnt_runtime_arra_c22708faf2e3( t36 ).
            t206->load( ).
            t205 = lines( t206->items ).
            DATA(t207) = CONV i( 0 ).
            t204 = xsdbool( t205 = t207 ).
            t195 = t204.
          ENDIF.
          IF t195 = abap_true.
            DATA(t208) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
            DATA t209 TYPE REF TO zcl_lnt_issue.
            CLEAR t209.
            DATA(t210) = CAST zcl_lnt_abap_file( t1 ).
            DATA t211 TYPE REF TO zcl_lnt_statement_node.
            DATA(t212) = CAST zcl_lnt_statement_node( t34 ).
            t211 = t212.
            DATA(t213) = CONV string( |Empty event| ).
            DATA(t214) = VALUE string( ).
            DATA t215 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t215.
            DATA t216 TYPE string.
            DATA(t217) = CONV string( |empty_event| ).
            t216 = t217.
            DATA t218 TYPE string.
            DATA(t219) = CONV string( |Empty selection screen or list processing event block| ).
            t218 = t219.
            DATA t220 TYPE string.
            DATA(t221) = CONV string( |Empty selection screen or list processing event block| ).
            t220 = t221.
            DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t222.
            DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t223.
            DATA(t224) = CONV abap_bool( abap_true ).
            IF t224 = abap_true.
              DATA(t225) = CONV string( || ).
              DATA(t226) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t226->has = abap_true.
              t226->value = t225.
              t223 = t226.
            ELSE.
              DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t227.
              t223 = t227.
            ENDIF.
            t222 = t223.
            DATA t228 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t228.
            DATA t229 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t229.
            DATA(t230) = CONV abap_bool( abap_true ).
            IF t230 = abap_true.
              DATA t231 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t232 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t233 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t233.
              t232 = t233.
              DATA(t234) = CAST zlnt_runtime_arra_8ecd6afe19e0( t232 ).
              DATA(t235) = CONV string( |SingleFile| ).
              t234->load( ).
              APPEND t235 TO t234->items.
              t234->save( ).
              DATA(t236) = CAST zlnt_runtime_arra_8ecd6afe19e0( t232 ).
              t231 = t236.
              t229 = t231.
            ELSE.
              DATA t237 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t237.
              t229 = t237.
            ENDIF.
            t228 = t229.
            DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t238.
            DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t239.
            DATA(t240) = CONV abap_bool( abap_true ).
            IF t240 = abap_true.
              DATA(t241) = CONV string( |\nINITIALIZATION.\n  WRITE 'hello'.\nEND-OF-SELECTION.| ).
              DATA(t242) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t242->has = abap_true.
              t242->value = t241.
              t239 = t242.
            ELSE.
              DATA t243 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t243.
              t239 = t243.
            ENDIF.
            t238 = t239.
            DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t244.
            DATA t245 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t245.
            DATA(t246) = CONV abap_bool( abap_true ).
            IF t246 = abap_true.
              DATA(t247) = CONV string( |\nSTART-OF-SELECTION.\n  PERFORM sdf.\n  COMMIT WORK.| ).
              DATA(t248) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t248->has = abap_true.
              t248->value = t247.
              t245 = t248.
            ELSE.
              DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t249.
              t245 = t249.
            ENDIF.
            t244 = t245.
            DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t251 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t251.
            t250 = t251.
            DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t253.
            t252 = t253.
            t215 = NEW zcl_lnt_irule_metadata( i_key = t216 i_title = t218 i_short_description = t220 i_bad_example = t238 i_good_example = t244 i_extended_information = t222 i_tags = t228 i_pragma = t250 i_pseudo_comment = t252 ).
            CREATE OBJECT t215->zlnt_view_ownkeys_b0e8086400eb.
            t215->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t254.
            IF t215->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t215->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t254 ).
            ENDIF.
            DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t255.
            IF t215->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t215->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t255 ).
            ENDIF.
            DATA t256 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t256.
            IF t215->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t215->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t256 ).
            ENDIF.
            DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t257.
            IF t215->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t215->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t257 ).
            ENDIF.
            DATA t258 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t258.
            IF t215->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t215->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t258 ).
            ENDIF.
            DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t259.
            IF t215->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t215->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t259 ).
            ENDIF.
            DATA t260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t260.
            IF t215->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t215->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t260 ).
            ENDIF.
            CREATE OBJECT t215->zlnt_json_ownkeys_70e5fd461788.
            t215->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t261) = CONV string( |key| ).
            DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t262.
            IF t215->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t215->zlnt_json_ownkeys_70e5fd461788->put( p0 = t261 p1 = t262 ).
            ENDIF.
            DATA(t263) = CONV string( |title| ).
            DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t264.
            IF t215->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t215->zlnt_json_ownkeys_70e5fd461788->put( p0 = t263 p1 = t264 ).
            ENDIF.
            DATA(t265) = CONV string( |shortDescription| ).
            DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t266.
            IF t215->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t215->zlnt_json_ownkeys_70e5fd461788->put( p0 = t265 p1 = t266 ).
            ENDIF.
            DATA(t267) = CONV string( |extendedInformation| ).
            DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t268.
            IF t215->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t215->zlnt_json_ownkeys_70e5fd461788->put( p0 = t267 p1 = t268 ).
            ENDIF.
            DATA(t269) = CONV string( |tags| ).
            DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t270.
            IF t215->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t215->zlnt_json_ownkeys_70e5fd461788->put( p0 = t269 p1 = t270 ).
            ENDIF.
            DATA(t271) = CONV string( |badExample| ).
            DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t272.
            IF t215->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t215->zlnt_json_ownkeys_70e5fd461788->put( p0 = t271 p1 = t272 ).
            ENDIF.
            DATA(t273) = CONV string( |goodExample| ).
            DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t274.
            IF t215->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t215->zlnt_json_ownkeys_70e5fd461788->put( p0 = t273 p1 = t274 ).
            ENDIF.
            t214 = t215->key.
            DATA t275 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t276) = CAST zcl_lnt_empty_event_conf( me->gt_cn_in_sr_rl_em_ev_ts_em_evn(  ) ).
            t275 = t276->zlnt_view_read_sr_15c06369f827( ).
            DATA t277 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t277.
            DATA t278 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t278.
            t209 = zcl_lnt_issue=>at_statement( i_file = t210 i_statement = t211 i_message_26cb = t213 i_key = t214 i_severity = t275 i_fix = t277 i_alternative_fixes = t278 ).
            t208->load( ).
            APPEND t209 TO t208->items.
            t208->save( ).
          ENDIF.
          DATA t279 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t279.
          t36 = t279.
          DATA t280 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t280.
          t34 = t280.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t281) = VALUE abap_bool( ).
    DATA(t282) = VALUE abap_bool( ).
    DATA t283 TYPE REF TO zcl_lnt_statement_node.
    DATA(t284) = CAST zcl_lnt_statement_node( t34 ).
    t283 = t284.
    DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t286.
    t285 = t286.
    DATA(t287) = VALUE abap_bool( ).
    DATA(t288) = VALUE abap_bool( ).
    DATA(t289) = CAST zcl_lnt_statement_node( t283 ).
    IF t289 IS INITIAL.
      t288 = abap_true.
    ENDIF.
    t287 = xsdbool( t288 = abap_false ).
    t282 = t287.
    t281 = t282.
    IF t282 = abap_true.
      DATA t290 TYPE abap_bool.
      DATA t291 TYPE i.
      DATA(t292) = CAST zlnt_runtime_arra_c22708faf2e3( t36 ).
      t292->load( ).
      t291 = lines( t292->items ).
      DATA(t293) = CONV i( 0 ).
      t290 = xsdbool( t291 = t293 ).
      t281 = t290.
    ENDIF.
    IF t281 = abap_true.
      DATA(t294) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
      DATA t295 TYPE REF TO zcl_lnt_issue.
      CLEAR t295.
      DATA(t296) = CAST zcl_lnt_abap_file( t1 ).
      DATA t297 TYPE REF TO zcl_lnt_statement_node.
      DATA(t298) = CAST zcl_lnt_statement_node( t34 ).
      t297 = t298.
      DATA(t299) = CONV string( |Empty event| ).
      DATA(t300) = VALUE string( ).
      DATA t301 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t301.
      DATA t302 TYPE string.
      DATA(t303) = CONV string( |empty_event| ).
      t302 = t303.
      DATA t304 TYPE string.
      DATA(t305) = CONV string( |Empty selection screen or list processing event block| ).
      t304 = t305.
      DATA t306 TYPE string.
      DATA(t307) = CONV string( |Empty selection screen or list processing event block| ).
      t306 = t307.
      DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t308.
      DATA t309 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t309.
      DATA(t310) = CONV abap_bool( abap_true ).
      IF t310 = abap_true.
        DATA(t311) = CONV string( || ).
        DATA(t312) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t312->has = abap_true.
        t312->value = t311.
        t309 = t312.
      ELSE.
        DATA t313 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t313.
        t309 = t313.
      ENDIF.
      t308 = t309.
      DATA t314 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t314.
      DATA t315 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t315.
      DATA(t316) = CONV abap_bool( abap_true ).
      IF t316 = abap_true.
        DATA t317 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t318 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t319 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t319.
        t318 = t319.
        DATA(t320) = CAST zlnt_runtime_arra_8ecd6afe19e0( t318 ).
        DATA(t321) = CONV string( |SingleFile| ).
        t320->load( ).
        APPEND t321 TO t320->items.
        t320->save( ).
        DATA(t322) = CAST zlnt_runtime_arra_8ecd6afe19e0( t318 ).
        t317 = t322.
        t315 = t317.
      ELSE.
        DATA t323 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t323.
        t315 = t323.
      ENDIF.
      t314 = t315.
      DATA t324 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t324.
      DATA t325 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t325.
      DATA(t326) = CONV abap_bool( abap_true ).
      IF t326 = abap_true.
        DATA(t327) = CONV string( |\nINITIALIZATION.\n  WRITE 'hello'.\nEND-OF-SELECTION.| ).
        DATA(t328) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t328->has = abap_true.
        t328->value = t327.
        t325 = t328.
      ELSE.
        DATA t329 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t329.
        t325 = t329.
      ENDIF.
      t324 = t325.
      DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t330.
      DATA t331 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t331.
      DATA(t332) = CONV abap_bool( abap_true ).
      IF t332 = abap_true.
        DATA(t333) = CONV string( |\nSTART-OF-SELECTION.\n  PERFORM sdf.\n  COMMIT WORK.| ).
        DATA(t334) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t334->has = abap_true.
        t334->value = t333.
        t331 = t334.
      ELSE.
        DATA t335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t335.
        t331 = t335.
      ENDIF.
      t330 = t331.
      DATA t336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t337 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t337.
      t336 = t337.
      DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t339 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t339.
      t338 = t339.
      t301 = NEW zcl_lnt_irule_metadata( i_key = t302 i_title = t304 i_short_description = t306 i_bad_example = t324 i_good_example = t330 i_extended_information = t308 i_tags = t314 i_pragma = t336 i_pseudo_comment = t338 ).
      CREATE OBJECT t301->zlnt_view_ownkeys_b0e8086400eb.
      t301->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t340.
      IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t340 ).
      ENDIF.
      DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t341.
      IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t341 ).
      ENDIF.
      DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t342.
      IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t342 ).
      ENDIF.
      DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t343.
      IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t343 ).
      ENDIF.
      DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t344.
      IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t344 ).
      ENDIF.
      DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t345.
      IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t345 ).
      ENDIF.
      DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t346.
      IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t346 ).
      ENDIF.
      CREATE OBJECT t301->zlnt_json_ownkeys_70e5fd461788.
      t301->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t347) = CONV string( |key| ).
      DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t348.
      IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t347 p1 = t348 ).
      ENDIF.
      DATA(t349) = CONV string( |title| ).
      DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t350.
      IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t349 p1 = t350 ).
      ENDIF.
      DATA(t351) = CONV string( |shortDescription| ).
      DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t352.
      IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t351 p1 = t352 ).
      ENDIF.
      DATA(t353) = CONV string( |extendedInformation| ).
      DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t354.
      IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t353 p1 = t354 ).
      ENDIF.
      DATA(t355) = CONV string( |tags| ).
      DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t356.
      IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t355 p1 = t356 ).
      ENDIF.
      DATA(t357) = CONV string( |badExample| ).
      DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t358.
      IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t357 p1 = t358 ).
      ENDIF.
      DATA(t359) = CONV string( |goodExample| ).
      DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t360.
      IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t359 p1 = t360 ).
      ENDIF.
      t300 = t301->key.
      DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t362) = CAST zcl_lnt_empty_event_conf( me->gt_cn_in_sr_rl_em_ev_ts_em_evn(  ) ).
      t361 = t362->zlnt_view_read_sr_15c06369f827( ).
      DATA t363 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t363.
      DATA t364 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t364.
      t295 = zcl_lnt_issue=>at_statement( i_file = t296 i_statement = t297 i_message_26cb = t299 i_key = t300 i_severity = t361 i_fix = t363 i_alternative_fixes = t364 ).
      t294->load( ).
      APPEND t295 TO t294->items.
      t294->save( ).
    ENDIF.
    DATA(t365) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
    result = t365.
    RETURN.
  ENDMETHOD.
  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_empty_event_conf( me->gt_cn_in_sr_rl_em_ev_ts_em_evn(  ) ).
    result = t1.
    RETURN.
  ENDMETHOD.
  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_empty_event_conf( me->gt_cn_in_sr_rl_em_ev_ts_em_evn(  ) ).
    result = t1.
    RETURN.
  ENDMETHOD.
  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_empty_event_conf.
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
        t1 = NEW zcl_lnt_empty_event_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_em_ev_ts_em_evn( i_conf = t1 ).
    RETURN.
  ENDMETHOD.
  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1490_2c33b717a946.
  ENDMETHOD.
ENDCLASS.
