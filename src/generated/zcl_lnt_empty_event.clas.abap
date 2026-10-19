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
    me->conf = NEW zcl_lnt_empty_event_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |empty_event|.
    DATA t4 TYPE string.
    t4 = |Empty selection screen or list processing event block|.
    DATA t6 TYPE string.
    t6 = |Empty selection screen or list processing event block|.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = ||.
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
    t14 = t18.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t27) = |\nINITIALIZATION.\n  WRITE 'hello'.\nEND-OF-SELECTION.|.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = t27.
    t24 = t28.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t33) = |\nSTART-OF-SELECTION.\n  PERFORM sdf.\n  COMMIT WORK.|.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = t33.
    t30 = t34.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t24 i_good_example = t30 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t38 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t40 ).
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t46 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t47) = |key|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    DATA(t49) = |title|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |shortDescription|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |extendedInformation|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |tags|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |badExample|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |goodExample|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_em_ev_ts_em_evn.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_em_ev_ts_em_evn.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE abap_bool.
    DATA t7 TYPE abap_bool.
    t7 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_ob_program ).
    t6 = xsdbool( t7 = abap_false ).
    t5 = t6.
    IF t6 = abap_false.
      DATA t10 TYPE REF TO zcl_lnt_ob_program.
      DATA t11 TYPE REF TO zcl_lnt_ob_program.
      t11 ?= t2.
      t10 = t11.
      t10->parse_xml( ).
      DATA t15 TYPE abap_bool.
      DATA t16 TYPE REF TO zcl_lnt_shape_d77da4ed.
      DATA t17 TYPE REF TO zcl_lnt_shape_d77da4ed.
      t17 = t10->parsed_xml.
      t16 = t17.
      t15 = t16->is_include.
      t5 = t15.
    ENDIF.
    IF t5 = abap_true.
      result = t3.
      RETURN.
    ENDIF.
    DATA t20 TYPE REF TO zcl_lnt_structure_node.
    DATA t24 TYPE REF TO zcl_lnt_structure_node.
    t24 = t1->structure.
    t20 = t24.
    DATA(t26) = VALUE abap_bool( ).
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t26 = xsdbool( t20 IS INITIAL ).
    IF t26 = abap_true.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t33.
      result = t33.
      RETURN.
    ENDIF.
    DATA t34 TYPE REF TO zcl_lnt_statement_node.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t37.
    t36 = t37.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t41 TYPE REF TO zcl_lnt_abstract_node.
    t41 = t20.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t44 = t41->children.
    t39 = t44.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t48 TYPE abap_bool.
    t48 = xsdbool( t39 IS BOUND ).
    IF t48 = abap_true.
      t47 = t39.
    ELSE.
      DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t51.
      t47 = t51.
    ENDIF.
    t46 ?= t47.
    t38 = t46.
    DATA t52 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t53 TYPE REF TO object.
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
      t58 = abap_false.
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
        t66 = t52->get_db65( ).
        DATA(t68) = t61.
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
          t58 = abap_true.
          EXIT.
        ENDIF.
      ENDDO.
      t57 = t58.
      IF t57 = abap_true.
        DATA(t73) = VALUE abap_bool( ).
        DATA(t74) = VALUE abap_bool( ).
        DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t77.
        DATA(t79) = VALUE abap_bool( ).
        DATA(t80) = xsdbool( t34 IS INITIAL ).
        t79 = xsdbool( t80 = abap_false ).
        t74 = t79.
        t73 = t74.
        IF t74 = abap_true.
          DATA t82 TYPE abap_bool.
          DATA t83 TYPE i.
          DATA(t84) = t36.
          t84->load( ).
          t83 = lines( t84->items ).
          DATA(t85) = 0.
          t82 = xsdbool( t83 = t85 ).
          t73 = t82.
        ENDIF.
        IF t73 = abap_true.
          DATA t87 TYPE REF TO zcl_lnt_issue.
          CLEAR t87.
          DATA t89 TYPE REF TO zcl_lnt_statement_node.
          t89 = t34.
          DATA(t91) = |Empty event|.
          DATA(t92) = VALUE string( ).
          DATA t93 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t93.
          DATA t94 TYPE string.
          t94 = |empty_event|.
          DATA t96 TYPE string.
          t96 = |Empty selection screen or list processing event block|.
          DATA t98 TYPE string.
          t98 = |Empty selection screen or list processing event block|.
          DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t100.
          DATA(t103) = ||.
          DATA(t104) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t104->has = abap_true.
          t104->value = t103.
          t100 = t104.
          DATA t106 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t106.
          DATA t110 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t111 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t111.
          t110 = t111.
          DATA(t113) = |SingleFile|.
          t110->load( ).
          APPEND t113 TO t110->items.
          t110->save( ).
          t106 = t110.
          DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t116.
          DATA(t119) = |\nINITIALIZATION.\n  WRITE 'hello'.\nEND-OF-SELECTION.|.
          DATA(t120) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t120->has = abap_true.
          t120->value = t119.
          t116 = t120.
          DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t122.
          DATA(t125) = |\nSTART-OF-SELECTION.\n  PERFORM sdf.\n  COMMIT WORK.|.
          DATA(t126) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t126->has = abap_true.
          t126->value = t125.
          t122 = t126.
          DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t128.
          DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t130.
          t93 = NEW zcl_lnt_irule_metadata( i_key = t94 i_title = t96 i_short_description = t98 i_bad_example = t116 i_good_example = t122 i_extended_information = t100 i_tags = t106 i_pragma = t128 i_pseudo_comment = t130 ).
          CREATE OBJECT t93->zlnt_view_ownkeys_b0e8086400eb.
          t93->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t132.
          t93->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t132 ).
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
          DATA(t139) = |key|.
          DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t140.
          t93->zlnt_json_ownkeys_70e5fd461788->put( p0 = t139 p1 = t140 ).
          DATA(t141) = |title|.
          DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t142.
          IF t93->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t93->zlnt_json_ownkeys_70e5fd461788->put( p0 = t141 p1 = t142 ).
          ENDIF.
          DATA(t143) = |shortDescription|.
          DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t144.
          IF t93->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t93->zlnt_json_ownkeys_70e5fd461788->put( p0 = t143 p1 = t144 ).
          ENDIF.
          DATA(t145) = |extendedInformation|.
          DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t146.
          IF t93->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t93->zlnt_json_ownkeys_70e5fd461788->put( p0 = t145 p1 = t146 ).
          ENDIF.
          DATA(t147) = |tags|.
          DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t148.
          IF t93->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t93->zlnt_json_ownkeys_70e5fd461788->put( p0 = t147 p1 = t148 ).
          ENDIF.
          DATA(t149) = |badExample|.
          DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t150.
          IF t93->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t93->zlnt_json_ownkeys_70e5fd461788->put( p0 = t149 p1 = t150 ).
          ENDIF.
          DATA(t151) = |goodExample|.
          DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t152.
          IF t93->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t93->zlnt_json_ownkeys_70e5fd461788->put( p0 = t151 p1 = t152 ).
          ENDIF.
          t92 = t93->key.
          DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t154) = CAST zcl_lnt_empty_event_conf( me->gt_cn_in_sr_rl_em_ev_ts_em_evn( ) ).
          t153 = t154->zlnt_view_read_sr_15c06369f827( ).
          DATA t155 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t155.
          DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t156.
          t87 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t89 i_message_26cb = t91 i_key = t92 i_severity = t153 i_fix = t155 i_alternative_fixes = t156 ).
          t3->load( ).
          APPEND t87 TO t3->items.
          t3->save( ).
        ENDIF.
        DATA t157 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t157.
        t36 = t157.
        DATA t160 TYPE REF TO zcl_lnt_statement_node.
        t160 ?= t52.
        t34 = t160.
      ELSE.
        DATA t163 TYPE abap_bool.
        DATA t164 TYPE REF TO object.
        t164 = t52->get_db65( ).
        t163 = xsdbool( t164 IS BOUND AND t164 IS INSTANCE OF zcl_lnt_normal ).
        IF t163 = abap_true.
          DATA t166 TYPE REF TO zcl_lnt_structure_node.
          DATA t167 TYPE REF TO zcl_lnt_structure_node.
          t167 ?= t52.
          t166 = t167.
          DATA(t169) = VALUE abap_bool( ).
          DATA t170 TYPE abap_bool.
          t170 = abap_false.
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
            t180 = t166->get_first_statement( ).
            t179 = t180.
            DATA t182 TYPE REF TO zif_lnt_statement.
            CLEAR t182.
            DATA(t183) = xsdbool( t179 IS INITIAL ).
            IF t183 = abap_true.
              CLEAR t182.
            ELSE.
              DATA t186 TYPE REF TO zif_lnt_statement.
              DATA t187 TYPE REF TO zcl_lnt_statement_node.
              t187 = t179.
              t186 = t187->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
              t182 = t186.
            ENDIF.
            t178 = t182.
            DATA(t189) = t173.
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
              t170 = abap_true.
              EXIT.
            ENDIF.
          ENDDO.
          t169 = t170.
          IF t169 = abap_true.
            CONTINUE.
          ENDIF.
          DATA(t193) = t36.
          t193->load( ).
          APPEND t52 TO t193->items.
          t193->save( ).
        ELSE.
          DATA(t195) = VALUE abap_bool( ).
          DATA(t196) = VALUE abap_bool( ).
          DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t199.
          DATA(t201) = VALUE abap_bool( ).
          DATA(t202) = xsdbool( t34 IS INITIAL ).
          t201 = xsdbool( t202 = abap_false ).
          t196 = t201.
          t195 = t196.
          IF t196 = abap_true.
            DATA t204 TYPE abap_bool.
            DATA t205 TYPE i.
            DATA(t206) = t36.
            t206->load( ).
            t205 = lines( t206->items ).
            DATA(t207) = 0.
            t204 = xsdbool( t205 = t207 ).
            t195 = t204.
          ENDIF.
          IF t195 = abap_true.
            DATA t209 TYPE REF TO zcl_lnt_issue.
            CLEAR t209.
            DATA t211 TYPE REF TO zcl_lnt_statement_node.
            t211 = t34.
            DATA(t213) = |Empty event|.
            DATA(t214) = VALUE string( ).
            DATA t215 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t215.
            DATA t216 TYPE string.
            t216 = |empty_event|.
            DATA t218 TYPE string.
            t218 = |Empty selection screen or list processing event block|.
            DATA t220 TYPE string.
            t220 = |Empty selection screen or list processing event block|.
            DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t222.
            DATA(t225) = ||.
            DATA(t226) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t226->has = abap_true.
            t226->value = t225.
            t222 = t226.
            DATA t228 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t228.
            DATA t232 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t233 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t233.
            t232 = t233.
            DATA(t235) = |SingleFile|.
            t232->load( ).
            APPEND t235 TO t232->items.
            t232->save( ).
            t228 = t232.
            DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t238.
            DATA(t241) = |\nINITIALIZATION.\n  WRITE 'hello'.\nEND-OF-SELECTION.|.
            DATA(t242) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t242->has = abap_true.
            t242->value = t241.
            t238 = t242.
            DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t244.
            DATA(t247) = |\nSTART-OF-SELECTION.\n  PERFORM sdf.\n  COMMIT WORK.|.
            DATA(t248) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t248->has = abap_true.
            t248->value = t247.
            t244 = t248.
            DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t250.
            DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t252.
            t215 = NEW zcl_lnt_irule_metadata( i_key = t216 i_title = t218 i_short_description = t220 i_bad_example = t238 i_good_example = t244 i_extended_information = t222 i_tags = t228 i_pragma = t250 i_pseudo_comment = t252 ).
            CREATE OBJECT t215->zlnt_view_ownkeys_b0e8086400eb.
            t215->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t254.
            t215->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t254 ).
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
            DATA(t261) = |key|.
            DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t262.
            t215->zlnt_json_ownkeys_70e5fd461788->put( p0 = t261 p1 = t262 ).
            DATA(t263) = |title|.
            DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t264.
            IF t215->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t215->zlnt_json_ownkeys_70e5fd461788->put( p0 = t263 p1 = t264 ).
            ENDIF.
            DATA(t265) = |shortDescription|.
            DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t266.
            IF t215->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t215->zlnt_json_ownkeys_70e5fd461788->put( p0 = t265 p1 = t266 ).
            ENDIF.
            DATA(t267) = |extendedInformation|.
            DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t268.
            IF t215->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t215->zlnt_json_ownkeys_70e5fd461788->put( p0 = t267 p1 = t268 ).
            ENDIF.
            DATA(t269) = |tags|.
            DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t270.
            IF t215->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t215->zlnt_json_ownkeys_70e5fd461788->put( p0 = t269 p1 = t270 ).
            ENDIF.
            DATA(t271) = |badExample|.
            DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t272.
            IF t215->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t215->zlnt_json_ownkeys_70e5fd461788->put( p0 = t271 p1 = t272 ).
            ENDIF.
            DATA(t273) = |goodExample|.
            DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t274.
            IF t215->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t215->zlnt_json_ownkeys_70e5fd461788->put( p0 = t273 p1 = t274 ).
            ENDIF.
            t214 = t215->key.
            DATA t275 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t276) = CAST zcl_lnt_empty_event_conf( me->gt_cn_in_sr_rl_em_ev_ts_em_evn( ) ).
            t275 = t276->zlnt_view_read_sr_15c06369f827( ).
            DATA t277 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t277.
            DATA t278 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t278.
            t209 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t211 i_message_26cb = t213 i_key = t214 i_severity = t275 i_fix = t277 i_alternative_fixes = t278 ).
            t3->load( ).
            APPEND t209 TO t3->items.
            t3->save( ).
          ENDIF.
          DATA t279 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t279.
          t36 = t279.
          CLEAR t34.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t281) = VALUE abap_bool( ).
    DATA(t282) = VALUE abap_bool( ).
    DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t287) = VALUE abap_bool( ).
    DATA(t288) = xsdbool( t34 IS INITIAL ).
    t287 = xsdbool( t288 = abap_false ).
    t282 = t287.
    t281 = t282.
    IF t282 = abap_true.
      DATA t290 TYPE abap_bool.
      DATA t291 TYPE i.
      t36->load( ).
      t291 = lines( t36->items ).
      DATA(t293) = 0.
      t290 = xsdbool( t291 = t293 ).
      t281 = t290.
    ENDIF.
    IF t281 = abap_true.
      DATA t295 TYPE REF TO zcl_lnt_issue.
      DATA t297 TYPE REF TO zcl_lnt_statement_node.
      t297 = t34.
      DATA(t299) = |Empty event|.
      DATA(t300) = VALUE string( ).
      DATA t301 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t302 TYPE string.
      t302 = |empty_event|.
      DATA t304 TYPE string.
      t304 = |Empty selection screen or list processing event block|.
      DATA t306 TYPE string.
      t306 = |Empty selection screen or list processing event block|.
      DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t311) = ||.
      DATA(t312) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t312->has = abap_true.
      t312->value = t311.
      t308 = t312.
      DATA t314 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t318 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t319 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t319.
      t318 = t319.
      DATA(t321) = |SingleFile|.
      t318->load( ).
      APPEND t321 TO t318->items.
      t318->save( ).
      t314 = t318.
      DATA t324 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t327) = |\nINITIALIZATION.\n  WRITE 'hello'.\nEND-OF-SELECTION.|.
      DATA(t328) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t328->has = abap_true.
      t328->value = t327.
      t324 = t328.
      DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t333) = |\nSTART-OF-SELECTION.\n  PERFORM sdf.\n  COMMIT WORK.|.
      DATA(t334) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t334->has = abap_true.
      t334->value = t333.
      t330 = t334.
      DATA t336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t301 = NEW zcl_lnt_irule_metadata( i_key = t302 i_title = t304 i_short_description = t306 i_bad_example = t324 i_good_example = t330 i_extended_information = t308 i_tags = t314 i_pragma = t336 i_pseudo_comment = t338 ).
      CREATE OBJECT t301->zlnt_view_ownkeys_b0e8086400eb.
      t301->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t340 ).
      DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t341 ).
      ENDIF.
      DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t342 ).
      ENDIF.
      DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t343 ).
      ENDIF.
      DATA t344 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t344 ).
      ENDIF.
      DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t345 ).
      ENDIF.
      DATA t346 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t346 ).
      ENDIF.
      CREATE OBJECT t301->zlnt_json_ownkeys_70e5fd461788.
      t301->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t347) = |key|.
      DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t347 p1 = t348 ).
      DATA(t349) = |title|.
      DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t349 p1 = t350 ).
      ENDIF.
      DATA(t351) = |shortDescription|.
      DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t351 p1 = t352 ).
      ENDIF.
      DATA(t353) = |extendedInformation|.
      DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t353 p1 = t354 ).
      ENDIF.
      DATA(t355) = |tags|.
      DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t355 p1 = t356 ).
      ENDIF.
      DATA(t357) = |badExample|.
      DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t357 p1 = t358 ).
      ENDIF.
      DATA(t359) = |goodExample|.
      DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = t359 p1 = t360 ).
      ENDIF.
      t300 = t301->key.
      DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t362) = CAST zcl_lnt_empty_event_conf( me->gt_cn_in_sr_rl_em_ev_ts_em_evn( ) ).
      t361 = t362->zlnt_view_read_sr_15c06369f827( ).
      DATA t363 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t364 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t295 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t297 i_message_26cb = t299 i_key = t300 i_severity = t361 i_fix = t363 i_alternative_fixes = t364 ).
      t3->load( ).
      APPEND t295 TO t3->items.
      t3->save( ).
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_empty_event_conf( me->gt_cn_in_sr_rl_em_ev_ts_em_evn( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_empty_event_conf( me->gt_cn_in_sr_rl_em_ev_ts_em_evn( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_empty_event_conf.
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
        t1 = NEW zcl_lnt_empty_event_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_em_ev_ts_em_evn( i_conf = t1 ).

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
