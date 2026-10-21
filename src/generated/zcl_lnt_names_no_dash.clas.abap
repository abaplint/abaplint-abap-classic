* TS: src/rules/names_no_dash.ts:15:1 NamesNoDash
CLASS zcl_lnt_names_no_dash DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_names_no_dash_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_message RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_sr_rl_nm_n_ds_ts_nm_n_ds RETURNING VALUE(result) TYPE REF TO zcl_lnt_names_no_dash_conf.
    METHODS s_c_i_sr_rl_nm_n_ds_ts_nm_n_ds IMPORTING i_conf TYPE REF TO zcl_lnt_names_no_dash_conf.
    METHODS run_parsed REDEFINITION.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_names_no_dash IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_names_no_dash_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for a "-" in FORM, DATA, PARAMETER and SELECT-OPTION |.
    t7 = t7 && |names|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t12.
    t12->load( ).
    APPEND |SingleFile| TO t12->items.
    t12->save( ).
    t12->load( ).
    APPEND |Naming| TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t24->has = abap_true.
    t24->value = |DATA foo-bar TYPE i.|.
    t20 = t24.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = |DATA foobar TYPE i.|.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |names_no_dash| i_title = |No dashes in FORM and DATA names| i_short_description = t6 i_bad_example = t20 i_good_example = t30 i_extended_information = t32 i_tags = t8 i_pragma = t34 i_pseudo_comment = t36 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t38 ).
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t43 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t45 ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t47 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t49 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t51 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t53 ).
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t55 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_message.
    result = |No dash allowed in FORM and DATA names|.

  ENDMETHOD.

  METHOD g_c_i_sr_rl_nm_n_ds_ts_nm_n_ds.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_sr_rl_nm_n_ds_ts_nm_n_ds.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE REF TO zcl_lnt_structure_node.
    t5 = t1->structure.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t5 IS INITIAL ) = abap_true.
      result = t3.
      RETURN.
    ENDIF.
    DATA t19 TYPE abap_bool.
    DATA t20 TYPE abap_bool.
    t20 = xsdbool( t2->get_type( ) <> |CLAS| ).
    t19 = t20.
    IF t20 = abap_true.
      t19 = xsdbool( t2->get_type( ) <> |INTF| ).
    ENDIF.
    IF t19 = abap_true.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t29 TYPE REF TO zcl_lnt_structure_node.
      t29 = t5.
      DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d500_8dad0123027e.
      t28 = t29->find_all_statements( i_type_9913 = t31 ).
      DATA t32 TYPE REF TO zcl_lnt_statement_node.
      DATA t33 TYPE REF TO object.
      DATA(t34) = VALUE i( ).
      DO.
        t28->load( ).
        IF t34 >= lines( t28->items ).
          EXIT.
        ENDIF.
        CLEAR t33.
        READ TABLE t28->items INDEX t34 + 1 INTO t33.
        t34 = t34 + 1.
        DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t35.
        CLEAR t32.
        IF t33 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t35 ?= t33.
          DATA t36 TYPE REF TO object.
          t36 = t35->as_ref( ).
          t32 ?= t36.
        ELSE.
          t32 ?= t33.
        ENDIF.
        DATA t38 TYPE REF TO zcl_lnt_expression_node.
        DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d185_9bfafbfe880c.
        t38 = t32->find_first_expression( i_type_9913 = t40 ).
        DATA t41 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t41.
        DATA t43 TYPE REF TO zcl_lnt_expression_node.
        t43 = t38.
        DATA t45 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t45.
        IF xsdbool( t43 IS INITIAL ) = abap_true.
          CLEAR t45.
        ELSE.
          t45 = t43->find_direct_token_by_text( i_text = |-| ).
        ENDIF.
        t41 = t45.
        IF xsdbool( t41 IS BOUND ) = abap_true.
          DATA t56 TYPE REF TO zcl_lnt_issue.
          CLEAR t56.
          DATA t58 TYPE REF TO zcl_lnt_abstract_token.
          t58 = t41.
          DATA(t61) = VALUE string( ).
          DATA t62 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t67 TYPE string.
          DATA(t68) = |Checks for a "-" in FORM, DATA, PARAMETER and SELECT-OPTION |.
          t68 = t68 && |names|.
          t67 = t68.
          DATA t69 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t69.
          DATA t73 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t73.
          t73->load( ).
          APPEND |SingleFile| TO t73->items.
          t73->save( ).
          t73->load( ).
          APPEND |Naming| TO t73->items.
          t73->save( ).
          t69 = t73.
          DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t81.
          DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t85->has = abap_true.
          t85->value = |DATA foo-bar TYPE i.|.
          t81 = t85.
          DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t87.
          DATA(t91) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t91->has = abap_true.
          t91->value = |DATA foobar TYPE i.|.
          t87 = t91.
          DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t93.
          DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t95.
          DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t97.
          t62 = NEW zcl_lnt_irule_metadata( i_key = |names_no_dash| i_title = |No dashes in FORM and DATA names| i_short_description = t67 i_bad_example = t81 i_good_example = t87 i_extended_information = t93 i_tags = t69 i_pragma = t95 i_pseudo_comment = t97 ).
          CREATE OBJECT t62->zlnt_view_ownkeys_b0e8086400eb.
          t62->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t99.
          t62->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t99 ).
          DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t100.
          IF t62->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t62->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t100 ).
          ENDIF.
          DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t101.
          IF t62->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t62->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t101 ).
          ENDIF.
          DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t102.
          IF t62->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t62->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t102 ).
          ENDIF.
          DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t103.
          IF t62->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t62->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t103 ).
          ENDIF.
          DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t104.
          IF t62->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t62->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t104 ).
          ENDIF.
          CREATE OBJECT t62->zlnt_json_ownkeys_70e5fd461788.
          t62->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t106.
          t62->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t106 ).
          DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t108.
          IF t62->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t62->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t108 ).
          ENDIF.
          DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t110.
          IF t62->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t62->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t110 ).
          ENDIF.
          DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t112.
          IF t62->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t62->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t112 ).
          ENDIF.
          DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t114.
          IF t62->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t62->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t114 ).
          ENDIF.
          DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t116.
          IF t62->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t62->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t116 ).
          ENDIF.
          t61 = t62->key.
          DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t117 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t119 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t119.
          t56 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t58 i_message_26cb = |No dash allowed in FORM and DATA names| i_key = t61 i_severity = t117 i_fix = t119 ).
          t3->load( ).
          APPEND t56 TO t3->items.
          t3->save( ).
        ENDIF.
      ENDDO.
      DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t123 TYPE REF TO zcl_lnt_structure_node.
      t123 = t5.
      DATA(t125) = zlnt_runtime_desc_78196487750d=>zlnt_member_d572_46882accee86.
      t122 = t123->find_all_statements( i_type_9913 = t125 ).
      DATA t126 TYPE REF TO zcl_lnt_statement_node.
      DATA t127 TYPE REF TO object.
      DATA(t128) = VALUE i( ).
      DO.
        t122->load( ).
        IF t128 >= lines( t122->items ).
          EXIT.
        ENDIF.
        CLEAR t127.
        READ TABLE t122->items INDEX t128 + 1 INTO t127.
        t128 = t128 + 1.
        DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t129.
        CLEAR t126.
        IF t127 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t129 ?= t127.
          DATA t130 TYPE REF TO object.
          t130 = t129->as_ref( ).
          t126 ?= t130.
        ELSE.
          t126 ?= t127.
        ENDIF.
        DATA t132 TYPE REF TO zcl_lnt_expression_node.
        DATA(t134) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
        t132 = t126->find_first_expression( i_type_9913 = t134 ).
        DATA t135 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t135.
        DATA t137 TYPE REF TO zcl_lnt_expression_node.
        t137 = t132.
        DATA t139 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t139.
        IF xsdbool( t137 IS INITIAL ) = abap_true.
          CLEAR t139.
        ELSE.
          t139 = t137->find_direct_token_by_text( i_text = |-| ).
        ENDIF.
        t135 = t139.
        IF xsdbool( t135 IS BOUND ) = abap_true.
          DATA t150 TYPE REF TO zcl_lnt_issue.
          CLEAR t150.
          DATA t152 TYPE REF TO zcl_lnt_abstract_token.
          t152 = t135.
          DATA(t155) = VALUE string( ).
          DATA t156 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t161 TYPE string.
          DATA(t162) = |Checks for a "-" in FORM, DATA, PARAMETER and SELECT-OPTION |.
          t162 = t162 && |names|.
          t161 = t162.
          DATA t163 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t163.
          DATA t167 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t167.
          t167->load( ).
          APPEND |SingleFile| TO t167->items.
          t167->save( ).
          t167->load( ).
          APPEND |Naming| TO t167->items.
          t167->save( ).
          t163 = t167.
          DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t175.
          DATA(t179) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t179->has = abap_true.
          t179->value = |DATA foo-bar TYPE i.|.
          t175 = t179.
          DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t181.
          DATA(t185) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t185->has = abap_true.
          t185->value = |DATA foobar TYPE i.|.
          t181 = t185.
          DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t187.
          DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t189.
          DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t191.
          t156 = NEW zcl_lnt_irule_metadata( i_key = |names_no_dash| i_title = |No dashes in FORM and DATA names| i_short_description = t161 i_bad_example = t175 i_good_example = t181 i_extended_information = t187 i_tags = t163 i_pragma = t189 i_pseudo_comment = t191 ).
          CREATE OBJECT t156->zlnt_view_ownkeys_b0e8086400eb.
          t156->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t193 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t193.
          t156->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t193 ).
          DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t194.
          IF t156->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t156->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t194 ).
          ENDIF.
          DATA t195 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t195.
          IF t156->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t156->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t195 ).
          ENDIF.
          DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t196.
          IF t156->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t156->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t196 ).
          ENDIF.
          DATA t197 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t197.
          IF t156->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t156->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t197 ).
          ENDIF.
          DATA t198 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t198.
          IF t156->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t156->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t198 ).
          ENDIF.
          CREATE OBJECT t156->zlnt_json_ownkeys_70e5fd461788.
          t156->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t200.
          t156->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t200 ).
          DATA t202 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t202.
          IF t156->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t156->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t202 ).
          ENDIF.
          DATA t204 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t204.
          IF t156->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t156->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t204 ).
          ENDIF.
          DATA t206 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t206.
          IF t156->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t156->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t206 ).
          ENDIF.
          DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t208.
          IF t156->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t156->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t208 ).
          ENDIF.
          DATA t210 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t210.
          IF t156->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t156->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t210 ).
          ENDIF.
          t155 = t156->key.
          DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t211 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t213 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t213.
          t150 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t152 i_message_26cb = |No dash allowed in FORM and DATA names| i_key = t155 i_severity = t211 i_fix = t213 ).
          t3->load( ).
          APPEND t150 TO t3->items.
          t3->save( ).
        ENDIF.
      ENDDO.
      DATA t216 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t217 TYPE REF TO zcl_lnt_structure_node.
      t217 = t5.
      DATA(t219) = zlnt_runtime_desc_78196487750d=>zlnt_member_d614_0af6a2346fc7.
      t216 = t217->find_all_statements( i_type_9913 = t219 ).
      DATA t220 TYPE REF TO zcl_lnt_statement_node.
      DATA t221 TYPE REF TO object.
      DATA(t222) = VALUE i( ).
      DO.
        t216->load( ).
        IF t222 >= lines( t216->items ).
          EXIT.
        ENDIF.
        CLEAR t221.
        READ TABLE t216->items INDEX t222 + 1 INTO t221.
        t222 = t222 + 1.
        DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t223.
        CLEAR t220.
        IF t221 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t223 ?= t221.
          DATA t224 TYPE REF TO object.
          t224 = t223->as_ref( ).
          t220 ?= t224.
        ELSE.
          t220 ?= t221.
        ENDIF.
        DATA t226 TYPE REF TO zcl_lnt_expression_node.
        DATA(t228) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
        t226 = t220->find_first_expression( i_type_9913 = t228 ).
        DATA t229 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t229.
        DATA t231 TYPE REF TO zcl_lnt_expression_node.
        t231 = t226.
        DATA t233 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t233.
        IF xsdbool( t231 IS INITIAL ) = abap_true.
          CLEAR t233.
        ELSE.
          t233 = t231->find_direct_token_by_text( i_text = |-| ).
        ENDIF.
        t229 = t233.
        IF xsdbool( t229 IS BOUND ) = abap_true.
          DATA t244 TYPE REF TO zcl_lnt_issue.
          CLEAR t244.
          DATA t246 TYPE REF TO zcl_lnt_abstract_token.
          t246 = t229.
          DATA(t249) = VALUE string( ).
          DATA t250 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t255 TYPE string.
          DATA(t256) = |Checks for a "-" in FORM, DATA, PARAMETER and SELECT-OPTION |.
          t256 = t256 && |names|.
          t255 = t256.
          DATA t257 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t257.
          DATA t261 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t261.
          t261->load( ).
          APPEND |SingleFile| TO t261->items.
          t261->save( ).
          t261->load( ).
          APPEND |Naming| TO t261->items.
          t261->save( ).
          t257 = t261.
          DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t269.
          DATA(t273) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t273->has = abap_true.
          t273->value = |DATA foo-bar TYPE i.|.
          t269 = t273.
          DATA t275 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t275.
          DATA(t279) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t279->has = abap_true.
          t279->value = |DATA foobar TYPE i.|.
          t275 = t279.
          DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t281.
          DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t283.
          DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t285.
          t250 = NEW zcl_lnt_irule_metadata( i_key = |names_no_dash| i_title = |No dashes in FORM and DATA names| i_short_description = t255 i_bad_example = t269 i_good_example = t275 i_extended_information = t281 i_tags = t257 i_pragma = t283 i_pseudo_comment = t285 ).
          CREATE OBJECT t250->zlnt_view_ownkeys_b0e8086400eb.
          t250->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t287.
          t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t287 ).
          DATA t288 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t288.
          IF t250->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t288 ).
          ENDIF.
          DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t289.
          IF t250->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t289 ).
          ENDIF.
          DATA t290 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t290.
          IF t250->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t290 ).
          ENDIF.
          DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t291.
          IF t250->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t291 ).
          ENDIF.
          DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t292.
          IF t250->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t250->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t292 ).
          ENDIF.
          CREATE OBJECT t250->zlnt_json_ownkeys_70e5fd461788.
          t250->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t294 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t294.
          t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t294 ).
          DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t296.
          IF t250->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t296 ).
          ENDIF.
          DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t298.
          IF t250->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t298 ).
          ENDIF.
          DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t300.
          IF t250->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t300 ).
          ENDIF.
          DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t302.
          IF t250->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t302 ).
          ENDIF.
          DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t304.
          IF t250->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t250->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t304 ).
          ENDIF.
          t249 = t250->key.
          DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t305 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t307 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t307.
          t244 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t246 i_message_26cb = |No dash allowed in FORM and DATA names| i_key = t249 i_severity = t305 i_fix = t307 ).
          t3->load( ).
          APPEND t244 TO t3->items.
          t3->save( ).
        ENDIF.
      ENDDO.
    ENDIF.
    DATA t310 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t311 TYPE REF TO zcl_lnt_structure_node.
    t311 = t5.
    DATA(t313) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
    t310 = t311->find_all_expressions( i_type_9913 = t313 ).
    DATA t314 TYPE REF TO zcl_lnt_expression_node.
    DATA t315 TYPE REF TO object.
    DATA(t316) = VALUE i( ).
    DO.
      t310->load( ).
      IF t316 >= lines( t310->items ).
        EXIT.
      ENDIF.
      CLEAR t315.
      READ TABLE t310->items INDEX t316 + 1 INTO t315.
      t316 = t316 + 1.
      DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t317.
      CLEAR t314.
      IF t315 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t317 ?= t315.
        DATA t318 TYPE REF TO object.
        t318 = t317->as_ref( ).
        t314 ?= t318.
      ELSE.
        t314 ?= t315.
      ENDIF.
      DATA t319 TYPE string.
      t319 = t314->concat_tokens( ).
      DATA(t323) = VALUE i( ).
      DATA(t325) = |-|.
      DATA(t326) = strlen( t319 ).
      IF t325 IS INITIAL.
        t323 = 0.
      ELSE.
        FIND t325 IN t319 MATCH OFFSET t323.
        IF sy-subrc <> 0.
          t323 = -1.
        ENDIF.
      ENDIF.
      IF xsdbool( t323 >= 0 ) = abap_true.
        DATA t329 TYPE REF TO zcl_lnt_issue.
        CLEAR t329.
        DATA t331 TYPE REF TO zcl_lnt_abstract_token.
        t331 = t314->get_first_token( ).
        DATA(t334) = VALUE string( ).
        DATA t335 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t340 TYPE string.
        DATA(t341) = |Checks for a "-" in FORM, DATA, PARAMETER and SELECT-OPTION |.
        t341 = t341 && |names|.
        t340 = t341.
        DATA t342 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t342.
        DATA t346 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t346.
        t346->load( ).
        APPEND |SingleFile| TO t346->items.
        t346->save( ).
        t346->load( ).
        APPEND |Naming| TO t346->items.
        t346->save( ).
        t342 = t346.
        DATA t354 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t354.
        DATA(t358) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t358->has = abap_true.
        t358->value = |DATA foo-bar TYPE i.|.
        t354 = t358.
        DATA t360 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t360.
        DATA(t364) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t364->has = abap_true.
        t364->value = |DATA foobar TYPE i.|.
        t360 = t364.
        DATA t366 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t366.
        DATA t368 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t368.
        DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t370.
        t335 = NEW zcl_lnt_irule_metadata( i_key = |names_no_dash| i_title = |No dashes in FORM and DATA names| i_short_description = t340 i_bad_example = t354 i_good_example = t360 i_extended_information = t366 i_tags = t342 i_pragma = t368 i_pseudo_comment = t370 ).
        CREATE OBJECT t335->zlnt_view_ownkeys_b0e8086400eb.
        t335->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t372.
        t335->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t372 ).
        DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t373.
        IF t335->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t335->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t373 ).
        ENDIF.
        DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t374.
        IF t335->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t335->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t374 ).
        ENDIF.
        DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t375.
        IF t335->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t335->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t375 ).
        ENDIF.
        DATA t376 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t376.
        IF t335->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t335->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t376 ).
        ENDIF.
        DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t377.
        IF t335->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t335->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t377 ).
        ENDIF.
        CREATE OBJECT t335->zlnt_json_ownkeys_70e5fd461788.
        t335->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t379.
        t335->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t379 ).
        DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t381.
        IF t335->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t335->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t381 ).
        ENDIF.
        DATA t383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t383.
        IF t335->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t335->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t383 ).
        ENDIF.
        DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t385.
        IF t335->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t335->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t385 ).
        ENDIF.
        DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t387.
        IF t335->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t335->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t387 ).
        ENDIF.
        DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t389.
        IF t335->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t335->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t389 ).
        ENDIF.
        t334 = t335->key.
        DATA t390 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t390 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t392 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t392.
        t329 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t331 i_message_26cb = |No dash allowed in FORM and DATA names| i_key = t334 i_severity = t390 i_fix = t392 ).
        t3->load( ).
        APPEND t329 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_names_no_dash_conf( me->g_c_i_sr_rl_nm_n_ds_ts_nm_n_ds( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_names_no_dash_conf( me->g_c_i_sr_rl_nm_n_ds_ts_nm_n_ds( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_names_no_dash_conf.
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
        t1 = NEW zcl_lnt_names_no_dash_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_sr_rl_nm_n_ds_ts_nm_n_ds( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1599_80b1056c54da.
  ENDMETHOD.
ENDCLASS.
