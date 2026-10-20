* TS: src/rules/many_parentheses.ts:14:1 ManyParentheses
CLASS zcl_lnt_many_parentheses DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_many_parentheses_conf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_mn_pr_ts_mn_prn RETURNING VALUE(result) TYPE REF TO zcl_lnt_many_parentheses_conf.
    METHODS st_cn_in_sr_rl_mn_pr_ts_mn_prn IMPORTING i_conf TYPE REF TO zcl_lnt_many_parentheses_conf.
    METHODS rn_pr_in_sr_rl_mn_pr_ts_mn_prn IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS analyze_into IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_m TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS analyze_move IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_m TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS analyze_condition IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_cond TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_comparator IMPORTING i_cond TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE string.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_many_parentheses IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_many_parentheses_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Searches for expressions where extra parentheses can safely |.
    t7 = t7 && |be removed|.
    t6 = t7.
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
    DATA(t23) = |\nIF ( destination IS INITIAL ).\nENDIF.\nIF foo = boo AND ( ba|.
    t23 = t23 && |r = lar AND moo = loo ).\nENDIF.\n|.
    DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t24->has = abap_true.
    t24->value = t23.
    t20 = t24.
    DATA(t29) = |\nIF destination IS INITIAL.\nENDIF.\nIF foo = boo AND bar = la|.
    t29 = t29 && |r AND moo = loo.\nENDIF.\n|.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t29.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |many_parentheses| i_title = |Too many parentheses| i_short_description = t6 i_bad_example = t20 i_good_example = t30 i_extended_information = t32 i_tags = t8 i_pragma = t34 i_pseudo_comment = t36 ).
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

  METHOD gt_cn_in_sr_rl_mn_pr_ts_mn_prn.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_mn_pr_ts_mn_prn.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD rn_pr_in_sr_rl_mn_pr_ts_mn_prn.
    DATA(t1) = i_file.
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
    DATA t19 TYPE REF TO zcl_lnt_structure_node.
    t19 = t4.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t22.
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
    t22->load( ).
    APPEND t25 TO t22->items.
    t22->save( ).
    DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d133_716522bf3a6a.
    t22->load( ).
    APPEND t27 TO t22->items.
    t22->save( ).
    t18 = t19->f_a_e_m_i_s_a_n_st_nd_ts_st_nd( i_type_9913 = t22 ).
    DATA t29 TYPE REF TO zcl_lnt_expression_node.
    DATA t30 TYPE REF TO object.
    DATA(t31) = VALUE i( ).
    DO.
      t18->load( ).
      IF t31 >= lines( t18->items ).
        EXIT.
      ENDIF.
      CLEAR t30.
      READ TABLE t18->items INDEX t31 + 1 INTO t30.
      t31 = t31 + 1.
      DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t32.
      CLEAR t29.
      IF t30 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t32 ?= t30.
        DATA t33 TYPE REF TO object.
        t33 = t32->as_ref( ).
        t29 ?= t33.
      ELSE.
        t29 ?= t30.
      ENDIF.
      DATA(t34) = VALUE i( ).
      DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t35 = me->analyze_condition( i_file = t1 i_cond = t29 ).
      DATA t38 TYPE REF TO zcl_lnt_issue.
      CLEAR t38.
      DATA t39 TYPE REF TO object.
      CLEAR t39.
      DATA(t40) = VALUE i( ).
      DO.
        t35->load( ).
        IF t40 >= lines( t35->items ).
          EXIT.
        ENDIF.
        CLEAR t39.
        READ TABLE t35->items INDEX t40 + 1 INTO t39.
        t40 = t40 + 1.
        DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t41.
        CLEAR t38.
        IF t39 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t41 ?= t39.
          DATA t42 TYPE REF TO object.
          t42 = t41->as_ref( ).
          t38 ?= t42.
        ELSE.
          t38 ?= t39.
        ENDIF.
        t2->load( ).
        APPEND t38 TO t2->items.
        t2->save( ).
      ENDDO.
      t2->load( ).
      t34 = lines( t2->items ).
    ENDDO.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t48 TYPE REF TO zcl_lnt_structure_node.
    t48 = t4.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t51.
    DATA(t54) = zlnt_runtime_desc_78196487750d=>zlnt_member_d135_0d084eddc054.
    t51->load( ).
    APPEND t54 TO t51->items.
    t51->save( ).
    DATA(t56) = zlnt_runtime_desc_78196487750d=>zlnt_member_d132_568147cc297b.
    t51->load( ).
    APPEND t56 TO t51->items.
    t51->save( ).
    t47 = t48->f_a_e_m_i_s_a_n_st_nd_ts_st_nd( i_type_9913 = t51 ).
    DATA t58 TYPE REF TO zcl_lnt_expression_node.
    DATA t59 TYPE REF TO object.
    DATA(t60) = VALUE i( ).
    DO.
      t47->load( ).
      IF t60 >= lines( t47->items ).
        EXIT.
      ENDIF.
      CLEAR t59.
      READ TABLE t47->items INDEX t60 + 1 INTO t59.
      t60 = t60 + 1.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t61.
      CLEAR t58.
      IF t59 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t61 ?= t59.
        DATA t62 TYPE REF TO object.
        t62 = t61->as_ref( ).
        t58 ?= t62.
      ELSE.
        t58 ?= t59.
      ENDIF.
      DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t63.
      DATA t66 TYPE REF TO zif_lnt_statement_runnable.
      t66 = t58->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
      IF xsdbool( t66 IS BOUND AND t66 IS INSTANCE OF zcl_lnt_cond_sub ) = abap_true.
        DATA(t70) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
        t63 = t58->find_direct_expressions( i_type_9913 = t70 ).
      ELSE.
        DATA(t73) = zlnt_runtime_desc_78196487750d=>zlnt_member_d133_716522bf3a6a.
        t63 = t58->find_direct_expressions( i_type_9913 = t73 ).
      ENDIF.
      t63->load( ).
      IF xsdbool( lines( t63->items ) <> 1 ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t80.
      DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t81.
      DATA t82 TYPE REF TO zcl_lnt_abstract_node.
      CLEAR t82.
      DATA t83 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t83.
      DATA t85 TYPE REF TO object.
      CLEAR t85.
      t63->load( ).
      CLEAR t85.
      READ TABLE t63->items INDEX 1 INTO t85.
      DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t86.
      CLEAR t83.
      IF t85 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t86 ?= t85.
        DATA t87 TYPE REF TO object.
        t87 = t86->as_ref( ).
        t83 ?= t87.
      ELSE.
        t83 ?= t85.
      ENDIF.
      t82 = t83.
      t81 = t82->children.
      t80 ?= t81.
      t80->load( ).
      IF xsdbool( lines( t80->items ) = 1 ) = abap_true.
        DATA t93 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t96 TYPE REF TO zcl_lnt_abstract_node.
        t96 = t58.
        t95 = t96->children.
        t94 ?= t95.
        t93 = t94.
        DATA t100 TYPE REF TO zcl_lnt_abstract_token.
        t100 = t58->get_first_token( ).
        DATA(t103) = VALUE string( ).
        DATA t105 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t105.
        DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t107 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t108 TYPE REF TO zcl_lnt_abstract_node.
        t108 = t58.
        t107 = t108->children.
        t106 ?= t107.
        DATA t112 TYPE REF TO object.
        CLEAR t112.
        t106->load( ).
        CLEAR t112.
        READ TABLE t106->items INDEX 2 INTO t112.
        DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t113.
        CLEAR t105.
        IF t112 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t113 ?= t112.
          DATA t114 TYPE REF TO object.
          t114 = t113->as_ref( ).
          t105 ?= t114.
        ELSE.
          t105 ?= t112.
        ENDIF.
        t103 = t105->concat_tokens( ).
        DATA t116 TYPE string.
        DATA t117 TYPE string.
        t117 = t100->str.
        DATA(t122) = strlen( t117 ).
        t116 = t117.
        IF t116 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t116 TO UPPER CASE.
        ELSE.
          t116 = zlnt_runtime_uppe_91169605024d=>full( t116 ).
        ENDIF.
        IF xsdbool( t116 = |NOT| ) = abap_true.
          DATA t125 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t125.
          DATA t127 TYPE REF TO object.
          CLEAR t127.
          t93->load( ).
          CLEAR t127.
          READ TABLE t93->items INDEX 2 INTO t127.
          DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t128.
          CLEAR t125.
          IF t127 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t128 ?= t127.
            DATA t129 TYPE REF TO object.
            t129 = t128->as_ref( ).
            t125 ?= t129.
          ELSE.
            t125 ?= t127.
          ENDIF.
          t100 = t125->get_first_token( ).
          DATA t131 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t131.
          DATA t132 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t134 TYPE REF TO zcl_lnt_abstract_node.
          t134 = t58.
          t133 = t134->children.
          t132 ?= t133.
          DATA t138 TYPE REF TO object.
          CLEAR t138.
          t132->load( ).
          CLEAR t138.
          READ TABLE t132->items INDEX 3 INTO t138.
          DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t139.
          CLEAR t131.
          IF t138 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t139 ?= t138.
            DATA t140 TYPE REF TO object.
            t140 = t139->as_ref( ).
            t131 ?= t140.
          ELSE.
            t131 ?= t138.
          ENDIF.
          t103 = t131->concat_tokens( ).
        ENDIF.
        DATA t142 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t144 TYPE REF TO zcl_lnt_position.
        t144 = t100->start.
        DATA t150 TYPE REF TO zcl_lnt_abstract_token.
        t150 = t58->get_last_token( ).
        DATA t154 TYPE f.
        t154 = t150->start->row.
        DATA t161 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t161 = t150->start->col.
        DATA t167 TYPE f.
        t167 = strlen( t150->str ).
        DATA(t172) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t172->has = abap_true.
        t172->value = t167.
        t142 = zcl_lnt_edit_helper=>replace_range( i_file = t1 i_start = t144 i_end = NEW zcl_lnt_position( i_row = t154 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t161 right = t172 op = `+` ) ) i_text = t103 ).
        DATA t175 TYPE REF TO zcl_lnt_issue.
        CLEAR t175.
        DATA(t179) = VALUE string( ).
        DATA t180 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t185 TYPE string.
        DATA(t186) = |Searches for expressions where extra parentheses can safely |.
        t186 = t186 && |be removed|.
        t185 = t186.
        DATA t187 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t187.
        DATA t191 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t191.
        t191->load( ).
        APPEND |SingleFile| TO t191->items.
        t191->save( ).
        t191->load( ).
        APPEND |Quickfix| TO t191->items.
        t191->save( ).
        t187 = t191.
        DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t199.
        DATA(t202) = |\nIF ( destination IS INITIAL ).\nENDIF.\nIF foo = boo AND ( ba|.
        t202 = t202 && |r = lar AND moo = loo ).\nENDIF.\n|.
        DATA(t203) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t203->has = abap_true.
        t203->value = t202.
        t199 = t203.
        DATA t205 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t205.
        DATA(t208) = |\nIF destination IS INITIAL.\nENDIF.\nIF foo = boo AND bar = la|.
        t208 = t208 && |r AND moo = loo.\nENDIF.\n|.
        DATA(t209) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t209->has = abap_true.
        t209->value = t208.
        t205 = t209.
        DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t211.
        DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t213.
        DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t215.
        t180 = NEW zcl_lnt_irule_metadata( i_key = |many_parentheses| i_title = |Too many parentheses| i_short_description = t185 i_bad_example = t199 i_good_example = t205 i_extended_information = t211 i_tags = t187 i_pragma = t213 i_pseudo_comment = t215 ).
        CREATE OBJECT t180->zlnt_view_ownkeys_b0e8086400eb.
        t180->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t217.
        t180->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t217 ).
        DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t218.
        IF t180->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t180->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t218 ).
        ENDIF.
        DATA t219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t219.
        IF t180->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t180->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t219 ).
        ENDIF.
        DATA t220 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t220.
        IF t180->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t180->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t220 ).
        ENDIF.
        DATA t221 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t221.
        IF t180->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t180->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t221 ).
        ENDIF.
        DATA t222 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t222.
        IF t180->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t180->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t222 ).
        ENDIF.
        CREATE OBJECT t180->zlnt_json_ownkeys_70e5fd461788.
        t180->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t224.
        t180->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t224 ).
        DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t226.
        IF t180->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t180->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t226 ).
        ENDIF.
        DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t228.
        IF t180->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t180->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t228 ).
        ENDIF.
        DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t230.
        IF t180->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t180->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t230 ).
        ENDIF.
        DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t232.
        IF t180->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t180->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t232 ).
        ENDIF.
        DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t234.
        IF t180->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t180->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t234 ).
        ENDIF.
        t179 = t180->key.
        t175 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t100 i_message_26cb = |Too many parentheses, simple| i_key = t179 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t142 ).
        t2->load( ).
        APPEND t175 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    DATA t243 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t244 TYPE REF TO zcl_lnt_structure_node.
    t244 = t4.
    DATA(t246) = zlnt_runtime_desc_78196487750d=>zlnt_member_d561_0fa14d6404b6.
    t243 = t244->find_all_statements( i_type_9913 = t246 ).
    DATA t247 TYPE REF TO zcl_lnt_statement_node.
    DATA t248 TYPE REF TO object.
    DATA(t249) = VALUE i( ).
    DO.
      t243->load( ).
      IF t249 >= lines( t243->items ).
        EXIT.
      ENDIF.
      CLEAR t248.
      READ TABLE t243->items INDEX t249 + 1 INTO t248.
      t249 = t249 + 1.
      DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t250.
      CLEAR t247.
      IF t248 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t250 ?= t248.
        DATA t251 TYPE REF TO object.
        t251 = t250->as_ref( ).
        t247 ?= t251.
      ELSE.
        t247 ?= t248.
      ENDIF.
      DATA(t252) = VALUE i( ).
      DATA t253 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t253 = me->analyze_move( i_file = t1 i_m = t247 ).
      DATA t256 TYPE REF TO zcl_lnt_issue.
      CLEAR t256.
      DATA t257 TYPE REF TO object.
      CLEAR t257.
      DATA(t258) = VALUE i( ).
      DO.
        t253->load( ).
        IF t258 >= lines( t253->items ).
          EXIT.
        ENDIF.
        CLEAR t257.
        READ TABLE t253->items INDEX t258 + 1 INTO t257.
        t258 = t258 + 1.
        DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t259.
        CLEAR t256.
        IF t257 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t259 ?= t257.
          DATA t260 TYPE REF TO object.
          t260 = t259->as_ref( ).
          t256 ?= t260.
        ELSE.
          t256 ?= t257.
        ENDIF.
        t2->load( ).
        APPEND t256 TO t2->items.
        t2->save( ).
      ENDDO.
      t2->load( ).
      t252 = lines( t2->items ).
    ENDDO.
    DATA t265 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t266 TYPE REF TO zcl_lnt_structure_node.
    t266 = t4.
    DATA(t268) = zlnt_runtime_desc_78196487750d=>zlnt_member_d611_2852a1970316.
    t265 = t266->find_all_statements( i_type_9913 = t268 ).
    DATA t269 TYPE REF TO zcl_lnt_statement_node.
    DATA t270 TYPE REF TO object.
    DATA(t271) = VALUE i( ).
    DO.
      t265->load( ).
      IF t271 >= lines( t265->items ).
        EXIT.
      ENDIF.
      CLEAR t270.
      READ TABLE t265->items INDEX t271 + 1 INTO t270.
      t271 = t271 + 1.
      DATA t272 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t272.
      CLEAR t269.
      IF t270 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t272 ?= t270.
        DATA t273 TYPE REF TO object.
        t273 = t272->as_ref( ).
        t269 ?= t273.
      ELSE.
        t269 ?= t270.
      ENDIF.
      DATA(t274) = VALUE i( ).
      DATA t275 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t275 = me->analyze_into( i_file = t1 i_m = t269 ).
      DATA t278 TYPE REF TO zcl_lnt_issue.
      CLEAR t278.
      DATA t279 TYPE REF TO object.
      CLEAR t279.
      DATA(t280) = VALUE i( ).
      DO.
        t275->load( ).
        IF t280 >= lines( t275->items ).
          EXIT.
        ENDIF.
        CLEAR t279.
        READ TABLE t275->items INDEX t280 + 1 INTO t279.
        t280 = t280 + 1.
        DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t281.
        CLEAR t278.
        IF t279 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t281 ?= t279.
          DATA t282 TYPE REF TO object.
          t282 = t281->as_ref( ).
          t278 ?= t282.
        ELSE.
          t278 ?= t279.
        ENDIF.
        t2->load( ).
        APPEND t278 TO t2->items.
        t2->save( ).
      ENDDO.
      t2->load( ).
      t274 = lines( t2->items ).
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD analyze_into.
    DATA(t1) = i_file.
    DATA(t2) = i_m.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d259_29e6bae3a66c.
    t3 = t2->find_first_expression( i_type_9913 = t6 ).
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t15 TYPE REF TO zcl_lnt_abstract_token.
    DATA t16 TYPE REF TO zcl_lnt_abstract_token.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t17 = t3->get_all_tokens( ).
    DATA t20 TYPE REF TO object.
    t17->load( ).
    READ TABLE t17->items INDEX 2 INTO t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t20 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t21 ?= t20.
      DATA t22 TYPE REF TO object.
      t22 = t21->as_ref( ).
      t16 ?= t22.
    ELSE.
      t16 ?= t20.
    ENDIF.
    t15 = t16.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = VALUE abap_bool( ).
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t24 = xsdbool( t15 IS INITIAL ).
    t23 = t24.
    IF t24 = abap_false.
      t23 = xsdbool( t15->str <> |(| ).
    ENDIF.
    IF t23 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t39 TYPE string.
    t39 = t3->concat_tokens( ).
    DATA(t43) = VALUE abap_bool( ).
    DATA(t44) = VALUE abap_bool( ).
    DATA(t45) = VALUE abap_bool( ).
    DATA(t47) = |)|.
    DATA(t48) = strlen( t39 ).
    DATA t49 TYPE i.
    DATA(t50) = VALUE i( ).
    DATA(t51) = VALUE string( ).
    t49 = strlen( t47 ).
    IF t49 = 0.
      t45 = abap_true.
    ELSEIF t49 <= t48.
      t50 = 0.
      t50 = t48 - t49.
      t51 = t39+t50(t49).
      IF t51 = t47.
        t45 = abap_true.
      ENDIF.
    ENDIF.
    t44 = xsdbool( t45 = abap_true ).
    t43 = t44.
    IF t44 = abap_true.
      DATA(t55) = VALUE i( ).
      DATA(t57) = |,|.
      DATA(t58) = strlen( t39 ).
      IF t57 IS INITIAL.
        t55 = 0.
      ELSE.
        FIND t57 IN t39 MATCH OFFSET t55.
        IF sy-subrc <> 0.
          t55 = -1.
        ENDIF.
      ENDIF.
      t43 = xsdbool( xsdbool( t55 >= 0 ) = abap_false ).
    ENDIF.
    IF t43 = abap_true.
      DATA t62 TYPE REF TO zcl_lnt_issue.
      DATA(t66) = VALUE string( ).
      DATA t67 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t72 TYPE string.
      DATA(t73) = |Searches for expressions where extra parentheses can safely |.
      t73 = t73 && |be removed|.
      t72 = t73.
      DATA t74 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t78 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t78.
      t78->load( ).
      APPEND |SingleFile| TO t78->items.
      t78->save( ).
      t78->load( ).
      APPEND |Quickfix| TO t78->items.
      t78->save( ).
      t74 = t78.
      DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t89) = |\nIF ( destination IS INITIAL ).\nENDIF.\nIF foo = boo AND ( ba|.
      t89 = t89 && |r = lar AND moo = loo ).\nENDIF.\n|.
      DATA(t90) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t90->has = abap_true.
      t90->value = t89.
      t86 = t90.
      DATA(t95) = |\nIF destination IS INITIAL.\nENDIF.\nIF foo = boo AND bar = la|.
      t95 = t95 && |r AND moo = loo.\nENDIF.\n|.
      DATA(t96) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t96->has = abap_true.
      t96->value = t95.
      DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t67 = NEW zcl_lnt_irule_metadata( i_key = |many_parentheses| i_title = |Too many parentheses| i_short_description = t72 i_bad_example = t86 i_good_example = t96 i_extended_information = t98 i_tags = t74 i_pragma = t100 i_pseudo_comment = t102 ).
      CREATE OBJECT t67->zlnt_view_ownkeys_b0e8086400eb.
      t67->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t104 ).
      DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t105 ).
      ENDIF.
      DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t106 ).
      ENDIF.
      DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t107 ).
      ENDIF.
      DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t108 ).
      ENDIF.
      DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t109 ).
      ENDIF.
      CREATE OBJECT t67->zlnt_json_ownkeys_70e5fd461788.
      t67->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t111 ).
      DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t113 ).
      ENDIF.
      DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t115 ).
      ENDIF.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t117 ).
      ENDIF.
      DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t119 ).
      ENDIF.
      DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t121 ).
      ENDIF.
      t66 = t67->key.
      DATA t124 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t125 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t62 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t2 i_message_26cb = |Too many parentheses| i_key = t66 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t124 i_alternative_fixes = t125 ).
      DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t127.
      t127->load( ).
      APPEND t62 TO t127->items.
      t127->save( ).
      result = t127.
      RETURN.
    ENDIF.
    CREATE OBJECT result.

  ENDMETHOD.

  METHOD analyze_move.
    DATA(t1) = i_file.
    DATA(t2) = i_m.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t5 = t2->find_all_expressions_recursive( i_type_9913 = t7 ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA t9 TYPE REF TO object.
    DATA(t10) = VALUE i( ).
    DO.
      t5->load( ).
      IF t10 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t5->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t16 TYPE REF TO zcl_lnt_abstract_node.
      t16 = t8.
      t15 = t16->children.
      t14 ?= t15.
      t13 = t14.
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = VALUE abap_bool( ).
      DATA t23 TYPE abap_bool.
      DATA t24 TYPE abap_bool.
      t13->load( ).
      t24 = xsdbool( lines( t13->items ) = 3 ).
      t23 = t24.
      IF t24 = abap_true.
        DATA(t29) = VALUE string( ).
        DATA t32 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t32.
        DATA t34 TYPE REF TO object.
        CLEAR t34.
        t13->load( ).
        CLEAR t34.
        READ TABLE t13->items INDEX 1 INTO t34.
        DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t35.
        CLEAR t32.
        IF t34 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t35 ?= t34.
          DATA t36 TYPE REF TO object.
          t36 = t35->as_ref( ).
          t32 ?= t36.
        ELSE.
          t32 ?= t34.
        ENDIF.
        t29 = t32->get_first_token( )->str.
        t23 = xsdbool( t29 = |(| ).
      ENDIF.
      t22 = t23.
      IF t23 = abap_true.
        DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t42.
        DATA t43 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t43.
        DATA t45 TYPE REF TO object.
        CLEAR t45.
        t13->load( ).
        CLEAR t45.
        READ TABLE t13->items INDEX 2 INTO t45.
        DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t46.
        CLEAR t43.
        IF t45 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t46 ?= t45.
          DATA t47 TYPE REF TO object.
          t47 = t46->as_ref( ).
          t43 ?= t47.
        ELSE.
          t43 ?= t45.
        ENDIF.
        t42 = t43->get_children( ).
        t42->load( ).
        t22 = xsdbool( lines( t42->items ) = 1 ).
      ENDIF.
      t21 = t22.
      IF t22 = abap_true.
        DATA(t50) = VALUE abap_bool( ).
        DATA(t51) = VALUE string( ).
        DATA t54 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t54.
        DATA t56 TYPE REF TO object.
        CLEAR t56.
        t13->load( ).
        CLEAR t56.
        READ TABLE t13->items INDEX 2 INTO t56.
        DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t57.
        CLEAR t54.
        IF t56 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t57 ?= t56.
          DATA t58 TYPE REF TO object.
          t58 = t57->as_ref( ).
          t54 ?= t58.
        ELSE.
          t54 ?= t56.
        ENDIF.
        t51 = t54->get_first_token( )->str.
        DATA(t61) = |-|.
        DATA(t62) = strlen( t51 ).
        DATA t63 TYPE i.
        DATA(t64) = VALUE i( ).
        DATA(t65) = VALUE string( ).
        t63 = strlen( t61 ).
        IF t63 = 0.
          t50 = abap_true.
        ELSEIF t63 <= t62.
          t64 = 0.
          t65 = t51+t64(t63).
          IF t65 = t61.
            t50 = abap_true.
          ENDIF.
        ENDIF.
        t21 = xsdbool( t50 = abap_false ).
      ENDIF.
      t20 = t21.
      IF t21 = abap_true.
        DATA(t68) = VALUE string( ).
        DATA t71 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t71.
        DATA t73 TYPE REF TO object.
        CLEAR t73.
        t13->load( ).
        CLEAR t73.
        READ TABLE t13->items INDEX 3 INTO t73.
        DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t74.
        CLEAR t71.
        IF t73 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t74 ?= t73.
          DATA t75 TYPE REF TO object.
          t75 = t74->as_ref( ).
          t71 ?= t75.
        ELSE.
          t71 ?= t73.
        ENDIF.
        t68 = t71->get_first_token( )->str.
        t20 = xsdbool( t68 = |)| ).
      ENDIF.
      IF t20 = abap_true.
        DATA t80 TYPE REF TO zcl_lnt_issue.
        CLEAR t80.
        DATA t82 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t82.
        DATA t83 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t83.
        DATA t85 TYPE REF TO object.
        CLEAR t85.
        t13->load( ).
        CLEAR t85.
        READ TABLE t13->items INDEX 1 INTO t85.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        CLEAR t83.
        IF t85 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t86 ?= t85.
          DATA t87 TYPE REF TO object.
          t87 = t86->as_ref( ).
          t83 ?= t87.
        ELSE.
          t83 ?= t85.
        ENDIF.
        t82 = t83->get_first_token( ).
        DATA(t89) = VALUE string( ).
        DATA t90 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t95 TYPE string.
        DATA(t96) = |Searches for expressions where extra parentheses can safely |.
        t96 = t96 && |be removed|.
        t95 = t96.
        DATA t97 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t97.
        DATA t101 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t101.
        t101->load( ).
        APPEND |SingleFile| TO t101->items.
        t101->save( ).
        t101->load( ).
        APPEND |Quickfix| TO t101->items.
        t101->save( ).
        t97 = t101.
        DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t109.
        DATA(t112) = |\nIF ( destination IS INITIAL ).\nENDIF.\nIF foo = boo AND ( ba|.
        t112 = t112 && |r = lar AND moo = loo ).\nENDIF.\n|.
        DATA(t113) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t113->has = abap_true.
        t113->value = t112.
        t109 = t113.
        DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t115.
        DATA(t118) = |\nIF destination IS INITIAL.\nENDIF.\nIF foo = boo AND bar = la|.
        t118 = t118 && |r AND moo = loo.\nENDIF.\n|.
        DATA(t119) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t119->has = abap_true.
        t119->value = t118.
        t115 = t119.
        DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t121.
        DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t123.
        DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t125.
        t90 = NEW zcl_lnt_irule_metadata( i_key = |many_parentheses| i_title = |Too many parentheses| i_short_description = t95 i_bad_example = t109 i_good_example = t115 i_extended_information = t121 i_tags = t97 i_pragma = t123 i_pseudo_comment = t125 ).
        CREATE OBJECT t90->zlnt_view_ownkeys_b0e8086400eb.
        t90->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t127.
        t90->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t127 ).
        DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t128.
        IF t90->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t90->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t128 ).
        ENDIF.
        DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t129.
        IF t90->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t90->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t129 ).
        ENDIF.
        DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t130.
        IF t90->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t90->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t130 ).
        ENDIF.
        DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t131.
        IF t90->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t90->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t131 ).
        ENDIF.
        DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t132.
        IF t90->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t90->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t132 ).
        ENDIF.
        CREATE OBJECT t90->zlnt_json_ownkeys_70e5fd461788.
        t90->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t134.
        t90->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t134 ).
        DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t136.
        IF t90->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t90->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t136 ).
        ENDIF.
        DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t138.
        IF t90->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t90->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t138 ).
        ENDIF.
        DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t140.
        IF t90->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t90->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t140 ).
        ENDIF.
        DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t142.
        IF t90->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t90->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t142 ).
        ENDIF.
        DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t144.
        IF t90->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t90->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t144 ).
        ENDIF.
        t89 = t90->key.
        DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t145 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t147 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t147.
        t80 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t82 i_message_26cb = |Too many parentheses| i_key = t89 i_severity = t145 i_fix = t147 ).
        t3->load( ).
        APPEND t80 TO t3->items.
        t3->save( ).
      ENDIF.
    ENDDO.
    result = t3.

  ENDMETHOD.

  METHOD analyze_condition.
    DATA(t1) = i_file.
    DATA(t2) = i_cond.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE string.
    t5 = ||.
    DATA t7 TYPE abap_bool.
    t7 = abap_false.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zcl_lnt_abstract_node.
    t11 = t2.
    t10 = t11->children.
    t9 ?= t10.
    DATA t15 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t16 TYPE REF TO object.
    DATA(t17) = VALUE i( ).
    DO.
      t9->load( ).
      IF t17 >= lines( t9->items ).
        EXIT.
      ENDIF.
      CLEAR t16.
      READ TABLE t9->items INDEX t17 + 1 INTO t16.
      t17 = t17 + 1.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      CLEAR t15.
      IF t16 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t18 ?= t16.
        DATA t19 TYPE REF TO object.
        t19 = t18->as_ref( ).
        t15 ?= t19.
      ELSE.
        t15 ?= t16.
      ENDIF.
      DATA t20 TYPE string.
      t20 = ||.
      IF xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_token_node ) = abap_true.
        DATA t24 TYPE string.
        DATA t25 TYPE string.
        DATA t28 TYPE REF TO zcl_lnt_token_node.
        DATA t30 TYPE REF TO object.
        t30 = t15.
        t28 ?= t30.
        t25 = t28->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( )->str.
        DATA(t33) = strlen( t25 ).
        t24 = t25.
        IF t24 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t24 TO UPPER CASE.
        ELSE.
          t24 = zlnt_runtime_uppe_91169605024d=>full( t24 ).
        ENDIF.
        t20 = t24.
      ELSE.
        DATA t34 TYPE abap_bool.
        DATA t35 TYPE abap_bool.
        t35 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_expression_node ).
        t34 = t35.
        IF t35 = abap_true.
          DATA t37 TYPE abap_bool.
          DATA t38 TYPE abap_bool.
          DATA t39 TYPE REF TO zif_lnt_statement_runnable.
          DATA t40 TYPE REF TO zcl_lnt_expression_node.
          DATA t42 TYPE REF TO object.
          t42 = t15.
          t40 ?= t42.
          t39 = t40->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
          t38 = xsdbool( t39 IS BOUND AND t39 IS INSTANCE OF zcl_lnt_cond_sub ).
          t37 = t38.
          IF t38 = abap_false.
            DATA t44 TYPE REF TO zif_lnt_statement_runnable.
            DATA t45 TYPE REF TO zcl_lnt_expression_node.
            DATA t47 TYPE REF TO object.
            t47 = t15.
            t45 ?= t47.
            t44 = t45->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
            t37 = xsdbool( t44 IS BOUND AND t44 IS INSTANCE OF zcl_lnt_component_cond_sub ).
          ENDIF.
          t34 = t37.
        ENDIF.
        IF t34 = abap_true.
          DATA t49 TYPE string.
          DATA t50 TYPE string.
          DATA t53 TYPE REF TO zcl_lnt_expression_node.
          DATA t55 TYPE REF TO object.
          t55 = t15.
          t53 ?= t55.
          t50 = t53->get_first_token( )->str.
          DATA(t58) = strlen( t50 ).
          t49 = t50.
          IF t49 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t49 TO UPPER CASE.
          ELSE.
            t49 = zlnt_runtime_uppe_91169605024d=>full( t49 ).
          ENDIF.
          IF xsdbool( t49 = |NOT| ) = abap_true.
            CREATE OBJECT result.
            RETURN.
          ENDIF.
          DATA t61 TYPE REF TO zcl_lnt_expression_node.
          DATA t63 TYPE REF TO zcl_lnt_expression_node.
          DATA t65 TYPE REF TO object.
          t65 = t15.
          t63 ?= t65.
          DATA(t66) = zlnt_runtime_desc_78196487750d=>zlnt_member_d136_17544e6d0837.
          t61 = t63->find_direct_expression( i_type_9913 = t66 ).
          DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t70.
          IF xsdbool( t61 IS INITIAL ) = abap_true.
            DATA t75 TYPE REF TO zcl_lnt_expression_node.
            DATA t77 TYPE REF TO object.
            t77 = t15.
            t75 ?= t77.
            DATA(t78) = zlnt_runtime_desc_78196487750d=>zlnt_member_d133_716522bf3a6a.
            t61 = t75->find_direct_expression( i_type_9913 = t78 ).
          ENDIF.
          DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t82.
          IF xsdbool( t61 IS INITIAL ) = abap_true.
            CREATE OBJECT result.
            RETURN.
          ENDIF.
          t20 = me->find_comparator( i_cond = t61 ).
          IF xsdbool( t20 <> || ) = abap_true.
            t7 = abap_true.
          ENDIF.
        ELSE.
          DATA(t94) = VALUE abap_bool( ).
          DATA(t95) = VALUE abap_bool( ).
          DATA t96 TYPE abap_bool.
          DATA t97 TYPE abap_bool.
          t97 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_expression_node ).
          t96 = t97.
          IF t97 = abap_true.
            DATA t100 TYPE REF TO zif_lnt_statement_runnable.
            DATA t101 TYPE REF TO zcl_lnt_expression_node.
            DATA t103 TYPE REF TO object.
            t103 = t15.
            t101 ?= t103.
            t100 = t101->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
            t96 = xsdbool( t100 IS BOUND AND t100 IS INSTANCE OF zcl_lnt_st_compare ).
          ENDIF.
          t95 = t96.
          IF t96 = abap_true.
            DATA t105 TYPE REF TO zif_lnt_union_daf022d4.
            CLEAR t105.
            DATA t106 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t106.
            DATA t107 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t107.
            DATA t108 TYPE REF TO zif_lnt_node.
            CLEAR t108.
            DATA t109 TYPE REF TO zcl_lnt_abstract_node.
            DATA t110 TYPE REF TO zcl_lnt_expression_node.
            DATA t112 TYPE REF TO object.
            t112 = t15.
            t110 ?= t112.
            t109 = t110.
            DATA t115 TYPE REF TO zif_lnt_node.
            CLEAR t115.
            DATA t116 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t116 = t109->children.
            DATA t118 TYPE REF TO object.
            CLEAR t118.
            t116->load( ).
            CLEAR t118.
            READ TABLE t116->items INDEX 1 INTO t118.
            DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t119.
            CLEAR t115.
            IF t118 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t119 ?= t118.
              DATA t120 TYPE REF TO object.
              t120 = t119->as_ref( ).
              t115 ?= t120.
            ELSE.
              t115 ?= t118.
            ENDIF.
            t108 = t115.
            t107 ?= t108.
            t106 = t107.
            DATA t122 TYPE REF TO zif_lnt_union_daf022d4.
            CLEAR t122.
            IF xsdbool( t106 IS INITIAL ) = abap_true.
              CLEAR t122.
            ELSE.
              DATA t126 TYPE REF TO zif_lnt_union_daf022d4.
              DATA t130 TYPE REF TO object.
              t130 = t106->get_db65( ).
              t126 ?= t130.
              t122 = t126.
            ENDIF.
            t105 = t122.
            t95 = xsdbool( t105 IS BOUND AND t105 IS INSTANCE OF zcl_lnt_st_source ).
          ENDIF.
          t94 = t95.
          IF t95 = abap_true.
            DATA t133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t135 TYPE REF TO zcl_lnt_abstract_node.
            DATA t136 TYPE REF TO zcl_lnt_expression_node.
            DATA t138 TYPE REF TO object.
            t138 = t15.
            t136 ?= t138.
            t135 = t136.
            t134 = t135->children.
            t133 ?= t134.
            t133->load( ).
            t94 = xsdbool( lines( t133->items ) = 3 ).
          ENDIF.
          IF t94 = abap_true.
            DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t142.
            DATA t144 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t144.
            DATA t145 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t145.
            DATA t146 TYPE REF TO zif_lnt_node.
            CLEAR t146.
            DATA t147 TYPE REF TO zcl_lnt_abstract_node.
            DATA t148 TYPE REF TO zcl_lnt_expression_node.
            DATA t150 TYPE REF TO object.
            t150 = t15.
            t148 ?= t150.
            t147 = t148.
            DATA t153 TYPE REF TO zif_lnt_node.
            CLEAR t153.
            DATA t154 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t154 = t147->children.
            DATA t156 TYPE REF TO object.
            CLEAR t156.
            t154->load( ).
            CLEAR t156.
            READ TABLE t154->items INDEX 1 INTO t156.
            DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t157.
            CLEAR t153.
            IF t156 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t157 ?= t156.
              DATA t158 TYPE REF TO object.
              t158 = t157->as_ref( ).
              t153 ?= t158.
            ELSE.
              t153 ?= t156.
            ENDIF.
            t146 = t153.
            t145 ?= t146.
            t144 = t145.
            DATA t160 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t160.
            IF xsdbool( t144 IS INITIAL ) = abap_true.
              CLEAR t160.
            ELSE.
              DATA t164 TYPE string.
              t164 = t144->concat_tokens( ).
              DATA(t167) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t167->has = abap_true.
              t167->value = t164.
              t160 = t167.
            ENDIF.
            t142 = t160.
            DATA(t168) = VALUE abap_bool( ).
            DATA(t169) = VALUE abap_bool( ).
            DATA t170 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t170.
            DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t171 = t142.
            DATA t173 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t173.
            DATA(t174) = VALUE abap_bool( ).
            IF t171 IS INITIAL.
              t174 = abap_true.
            ELSEIF t171->has = abap_false.
              t174 = abap_true.
            ENDIF.
            IF t174 = abap_true.
              CLEAR t173.
            ELSE.
              DATA(t177) = VALUE abap_bool( ).
              DATA t178 TYPE string.
              t178 = t171->value.
              DATA(t180) = |(|.
              DATA(t181) = strlen( t178 ).
              DATA t182 TYPE i.
              DATA(t183) = VALUE i( ).
              DATA(t184) = VALUE string( ).
              t182 = strlen( t180 ).
              IF t182 = 0.
                t177 = abap_true.
              ELSEIF t182 <= t181.
                t183 = 0.
                t184 = t178+t183(t182).
                IF t184 = t180.
                  t177 = abap_true.
                ENDIF.
              ENDIF.
              DATA(t185) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t185->has = abap_true.
              t185->value = t177.
              t173 = t185.
            ENDIF.
            t170 = t173.
            IF t170 IS BOUND.
              IF t170->has = abap_true.
                t169 = xsdbool( t170->value IS NOT INITIAL ).
              ENDIF.
            ENDIF.
            t168 = t169.
            IF t169 = abap_true.
              DATA(t186) = VALUE abap_bool( ).
              DATA t187 TYPE string.
              t187 = t142->value.
              DATA(t189) = |)|.
              DATA(t190) = strlen( t187 ).
              DATA t191 TYPE i.
              DATA(t192) = VALUE i( ).
              DATA(t193) = VALUE string( ).
              t191 = strlen( t189 ).
              IF t191 = 0.
                t186 = abap_true.
              ELSEIF t191 <= t190.
                t192 = 0.
                t192 = t190 - t191.
                t193 = t187+t192(t191).
                IF t193 = t189.
                  t186 = abap_true.
                ENDIF.
              ENDIF.
              t168 = t186.
            ENDIF.
            IF t168 = abap_true.
              DATA t197 TYPE REF TO zcl_lnt_issue.
              CLEAR t197.
              DATA t199 TYPE REF TO zcl_lnt_abstract_token.
              DATA t200 TYPE REF TO zcl_lnt_expression_node.
              DATA t202 TYPE REF TO object.
              t202 = t15.
              t200 ?= t202.
              t199 = t200->get_first_token( ).
              DATA(t204) = VALUE string( ).
              DATA t205 TYPE REF TO zcl_lnt_irule_metadata.
              DATA t210 TYPE string.
              DATA(t211) = |Searches for expressions where extra parentheses can safely |.
              t211 = t211 && |be removed|.
              t210 = t211.
              DATA t212 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t212.
              DATA t216 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t216.
              t216->load( ).
              APPEND |SingleFile| TO t216->items.
              t216->save( ).
              t216->load( ).
              APPEND |Quickfix| TO t216->items.
              t216->save( ).
              t212 = t216.
              DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t224.
              DATA(t227) = |\nIF ( destination IS INITIAL ).\nENDIF.\nIF foo = boo AND ( ba|.
              t227 = t227 && |r = lar AND moo = loo ).\nENDIF.\n|.
              DATA(t228) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t228->has = abap_true.
              t228->value = t227.
              t224 = t228.
              DATA t230 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t230.
              DATA(t233) = |\nIF destination IS INITIAL.\nENDIF.\nIF foo = boo AND bar = la|.
              t233 = t233 && |r AND moo = loo.\nENDIF.\n|.
              DATA(t234) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t234->has = abap_true.
              t234->value = t233.
              t230 = t234.
              DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t236.
              DATA t238 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t238.
              DATA t240 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t240.
              t205 = NEW zcl_lnt_irule_metadata( i_key = |many_parentheses| i_title = |Too many parentheses| i_short_description = t210 i_bad_example = t224 i_good_example = t230 i_extended_information = t236 i_tags = t212 i_pragma = t238 i_pseudo_comment = t240 ).
              CREATE OBJECT t205->zlnt_view_ownkeys_b0e8086400eb.
              t205->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t242.
              t205->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t242 ).
              DATA t243 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t243.
              IF t205->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t205->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t243 ).
              ENDIF.
              DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t244.
              IF t205->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t205->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t244 ).
              ENDIF.
              DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t245.
              IF t205->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t205->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t245 ).
              ENDIF.
              DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t246.
              IF t205->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t205->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t246 ).
              ENDIF.
              DATA t247 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t247.
              IF t205->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t205->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t247 ).
              ENDIF.
              CREATE OBJECT t205->zlnt_json_ownkeys_70e5fd461788.
              t205->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t249.
              t205->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t249 ).
              DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t251.
              IF t205->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t205->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t251 ).
              ENDIF.
              DATA t253 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t253.
              IF t205->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t205->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t253 ).
              ENDIF.
              DATA t255 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t255.
              IF t205->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t205->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t255 ).
              ENDIF.
              DATA t257 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t257.
              IF t205->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t205->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t257 ).
              ENDIF.
              DATA t259 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t259.
              IF t205->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t205->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t259 ).
              ENDIF.
              t204 = t205->key.
              DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t260 = me->conf->zlnt_view_read_sr_15c06369f827( ).
              DATA t262 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t262.
              t197 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t199 i_message_26cb = |Parentheses can be removed| i_key = t204 i_severity = t260 i_fix = t262 ).
              t3->load( ).
              APPEND t197 TO t3->items.
              t3->save( ).
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      IF xsdbool( t5 = || ) = abap_true.
        t5 = t20.
      ELSE.
        DATA(t269) = VALUE abap_bool( ).
        DATA t270 TYPE abap_bool.
        DATA t271 TYPE abap_bool.
        t271 = xsdbool( t5 <> || ).
        t270 = t271.
        IF t271 = abap_true.
          t270 = xsdbool( t20 <> || ).
        ENDIF.
        t269 = t270.
        IF t270 = abap_true.
          t269 = xsdbool( t5 <> t20 ).
        ENDIF.
        IF t269 = abap_true.
          CREATE OBJECT result.
          RETURN.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t281) = VALUE abap_bool( ).
    DATA t282 TYPE abap_bool.
    DATA t283 TYPE abap_bool.
    t283 = xsdbool( t5 <> || ).
    t282 = t283.
    IF t283 = abap_true.
      t282 = xsdbool( t5 <> |MIXED| ).
    ENDIF.
    t281 = t282.
    IF t282 = abap_true.
      t281 = xsdbool( t7 = abap_true ).
    ENDIF.
    IF t281 = abap_true.
      DATA t295 TYPE REF TO zcl_lnt_issue.
      DATA t297 TYPE REF TO zcl_lnt_abstract_token.
      t297 = t2->get_first_token( ).
      DATA(t300) = VALUE string( ).
      DATA t301 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t306 TYPE string.
      DATA(t307) = |Searches for expressions where extra parentheses can safely |.
      t307 = t307 && |be removed|.
      t306 = t307.
      DATA t308 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t312 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t312.
      t312->load( ).
      APPEND |SingleFile| TO t312->items.
      t312->save( ).
      t312->load( ).
      APPEND |Quickfix| TO t312->items.
      t312->save( ).
      t308 = t312.
      DATA t320 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t323) = |\nIF ( destination IS INITIAL ).\nENDIF.\nIF foo = boo AND ( ba|.
      t323 = t323 && |r = lar AND moo = loo ).\nENDIF.\n|.
      DATA(t324) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t324->has = abap_true.
      t324->value = t323.
      t320 = t324.
      DATA(t329) = |\nIF destination IS INITIAL.\nENDIF.\nIF foo = boo AND bar = la|.
      t329 = t329 && |r AND moo = loo.\nENDIF.\n|.
      DATA(t330) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t330->has = abap_true.
      t330->value = t329.
      DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t301 = NEW zcl_lnt_irule_metadata( i_key = |many_parentheses| i_title = |Too many parentheses| i_short_description = t306 i_bad_example = t320 i_good_example = t330 i_extended_information = t332 i_tags = t308 i_pragma = t334 i_pseudo_comment = t336 ).
      CREATE OBJECT t301->zlnt_view_ownkeys_b0e8086400eb.
      t301->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t338 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t338 ).
      DATA t339 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t339 ).
      ENDIF.
      DATA t340 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t340 ).
      ENDIF.
      DATA t341 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t341 ).
      ENDIF.
      DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t342 ).
      ENDIF.
      DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t301->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t301->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t343 ).
      ENDIF.
      CREATE OBJECT t301->zlnt_json_ownkeys_70e5fd461788.
      t301->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t345 ).
      DATA t347 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t347 ).
      ENDIF.
      DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t349 ).
      ENDIF.
      DATA t351 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t351 ).
      ENDIF.
      DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t353 ).
      ENDIF.
      DATA t355 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t301->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t301->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t355 ).
      ENDIF.
      t300 = t301->key.
      DATA t358 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      t295 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t297 i_message_26cb = |Too many parentheses, complex| i_key = t300 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t358 ).
      t3->load( ).
      APPEND t295 TO t3->items.
      t3->save( ).
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD find_comparator.
    DATA t2 TYPE string.
    t2 = ||.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zcl_lnt_abstract_node.
    t7 = i_cond.
    t6 = t7->children.
    t5 ?= t6.
    t4 = t5.
    DATA t12 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t13 TYPE REF TO object.
    DATA(t14) = VALUE i( ).
    DO.
      t4->load( ).
      IF t14 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t4->items INDEX t14 + 1 INTO t13.
      t14 = t14 + 1.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      CLEAR t12.
      IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t15 ?= t13.
        DATA t16 TYPE REF TO object.
        t16 = t15->as_ref( ).
        t12 ?= t16.
      ELSE.
        t12 ?= t13.
      ENDIF.
      IF xsdbool( t12 IS BOUND AND t12 IS INSTANCE OF zcl_lnt_token_node ) = abap_true.
        DATA(t19) = VALUE string( ).
        DATA t20 TYPE string.
        DATA t21 TYPE string.
        DATA t24 TYPE REF TO zcl_lnt_token_node.
        DATA t26 TYPE REF TO object.
        t26 = t12.
        t24 ?= t26.
        t21 = t24->gt_in_sr_ab_nd_tk_nd_ts_tkn_nd( )->str.
        DATA(t29) = strlen( t21 ).
        t20 = t21.
        IF t20 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t20 TO UPPER CASE.
        ELSE.
          t20 = zlnt_runtime_uppe_91169605024d=>full( t20 ).
        ENDIF.
        t19 = t20.
        IF xsdbool( t2 = || ) = abap_true.
          t2 = t19.
        ELSE.
          IF xsdbool( t19 <> t2 ) = abap_true.
            result = |MIXED|.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_many_parentheses_conf( me->gt_cn_in_sr_rl_mn_pr_ts_mn_prn( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_many_parentheses_conf( me->gt_cn_in_sr_rl_mn_pr_ts_mn_prn( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_many_parentheses_conf.
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
        t1 = NEW zcl_lnt_many_parentheses_conf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_mn_pr_ts_mn_prn( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->rn_pr_in_sr_rl_mn_pr_ts_mn_prn( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1577_46edd72fe47d.
  ENDMETHOD.
ENDCLASS.
