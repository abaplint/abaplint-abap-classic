* TS: src/rules/preferred_compare_operator.ts:15:1 PreferredCompareOperator
CLASS zcl_lnt_prfrrd_cmpr_oprtr DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_prfrrd_cmpr_oprtr_cnf.
    DATA operator_mapping TYPE REF TO zlnt_runtime_map__a1006b231250.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_description IMPORTING i_operator_582d TYPE string RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_pr_cm_op_ts_pr_cm_op RETURNING VALUE(result) TYPE REF TO zcl_lnt_prfrrd_cmpr_oprtr_cnf.
    METHODS s_c_i_s_r_pr_cm_op_ts_pr_cm_op IMPORTING i_conf TYPE REF TO zcl_lnt_prfrrd_cmpr_oprtr_cnf.
    METHODS r_p_i_s_r_pr_cm_op_ts_pr_cm_op IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS build_mapping.
    METHODS create_issue IMPORTING i_token TYPE REF TO zcl_lnt_abstract_token i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_issue.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_prfrrd_cmpr_oprtr IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_prfrrd_cmpr_oprtr_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    me->operator_mapping = NEW zlnt_runtime_map__a1006b231250( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `operatorMapping`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t12.
    t12->load( ).
    APPEND |SingleFile| TO t12->items.
    t12->save( ).
    t12->load( ).
    APPEND |Quickfix| TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t24->has = abap_true.
    t24->value = |IF foo EQ bar.\nENDIF.|.
    t20 = t24.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = |IF foo = bar.\nENDIF.|.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |preferred_compare_operator| i_title = |Preferred compare operator| i_short_description = |Configure undesired operator variants| i_bad_example = t20 i_good_example = t30 i_extended_information = t32 i_tags = t8 i_pragma = t34 i_pseudo_comment = t36 ).
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

  METHOD get_description.
    DATA t3 TYPE string.
    DATA(t4) = |Compare operator "|.
    DATA(t6) = strlen( t4 ).
    t3 = |{ t4 }{ i_operator_582d }|.
    DATA(t8) = strlen( t3 ).
    result = |{ t3 }{ |" not preferred| }|.

  ENDMETHOD.

  METHOD g_c_i_s_r_pr_cm_op_ts_pr_cm_op.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_pr_cm_op_ts_pr_cm_op.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_pr_cm_op_ts_pr_cm_op.
    DATA(t1) = i_file.
    me->build_mapping( ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    t4 = t1->structure.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zcl_lnt_structure_node.
    t20 = t4.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t23.
    DATA(t26) = zlnt_runtime_desc_78196487750d=>zlnt_member_d123_b66c920b623e.
    t23->load( ).
    APPEND t26 TO t23->items.
    t23->save( ).
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d298_782c2da798c9.
    t23->load( ).
    APPEND t28 TO t23->items.
    t23->save( ).
    t18 = t20->f_a_e_m_i_s_a_n_st_nd_ts_st_nd( i_type_9913 = t23 ).
    DATA t31 TYPE REF TO zcl_lnt_expression_node.
    DATA t32 TYPE REF TO object.
    DATA(t33) = VALUE i( ).
    DO.
      t18->load( ).
      IF t33 >= lines( t18->items ).
        EXIT.
      ENDIF.
      CLEAR t32.
      READ TABLE t18->items INDEX t33 + 1 INTO t32.
      t33 = t33 + 1.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      CLEAR t31.
      IF t32 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t34 ?= t32.
        DATA t35 TYPE REF TO object.
        t35 = t34->as_ref( ).
        t31 ?= t35.
      ELSE.
        t31 ?= t32.
      ENDIF.
      DATA t36 TYPE REF TO zcl_lnt_abstract_token.
      t36 = t31->get_last_token( ).
      DATA t41 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t41 = me->conf->zlnt_view_read_sr_7d235468b9c0( ).
      DATA t43 TYPE string.
      DATA t44 TYPE string.
      t44 = t36->str.
      DATA(t49) = strlen( t44 ).
      t43 = t44.
      IF t43 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t43 TO UPPER CASE.
      ELSE.
        t43 = zlnt_runtime_uppe_91169605024d=>full( t43 ).
      ENDIF.
      IF xsdbool( t41->indexof( p0 = t43 ) >= 0 ) = abap_true.
        DATA t52 TYPE REF TO zcl_lnt_issue.
        CLEAR t52.
        DATA t53 TYPE REF TO zcl_lnt_abstract_token.
        t53 = t36.
        DATA t55 TYPE REF TO zcl_lnt_abap_file.
        t55 = t1.
        DATA t58 TYPE string.
        DATA t64 TYPE string.
        t64 = t53->str.
        DATA t67 TYPE string.
        DATA(t68) = |Compare operator "|.
        DATA(t70) = strlen( t68 ).
        t67 = |{ t68 }{ t64 }|.
        DATA(t72) = strlen( t67 ).
        t58 = |{ t67 }{ |" not preferred| }|.
        DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t73.
        DATA t75 TYPE REF TO zlnt_runtime_map__a1006b231250.
        t75 = me->operator_mapping.
        DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t77.
        IF xsdbool( t75 IS INITIAL ) = abap_true.
          CLEAR t77.
        ELSE.
          DATA t83 TYPE string.
          t83 = t53->str.
          t77 = t75->get( p0 = t83 ).
        ENDIF.
        t73 = t77.
        DATA t88 TYPE REF TO zcl_lnt_issue.
        CLEAR t88.
        DATA(t89) = VALUE abap_bool( ).
        IF t73 IS BOUND.
          IF t73->has = abap_true.
            t89 = xsdbool( strlen( t73->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t89 = abap_true.
          DATA t93 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t95 TYPE REF TO zcl_lnt_position.
          t95 = t53->start.
          DATA t100 TYPE REF TO zcl_lnt_position.
          DATA t101 TYPE REF TO zcl_lnt_abstract_token.
          t101 = t53.
          DATA t104 TYPE f.
          t104 = t101->start->row.
          DATA t111 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t111 = t101->start->col.
          DATA t117 TYPE f.
          t117 = strlen( t101->str ).
          DATA(t122) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t122->has = abap_true.
          t122->value = t117.
          t100 = NEW zcl_lnt_position( i_row = t104 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t111 right = t122 op = `+` ) ).
          DATA t123 TYPE string.
          t123 = t73->value.
          t93 = zcl_lnt_edit_helper=>replace_range( i_file = t55 i_start = t95 i_end = t100 i_text = t123 ).
          DATA(t130) = VALUE string( ).
          DATA t131 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t131.
          DATA t138 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t138.
          DATA t142 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t142.
          t142->load( ).
          APPEND |SingleFile| TO t142->items.
          t142->save( ).
          t142->load( ).
          APPEND |Quickfix| TO t142->items.
          t142->save( ).
          t138 = t142.
          DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t150.
          DATA(t154) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t154->has = abap_true.
          t154->value = |IF foo EQ bar.\nENDIF.|.
          t150 = t154.
          DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t156.
          DATA(t160) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t160->has = abap_true.
          t160->value = |IF foo = bar.\nENDIF.|.
          t156 = t160.
          DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t162.
          DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t164.
          DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t166.
          t131 = NEW zcl_lnt_irule_metadata( i_key = |preferred_compare_operator| i_title = |Preferred compare operator| i_short_description = |Configure undesired operator variants| i_bad_example = t150 i_good_example = t156 i_extended_information = t162 i_tags = t138 i_pragma = t164 i_pseudo_comment = t166 ).
          CREATE OBJECT t131->zlnt_view_ownkeys_b0e8086400eb.
          t131->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t168.
          t131->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t168 ).
          DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t169.
          IF t131->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t131->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t169 ).
          ENDIF.
          DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t170.
          IF t131->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t131->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t170 ).
          ENDIF.
          DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t171.
          IF t131->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t131->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t171 ).
          ENDIF.
          DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t172.
          IF t131->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t131->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t172 ).
          ENDIF.
          DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t173.
          IF t131->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t131->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t173 ).
          ENDIF.
          CREATE OBJECT t131->zlnt_json_ownkeys_70e5fd461788.
          t131->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t175.
          t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t175 ).
          DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t177.
          IF t131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t177 ).
          ENDIF.
          DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t179.
          IF t131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t179 ).
          ENDIF.
          DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t181.
          IF t131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t181 ).
          ENDIF.
          DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t183.
          IF t131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t183 ).
          ENDIF.
          DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t185.
          IF t131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t185 ).
          ENDIF.
          t130 = t131->key.
          t88 = zcl_lnt_issue=>at_token( i_file = t55 i_token = t53 i_message_26cb = t58 i_key = t130 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t93 ).
        ELSE.
          DATA(t199) = VALUE string( ).
          DATA t200 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t200.
          DATA t207 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t207.
          DATA t211 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t211.
          t211->load( ).
          APPEND |SingleFile| TO t211->items.
          t211->save( ).
          t211->load( ).
          APPEND |Quickfix| TO t211->items.
          t211->save( ).
          t207 = t211.
          DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t219.
          DATA(t223) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t223->has = abap_true.
          t223->value = |IF foo EQ bar.\nENDIF.|.
          t219 = t223.
          DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t225.
          DATA(t229) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t229->has = abap_true.
          t229->value = |IF foo = bar.\nENDIF.|.
          t225 = t229.
          DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t231.
          DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t233.
          DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t235.
          t200 = NEW zcl_lnt_irule_metadata( i_key = |preferred_compare_operator| i_title = |Preferred compare operator| i_short_description = |Configure undesired operator variants| i_bad_example = t219 i_good_example = t225 i_extended_information = t231 i_tags = t207 i_pragma = t233 i_pseudo_comment = t235 ).
          CREATE OBJECT t200->zlnt_view_ownkeys_b0e8086400eb.
          t200->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t237.
          t200->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t237 ).
          DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t238.
          IF t200->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t200->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t238 ).
          ENDIF.
          DATA t239 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t239.
          IF t200->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t200->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t239 ).
          ENDIF.
          DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t240.
          IF t200->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t200->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t240 ).
          ENDIF.
          DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t241.
          IF t200->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t200->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t241 ).
          ENDIF.
          DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t242.
          IF t200->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t200->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t242 ).
          ENDIF.
          CREATE OBJECT t200->zlnt_json_ownkeys_70e5fd461788.
          t200->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t244.
          t200->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t244 ).
          DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t246.
          IF t200->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t200->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t246 ).
          ENDIF.
          DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t248.
          IF t200->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t200->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t248 ).
          ENDIF.
          DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t250.
          IF t200->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t200->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t250 ).
          ENDIF.
          DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t252.
          IF t200->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t200->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t252 ).
          ENDIF.
          DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t254.
          IF t200->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t200->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t254 ).
          ENDIF.
          t199 = t200->key.
          DATA t255 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t255 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t257 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t257.
          t88 = zcl_lnt_issue=>at_token( i_file = t55 i_token = t53 i_message_26cb = t58 i_key = t199 i_severity = t255 i_fix = t257 ).
        ENDIF.
        t52 = t88.
        t2->load( ).
        APPEND t52 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD build_mapping.
    DATA t2 TYPE i.
    t2 = me->operator_mapping->size( ).
    IF xsdbool( t2 = 0 ) = abap_true.
      DATA t5 TYPE REF TO zlnt_runtime_map__a1006b231250.
      t5 = me->operator_mapping->set( p0 = |EQ| p1 = |=| ).
      DATA t9 TYPE REF TO zlnt_runtime_map__a1006b231250.
      t9 = me->operator_mapping->set( p0 = |><| p1 = |<>| ).
      DATA t13 TYPE REF TO zlnt_runtime_map__a1006b231250.
      t13 = me->operator_mapping->set( p0 = |NE| p1 = |<>| ).
      DATA t17 TYPE REF TO zlnt_runtime_map__a1006b231250.
      t17 = me->operator_mapping->set( p0 = |GE| p1 = |>=| ).
      DATA t21 TYPE REF TO zlnt_runtime_map__a1006b231250.
      t21 = me->operator_mapping->set( p0 = |GT| p1 = |>| ).
      DATA t25 TYPE REF TO zlnt_runtime_map__a1006b231250.
      t25 = me->operator_mapping->set( p0 = |LT| p1 = |<| ).
      DATA t29 TYPE REF TO zlnt_runtime_map__a1006b231250.
      t29 = me->operator_mapping->set( p0 = |LE| p1 = |<=| ).
      DATA t33 TYPE REF TO zlnt_runtime_map__a1006b231250.
      t33 = me->operator_mapping->set( p0 = |=| p1 = |EQ| ).
      DATA t37 TYPE REF TO zlnt_runtime_map__a1006b231250.
      t37 = me->operator_mapping->set( p0 = |<>| p1 = |NE| ).
      DATA t41 TYPE REF TO zlnt_runtime_map__a1006b231250.
      t41 = me->operator_mapping->set( p0 = |>=| p1 = |GE| ).
      DATA t45 TYPE REF TO zlnt_runtime_map__a1006b231250.
      t45 = me->operator_mapping->set( p0 = |>| p1 = |GT| ).
      DATA t49 TYPE REF TO zlnt_runtime_map__a1006b231250.
      t49 = me->operator_mapping->set( p0 = |<| p1 = |LT| ).
      DATA t53 TYPE REF TO zlnt_runtime_map__a1006b231250.
      t53 = me->operator_mapping->set( p0 = |<=| p1 = |LE| ).
    ENDIF.
  ENDMETHOD.

  METHOD create_issue.
    DATA(t1) = i_token.
    DATA(t2) = i_file.
    DATA t3 TYPE string.
    DATA t9 TYPE string.
    t9 = t1->str.
    DATA t12 TYPE string.
    DATA(t13) = |Compare operator "|.
    DATA(t15) = strlen( t13 ).
    t12 = |{ t13 }{ t9 }|.
    DATA(t17) = strlen( t12 ).
    t3 = |{ t12 }{ |" not preferred| }|.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t20 TYPE REF TO zlnt_runtime_map__a1006b231250.
    t20 = me->operator_mapping.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t20 IS INITIAL ) = abap_true.
    ELSE.
      DATA t28 TYPE string.
      t28 = t1->str.
      t22 = t20->get( p0 = t28 ).
    ENDIF.
    t18 = t22.
    DATA(t33) = VALUE abap_bool( ).
    IF t18 IS BOUND.
      IF t18->has = abap_true.
        t33 = xsdbool( strlen( t18->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t33 = abap_true.
      DATA t36 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t38 TYPE REF TO zcl_lnt_position.
      t38 = t1->start.
      DATA t43 TYPE REF TO zcl_lnt_position.
      DATA t44 TYPE REF TO zcl_lnt_abstract_token.
      t44 = t1.
      DATA t47 TYPE f.
      t47 = t44->start->row.
      DATA t54 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t54 = t44->start->col.
      DATA t60 TYPE f.
      t60 = strlen( t44->str ).
      DATA(t65) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t65->has = abap_true.
      t65->value = t60.
      t43 = NEW zcl_lnt_position( i_row = t47 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t54 right = t65 op = `+` ) ).
      DATA t66 TYPE string.
      t66 = t18->value.
      t36 = zcl_lnt_edit_helper=>replace_range( i_file = t2 i_start = t38 i_end = t43 i_text = t66 ).
      DATA(t73) = VALUE string( ).
      DATA t74 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t81 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t85 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t85.
      t85->load( ).
      APPEND |SingleFile| TO t85->items.
      t85->save( ).
      t85->load( ).
      APPEND |Quickfix| TO t85->items.
      t85->save( ).
      t81 = t85.
      DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t97) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t97->has = abap_true.
      t97->value = |IF foo EQ bar.\nENDIF.|.
      t93 = t97.
      DATA(t103) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t103->has = abap_true.
      t103->value = |IF foo = bar.\nENDIF.|.
      DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t74 = NEW zcl_lnt_irule_metadata( i_key = |preferred_compare_operator| i_title = |Preferred compare operator| i_short_description = |Configure undesired operator variants| i_bad_example = t93 i_good_example = t103 i_extended_information = t105 i_tags = t81 i_pragma = t107 i_pseudo_comment = t109 ).
      CREATE OBJECT t74->zlnt_view_ownkeys_b0e8086400eb.
      t74->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t111 ).
      DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t112 ).
      ENDIF.
      DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t113 ).
      ENDIF.
      DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t114 ).
      ENDIF.
      DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t115 ).
      ENDIF.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t74->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t74->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t116 ).
      ENDIF.
      CREATE OBJECT t74->zlnt_json_ownkeys_70e5fd461788.
      t74->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t118 ).
      DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t120 ).
      ENDIF.
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t122 ).
      ENDIF.
      DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t124 ).
      ENDIF.
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t126 ).
      ENDIF.
      DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t128 ).
      ENDIF.
      t73 = t74->key.
      result = zcl_lnt_issue=>at_token( i_file = t2 i_token = t1 i_message_26cb = t3 i_key = t73 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t36 ).
      RETURN.
    ELSE.
      DATA(t141) = VALUE string( ).
      DATA t142 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t149 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t153 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t153.
      t153->load( ).
      APPEND |SingleFile| TO t153->items.
      t153->save( ).
      t153->load( ).
      APPEND |Quickfix| TO t153->items.
      t153->save( ).
      t149 = t153.
      DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t165) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t165->has = abap_true.
      t165->value = |IF foo EQ bar.\nENDIF.|.
      t161 = t165.
      DATA(t171) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t171->has = abap_true.
      t171->value = |IF foo = bar.\nENDIF.|.
      DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t142 = NEW zcl_lnt_irule_metadata( i_key = |preferred_compare_operator| i_title = |Preferred compare operator| i_short_description = |Configure undesired operator variants| i_bad_example = t161 i_good_example = t171 i_extended_information = t173 i_tags = t149 i_pragma = t175 i_pseudo_comment = t177 ).
      CREATE OBJECT t142->zlnt_view_ownkeys_b0e8086400eb.
      t142->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t142->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t179 ).
      DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t142->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t142->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t180 ).
      ENDIF.
      DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t142->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t142->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t181 ).
      ENDIF.
      DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t142->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t142->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t182 ).
      ENDIF.
      DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t142->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t142->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t183 ).
      ENDIF.
      DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t142->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t142->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t184 ).
      ENDIF.
      CREATE OBJECT t142->zlnt_json_ownkeys_70e5fd461788.
      t142->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t186 ).
      DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t188 ).
      ENDIF.
      DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t190 ).
      ENDIF.
      DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t192 ).
      ENDIF.
      DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t194 ).
      ENDIF.
      DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t196 ).
      ENDIF.
      t141 = t142->key.
      DATA t199 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      result = zcl_lnt_issue=>at_token( i_file = t2 i_token = t1 i_message_26cb = t3 i_key = t141 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t199 ).

    ENDIF.
  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_prfrrd_cmpr_oprtr_cnf( me->g_c_i_s_r_pr_cm_op_ts_pr_cm_op( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_prfrrd_cmpr_oprtr_cnf( me->g_c_i_s_r_pr_cm_op_ts_pr_cm_op( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_prfrrd_cmpr_oprtr_cnf.
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
        t1 = NEW zcl_lnt_prfrrd_cmpr_oprtr_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_pr_cm_op_ts_pr_cm_op( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_pr_cm_op_ts_pr_cm_op( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1670_490191ba2a52.
  ENDMETHOD.
ENDCLASS.
