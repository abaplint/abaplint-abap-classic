* TS: src/rules/max_one_method_parameter_per_line.ts:13:1 MaxOneMethodParameterPerLine
CLASS zcl_lnt_mx_on_mthd_prmtr_pr_ln DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_mx_on_mt_prm_pr_ln_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_m_o_m_p_p_l_t_m_o_m RETURNING VALUE(result) TYPE REF TO zcl_lnt_mx_on_mt_prm_pr_ln_cnf.
    METHODS s_c_i_s_r_m_o_m_p_p_l_t_m_o_m IMPORTING i_conf TYPE REF TO zcl_lnt_mx_on_mt_prm_pr_ln_cnf.
    METHODS r_p_i_s_r_m_o_m_p_p_l_t_m_o_m IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_mx_on_mthd_prmtr_pr_ln IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_mx_on_mt_prm_pr_ln_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
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
    APPEND |Whitespace| TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t23) = |\nMETHODS apps_scope_token\n  IMPORTING\n    body TYPE bodyapps|.
    t23 = t23 && |_scope_token client_id TYPE str.|.
    DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t24->has = abap_true.
    t24->value = t23.
    t20 = t24.
    DATA(t29) = |\nMETHODS apps_scope_token\n  IMPORTING\n    body      TYPE bod|.
    t29 = t29 && |yapps_scope_token\n    client_id TYPE str.|.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t29.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |max_one_method_parameter_per_line| i_title = |Max one method parameter definition per line| i_short_description = |Keep max one method parameter description per line| i_bad_example = t20 i_good_example = t30 i_extended_information = t32 i_tags = t8 i_pragma = t34 i_pseudo_comment = t36 ).
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

  METHOD g_c_i_s_r_m_o_m_p_p_l_t_m_o_m.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_m_o_m_p_p_l_t_m_o_m.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_m_o_m_p_p_l_t_m_o_m.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zcl_lnt_structure_node.
    t7 = t1->structure.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t7 IS INITIAL ) = abap_true.
    ELSE.
      DATA t18 TYPE REF TO zcl_lnt_structure_node.
      t18 = t7.
      DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d553_51f8e3543d58.
      t13 = t18->find_all_statements( i_type_9913 = t20 ).
    ENDIF.
    t5 = t13.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t5 IS BOUND ) = abap_true.
      t21 = t5.
    ELSE.
      CREATE OBJECT t21.
    ENDIF.
    t4 = t21.
    DATA t27 TYPE REF TO zcl_lnt_statement_node.
    DATA t28 TYPE REF TO object.
    DATA(t29) = VALUE i( ).
    DO.
      t4->load( ).
      IF t29 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t28.
      READ TABLE t4->items INDEX t29 + 1 INTO t28.
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
      DATA t32 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t32.
      DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d230_9e8d73de9f81.
      t34 = t27->find_all_expressions( i_type_9913 = t36 ).
      DATA t37 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t37.
      DATA t38 TYPE REF TO object.
      CLEAR t38.
      DATA(t39) = VALUE i( ).
      DO.
        t34->load( ).
        IF t39 >= lines( t34->items ).
          EXIT.
        ENDIF.
        CLEAR t38.
        READ TABLE t34->items INDEX t39 + 1 INTO t38.
        t39 = t39 + 1.
        DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t40.
        CLEAR t37.
        IF t38 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t40 ?= t38.
          DATA t41 TYPE REF TO object.
          t41 = t40->as_ref( ).
          t37 ?= t41.
        ELSE.
          t37 ?= t38.
        ENDIF.
        DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t45.
        IF xsdbool( t32 IS INITIAL ) = abap_true.
          t32 = t37.
          CONTINUE.
        ENDIF.
        DATA t54 TYPE f.
        DATA t61 TYPE REF TO zcl_lnt_position.
        t61 = t32->get_first_token( )->start.
        t54 = t61->row.
        DATA t71 TYPE REF TO zcl_lnt_position.
        t71 = t37->get_first_token( )->start.
        IF xsdbool( t54 = t71->row ) = abap_true.
          DATA t76 TYPE REF TO zcl_lnt_issue.
          CLEAR t76.
          DATA t78 TYPE REF TO zcl_lnt_abstract_token.
          t78 = t32->get_first_token( ).
          DATA(t81) = VALUE string( ).
          DATA t82 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t89 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t89.
          DATA t93 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t93.
          t93->load( ).
          APPEND |SingleFile| TO t93->items.
          t93->save( ).
          t93->load( ).
          APPEND |Whitespace| TO t93->items.
          t93->save( ).
          t89 = t93.
          DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t101.
          DATA(t104) = |\nMETHODS apps_scope_token\n  IMPORTING\n    body TYPE bodyapps|.
          t104 = t104 && |_scope_token client_id TYPE str.|.
          DATA(t105) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t105->has = abap_true.
          t105->value = t104.
          t101 = t105.
          DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t107.
          DATA(t110) = |\nMETHODS apps_scope_token\n  IMPORTING\n    body      TYPE bod|.
          t110 = t110 && |yapps_scope_token\n    client_id TYPE str.|.
          DATA(t111) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t111->has = abap_true.
          t111->value = t110.
          t107 = t111.
          DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t113.
          DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t115.
          DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t117.
          t82 = NEW zcl_lnt_irule_metadata( i_key = |max_one_method_parameter_per_line| i_title = |Max one method parameter definition per line| i_short_description = |Keep max one method parameter description per line| i_bad_example = t101 i_good_example = t107 i_extended_information = t113 i_tags = t89 i_pragma = t115 i_pseudo_comment = t117 ).
          CREATE OBJECT t82->zlnt_view_ownkeys_b0e8086400eb.
          t82->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t119.
          t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t119 ).
          DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t120.
          IF t82->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t120 ).
          ENDIF.
          DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t121.
          IF t82->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t121 ).
          ENDIF.
          DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t122.
          IF t82->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t122 ).
          ENDIF.
          DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t123.
          IF t82->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t123 ).
          ENDIF.
          DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t124.
          IF t82->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t124 ).
          ENDIF.
          CREATE OBJECT t82->zlnt_json_ownkeys_70e5fd461788.
          t82->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t126.
          t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t126 ).
          DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t128.
          IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t128 ).
          ENDIF.
          DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t130.
          IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t130 ).
          ENDIF.
          DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t132.
          IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t132 ).
          ENDIF.
          DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t134.
          IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t134 ).
          ENDIF.
          DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t136.
          IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t136 ).
          ENDIF.
          t81 = t82->title.
          DATA(t137) = VALUE string( ).
          DATA t138 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t145 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t145.
          DATA t149 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t149.
          t149->load( ).
          APPEND |SingleFile| TO t149->items.
          t149->save( ).
          t149->load( ).
          APPEND |Whitespace| TO t149->items.
          t149->save( ).
          t145 = t149.
          DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t157.
          DATA(t160) = |\nMETHODS apps_scope_token\n  IMPORTING\n    body TYPE bodyapps|.
          t160 = t160 && |_scope_token client_id TYPE str.|.
          DATA(t161) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t161->has = abap_true.
          t161->value = t160.
          t157 = t161.
          DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t163.
          DATA(t166) = |\nMETHODS apps_scope_token\n  IMPORTING\n    body      TYPE bod|.
          t166 = t166 && |yapps_scope_token\n    client_id TYPE str.|.
          DATA(t167) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t167->has = abap_true.
          t167->value = t166.
          t163 = t167.
          DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t169.
          DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t171.
          DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t173.
          t138 = NEW zcl_lnt_irule_metadata( i_key = |max_one_method_parameter_per_line| i_title = |Max one method parameter definition per line| i_short_description = |Keep max one method parameter description per line| i_bad_example = t157 i_good_example = t163 i_extended_information = t169 i_tags = t145 i_pragma = t171 i_pseudo_comment = t173 ).
          CREATE OBJECT t138->zlnt_view_ownkeys_b0e8086400eb.
          t138->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t175.
          t138->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t175 ).
          DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t176.
          IF t138->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t138->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t176 ).
          ENDIF.
          DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t177.
          IF t138->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t138->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t177 ).
          ENDIF.
          DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t178.
          IF t138->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t138->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t178 ).
          ENDIF.
          DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t179.
          IF t138->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t138->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t179 ).
          ENDIF.
          DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t180.
          IF t138->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t138->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t180 ).
          ENDIF.
          CREATE OBJECT t138->zlnt_json_ownkeys_70e5fd461788.
          t138->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t182.
          t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t182 ).
          DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t184.
          IF t138->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t184 ).
          ENDIF.
          DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t186.
          IF t138->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t186 ).
          ENDIF.
          DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t188.
          IF t138->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t188 ).
          ENDIF.
          DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t190.
          IF t138->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t190 ).
          ENDIF.
          DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t192.
          IF t138->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t192 ).
          ENDIF.
          t137 = t138->key.
          DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t193 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t195 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t195.
          t76 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t78 i_message_26cb = t81 i_key = t137 i_severity = t193 i_fix = t195 ).
          t2->load( ).
          APPEND t76 TO t2->items.
          t2->save( ).
        ENDIF.
        t32 = t37.
      ENDDO.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_mx_on_mt_prm_pr_ln_cnf( me->g_c_i_s_r_m_o_m_p_p_l_t_m_o_m( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_mx_on_mt_prm_pr_ln_cnf( me->g_c_i_s_r_m_o_m_p_p_l_t_m_o_m( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_mx_on_mt_prm_pr_ln_cnf.
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
        t1 = NEW zcl_lnt_mx_on_mt_prm_pr_ln_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_m_o_m_p_p_l_t_m_o_m( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_m_o_m_p_p_l_t_m_o_m( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1579_6856162fce5a.
  ENDMETHOD.
ENDCLASS.
