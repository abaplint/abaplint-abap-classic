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
    DATA(t1) = NEW zcl_lnt_mx_on_mt_prm_pr_ln_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |max_one_method_parameter_per_line|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Max one method parameter definition per line|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Keep max one method parameter description per line|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t13.
      t12 = t13.
      DATA(t14) = t12.
      DATA(t15) = |SingleFile|.
      t14->load( ).
      APPEND t15 TO t14->items.
      t14->save( ).
      DATA(t16) = t12.
      DATA(t17) = |Whitespace|.
      t16->load( ).
      APPEND t17 TO t16->items.
      t16->save( ).
      DATA(t18) = t12.
      t11 = t18.
      t9 = t11.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t19.
      t9 = t19.
    ENDIF.
    t8 = t9.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA(t22) = abap_true.
    IF t22 = abap_true.
      DATA(t23) = |\nMETHODS apps_scope_token\n  IMPORTING\n    body TYPE bodyapps|.
      t23 = t23 && |_scope_token client_id TYPE str.|.
      DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t24->has = abap_true.
      t24->value = t23.
      t21 = t24.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      t21 = t25.
    ENDIF.
    t20 = t21.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA(t29) = |\nMETHODS apps_scope_token\n  IMPORTING\n    body      TYPE bod|.
      t29 = t29 && |yapps_scope_token\n    client_id TYPE str.|.
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
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    t32 = t33.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    t34 = t35.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t36 = t37.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t20 i_good_example = t26 i_extended_information = t32 i_tags = t8 i_pragma = t34 i_pseudo_comment = t36 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t43 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t44) = |key|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
    ENDIF.
    DATA(t46) = |title|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = |shortDescription|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |tags|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |badExample|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    DATA(t54) = |goodExample|.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_m_o_m_p_p_l_t_m_o_m.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_m_o_m_p_p_l_t_m_o_m.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_m_o_m_p_p_l_t_m_o_m.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_structure_node.
    DATA t8 TYPE REF TO zcl_lnt_structure_node.
    DATA t9 TYPE REF TO zcl_lnt_abap_file.
    DATA(t10) = t1.
    t9 = t10.
    DATA t11 TYPE REF TO zcl_lnt_structure_node.
    DATA(t12) = t9.
    t11 = t12->structure.
    t8 = t11.
    t7 = t8.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t13.
    DATA(t14) = VALUE abap_bool( ).
    DATA(t15) = t7.
    IF t15 IS INITIAL.
      t14 = abap_true.
    ENDIF.
    IF t14 = abap_true.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t16.
      t13 = t16.
    ELSE.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t18 TYPE REF TO zcl_lnt_structure_node.
      DATA(t19) = t7.
      t18 = t19.
      DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d553_51f8e3543d58.
      t17 = t18->find_all_statements( i_type_9913 = t20 ).
      t13 = t17.
    ENDIF.
    t6 = t13.
    t5 = t6.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t21.
    DATA t22 TYPE abap_bool.
    DATA(t23) = t5.
    t22 = xsdbool( t23 IS BOUND ).
    IF t22 = abap_true.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t25) = t5.
      t24 = t25.
      t21 = t24.
    ELSE.
      DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t26.
      t21 = t26.
    ENDIF.
    t4 = t21.
    DATA t27 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t27.
    DATA t28 TYPE REF TO object.
    CLEAR t28.
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
      DATA t33 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t33.
      t32 = t33.
      DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t35) = t27.
      DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d230_9e8d73de9f81.
      t34 = t35->find_all_expressions( i_type_9913 = t36 ).
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
        DATA(t42) = VALUE abap_bool( ).
        DATA t43 TYPE REF TO zcl_lnt_expression_node.
        DATA(t44) = t32.
        t43 = t44.
        DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t46.
        t45 = t46.
        DATA(t47) = VALUE abap_bool( ).
        DATA(t48) = t43.
        IF t48 IS INITIAL.
          t47 = abap_true.
        ENDIF.
        t42 = t47.
        IF t42 = abap_true.
          DATA t49 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t49.
          DATA(t50) = abap_true.
          IF t50 = abap_true.
            DATA(t51) = t37.
            t49 = t51.
          ELSE.
            DATA t52 TYPE REF TO zcl_lnt_expression_node.
            CLEAR t52.
            t49 = t52.
          ENDIF.
          t32 = t49.
          CONTINUE.
        ENDIF.
        DATA t53 TYPE abap_bool.
        DATA t54 TYPE f.
        DATA t55 TYPE REF TO zcl_lnt_position.
        DATA t56 TYPE REF TO zcl_lnt_position.
        DATA t57 TYPE REF TO zcl_lnt_abstract_token.
        DATA t58 TYPE REF TO zcl_lnt_abstract_token.
        DATA t59 TYPE REF TO zcl_lnt_expression_node.
        DATA(t60) = t32.
        t59 = t60.
        t58 = t59->get_first_token( ).
        t57 = t58.
        DATA t61 TYPE REF TO zcl_lnt_position.
        DATA(t62) = t57.
        t61 = t62->start.
        t56 = t61.
        t55 = t56.
        DATA t63 TYPE f.
        DATA(t64) = t55.
        t63 = t64->row.
        t54 = t63.
        DATA t65 TYPE f.
        DATA t66 TYPE REF TO zcl_lnt_position.
        DATA t67 TYPE REF TO zcl_lnt_position.
        DATA t68 TYPE REF TO zcl_lnt_abstract_token.
        DATA t69 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t70) = t37.
        t69 = t70->get_first_token( ).
        t68 = t69.
        DATA t71 TYPE REF TO zcl_lnt_position.
        DATA(t72) = t68.
        t71 = t72->start.
        t67 = t71.
        t66 = t67.
        DATA t73 TYPE f.
        DATA(t74) = t66.
        t73 = t74->row.
        t65 = t73.
        t53 = xsdbool( t54 = t65 ).
        IF t53 = abap_true.
          DATA t75 TYPE REF TO zcl_lnt_issue.
          CLEAR t75.
          DATA t76 TYPE REF TO zcl_lnt_issue.
          CLEAR t76.
          DATA(t77) = t1.
          DATA t78 TYPE REF TO zcl_lnt_abstract_token.
          DATA t79 TYPE REF TO zcl_lnt_expression_node.
          DATA(t80) = t32.
          t79 = t80.
          t78 = t79->get_first_token( ).
          DATA(t81) = VALUE string( ).
          DATA t82 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t82.
          DATA t83 TYPE string.
          DATA(t84) = |max_one_method_parameter_per_line|.
          t83 = t84.
          DATA t85 TYPE string.
          DATA(t86) = |Max one method parameter definition per line|.
          t85 = t86.
          DATA t87 TYPE string.
          DATA(t88) = |Keep max one method parameter description per line|.
          t87 = t88.
          DATA t89 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t89.
          DATA t90 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t90.
          DATA(t91) = abap_true.
          IF t91 = abap_true.
            DATA t92 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t93 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t94 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t94.
            t93 = t94.
            DATA(t95) = t93.
            DATA(t96) = |SingleFile|.
            t95->load( ).
            APPEND t96 TO t95->items.
            t95->save( ).
            DATA(t97) = t93.
            DATA(t98) = |Whitespace|.
            t97->load( ).
            APPEND t98 TO t97->items.
            t97->save( ).
            DATA(t99) = t93.
            t92 = t99.
            t90 = t92.
          ELSE.
            DATA t100 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t100.
            t90 = t100.
          ENDIF.
          t89 = t90.
          DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t101.
          DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t102.
          DATA(t103) = abap_true.
          IF t103 = abap_true.
            DATA(t104) = |\nMETHODS apps_scope_token\n  IMPORTING\n    body TYPE bodyapps|.
            t104 = t104 && |_scope_token client_id TYPE str.|.
            DATA(t105) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t105->has = abap_true.
            t105->value = t104.
            t102 = t105.
          ELSE.
            DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t106.
            t102 = t106.
          ENDIF.
          t101 = t102.
          DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t107.
          DATA t108 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t108.
          DATA(t109) = abap_true.
          IF t109 = abap_true.
            DATA(t110) = |\nMETHODS apps_scope_token\n  IMPORTING\n    body      TYPE bod|.
            t110 = t110 && |yapps_scope_token\n    client_id TYPE str.|.
            DATA(t111) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t111->has = abap_true.
            t111->value = t110.
            t108 = t111.
          ELSE.
            DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t112.
            t108 = t112.
          ENDIF.
          t107 = t108.
          DATA t113 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t114.
          t113 = t114.
          DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t116.
          t115 = t116.
          DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t118.
          t117 = t118.
          t82 = NEW zcl_lnt_irule_metadata( i_key = t83 i_title = t85 i_short_description = t87 i_bad_example = t101 i_good_example = t107 i_extended_information = t113 i_tags = t89 i_pragma = t115 i_pseudo_comment = t117 ).
          CREATE OBJECT t82->zlnt_view_ownkeys_b0e8086400eb.
          t82->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t119.
          IF t82->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t82->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t119 ).
          ENDIF.
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
          DATA(t125) = |key|.
          DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t126.
          IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = t125 p1 = t126 ).
          ENDIF.
          DATA(t127) = |title|.
          DATA t128 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t128.
          IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = t127 p1 = t128 ).
          ENDIF.
          DATA(t129) = |shortDescription|.
          DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t130.
          IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = t129 p1 = t130 ).
          ENDIF.
          DATA(t131) = |tags|.
          DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t132.
          IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = t131 p1 = t132 ).
          ENDIF.
          DATA(t133) = |badExample|.
          DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t134.
          IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = t133 p1 = t134 ).
          ENDIF.
          DATA(t135) = |goodExample|.
          DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t136.
          IF t82->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t82->zlnt_json_ownkeys_70e5fd461788->put( p0 = t135 p1 = t136 ).
          ENDIF.
          t81 = t82->title.
          DATA(t137) = VALUE string( ).
          DATA t138 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t138.
          DATA t139 TYPE string.
          DATA(t140) = |max_one_method_parameter_per_line|.
          t139 = t140.
          DATA t141 TYPE string.
          DATA(t142) = |Max one method parameter definition per line|.
          t141 = t142.
          DATA t143 TYPE string.
          DATA(t144) = |Keep max one method parameter description per line|.
          t143 = t144.
          DATA t145 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t145.
          DATA t146 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t146.
          DATA(t147) = abap_true.
          IF t147 = abap_true.
            DATA t148 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t149 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t150 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t150.
            t149 = t150.
            DATA(t151) = t149.
            DATA(t152) = |SingleFile|.
            t151->load( ).
            APPEND t152 TO t151->items.
            t151->save( ).
            DATA(t153) = t149.
            DATA(t154) = |Whitespace|.
            t153->load( ).
            APPEND t154 TO t153->items.
            t153->save( ).
            DATA(t155) = t149.
            t148 = t155.
            t146 = t148.
          ELSE.
            DATA t156 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t156.
            t146 = t156.
          ENDIF.
          t145 = t146.
          DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t157.
          DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t158.
          DATA(t159) = abap_true.
          IF t159 = abap_true.
            DATA(t160) = |\nMETHODS apps_scope_token\n  IMPORTING\n    body TYPE bodyapps|.
            t160 = t160 && |_scope_token client_id TYPE str.|.
            DATA(t161) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t161->has = abap_true.
            t161->value = t160.
            t158 = t161.
          ELSE.
            DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t162.
            t158 = t162.
          ENDIF.
          t157 = t158.
          DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t163.
          DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t164.
          DATA(t165) = abap_true.
          IF t165 = abap_true.
            DATA(t166) = |\nMETHODS apps_scope_token\n  IMPORTING\n    body      TYPE bod|.
            t166 = t166 && |yapps_scope_token\n    client_id TYPE str.|.
            DATA(t167) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t167->has = abap_true.
            t167->value = t166.
            t164 = t167.
          ELSE.
            DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t168.
            t164 = t168.
          ENDIF.
          t163 = t164.
          DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t170.
          t169 = t170.
          DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t172 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t172.
          t171 = t172.
          DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t174.
          t173 = t174.
          t138 = NEW zcl_lnt_irule_metadata( i_key = t139 i_title = t141 i_short_description = t143 i_bad_example = t157 i_good_example = t163 i_extended_information = t169 i_tags = t145 i_pragma = t171 i_pseudo_comment = t173 ).
          CREATE OBJECT t138->zlnt_view_ownkeys_b0e8086400eb.
          t138->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t175.
          IF t138->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t138->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t175 ).
          ENDIF.
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
          DATA(t181) = |key|.
          DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t182.
          IF t138->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = t181 p1 = t182 ).
          ENDIF.
          DATA(t183) = |title|.
          DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t184.
          IF t138->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = t183 p1 = t184 ).
          ENDIF.
          DATA(t185) = |shortDescription|.
          DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t186.
          IF t138->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = t185 p1 = t186 ).
          ENDIF.
          DATA(t187) = |tags|.
          DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t188.
          IF t138->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = t187 p1 = t188 ).
          ENDIF.
          DATA(t189) = |badExample|.
          DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t190.
          IF t138->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = t189 p1 = t190 ).
          ENDIF.
          DATA(t191) = |goodExample|.
          DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t192.
          IF t138->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t138->zlnt_json_ownkeys_70e5fd461788->put( p0 = t191 p1 = t192 ).
          ENDIF.
          t137 = t138->key.
          DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t194) = me->conf.
          t193 = t194->zlnt_view_read_sr_15c06369f827( ).
          DATA t195 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t195.
          t76 = zcl_lnt_issue=>at_token( i_file = t77 i_token = t78 i_message_26cb = t81 i_key = t137 i_severity = t193 i_fix = t195 ).
          t75 = t76.
          DATA(t196) = t2.
          DATA(t197) = t75.
          t196->load( ).
          APPEND t197 TO t196->items.
          t196->save( ).
        ENDIF.
        DATA t198 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t198.
        DATA(t199) = abap_true.
        IF t199 = abap_true.
          DATA(t200) = t37.
          t198 = t200.
        ELSE.
          DATA t201 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t201.
          t198 = t201.
        ENDIF.
        t32 = t198.
      ENDDO.
    ENDDO.
    DATA(t202) = t2.
    result = t202.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_mx_on_mt_prm_pr_ln_cnf( me->g_c_i_s_r_m_o_m_p_p_l_t_m_o_m( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_mx_on_mt_prm_pr_ln_cnf( me->g_c_i_s_r_m_o_m_p_p_l_t_m_o_m( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_mx_on_mt_prm_pr_ln_cnf.
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
        t1 = NEW zcl_lnt_mx_on_mt_prm_pr_ln_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_m_o_m_p_p_l_t_m_o_m( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_m_o_m_p_p_l_t_m_o_m( i_file = i_file ) ).
    result = t1.

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
