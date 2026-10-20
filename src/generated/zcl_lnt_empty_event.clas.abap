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
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = ||.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = |\nINITIALIZATION.\n  WRITE 'hello'.\nEND-OF-SELECTION.|.
    t24 = t28.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = |\nSTART-OF-SELECTION.\n  PERFORM sdf.\n  COMMIT WORK.|.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |empty_event| i_title = |Empty selection screen or list processing event block| i_short_description = |Empty selection screen or list processing event block| i_bad_example = t24 i_good_example = t34 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t38 ).
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
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t48 ).
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t50 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t52 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t54 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t60 ).
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
    CREATE OBJECT t3.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE abap_bool.
    t6 = xsdbool( xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_ob_program ) = abap_false ).
    t5 = t6.
    IF t6 = abap_false.
      DATA t10 TYPE REF TO zcl_lnt_ob_program.
      DATA t11 TYPE REF TO zcl_lnt_ob_program.
      t11 ?= t2.
      t10 = t11.
      t10->parse_xml( ).
      t5 = t10->parsed_xml->is_include.
    ENDIF.
    IF t5 = abap_true.
      result = t3.
      RETURN.
    ENDIF.
    DATA t20 TYPE REF TO zcl_lnt_structure_node.
    t20 = t1->structure.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t20 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t34 TYPE REF TO zcl_lnt_statement_node.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t36.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t41 TYPE REF TO zcl_lnt_abstract_node.
    t41 = t20.
    t39 = t41->children.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t39 IS BOUND ) = abap_true.
      t47 = t39.
    ELSE.
      CREATE OBJECT t47.
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
      IF t58 = abap_true.
        DATA(t73) = VALUE abap_bool( ).
        DATA(t74) = VALUE abap_bool( ).
        DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t77.
        t74 = xsdbool( xsdbool( t34 IS INITIAL ) = abap_false ).
        t73 = t74.
        IF t74 = abap_true.
          DATA(t84) = t36.
          t84->load( ).
          t73 = xsdbool( lines( t84->items ) = 0 ).
        ENDIF.
        IF t73 = abap_true.
          DATA t87 TYPE REF TO zcl_lnt_issue.
          CLEAR t87.
          DATA t89 TYPE REF TO zcl_lnt_statement_node.
          t89 = t34.
          DATA(t92) = VALUE string( ).
          DATA t93 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t100.
          DATA(t104) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t104->has = abap_true.
          t104->value = ||.
          t100 = t104.
          DATA t106 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t106.
          DATA t110 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t110.
          t110->load( ).
          APPEND |SingleFile| TO t110->items.
          t110->save( ).
          t106 = t110.
          DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t116.
          DATA(t120) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t120->has = abap_true.
          t120->value = |\nINITIALIZATION.\n  WRITE 'hello'.\nEND-OF-SELECTION.|.
          t116 = t120.
          DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t122.
          DATA(t126) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t126->has = abap_true.
          t126->value = |\nSTART-OF-SELECTION.\n  PERFORM sdf.\n  COMMIT WORK.|.
          t122 = t126.
          DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t128.
          DATA t130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t130.
          t93 = NEW zcl_lnt_irule_metadata( i_key = |empty_event| i_title = |Empty selection screen or list processing event block| i_short_description = |Empty selection screen or list processing event block| i_bad_example = t116 i_good_example = t122 i_extended_information = t100 i_tags = t106 i_pragma = t128 i_pseudo_comment = t130 ).
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
          DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t140.
          t93->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t140 ).
          DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t142.
          IF t93->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t93->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t142 ).
          ENDIF.
          DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t144.
          IF t93->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t93->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t144 ).
          ENDIF.
          DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t146.
          IF t93->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t93->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t146 ).
          ENDIF.
          DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t148.
          IF t93->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t93->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t148 ).
          ENDIF.
          DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t150.
          IF t93->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t93->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t150 ).
          ENDIF.
          DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t152.
          IF t93->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t93->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t152 ).
          ENDIF.
          t92 = t93->key.
          DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t153 = CAST zcl_lnt_empty_event_conf( me->gt_cn_in_sr_rl_em_ev_ts_em_evn( ) )->zlnt_view_read_sr_15c06369f827( ).
          DATA t155 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t155.
          DATA t156 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t156.
          t87 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t89 i_message_26cb = |Empty event| i_key = t92 i_severity = t153 i_fix = t155 i_alternative_fixes = t156 ).
          t3->load( ).
          APPEND t87 TO t3->items.
          t3->save( ).
        ENDIF.
        CREATE OBJECT t36.
        DATA t160 TYPE REF TO zcl_lnt_statement_node.
        t160 ?= t52.
        t34 = t160.
      ELSE.
        DATA t164 TYPE REF TO object.
        t164 = t52->get_db65( ).
        IF xsdbool( t164 IS BOUND AND t164 IS INSTANCE OF zcl_lnt_normal ) = abap_true.
          DATA t166 TYPE REF TO zcl_lnt_structure_node.
          DATA t167 TYPE REF TO zcl_lnt_structure_node.
          t167 ?= t52.
          t166 = t167.
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
            t179 = t166->get_first_statement( ).
            DATA t182 TYPE REF TO zif_lnt_statement.
            CLEAR t182.
            IF xsdbool( t179 IS INITIAL ) = abap_true.
              CLEAR t182.
            ELSE.
              t182 = t179->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
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
          IF t170 = abap_true.
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
          t196 = xsdbool( xsdbool( t34 IS INITIAL ) = abap_false ).
          t195 = t196.
          IF t196 = abap_true.
            DATA(t206) = t36.
            t206->load( ).
            t195 = xsdbool( lines( t206->items ) = 0 ).
          ENDIF.
          IF t195 = abap_true.
            DATA t209 TYPE REF TO zcl_lnt_issue.
            CLEAR t209.
            DATA t211 TYPE REF TO zcl_lnt_statement_node.
            t211 = t34.
            DATA(t214) = VALUE string( ).
            DATA t215 TYPE REF TO zcl_lnt_irule_metadata.
            DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t222.
            DATA(t226) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t226->has = abap_true.
            t226->value = ||.
            t222 = t226.
            DATA t228 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t228.
            DATA t232 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t232.
            t232->load( ).
            APPEND |SingleFile| TO t232->items.
            t232->save( ).
            t228 = t232.
            DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t238.
            DATA(t242) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t242->has = abap_true.
            t242->value = |\nINITIALIZATION.\n  WRITE 'hello'.\nEND-OF-SELECTION.|.
            t238 = t242.
            DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t244.
            DATA(t248) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t248->has = abap_true.
            t248->value = |\nSTART-OF-SELECTION.\n  PERFORM sdf.\n  COMMIT WORK.|.
            t244 = t248.
            DATA t250 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t250.
            DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t252.
            t215 = NEW zcl_lnt_irule_metadata( i_key = |empty_event| i_title = |Empty selection screen or list processing event block| i_short_description = |Empty selection screen or list processing event block| i_bad_example = t238 i_good_example = t244 i_extended_information = t222 i_tags = t228 i_pragma = t250 i_pseudo_comment = t252 ).
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
            DATA t262 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t262.
            t215->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t262 ).
            DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t264.
            IF t215->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t215->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t264 ).
            ENDIF.
            DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t266.
            IF t215->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t215->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t266 ).
            ENDIF.
            DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t268.
            IF t215->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t215->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t268 ).
            ENDIF.
            DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t270.
            IF t215->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t215->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t270 ).
            ENDIF.
            DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t272.
            IF t215->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t215->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t272 ).
            ENDIF.
            DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t274.
            IF t215->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t215->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t274 ).
            ENDIF.
            t214 = t215->key.
            DATA t275 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t275 = CAST zcl_lnt_empty_event_conf( me->gt_cn_in_sr_rl_em_ev_ts_em_evn( ) )->zlnt_view_read_sr_15c06369f827( ).
            DATA t277 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t277.
            DATA t278 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t278.
            t209 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t211 i_message_26cb = |Empty event| i_key = t214 i_severity = t275 i_fix = t277 i_alternative_fixes = t278 ).
            t3->load( ).
            APPEND t209 TO t3->items.
            t3->save( ).
          ENDIF.
          CREATE OBJECT t36.
          CLEAR t34.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t281) = VALUE abap_bool( ).
    DATA(t282) = VALUE abap_bool( ).
    DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t282 = xsdbool( xsdbool( t34 IS INITIAL ) = abap_false ).
    t281 = t282.
    IF t282 = abap_true.
      t36->load( ).
      t281 = xsdbool( lines( t36->items ) = 0 ).
    ENDIF.
    IF t281 = abap_true.
      DATA t295 TYPE REF TO zcl_lnt_issue.
      DATA t297 TYPE REF TO zcl_lnt_statement_node.
      t297 = t34.
      DATA(t300) = VALUE string( ).
      DATA t301 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t312) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t312->has = abap_true.
      t312->value = ||.
      t308 = t312.
      DATA t314 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t318 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t318.
      t318->load( ).
      APPEND |SingleFile| TO t318->items.
      t318->save( ).
      t314 = t318.
      DATA t324 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t328) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t328->has = abap_true.
      t328->value = |\nINITIALIZATION.\n  WRITE 'hello'.\nEND-OF-SELECTION.|.
      t324 = t328.
      DATA(t334) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t334->has = abap_true.
      t334->value = |\nSTART-OF-SELECTION.\n  PERFORM sdf.\n  COMMIT WORK.|.
      DATA t336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t338 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t301 = NEW zcl_lnt_irule_metadata( i_key = |empty_event| i_title = |Empty selection screen or list processing event block| i_short_description = |Empty selection screen or list processing event block| i_bad_example = t324 i_good_example = t334 i_extended_information = t308 i_tags = t314 i_pragma = t336 i_pseudo_comment = t338 ).
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
      DATA t348 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t348 ).
      DATA t350 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t350 ).
      ENDIF.
      DATA t352 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t352 ).
      ENDIF.
      DATA t354 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t354 ).
      ENDIF.
      DATA t356 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t356 ).
      ENDIF.
      DATA t358 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t358 ).
      ENDIF.
      DATA t360 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t360 ).
      ENDIF.
      t300 = t301->key.
      DATA t363 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t364 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t295 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t297 i_message_26cb = |Empty event| i_key = t300 i_severity = CAST zcl_lnt_empty_event_conf( me->gt_cn_in_sr_rl_em_ev_ts_em_evn( ) )->zlnt_view_read_sr_15c06369f827( ) i_fix = t363 i_alternative_fixes = t364 ).
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
