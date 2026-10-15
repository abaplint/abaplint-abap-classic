* TS: src/rules/keep_single_parameter_on_one_line.ts:16:1 KeepSingleParameterCallsOnOneLine
CLASS zcl_lnt_kp_sn_prm_cll_on_on_ln DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_k_sn_pr_cl_on_on_ln_cn.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_k_s_p_o_o_l_t_k_s_p RETURNING VALUE(result) TYPE REF TO zcl_lnt_k_sn_pr_cl_on_on_ln_cn.
    METHODS s_c_i_s_r_k_s_p_o_o_l_t_k_s_p IMPORTING i_conf TYPE REF TO zcl_lnt_k_sn_pr_cl_on_on_ln_cn.
    METHODS run_parsed REDEFINITION.
    METHODS contains_field_assigments IMPORTING i_s TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS cntns_nw_ln_tbl_exprssn IMPORTING i_s TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS contains_new_line_value IMPORTING i_s TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS contains_new_line_template IMPORTING i_s TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS check_bf6e IMPORTING i_c TYPE REF TO zcl_lnt_expression_node i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS calc_statement_length IMPORTING i_c TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    METHODS is_multi_line IMPORTING i_c TYPE REF TO zif_lnt_union_bb14dc41 RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_without_parameters IMPORTING i_c TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_single_parameter IMPORTING i_c TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_kp_sn_prm_cll_on_on_ln IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_k_sn_pr_cl_on_on_ln_cn( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |keep_single_parameter_on_one_line|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Keep single parameters on one line|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Keep single parameter calls on one line|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
      t11 = t11 && |nABAP.md#keep-single-parameter-calls-on-one-line|.
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
      DATA(t21) = |Whitespace|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      DATA(t23) = |Styleguide|.
      t22->load( ).
      APPEND t23 TO t22->items.
      t22->save( ).
      DATA(t24) = t18.
      DATA(t25) = |SingleFile|.
      t24->load( ).
      APPEND t25 TO t24->items.
      t24->save( ).
      DATA(t26) = t18.
      DATA(t27) = |Quickfix|.
      t26->load( ).
      APPEND t27 TO t26->items.
      t26->save( ).
      DATA(t28) = t18.
      t17 = t28.
      t15 = t17.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t29.
      t15 = t29.
    ENDIF.
    t14 = t15.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    DATA(t32) = abap_true.
    IF t32 = abap_true.
      DATA(t33) = |call_method(\n  2 ).|.
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
    CLEAR t36.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    DATA(t38) = abap_true.
    IF t38 = abap_true.
      DATA(t39) = |call_method( 2 ).|.
      DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t40->has = abap_true.
      t40->value = t39.
      t37 = t40.
    ELSE.
      DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t41.
      t37 = t41.
    ENDIF.
    t36 = t37.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    t42 = t43.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t45.
    t44 = t45.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t30 i_good_example = t36 i_extended_information = t8 i_tags = t14 i_pragma = t42 i_pseudo_comment = t44 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t46 ).
    ENDIF.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t50 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t51 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t52 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t53) = |key|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |title|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |shortDescription|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |extendedInformation|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    DATA(t61) = |tags|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA(t63) = |badExample|.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t64.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
    ENDIF.
    DATA(t65) = |goodExample|.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t66.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t65 p1 = t66 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_k_s_p_o_o_l_t_k_s_p.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_k_s_p_o_o_l_t_k_s_p.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
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
    DATA t6 TYPE string.
    DATA(t7) = t2.
    t6 = t7->get_type( ).
    DATA(t8) = |INTF|.
    t5 = xsdbool( t6 = t8 ).
    IF t5 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t9.
      result = t9.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zcl_lnt_structure_node.
    DATA t11 TYPE REF TO zcl_lnt_structure_node.
    DATA t12 TYPE REF TO zcl_lnt_abap_file.
    DATA(t13) = t1.
    t12 = t13.
    DATA t14 TYPE REF TO zcl_lnt_structure_node.
    DATA(t15) = t12.
    t14 = t15->structure.
    t11 = t14.
    t10 = t11.
    DATA(t16) = VALUE abap_bool( ).
    DATA t17 TYPE REF TO zcl_lnt_structure_node.
    DATA(t18) = t10.
    t17 = t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    t19 = t20.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = t17.
    IF t22 IS INITIAL.
      t21 = abap_true.
    ENDIF.
    t16 = t21.
    IF t16 = abap_true.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t23.
      result = t23.
      RETURN.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t25 TYPE REF TO zcl_lnt_abap_file.
    DATA(t26) = t1.
    t25 = t26.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t28) = t25.
    t27 = t28->statements.
    t24 = t27.
    DATA t29 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t29.
    DATA t30 TYPE REF TO object.
    CLEAR t30.
    DATA(t31) = VALUE i( ).
    DO.
      t24->load( ).
      IF t31 >= lines( t24->items ).
        EXIT.
      ENDIF.
      CLEAR t30.
      READ TABLE t24->items INDEX t31 + 1 INTO t30.
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
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = VALUE abap_bool( ).
      DATA(t36) = VALUE abap_bool( ).
      DATA(t37) = VALUE abap_bool( ).
      DATA t38 TYPE abap_bool.
      DATA t39 TYPE abap_bool.
      DATA t40 TYPE abap_bool.
      DATA t41 TYPE REF TO zif_lnt_union_bb14dc41.
      DATA(t42) = t29.
      t41 = t42.
      DATA t43 TYPE abap_bool.
      DATA t44 TYPE REF TO zcl_lnt_abstract_token.
      DATA t45 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t46) = t41.
      t45 = t46->get_first_token( ).
      t44 = t45.
      DATA t47 TYPE REF TO zcl_lnt_abstract_token.
      DATA t48 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t49) = t41.
      t48 = t49->get_last_token( ).
      t47 = t48.
      DATA t50 TYPE abap_bool.
      DATA t51 TYPE f.
      DATA t52 TYPE REF TO zcl_lnt_position.
      DATA t53 TYPE REF TO zcl_lnt_position.
      DATA t54 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t55) = t44.
      t54 = t55.
      DATA t56 TYPE REF TO zcl_lnt_position.
      DATA(t57) = t54.
      t56 = t57->start.
      t53 = t56.
      t52 = t53.
      DATA t58 TYPE f.
      DATA(t59) = t52.
      t58 = t59->row.
      t51 = t58.
      DATA t60 TYPE f.
      DATA t61 TYPE REF TO zcl_lnt_position.
      DATA t62 TYPE REF TO zcl_lnt_position.
      DATA t63 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t64) = t47.
      t63 = t64.
      DATA t65 TYPE REF TO zcl_lnt_position.
      DATA(t66) = t63.
      t65 = t66->start.
      t62 = t65.
      t61 = t62.
      DATA t67 TYPE f.
      DATA(t68) = t61.
      t67 = t68->row.
      t60 = t67.
      t50 = xsdbool( t51 < t60 ).
      t43 = t50.
      t40 = t43.
      DATA(t69) = abap_false.
      t39 = xsdbool( t40 = t69 ).
      t38 = t39.
      IF t39 = abap_false.
        DATA t70 TYPE abap_bool.
        DATA t71 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t72) = t29.
        t71 = me->calc_statement_length( i_c = t72 ).
        DATA t73 TYPE f.
        DATA(t74) = CAST zcl_lnt_k_sn_pr_cl_on_on_ln_cn( me->g_c_i_s_r_k_s_p_o_o_l_t_k_s_p( ) ).
        t73 = t74->zlnt_view_read_sr_2cad2a7edbae( ).
        DATA(t75) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t75->has = abap_true.
        t75->value = t73.
        t70 = zlnt_runtime_numb_290eb04a9758=>compare( left = t71 right = t75 op = `>` ).
        t38 = t70.
      ENDIF.
      t37 = t38.
      IF t38 = abap_false.
        DATA t76 TYPE abap_bool.
        DATA(t77) = t29.
        t76 = me->contains_new_line_value( i_s = t77 ).
        t37 = t76.
      ENDIF.
      t36 = t37.
      IF t37 = abap_false.
        DATA t78 TYPE abap_bool.
        DATA(t79) = t29.
        t78 = me->cntns_nw_ln_tbl_exprssn( i_s = t79 ).
        t36 = t78.
      ENDIF.
      t35 = t36.
      IF t36 = abap_false.
        DATA t80 TYPE abap_bool.
        DATA t81 TYPE REF TO zcl_lnt_statement_node.
        DATA(t82) = t29.
        t81 = t82.
        DATA t83 TYPE abap_bool.
        DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t86) = t81.
        DATA(t87) = zlnt_runtime_desc_78196487750d=>zlnt_member_d168_9f6549d76396.
        t85 = t86->find_all_expressions( i_type_9913 = t87 ).
        t84 = t85.
        DATA t88 TYPE abap_bool.
        DATA t89 TYPE i.
        DATA(t90) = t84.
        t90->load( ).
        t89 = lines( t90->items ).
        DATA(t91) = 1.
        t88 = xsdbool( t89 > t91 ).
        t83 = t88.
        t80 = t83.
        t35 = t80.
      ENDIF.
      t34 = t35.
      IF t35 = abap_false.
        DATA t92 TYPE abap_bool.
        DATA(t93) = t29.
        t92 = me->contains_new_line_template( i_s = t93 ).
        t34 = t92.
      ENDIF.
      IF t34 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t95) = t29.
      DATA(t96) = zlnt_runtime_desc_78196487750d=>zlnt_member_d220_2984eb665ddb.
      t94 = t95->find_all_expressions( i_type_9913 = t96 ).
      DATA t97 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t97.
      DATA t98 TYPE REF TO object.
      CLEAR t98.
      DATA(t99) = VALUE i( ).
      DO.
        t94->load( ).
        IF t99 >= lines( t94->items ).
          EXIT.
        ENDIF.
        CLEAR t98.
        READ TABLE t94->items INDEX t99 + 1 INTO t98.
        t99 = t99 + 1.
        DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t100.
        CLEAR t97.
        IF t98 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t100 ?= t98.
          DATA t101 TYPE REF TO object.
          t101 = t100->as_ref( ).
          t97 ?= t101.
        ELSE.
          t97 ?= t98.
        ENDIF.
        DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t103) = t3.
        DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t105) = t97.
        DATA(t106) = t1.
        t104 = me->check_bf6e( i_c = t105 i_file = t106 ).
        t102 = t103->concat( p0 = t104 ).
        t3 = t102.
      ENDDO.
    ENDDO.
    DATA(t107) = t3.
    result = t107.

  ENDMETHOD.

  METHOD contains_field_assigments.
    DATA(t1) = i_s.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t1.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d168_9f6549d76396.
    t3 = t4->find_all_expressions( i_type_9913 = t5 ).
    t2 = t3.
    DATA t6 TYPE abap_bool.
    DATA t7 TYPE i.
    DATA(t8) = t2.
    t8->load( ).
    t7 = lines( t8->items ).
    DATA(t9) = 1.
    t6 = xsdbool( t7 > t9 ).
    result = t6.

  ENDMETHOD.

  METHOD cntns_nw_ln_tbl_exprssn.
    DATA(t1) = i_s.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = t1.
    DATA(t4) = zlnt_runtime_desc_78196487750d=>zlnt_member_d101_98dd83adae1d.
    t2 = t3->find_all_expressions( i_type_9913 = t4 ).
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    DATA(t7) = VALUE i( ).
    DO.
      t2->load( ).
      IF t7 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t2->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA t10 TYPE abap_bool.
      DATA t11 TYPE f.
      DATA t12 TYPE REF TO zcl_lnt_abstract_token.
      DATA t13 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t14) = t5.
      t13 = t14->get_first_token( ).
      t12 = t13.
      DATA t15 TYPE f.
      DATA t16 TYPE REF TO zcl_lnt_position.
      DATA t17 TYPE REF TO zcl_lnt_position.
      DATA(t18) = t12.
      t17 = t18->start.
      t16 = t17.
      DATA t19 TYPE f.
      DATA(t20) = t16.
      t19 = t20->row.
      t15 = t19.
      t11 = t15.
      DATA t21 TYPE f.
      DATA t22 TYPE REF TO zcl_lnt_abstract_token.
      DATA t23 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t24) = t5.
      t23 = t24->get_last_token( ).
      t22 = t23.
      DATA t25 TYPE f.
      DATA t26 TYPE REF TO zcl_lnt_position.
      DATA t27 TYPE REF TO zcl_lnt_position.
      DATA(t28) = t22.
      t27 = t28->start.
      t26 = t27.
      DATA t29 TYPE f.
      DATA(t30) = t26.
      t29 = t30->row.
      t25 = t29.
      t21 = t25.
      t10 = xsdbool( t11 <> t21 ).
      IF t10 = abap_true.
        DATA(t31) = abap_true.
        result = t31.
        RETURN.
      ENDIF.
    ENDDO.
    DATA(t32) = abap_false.
    result = t32.

  ENDMETHOD.

  METHOD contains_new_line_value.
    DATA(t1) = i_s.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = t1.
    DATA(t4) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t2 = t3->find_all_expressions( i_type_9913 = t4 ).
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    DATA(t7) = VALUE i( ).
    DO.
      t2->load( ).
      IF t7 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t2->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA(t10) = VALUE string( ).
      DATA t11 TYPE string.
      DATA t12 TYPE string.
      DATA t13 TYPE REF TO zcl_lnt_abstract_token.
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t15) = t5.
      t14 = t15->get_first_token( ).
      t13 = t14.
      DATA t16 TYPE string.
      DATA(t17) = t13.
      t16 = t17->str.
      t12 = t16.
      DATA(t18) = strlen( t12 ).
      t11 = t12.
      IF t11 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t11 TO UPPER CASE.
      ELSE.
        t11 = zlnt_runtime_uppe_91169605024d=>full( t11 ).
      ENDIF.
      t10 = t11.
      DATA t19 TYPE abap_bool.
      DATA t20 TYPE abap_bool.
      DATA(t21) = t10.
      DATA(t22) = |VALUE|.
      t20 = xsdbool( t21 = t22 ).
      t19 = t20.
      IF t20 = abap_true.
        DATA t23 TYPE abap_bool.
        DATA t24 TYPE f.
        DATA t25 TYPE REF TO zcl_lnt_abstract_token.
        DATA t26 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t27) = t5.
        t26 = t27->get_first_token( ).
        t25 = t26.
        DATA t28 TYPE f.
        DATA t29 TYPE REF TO zcl_lnt_position.
        DATA t30 TYPE REF TO zcl_lnt_position.
        DATA(t31) = t25.
        t30 = t31->start.
        t29 = t30.
        DATA t32 TYPE f.
        DATA(t33) = t29.
        t32 = t33->row.
        t28 = t32.
        t24 = t28.
        DATA t34 TYPE f.
        DATA t35 TYPE REF TO zcl_lnt_abstract_token.
        DATA t36 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t37) = t5.
        t36 = t37->get_last_token( ).
        t35 = t36.
        DATA t38 TYPE f.
        DATA t39 TYPE REF TO zcl_lnt_position.
        DATA t40 TYPE REF TO zcl_lnt_position.
        DATA(t41) = t35.
        t40 = t41->start.
        t39 = t40.
        DATA t42 TYPE f.
        DATA(t43) = t39.
        t42 = t43->row.
        t38 = t42.
        t34 = t38.
        t23 = xsdbool( t24 <> t34 ).
        t19 = t23.
      ENDIF.
      IF t19 = abap_true.
        DATA(t44) = abap_true.
        result = t44.
        RETURN.
      ENDIF.
    ENDDO.
    DATA(t45) = abap_false.
    result = t45.

  ENDMETHOD.

  METHOD contains_new_line_template.
    DATA(t1) = i_s.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = t1.
    DATA(t4) = zlnt_runtime_desc_78196487750d=>zlnt_member_d278_cacef970a917.
    t2 = t3->find_all_expressions( i_type_9913 = t4 ).
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    DATA(t7) = VALUE i( ).
    DO.
      t2->load( ).
      IF t7 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t2->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t11) = t5.
      t10 = t11->get_all_tokens( ).
      DATA t12 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t12.
      DATA t13 TYPE REF TO object.
      CLEAR t13.
      DATA(t14) = VALUE i( ).
      DO.
        t10->load( ).
        IF t14 >= lines( t10->items ).
          EXIT.
        ENDIF.
        CLEAR t13.
        READ TABLE t10->items INDEX t14 + 1 INTO t13.
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
        DATA(t17) = VALUE abap_bool( ).
        DATA(t18) = VALUE i( ).
        DATA t19 TYPE string.
        DATA t20 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t21) = t12.
        t20 = t21.
        DATA t22 TYPE string.
        DATA(t23) = t20.
        t22 = t23->str.
        t19 = t22.
        DATA(t24) = `\n`.
        DATA(t25) = strlen( t19 ).
        IF t24 IS INITIAL.
          t18 = 0.
        ELSE.
          FIND t24 IN t19 MATCH OFFSET t18.
          IF sy-subrc <> 0.
            t18 = -1.
          ENDIF.
        ENDIF.
        DATA(t26) = 0.
        t17 = xsdbool( t18 >= t26 ).
        IF t17 = abap_true.
          DATA(t27) = abap_true.
          result = t27.
          RETURN.
        ENDIF.
      ENDDO.
    ENDDO.
    DATA(t28) = abap_false.
    result = t28.

  ENDMETHOD.

  METHOD check_bf6e.
    DATA(t1) = i_c.
    DATA(t2) = i_file.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    DATA(t6) = t1.
    t5 = me->is_single_parameter( i_c = t6 ).
    DATA(t7) = abap_true.
    t4 = xsdbool( t5 = t7 ).
    t3 = t4.
    IF t4 = abap_true.
      DATA t8 TYPE abap_bool.
      DATA t9 TYPE abap_bool.
      DATA t10 TYPE REF TO zif_lnt_union_bb14dc41.
      DATA(t11) = t1.
      t10 = t11.
      DATA t12 TYPE abap_bool.
      DATA t13 TYPE REF TO zcl_lnt_abstract_token.
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t15) = t10.
      t14 = t15->get_first_token( ).
      t13 = t14.
      DATA t16 TYPE REF TO zcl_lnt_abstract_token.
      DATA t17 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t18) = t10.
      t17 = t18->get_last_token( ).
      t16 = t17.
      DATA t19 TYPE abap_bool.
      DATA t20 TYPE f.
      DATA t21 TYPE REF TO zcl_lnt_position.
      DATA t22 TYPE REF TO zcl_lnt_position.
      DATA t23 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t24) = t13.
      t23 = t24.
      DATA t25 TYPE REF TO zcl_lnt_position.
      DATA(t26) = t23.
      t25 = t26->start.
      t22 = t25.
      t21 = t22.
      DATA t27 TYPE f.
      DATA(t28) = t21.
      t27 = t28->row.
      t20 = t27.
      DATA t29 TYPE f.
      DATA t30 TYPE REF TO zcl_lnt_position.
      DATA t31 TYPE REF TO zcl_lnt_position.
      DATA t32 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t33) = t16.
      t32 = t33.
      DATA t34 TYPE REF TO zcl_lnt_position.
      DATA(t35) = t32.
      t34 = t35->start.
      t31 = t34.
      t30 = t31.
      DATA t36 TYPE f.
      DATA(t37) = t30.
      t36 = t37->row.
      t29 = t36.
      t19 = xsdbool( t20 < t29 ).
      t12 = t19.
      t9 = t12.
      DATA(t38) = abap_true.
      t8 = xsdbool( t9 = t38 ).
      t3 = t8.
    ENDIF.
    IF t3 = abap_true.
      DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t40) = t1.
      DATA(t41) = zlnt_runtime_desc_78196487750d=>zlnt_member_d220_2984eb665ddb.
      t39 = t40->find_all_expressions( i_type_9913 = t41 ).
      DATA t42 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t42.
      DATA t43 TYPE REF TO object.
      CLEAR t43.
      DATA(t44) = VALUE i( ).
      DO.
        t39->load( ).
        IF t44 >= lines( t39->items ).
          EXIT.
        ENDIF.
        CLEAR t43.
        READ TABLE t39->items INDEX t44 + 1 INTO t43.
        t44 = t44 + 1.
        DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t45.
        CLEAR t42.
        IF t43 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t45 ?= t43.
          DATA t46 TYPE REF TO object.
          t46 = t45->as_ref( ).
          t42 ?= t46.
        ELSE.
          t42 ?= t43.
        ENDIF.
        DATA t47 TYPE abap_bool.
        DATA t48 TYPE abap_bool.
        DATA t49 TYPE abap_bool.
        DATA(t50) = t42.
        t49 = me->is_single_parameter( i_c = t50 ).
        DATA(t51) = abap_false.
        t48 = xsdbool( t49 = t51 ).
        t47 = t48.
        IF t48 = abap_true.
          DATA t52 TYPE abap_bool.
          DATA t53 TYPE abap_bool.
          DATA t54 TYPE REF TO zcl_lnt_expression_node.
          DATA(t55) = t42.
          t54 = t55.
          DATA t56 TYPE abap_bool.
          DATA t57 TYPE i.
          DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t60 TYPE REF TO zcl_lnt_abstract_node.
          DATA(t61) = t54.
          t60 = t61.
          DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t63) = t60.
          t62 = t63->children.
          t59 = t62.
          t58 ?= t59.
          t58->load( ).
          t57 = lines( t58->items ).
          DATA(t64) = 2.
          t56 = xsdbool( t57 = t64 ).
          t53 = t56.
          DATA(t65) = abap_false.
          t52 = xsdbool( t53 = t65 ).
          t47 = t52.
        ENDIF.
        IF t47 = abap_true.
          DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t66.
          result = t66.
          RETURN.
        ENDIF.
      ENDDO.
      DATA t67 TYPE string.
      DATA(t68) = |Keep single parameter on one line|.
      t67 = t68.
      DATA t69 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t70 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA(t71) = t2.
      DATA t72 TYPE REF TO zcl_lnt_position.
      DATA t73 TYPE REF TO zcl_lnt_abstract_token.
      DATA t74 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t75) = t1.
      t74 = t75->get_first_token( ).
      t73 = t74.
      DATA t76 TYPE REF TO zcl_lnt_position.
      DATA(t77) = t73.
      t76 = t77->start.
      t72 = t76.
      DATA t78 TYPE REF TO zcl_lnt_position.
      DATA t79 TYPE REF TO zcl_lnt_abstract_token.
      DATA t80 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t81) = t1.
      t80 = t81->get_last_token( ).
      t79 = t80.
      DATA t82 TYPE REF TO zcl_lnt_position.
      DATA t83 TYPE f.
      DATA t84 TYPE REF TO zcl_lnt_position.
      DATA t85 TYPE REF TO zcl_lnt_position.
      DATA(t86) = t79.
      t85 = t86->start.
      t84 = t85.
      DATA t87 TYPE f.
      DATA(t88) = t84.
      t87 = t88->row.
      t83 = t87.
      DATA t89 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t90 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t91 TYPE REF TO zcl_lnt_position.
      DATA t92 TYPE REF TO zcl_lnt_position.
      DATA(t93) = t79.
      t92 = t93->start.
      t91 = t92.
      DATA t94 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t95) = t91.
      t94 = t95->col.
      t90 = t94.
      DATA t96 TYPE f.
      DATA t97 TYPE i.
      DATA t98 TYPE string.
      DATA(t99) = t79.
      t98 = t99->str.
      DATA(t100) = strlen( t98 ).
      t97 = t100.
      t96 = t97.
      DATA(t101) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t101->has = abap_true.
      t101->value = t96.
      t89 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t90 right = t101 op = `+` ).
      t82 = NEW zcl_lnt_position( i_row = t83 i_col = t89 ).
      t78 = t82.
      DATA t102 TYPE string.
      DATA(t103) = t1.
      t102 = t103->concat_tokens( ).
      t70 = zcl_lnt_edit_helper=>replace_range( i_file = t71 i_start = t72 i_end = t78 i_text = t102 ).
      t69 = t70.
      DATA t104 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t104.
      DATA t105 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t106.
      t105 = t106.
      DATA(t107) = t105.
      DATA t108 TYPE REF TO zcl_lnt_issue.
      CLEAR t108.
      DATA(t109) = t2.
      DATA t110 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t111) = t1.
      t110 = t111->get_first_token( ).
      DATA(t112) = t67.
      DATA(t113) = VALUE string( ).
      DATA t114 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t114.
      DATA t115 TYPE string.
      DATA(t116) = |keep_single_parameter_on_one_line|.
      t115 = t116.
      DATA t117 TYPE string.
      DATA(t118) = |Keep single parameters on one line|.
      t117 = t118.
      DATA t119 TYPE string.
      DATA(t120) = |Keep single parameter calls on one line|.
      t119 = t120.
      DATA t121 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t121.
      DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t122.
      DATA(t123) = abap_true.
      IF t123 = abap_true.
        DATA(t124) = |https://github.com/SAP/styleguides/blob/main/clean-abap/Clea|.
        t124 = t124 && |nABAP.md#keep-single-parameter-calls-on-one-line|.
        DATA(t125) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t125->has = abap_true.
        t125->value = t124.
        t122 = t125.
      ELSE.
        DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t126.
        t122 = t126.
      ENDIF.
      t121 = t122.
      DATA t127 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t127.
      DATA t128 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t128.
      DATA(t129) = abap_true.
      IF t129 = abap_true.
        DATA t130 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t131 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t132 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t132.
        t131 = t132.
        DATA(t133) = t131.
        DATA(t134) = |Whitespace|.
        t133->load( ).
        APPEND t134 TO t133->items.
        t133->save( ).
        DATA(t135) = t131.
        DATA(t136) = |Styleguide|.
        t135->load( ).
        APPEND t136 TO t135->items.
        t135->save( ).
        DATA(t137) = t131.
        DATA(t138) = |SingleFile|.
        t137->load( ).
        APPEND t138 TO t137->items.
        t137->save( ).
        DATA(t139) = t131.
        DATA(t140) = |Quickfix|.
        t139->load( ).
        APPEND t140 TO t139->items.
        t139->save( ).
        DATA(t141) = t131.
        t130 = t141.
        t128 = t130.
      ELSE.
        DATA t142 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t142.
        t128 = t142.
      ENDIF.
      t127 = t128.
      DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t143.
      DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t144.
      DATA(t145) = abap_true.
      IF t145 = abap_true.
        DATA(t146) = |call_method(\n  2 ).|.
        DATA(t147) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t147->has = abap_true.
        t147->value = t146.
        t144 = t147.
      ELSE.
        DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t148.
        t144 = t148.
      ENDIF.
      t143 = t144.
      DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t149.
      DATA t150 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t150.
      DATA(t151) = abap_true.
      IF t151 = abap_true.
        DATA(t152) = |call_method( 2 ).|.
        DATA(t153) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t153->has = abap_true.
        t153->value = t152.
        t150 = t153.
      ELSE.
        DATA t154 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t154.
        t150 = t154.
      ENDIF.
      t149 = t150.
      DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t156.
      t155 = t156.
      DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t158.
      t157 = t158.
      t114 = NEW zcl_lnt_irule_metadata( i_key = t115 i_title = t117 i_short_description = t119 i_bad_example = t143 i_good_example = t149 i_extended_information = t121 i_tags = t127 i_pragma = t155 i_pseudo_comment = t157 ).
      CREATE OBJECT t114->zlnt_view_ownkeys_b0e8086400eb.
      t114->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t159.
      IF t114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t159 ).
      ENDIF.
      DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t160.
      IF t114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t160 ).
      ENDIF.
      DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t161.
      IF t114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t161 ).
      ENDIF.
      DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t162.
      IF t114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t162 ).
      ENDIF.
      DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t163.
      IF t114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t163 ).
      ENDIF.
      DATA t164 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t164.
      IF t114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t164 ).
      ENDIF.
      DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t165.
      IF t114->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t114->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t165 ).
      ENDIF.
      CREATE OBJECT t114->zlnt_json_ownkeys_70e5fd461788.
      t114->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t166) = |key|.
      DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t167.
      IF t114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = t166 p1 = t167 ).
      ENDIF.
      DATA(t168) = |title|.
      DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t169.
      IF t114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = t168 p1 = t169 ).
      ENDIF.
      DATA(t170) = |shortDescription|.
      DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t171.
      IF t114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = t170 p1 = t171 ).
      ENDIF.
      DATA(t172) = |extendedInformation|.
      DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t173.
      IF t114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = t172 p1 = t173 ).
      ENDIF.
      DATA(t174) = |tags|.
      DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t175.
      IF t114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = t174 p1 = t175 ).
      ENDIF.
      DATA(t176) = |badExample|.
      DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t177.
      IF t114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = t176 p1 = t177 ).
      ENDIF.
      DATA(t178) = |goodExample|.
      DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t179.
      IF t114->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t114->zlnt_json_ownkeys_70e5fd461788->put( p0 = t178 p1 = t179 ).
      ENDIF.
      t113 = t114->key.
      DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t181) = me->conf.
      t180 = t181->zlnt_view_read_sr_15c06369f827( ).
      DATA t182 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t182.
      DATA(t183) = abap_true.
      IF t183 = abap_true.
        DATA(t184) = t69.
        t182 = t184.
      ELSE.
        DATA t185 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t185.
        t182 = t185.
      ENDIF.
      t108 = zcl_lnt_issue=>at_token( i_file = t109 i_token = t110 i_message_26cb = t112 i_key = t113 i_severity = t180 i_fix = t182 ).
      t107->load( ).
      APPEND t108 TO t107->items.
      t107->save( ).
      DATA(t186) = t105.
      t104 = t186.
      result = t104.
      RETURN.
    ENDIF.
    DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t187.
    result = t187.

  ENDMETHOD.

  METHOD calc_statement_length.
    DATA(t1) = i_c.
    DATA t2 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t3) = CONV f( 0 ).
    DATA(t4) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t4->has = abap_true.
    t4->value = t3.
    t2 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = t1.
    t5 = t6->get_tokens( ).
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
    DATA(t9) = VALUE i( ).
    DO.
      t5->load( ).
      IF t9 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t5->items INDEX t9 + 1 INTO t8.
      t9 = t9 + 1.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      CLEAR t7.
      IF t8 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t10 ?= t8.
        DATA t11 TYPE REF TO object.
        t11 = t10->as_ref( ).
        t7 ?= t11.
      ELSE.
        t7 ?= t8.
      ENDIF.
      DATA t12 TYPE abap_bool.
      DATA(t13) = t2.
      DATA(t14) = CONV f( 0 ).
      DATA(t15) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t15->has = abap_true.
      t15->value = t14.
      t12 = zlnt_runtime_numb_290eb04a9758=>compare( left = t13 right = t15 op = `==` ).
      IF t12 = abap_true.
        DATA t16 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t17) = t2.
        DATA t18 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t19 TYPE REF TO zcl_lnt_position.
        DATA t20 TYPE REF TO zcl_lnt_position.
        DATA t21 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t22) = t7.
        t21 = t22.
        DATA t23 TYPE REF TO zcl_lnt_position.
        DATA(t24) = t21.
        t23 = t24->start.
        t20 = t23.
        t19 = t20.
        DATA t25 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t26) = t19.
        t25 = t26->col.
        t18 = t25.
        t16 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t17 right = t18 op = `+` ).
        t2 = t16.
      ENDIF.
      DATA t27 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t28 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t29) = t2.
      DATA t30 TYPE f.
      DATA t31 TYPE i.
      DATA t32 TYPE string.
      DATA t33 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t34) = t7.
      t33 = t34.
      DATA t35 TYPE string.
      DATA(t36) = t33.
      t35 = t36->str.
      t32 = t35.
      DATA(t37) = strlen( t32 ).
      t31 = t37.
      t30 = t31.
      DATA(t38) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t38->has = abap_true.
      t38->value = t30.
      t28 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t29 right = t38 op = `+` ).
      DATA(t39) = CONV f( 1 ).
      DATA(t40) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t40->has = abap_true.
      t40->value = t39.
      t27 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t28 right = t40 op = `+` ).
      t2 = t27.
    ENDDO.
    DATA(t41) = t2.
    result = t41.

  ENDMETHOD.

  METHOD is_multi_line.
    DATA(t1) = i_c.
    DATA t2 TYPE REF TO zcl_lnt_abstract_token.
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t4) = t1.
    t3 = t4->get_first_token( ).
    t2 = t3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    DATA t6 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t7) = t1.
    t6 = t7->get_last_token( ).
    t5 = t6.
    DATA t8 TYPE abap_bool.
    DATA t9 TYPE f.
    DATA t10 TYPE REF TO zcl_lnt_position.
    DATA t11 TYPE REF TO zcl_lnt_position.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t13) = t2.
    t12 = t13.
    DATA t14 TYPE REF TO zcl_lnt_position.
    DATA(t15) = t12.
    t14 = t15->start.
    t11 = t14.
    t10 = t11.
    DATA t16 TYPE f.
    DATA(t17) = t10.
    t16 = t17->row.
    t9 = t16.
    DATA t18 TYPE f.
    DATA t19 TYPE REF TO zcl_lnt_position.
    DATA t20 TYPE REF TO zcl_lnt_position.
    DATA t21 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t22) = t5.
    t21 = t22.
    DATA t23 TYPE REF TO zcl_lnt_position.
    DATA(t24) = t21.
    t23 = t24->start.
    t20 = t23.
    t19 = t20.
    DATA t25 TYPE f.
    DATA(t26) = t19.
    t25 = t26->row.
    t18 = t25.
    t8 = xsdbool( t9 < t18 ).
    result = t8.

  ENDMETHOD.

  METHOD is_without_parameters.
    DATA(t1) = i_c.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE i.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = t6.
    t8 = t9->children.
    t5 = t8.
    t4 ?= t5.
    t4->load( ).
    t3 = lines( t4->items ).
    DATA(t10) = 2.
    t2 = xsdbool( t3 = t10 ).
    result = t2.

  ENDMETHOD.

  METHOD is_single_parameter.
    DATA(t1) = i_c.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t4) = t1.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    t3 = t4->find_direct_expression( i_type_9913 = t5 ).
    t2 = xsdbool( t3 IS BOUND ).
    IF t2 = abap_true.
      DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t7) = t1.
      DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a.
      t6 = t7->find_all_expressions( i_type_9913 = t8 ).
      DATA t9 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t9.
      DATA t10 TYPE REF TO object.
      CLEAR t10.
      DATA(t11) = VALUE i( ).
      DO.
        t6->load( ).
        IF t11 >= lines( t6->items ).
          EXIT.
        ENDIF.
        CLEAR t10.
        READ TABLE t6->items INDEX t11 + 1 INTO t10.
        t11 = t11 + 1.
        DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t12.
        CLEAR t9.
        IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t12 ?= t10.
          DATA t13 TYPE REF TO object.
          t13 = t12->as_ref( ).
          t9 ?= t13.
        ELSE.
          t9 ?= t10.
        ENDIF.
        DATA t14 TYPE abap_bool.
        DATA t15 TYPE i.
        DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t18 TYPE REF TO zcl_lnt_abstract_node.
        DATA(t19) = t9.
        t18 = t19.
        DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t21) = t18.
        t20 = t21->children.
        t17 = t20.
        t16 ?= t17.
        t16->load( ).
        t15 = lines( t16->items ).
        DATA(t22) = 1.
        t14 = xsdbool( t15 > t22 ).
        IF t14 = abap_true.
          DATA(t23) = abap_false.
          result = t23.
          RETURN.
        ENDIF.
      ENDDO.
      DATA(t24) = abap_true.
      result = t24.
      RETURN.
    ENDIF.
    DATA t25 TYPE REF TO zcl_lnt_expression_node.
    DATA t26 TYPE REF TO zcl_lnt_expression_node.
    DATA(t27) = t1.
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a.
    t26 = t27->find_direct_expression( i_type_9913 = t28 ).
    t25 = t26.
    DATA t29 TYPE abap_bool.
    DATA(t30) = t25.
    t29 = xsdbool( t30 IS BOUND ).
    IF t29 = abap_true.
      DATA t31 TYPE abap_bool.
      DATA t32 TYPE i.
      DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t35 TYPE REF TO zcl_lnt_abstract_node.
      DATA t36 TYPE REF TO zcl_lnt_expression_node.
      DATA(t37) = t25.
      t36 = t37.
      t35 = t36.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t39) = t35.
      t38 = t39->children.
      t34 = t38.
      t33 ?= t34.
      t33->load( ).
      t32 = lines( t33->items ).
      DATA(t40) = 1.
      t31 = xsdbool( t32 = t40 ).
      result = t31.
      RETURN.
    ENDIF.
    DATA t41 TYPE REF TO zcl_lnt_expression_node.
    DATA t42 TYPE REF TO zcl_lnt_expression_node.
    DATA(t43) = t1.
    DATA(t44) = zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470.
    t42 = t43->find_direct_expression( i_type_9913 = t44 ).
    t41 = t42.
    DATA t45 TYPE abap_bool.
    DATA(t46) = t41.
    t45 = xsdbool( t46 IS BOUND ).
    IF t45 = abap_true.
      DATA t47 TYPE abap_bool.
      DATA t48 TYPE i.
      DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t51 TYPE REF TO zcl_lnt_abstract_node.
      DATA t52 TYPE REF TO zcl_lnt_expression_node.
      DATA(t53) = t41.
      t52 = t53.
      t51 = t52.
      DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t55) = t51.
      t54 = t55->children.
      t50 = t54.
      t49 ?= t50.
      t49->load( ).
      t48 = lines( t49->items ).
      DATA(t56) = 2.
      t47 = xsdbool( t48 > t56 ).
      IF t47 = abap_true.
        DATA(t57) = abap_false.
        result = t57.
        RETURN.
      ENDIF.
      DATA t58 TYPE REF TO zcl_lnt_expression_node.
      DATA t59 TYPE REF TO zcl_lnt_expression_node.
      DATA t60 TYPE REF TO zcl_lnt_expression_node.
      DATA(t61) = t41.
      t60 = t61.
      DATA(t62) = zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a.
      t59 = t60->find_direct_expression( i_type_9913 = t62 ).
      t58 = t59.
      DATA t63 TYPE abap_bool.
      DATA t64 TYPE abap_bool.
      DATA(t65) = t58.
      t64 = xsdbool( t65 IS BOUND ).
      t63 = t64.
      IF t64 = abap_true.
        DATA t66 TYPE abap_bool.
        DATA t67 TYPE i.
        DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t70 TYPE REF TO zcl_lnt_abstract_node.
        DATA t71 TYPE REF TO zcl_lnt_expression_node.
        DATA(t72) = t58.
        t71 = t72.
        t70 = t71.
        DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t74) = t70.
        t73 = t74->children.
        t69 = t73.
        t68 ?= t69.
        t68->load( ).
        t67 = lines( t68->items ).
        DATA(t75) = 1.
        t66 = xsdbool( t67 = t75 ).
        t63 = t66.
      ENDIF.
      IF t63 = abap_true.
        DATA(t76) = abap_true.
        result = t76.
        RETURN.
      ENDIF.
      DATA t77 TYPE REF TO zcl_lnt_expression_node.
      DATA t78 TYPE REF TO zcl_lnt_expression_node.
      DATA t79 TYPE REF TO zcl_lnt_expression_node.
      DATA(t80) = t41.
      t79 = t80.
      DATA(t81) = zlnt_runtime_desc_78196487750d=>zlnt_member_d199_07bab553574b.
      t78 = t79->find_direct_expression( i_type_9913 = t81 ).
      t77 = t78.
      DATA t82 TYPE abap_bool.
      DATA t83 TYPE abap_bool.
      DATA(t84) = t77.
      t83 = xsdbool( t84 IS BOUND ).
      t82 = t83.
      IF t83 = abap_true.
        DATA t85 TYPE abap_bool.
        DATA t86 TYPE i.
        DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t89 TYPE REF TO zcl_lnt_abstract_node.
        DATA t90 TYPE REF TO zcl_lnt_expression_node.
        DATA(t91) = t77.
        t90 = t91.
        t89 = t90.
        DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t93) = t89.
        t92 = t93->children.
        t88 = t92.
        t87 ?= t88.
        t87->load( ).
        t86 = lines( t87->items ).
        DATA(t94) = 1.
        t85 = xsdbool( t86 = t94 ).
        t82 = t85.
      ENDIF.
      IF t82 = abap_true.
        DATA(t95) = abap_true.
        result = t95.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t96) = abap_false.
    result = t96.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_k_sn_pr_cl_on_on_ln_cn( me->g_c_i_s_r_k_s_p_o_o_l_t_k_s_p( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_k_sn_pr_cl_on_on_ln_cn( me->g_c_i_s_r_k_s_p_o_o_l_t_k_s_p( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_k_sn_pr_cl_on_on_ln_cn.
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
        t1 = NEW zcl_lnt_k_sn_pr_cl_on_on_ln_cn( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_k_s_p_o_o_l_t_k_s_p( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1554_e20a2db94794.
  ENDMETHOD.
ENDCLASS.
