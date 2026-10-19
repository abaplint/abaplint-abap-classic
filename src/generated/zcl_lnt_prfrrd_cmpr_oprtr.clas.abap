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
    DATA t2 TYPE string.
    t2 = |preferred_compare_operator|.
    DATA t4 TYPE string.
    t4 = |Preferred compare operator|.
    DATA t6 TYPE string.
    t6 = |Configure undesired operator variants|.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t15) = |SingleFile|.
    t12->load( ).
    APPEND t15 TO t12->items.
    t12->save( ).
    DATA(t17) = |Quickfix|.
    t12->load( ).
    APPEND t17 TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t23) = |IF foo EQ bar.\nENDIF.|.
    DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t24->has = abap_true.
    t24->value = t23.
    t20 = t24.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t29) = |IF foo = bar.\nENDIF.|.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t29.
    t26 = t30.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t20 i_good_example = t26 i_extended_information = t32 i_tags = t8 i_pragma = t34 i_pseudo_comment = t36 ).
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
    DATA(t44) = |key|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
    DATA(t46) = |title|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = |shortDescription|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |tags|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |badExample|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    DATA(t54) = |goodExample|.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA t2 TYPE string.
    DATA t3 TYPE string.
    DATA(t4) = |Compare operator "|.
    DATA(t6) = strlen( t4 ).
    t3 = |{ t4 }{ i_operator_582d }|.
    DATA(t7) = |" not preferred|.
    DATA(t8) = strlen( t3 ).
    t2 = |{ t3 }{ t7 }|.
    result = t2.

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
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zcl_lnt_structure_node.
    t20 = t4.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    t23 = t24.
    DATA(t26) = zlnt_runtime_desc_78196487750d=>zlnt_member_d123_b66c920b623e.
    t23->load( ).
    APPEND t26 TO t23->items.
    t23->save( ).
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d298_782c2da798c9.
    t23->load( ).
    APPEND t28 TO t23->items.
    t23->save( ).
    t22 = t23.
    t19 = t20->f_a_e_m_i_s_a_n_st_nd_ts_st_nd( i_type_9913 = t22 ).
    t18 = t19.
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
      DATA t37 TYPE REF TO zcl_lnt_abstract_token.
      t37 = t31->get_last_token( ).
      t36 = t37.
      DATA(t39) = VALUE abap_bool( ).
      DATA(t40) = VALUE i( ).
      DATA t41 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t41 = me->conf->zlnt_view_read_sr_7d235468b9c0( ).
      DATA t43 TYPE string.
      DATA t44 TYPE string.
      DATA t47 TYPE string.
      t47 = t36->str.
      t44 = t47.
      DATA(t49) = strlen( t44 ).
      t43 = t44.
      IF t43 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t43 TO UPPER CASE.
      ELSE.
        t43 = zlnt_runtime_uppe_91169605024d=>full( t43 ).
      ENDIF.
      t40 = t41->indexof( p0 = t43 ).
      DATA(t50) = 0.
      t39 = xsdbool( t40 >= t50 ).
      IF t39 = abap_true.
        DATA t52 TYPE REF TO zcl_lnt_issue.
        CLEAR t52.
        DATA t53 TYPE REF TO zcl_lnt_abstract_token.
        t53 = t36.
        DATA t55 TYPE REF TO zcl_lnt_abap_file.
        t55 = t1.
        DATA t58 TYPE string.
        DATA t64 TYPE string.
        t64 = t53->str.
        DATA t66 TYPE string.
        DATA t67 TYPE string.
        DATA(t68) = |Compare operator "|.
        DATA(t70) = strlen( t68 ).
        t67 = |{ t68 }{ t64 }|.
        DATA(t71) = |" not preferred|.
        DATA(t72) = strlen( t67 ).
        t66 = |{ t67 }{ t71 }|.
        t58 = t66.
        DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t73.
        DATA t75 TYPE REF TO zlnt_runtime_map__a1006b231250.
        t75 = me->operator_mapping.
        DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t77.
        DATA(t78) = xsdbool( t75 IS INITIAL ).
        IF t78 = abap_true.
          CLEAR t77.
        ELSE.
          DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t83 TYPE string.
          DATA t86 TYPE string.
          t86 = t53->str.
          t83 = t86.
          t81 = t75->get( p0 = t83 ).
          t77 = t81.
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
          DATA t98 TYPE REF TO zcl_lnt_position.
          t98 = t53->start.
          t95 = t98.
          DATA t100 TYPE REF TO zcl_lnt_position.
          DATA t101 TYPE REF TO zcl_lnt_abstract_token.
          t101 = t53.
          DATA t103 TYPE REF TO zcl_lnt_position.
          DATA t104 TYPE f.
          DATA t106 TYPE REF TO zcl_lnt_position.
          t106 = t101->start.
          DATA t108 TYPE f.
          t108 = t106->row.
          t104 = t108.
          DATA t110 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t111 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t113 TYPE REF TO zcl_lnt_position.
          t113 = t101->start.
          DATA t115 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t115 = t113->col.
          t111 = t115.
          DATA t117 TYPE f.
          DATA t119 TYPE string.
          t119 = t101->str.
          t117 = strlen( t119 ).
          DATA(t122) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t122->has = abap_true.
          t122->value = t117.
          t110 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t111 right = t122 op = `+` ).
          t103 = NEW zcl_lnt_position( i_row = t104 i_col = t110 ).
          t100 = t103.
          DATA t123 TYPE string.
          t123 = t73->value.
          t93 = zcl_lnt_edit_helper=>replace_range( i_file = t55 i_start = t95 i_end = t100 i_text = t123 ).
          DATA t126 TYPE REF TO zcl_lnt_issue.
          CLEAR t126.
          DATA(t130) = VALUE string( ).
          DATA t131 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t131.
          DATA t132 TYPE string.
          t132 = |preferred_compare_operator|.
          DATA t134 TYPE string.
          t134 = |Preferred compare operator|.
          DATA t136 TYPE string.
          t136 = |Configure undesired operator variants|.
          DATA t138 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t138.
          DATA t142 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t143 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t143.
          t142 = t143.
          DATA(t145) = |SingleFile|.
          t142->load( ).
          APPEND t145 TO t142->items.
          t142->save( ).
          DATA(t147) = |Quickfix|.
          t142->load( ).
          APPEND t147 TO t142->items.
          t142->save( ).
          t138 = t142.
          DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t150.
          DATA(t153) = |IF foo EQ bar.\nENDIF.|.
          DATA(t154) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t154->has = abap_true.
          t154->value = t153.
          t150 = t154.
          DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t156.
          DATA(t159) = |IF foo = bar.\nENDIF.|.
          DATA(t160) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t160->has = abap_true.
          t160->value = t159.
          t156 = t160.
          DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t162.
          DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t164.
          DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t166.
          t131 = NEW zcl_lnt_irule_metadata( i_key = t132 i_title = t134 i_short_description = t136 i_bad_example = t150 i_good_example = t156 i_extended_information = t162 i_tags = t138 i_pragma = t164 i_pseudo_comment = t166 ).
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
          DATA(t174) = |key|.
          DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t175.
          t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = t174 p1 = t175 ).
          DATA(t176) = |title|.
          DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t177.
          IF t131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = t176 p1 = t177 ).
          ENDIF.
          DATA(t178) = |shortDescription|.
          DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t179.
          IF t131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = t178 p1 = t179 ).
          ENDIF.
          DATA(t180) = |tags|.
          DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t181.
          IF t131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = t180 p1 = t181 ).
          ENDIF.
          DATA(t182) = |badExample|.
          DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t183.
          IF t131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = t182 p1 = t183 ).
          ENDIF.
          DATA(t184) = |goodExample|.
          DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t185.
          IF t131->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t131->zlnt_json_ownkeys_70e5fd461788->put( p0 = t184 p1 = t185 ).
          ENDIF.
          t130 = t131->key.
          DATA t186 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t186 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t188 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t188.
          t188 = t93.
          t126 = zcl_lnt_issue=>at_token( i_file = t55 i_token = t53 i_message_26cb = t58 i_key = t130 i_severity = t186 i_fix = t188 ).
          t88 = t126.
        ELSE.
          DATA t195 TYPE REF TO zcl_lnt_issue.
          CLEAR t195.
          DATA(t199) = VALUE string( ).
          DATA t200 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t200.
          DATA t201 TYPE string.
          t201 = |preferred_compare_operator|.
          DATA t203 TYPE string.
          t203 = |Preferred compare operator|.
          DATA t205 TYPE string.
          t205 = |Configure undesired operator variants|.
          DATA t207 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t207.
          DATA t211 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t212 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t212.
          t211 = t212.
          DATA(t214) = |SingleFile|.
          t211->load( ).
          APPEND t214 TO t211->items.
          t211->save( ).
          DATA(t216) = |Quickfix|.
          t211->load( ).
          APPEND t216 TO t211->items.
          t211->save( ).
          t207 = t211.
          DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t219.
          DATA(t222) = |IF foo EQ bar.\nENDIF.|.
          DATA(t223) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t223->has = abap_true.
          t223->value = t222.
          t219 = t223.
          DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t225.
          DATA(t228) = |IF foo = bar.\nENDIF.|.
          DATA(t229) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t229->has = abap_true.
          t229->value = t228.
          t225 = t229.
          DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t231.
          DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t233.
          DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t235.
          t200 = NEW zcl_lnt_irule_metadata( i_key = t201 i_title = t203 i_short_description = t205 i_bad_example = t219 i_good_example = t225 i_extended_information = t231 i_tags = t207 i_pragma = t233 i_pseudo_comment = t235 ).
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
          DATA(t243) = |key|.
          DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t244.
          t200->zlnt_json_ownkeys_70e5fd461788->put( p0 = t243 p1 = t244 ).
          DATA(t245) = |title|.
          DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t246.
          IF t200->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t200->zlnt_json_ownkeys_70e5fd461788->put( p0 = t245 p1 = t246 ).
          ENDIF.
          DATA(t247) = |shortDescription|.
          DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t248.
          IF t200->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t200->zlnt_json_ownkeys_70e5fd461788->put( p0 = t247 p1 = t248 ).
          ENDIF.
          DATA(t249) = |tags|.
          DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t250.
          IF t200->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t200->zlnt_json_ownkeys_70e5fd461788->put( p0 = t249 p1 = t250 ).
          ENDIF.
          DATA(t251) = |badExample|.
          DATA t252 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t252.
          IF t200->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t200->zlnt_json_ownkeys_70e5fd461788->put( p0 = t251 p1 = t252 ).
          ENDIF.
          DATA(t253) = |goodExample|.
          DATA t254 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t254.
          IF t200->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t200->zlnt_json_ownkeys_70e5fd461788->put( p0 = t253 p1 = t254 ).
          ENDIF.
          t199 = t200->key.
          DATA t255 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t255 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t257 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t257.
          t195 = zcl_lnt_issue=>at_token( i_file = t55 i_token = t53 i_message_26cb = t58 i_key = t199 i_severity = t255 i_fix = t257 ).
          t88 = t195.
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
    DATA t1 TYPE abap_bool.
    DATA t2 TYPE i.
    t2 = me->operator_mapping->size( ).
    DATA(t4) = 0.
    t1 = xsdbool( t2 = t4 ).
    IF t1 = abap_true.
      DATA t5 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA(t7) = |EQ|.
      DATA(t8) = |=|.
      t5 = me->operator_mapping->set( p0 = t7 p1 = t8 ).
      DATA t9 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA(t11) = |><|.
      DATA(t12) = |<>|.
      t9 = me->operator_mapping->set( p0 = t11 p1 = t12 ).
      DATA t13 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA(t15) = |NE|.
      DATA(t16) = |<>|.
      t13 = me->operator_mapping->set( p0 = t15 p1 = t16 ).
      DATA t17 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA(t19) = |GE|.
      DATA(t20) = |>=|.
      t17 = me->operator_mapping->set( p0 = t19 p1 = t20 ).
      DATA t21 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA(t23) = |GT|.
      DATA(t24) = |>|.
      t21 = me->operator_mapping->set( p0 = t23 p1 = t24 ).
      DATA t25 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA(t27) = |LT|.
      DATA(t28) = |<|.
      t25 = me->operator_mapping->set( p0 = t27 p1 = t28 ).
      DATA t29 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA(t31) = |LE|.
      DATA(t32) = |<=|.
      t29 = me->operator_mapping->set( p0 = t31 p1 = t32 ).
      DATA t33 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA(t35) = |=|.
      DATA(t36) = |EQ|.
      t33 = me->operator_mapping->set( p0 = t35 p1 = t36 ).
      DATA t37 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA(t39) = |<>|.
      DATA(t40) = |NE|.
      t37 = me->operator_mapping->set( p0 = t39 p1 = t40 ).
      DATA t41 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA(t43) = |>=|.
      DATA(t44) = |GE|.
      t41 = me->operator_mapping->set( p0 = t43 p1 = t44 ).
      DATA t45 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA(t47) = |>|.
      DATA(t48) = |GT|.
      t45 = me->operator_mapping->set( p0 = t47 p1 = t48 ).
      DATA t49 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA(t51) = |<|.
      DATA(t52) = |LT|.
      t49 = me->operator_mapping->set( p0 = t51 p1 = t52 ).
      DATA t53 TYPE REF TO zlnt_runtime_map__a1006b231250.
      DATA(t55) = |<=|.
      DATA(t56) = |LE|.
      t53 = me->operator_mapping->set( p0 = t55 p1 = t56 ).
    ENDIF.
  ENDMETHOD.

  METHOD create_issue.
    DATA(t1) = i_token.
    DATA(t2) = i_file.
    DATA t3 TYPE string.
    DATA t9 TYPE string.
    t9 = t1->str.
    DATA t11 TYPE string.
    DATA t12 TYPE string.
    DATA(t13) = |Compare operator "|.
    DATA(t15) = strlen( t13 ).
    t12 = |{ t13 }{ t9 }|.
    DATA(t16) = |" not preferred|.
    DATA(t17) = strlen( t12 ).
    t11 = |{ t12 }{ t16 }|.
    t3 = t11.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t20 TYPE REF TO zlnt_runtime_map__a1006b231250.
    t20 = me->operator_mapping.
    DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t23) = xsdbool( t20 IS INITIAL ).
    IF t23 = abap_true.
    ELSE.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t28 TYPE string.
      DATA t31 TYPE string.
      t31 = t1->str.
      t28 = t31.
      t26 = t20->get( p0 = t28 ).
      t22 = t26.
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
      DATA t41 TYPE REF TO zcl_lnt_position.
      t41 = t1->start.
      t38 = t41.
      DATA t43 TYPE REF TO zcl_lnt_position.
      DATA t44 TYPE REF TO zcl_lnt_abstract_token.
      t44 = t1.
      DATA t46 TYPE REF TO zcl_lnt_position.
      DATA t47 TYPE f.
      DATA t49 TYPE REF TO zcl_lnt_position.
      t49 = t44->start.
      DATA t51 TYPE f.
      t51 = t49->row.
      t47 = t51.
      DATA t53 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t54 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t56 TYPE REF TO zcl_lnt_position.
      t56 = t44->start.
      DATA t58 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t58 = t56->col.
      t54 = t58.
      DATA t60 TYPE f.
      DATA t62 TYPE string.
      t62 = t44->str.
      t60 = strlen( t62 ).
      DATA(t65) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t65->has = abap_true.
      t65->value = t60.
      t53 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t54 right = t65 op = `+` ).
      t46 = NEW zcl_lnt_position( i_row = t47 i_col = t53 ).
      t43 = t46.
      DATA t66 TYPE string.
      t66 = t18->value.
      t36 = zcl_lnt_edit_helper=>replace_range( i_file = t2 i_start = t38 i_end = t43 i_text = t66 ).
      DATA t69 TYPE REF TO zcl_lnt_issue.
      DATA(t73) = VALUE string( ).
      DATA t74 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t75 TYPE string.
      t75 = |preferred_compare_operator|.
      DATA t77 TYPE string.
      t77 = |Preferred compare operator|.
      DATA t79 TYPE string.
      t79 = |Configure undesired operator variants|.
      DATA t81 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t85 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t86 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t86.
      t85 = t86.
      DATA(t88) = |SingleFile|.
      t85->load( ).
      APPEND t88 TO t85->items.
      t85->save( ).
      DATA(t90) = |Quickfix|.
      t85->load( ).
      APPEND t90 TO t85->items.
      t85->save( ).
      t81 = t85.
      DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t96) = |IF foo EQ bar.\nENDIF.|.
      DATA(t97) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t97->has = abap_true.
      t97->value = t96.
      t93 = t97.
      DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t102) = |IF foo = bar.\nENDIF.|.
      DATA(t103) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t103->has = abap_true.
      t103->value = t102.
      t99 = t103.
      DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t74 = NEW zcl_lnt_irule_metadata( i_key = t75 i_title = t77 i_short_description = t79 i_bad_example = t93 i_good_example = t99 i_extended_information = t105 i_tags = t81 i_pragma = t107 i_pseudo_comment = t109 ).
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
      DATA(t117) = |key|.
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = t117 p1 = t118 ).
      DATA(t119) = |title|.
      DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = t119 p1 = t120 ).
      ENDIF.
      DATA(t121) = |shortDescription|.
      DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = t121 p1 = t122 ).
      ENDIF.
      DATA(t123) = |tags|.
      DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = t123 p1 = t124 ).
      ENDIF.
      DATA(t125) = |badExample|.
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = t125 p1 = t126 ).
      ENDIF.
      DATA(t127) = |goodExample|.
      DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t74->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t74->zlnt_json_ownkeys_70e5fd461788->put( p0 = t127 p1 = t128 ).
      ENDIF.
      t73 = t74->key.
      DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t129 = me->conf->zlnt_view_read_sr_15c06369f827( ).
      DATA t131 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t131 = t36.
      t69 = zcl_lnt_issue=>at_token( i_file = t2 i_token = t1 i_message_26cb = t3 i_key = t73 i_severity = t129 i_fix = t131 ).
      result = t69.
      RETURN.
    ELSE.
      DATA t137 TYPE REF TO zcl_lnt_issue.
      DATA(t141) = VALUE string( ).
      DATA t142 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t143 TYPE string.
      t143 = |preferred_compare_operator|.
      DATA t145 TYPE string.
      t145 = |Preferred compare operator|.
      DATA t147 TYPE string.
      t147 = |Configure undesired operator variants|.
      DATA t149 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t153 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t154 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t154.
      t153 = t154.
      DATA(t156) = |SingleFile|.
      t153->load( ).
      APPEND t156 TO t153->items.
      t153->save( ).
      DATA(t158) = |Quickfix|.
      t153->load( ).
      APPEND t158 TO t153->items.
      t153->save( ).
      t149 = t153.
      DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t164) = |IF foo EQ bar.\nENDIF.|.
      DATA(t165) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t165->has = abap_true.
      t165->value = t164.
      t161 = t165.
      DATA t167 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t170) = |IF foo = bar.\nENDIF.|.
      DATA(t171) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t171->has = abap_true.
      t171->value = t170.
      t167 = t171.
      DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t142 = NEW zcl_lnt_irule_metadata( i_key = t143 i_title = t145 i_short_description = t147 i_bad_example = t161 i_good_example = t167 i_extended_information = t173 i_tags = t149 i_pragma = t175 i_pseudo_comment = t177 ).
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
      DATA(t185) = |key|.
      DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = t185 p1 = t186 ).
      DATA(t187) = |title|.
      DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = t187 p1 = t188 ).
      ENDIF.
      DATA(t189) = |shortDescription|.
      DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = t189 p1 = t190 ).
      ENDIF.
      DATA(t191) = |tags|.
      DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = t191 p1 = t192 ).
      ENDIF.
      DATA(t193) = |badExample|.
      DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = t193 p1 = t194 ).
      ENDIF.
      DATA(t195) = |goodExample|.
      DATA t196 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t142->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t142->zlnt_json_ownkeys_70e5fd461788->put( p0 = t195 p1 = t196 ).
      ENDIF.
      t141 = t142->key.
      DATA t197 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t197 = me->conf->zlnt_view_read_sr_15c06369f827( ).
      DATA t199 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t137 = zcl_lnt_issue=>at_token( i_file = t2 i_token = t1 i_message_26cb = t3 i_key = t141 i_severity = t197 i_fix = t199 ).
      result = t137.

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
