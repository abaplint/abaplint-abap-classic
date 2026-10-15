* TS: src/rules/invalid_table_index.ts:14:1 InvalidTableIndex
CLASS zcl_lnt_invalid_table_index DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_invld_tbl_indx_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_in_tb_in_ts_in_tb_in RETURNING VALUE(result) TYPE REF TO zcl_lnt_invld_tbl_indx_cnf.
    METHODS s_c_i_s_r_in_tb_in_ts_in_tb_in IMPORTING i_conf TYPE REF TO zcl_lnt_invld_tbl_indx_cnf.
    METHODS r_p_i_s_r_in_tb_in_ts_in_tb_in IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_invalid_table_index IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_invld_tbl_indx_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |invalid_table_index|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Invalid Table Index|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Issues error for constant table index zero, as ABAP starts f|.
    t7 = t7 && |rom 1|.
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
      DATA(t17) = |Quickfix|.
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
      DATA(t23) = |DATA(first) = table[ 0 ].\nREAD TABLE gt_stack ASSIGNING <ls_|.
      t23 = t23 && |stack> INDEX 0.|.
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
      DATA(t29) = |DATA(first) = table[ 1 ].\nREAD TABLE gt_stack ASSIGNING <ls_|.
      t29 = t29 && |stack> INDEX 1.|.
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

  METHOD g_c_i_s_r_in_tb_in_ts_in_tb_in.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_in_tb_in_ts_in_tb_in.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_in_tb_in_ts_in_tb_in.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA t5 TYPE REF TO zcl_lnt_structure_node.
    DATA t6 TYPE REF TO zcl_lnt_abap_file.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zcl_lnt_structure_node.
    DATA(t9) = t6.
    t8 = t9->structure.
    t5 = t8.
    t4 = t5.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE REF TO zcl_lnt_structure_node.
    DATA(t12) = t4.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    t13 = t14.
    DATA(t15) = VALUE abap_bool( ).
    DATA(t16) = t11.
    IF t16 IS INITIAL.
      t15 = abap_true.
    ENDIF.
    t10 = t15.
    IF t10 = abap_true.
      DATA(t17) = t2.
      result = t17.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zcl_lnt_structure_node.
    DATA(t21) = t4.
    t20 = t21.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d101_98dd83adae1d.
    t19 = t20->find_all_expressions_recursive( i_type_9913 = t22 ).
    t18 = t19.
    DATA(t23) = t18.
    DATA t24 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t24.
    DATA t25 TYPE REF TO object.
    CLEAR t25.
    DATA(t26) = VALUE i( ).
    DO.
      t23->load( ).
      IF t26 >= lines( t23->items ).
        EXIT.
      ENDIF.
      CLEAR t25.
      READ TABLE t23->items INDEX t26 + 1 INTO t25.
      t26 = t26 + 1.
      DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t27.
      CLEAR t24.
      IF t25 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t27 ?= t25.
        DATA t28 TYPE REF TO object.
        t28 = t27->as_ref( ).
        t24 ?= t28.
      ELSE.
        t24 ?= t25.
      ENDIF.
      DATA t29 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t29.
      DATA t30 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t30.
      DATA t31 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t31.
      DATA t32 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t32.
      DATA t33 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t33.
      DATA t34 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t34.
      DATA t35 TYPE REF TO zcl_lnt_expression_node.
      DATA t36 TYPE REF TO zcl_lnt_expression_node.
      DATA(t37) = t24.
      DATA(t38) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t36 = t37->find_direct_expression( i_type_9913 = t38 ).
      t35 = t36.
      DATA t39 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t39.
      DATA(t40) = VALUE abap_bool( ).
      DATA(t41) = t35.
      IF t41 IS INITIAL.
        t40 = abap_true.
      ENDIF.
      IF t40 = abap_true.
        DATA t42 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t42.
        t39 = t42.
      ELSE.
        DATA t43 TYPE REF TO zcl_lnt_expression_node.
        DATA t44 TYPE REF TO zcl_lnt_expression_node.
        DATA(t45) = t35.
        t44 = t45.
        DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
        t43 = t44->find_direct_expression( i_type_9913 = t46 ).
        t39 = t43.
      ENDIF.
      t34 = t39.
      t33 = t34.
      DATA t47 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t47.
      DATA(t48) = VALUE abap_bool( ).
      DATA(t49) = t33.
      IF t49 IS INITIAL.
        t48 = abap_true.
      ENDIF.
      IF t48 = abap_true.
        DATA t50 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t50.
        t47 = t50.
      ELSE.
        DATA t51 TYPE REF TO zcl_lnt_expression_node.
        DATA t52 TYPE REF TO zcl_lnt_expression_node.
        DATA(t53) = t33.
        t52 = t53.
        DATA(t54) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
        t51 = t52->find_first_expression( i_type_9913 = t54 ).
        t47 = t51.
      ENDIF.
      t32 = t47.
      t31 = t32.
      DATA t55 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t55.
      DATA(t56) = VALUE abap_bool( ).
      DATA(t57) = t31.
      IF t57 IS INITIAL.
        t56 = abap_true.
      ENDIF.
      IF t56 = abap_true.
        DATA t58 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t58.
        t55 = t58.
      ELSE.
        DATA t59 TYPE REF TO zcl_lnt_abstract_token.
        DATA t60 TYPE REF TO zcl_lnt_expression_node.
        DATA(t61) = t31.
        t60 = t61.
        t59 = t60->get_first_token( ).
        t55 = t59.
      ENDIF.
      t30 = t55.
      t29 = t30.
      DATA(t62) = VALUE abap_bool( ).
      DATA t63 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t64) = t29.
      t63 = t64.
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t66.
      t65 = t66.
      DATA(t67) = VALUE abap_bool( ).
      DATA(t68) = t63.
      IF t68 IS INITIAL.
        t67 = abap_true.
      ENDIF.
      t62 = t67.
      IF t62 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t69 TYPE abap_bool.
      DATA t70 TYPE string.
      DATA t71 TYPE REF TO zcl_lnt_abstract_token.
      DATA t72 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t73) = t29.
      t72 = t73.
      t71 = t72.
      DATA t74 TYPE string.
      DATA(t75) = t71.
      t74 = t75->str.
      t70 = t74.
      DATA(t76) = |0|.
      t69 = xsdbool( t70 = t76 ).
      IF t69 = abap_true.
        DATA t77 TYPE string.
        DATA(t78) = |Table index starts from 1|.
        t77 = t78.
        DATA t79 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t80 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA(t81) = t1.
        DATA t82 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t83) = t29.
        t82 = t83.
        DATA(t84) = |1|.
        t80 = zcl_lnt_edit_helper=>replace_token( i_file = t81 i_token = t82 i_text = t84 ).
        t79 = t80.
        DATA t85 TYPE REF TO zcl_lnt_issue.
        CLEAR t85.
        DATA t86 TYPE REF TO zcl_lnt_issue.
        CLEAR t86.
        DATA(t87) = t1.
        DATA t88 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t89) = t29.
        t88 = t89.
        DATA(t90) = t77.
        DATA(t91) = VALUE string( ).
        DATA t92 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t92.
        DATA t93 TYPE string.
        DATA(t94) = |invalid_table_index|.
        t93 = t94.
        DATA t95 TYPE string.
        DATA(t96) = |Invalid Table Index|.
        t95 = t96.
        DATA t97 TYPE string.
        DATA(t98) = |Issues error for constant table index zero, as ABAP starts f|.
        t98 = t98 && |rom 1|.
        t97 = t98.
        DATA t99 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t99.
        DATA t100 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t100.
        DATA(t101) = abap_true.
        IF t101 = abap_true.
          DATA t102 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t103 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t104 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t104.
          t103 = t104.
          DATA(t105) = t103.
          DATA(t106) = |SingleFile|.
          t105->load( ).
          APPEND t106 TO t105->items.
          t105->save( ).
          DATA(t107) = t103.
          DATA(t108) = |Quickfix|.
          t107->load( ).
          APPEND t108 TO t107->items.
          t107->save( ).
          DATA(t109) = t103.
          t102 = t109.
          t100 = t102.
        ELSE.
          DATA t110 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t110.
          t100 = t110.
        ENDIF.
        t99 = t100.
        DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t111.
        DATA t112 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t112.
        DATA(t113) = abap_true.
        IF t113 = abap_true.
          DATA(t114) = |DATA(first) = table[ 0 ].\nREAD TABLE gt_stack ASSIGNING <ls_|.
          t114 = t114 && |stack> INDEX 0.|.
          DATA(t115) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t115->has = abap_true.
          t115->value = t114.
          t112 = t115.
        ELSE.
          DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t116.
          t112 = t116.
        ENDIF.
        t111 = t112.
        DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t117.
        DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t118.
        DATA(t119) = abap_true.
        IF t119 = abap_true.
          DATA(t120) = |DATA(first) = table[ 1 ].\nREAD TABLE gt_stack ASSIGNING <ls_|.
          t120 = t120 && |stack> INDEX 1.|.
          DATA(t121) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t121->has = abap_true.
          t121->value = t120.
          t118 = t121.
        ELSE.
          DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t122.
          t118 = t122.
        ENDIF.
        t117 = t118.
        DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t124.
        t123 = t124.
        DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t126.
        t125 = t126.
        DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t128.
        t127 = t128.
        t92 = NEW zcl_lnt_irule_metadata( i_key = t93 i_title = t95 i_short_description = t97 i_bad_example = t111 i_good_example = t117 i_extended_information = t123 i_tags = t99 i_pragma = t125 i_pseudo_comment = t127 ).
        CREATE OBJECT t92->zlnt_view_ownkeys_b0e8086400eb.
        t92->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t129.
        IF t92->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t92->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t129 ).
        ENDIF.
        DATA t130 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t130.
        IF t92->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t92->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t130 ).
        ENDIF.
        DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t131.
        IF t92->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t92->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t131 ).
        ENDIF.
        DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t132.
        IF t92->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t92->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t132 ).
        ENDIF.
        DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t133.
        IF t92->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t92->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t133 ).
        ENDIF.
        DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t134.
        IF t92->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t92->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t134 ).
        ENDIF.
        CREATE OBJECT t92->zlnt_json_ownkeys_70e5fd461788.
        t92->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t135) = |key|.
        DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t136.
        IF t92->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t92->zlnt_json_ownkeys_70e5fd461788->put( p0 = t135 p1 = t136 ).
        ENDIF.
        DATA(t137) = |title|.
        DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t138.
        IF t92->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t92->zlnt_json_ownkeys_70e5fd461788->put( p0 = t137 p1 = t138 ).
        ENDIF.
        DATA(t139) = |shortDescription|.
        DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t140.
        IF t92->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t92->zlnt_json_ownkeys_70e5fd461788->put( p0 = t139 p1 = t140 ).
        ENDIF.
        DATA(t141) = |tags|.
        DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t142.
        IF t92->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t92->zlnt_json_ownkeys_70e5fd461788->put( p0 = t141 p1 = t142 ).
        ENDIF.
        DATA(t143) = |badExample|.
        DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t144.
        IF t92->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t92->zlnt_json_ownkeys_70e5fd461788->put( p0 = t143 p1 = t144 ).
        ENDIF.
        DATA(t145) = |goodExample|.
        DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t146.
        IF t92->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t92->zlnt_json_ownkeys_70e5fd461788->put( p0 = t145 p1 = t146 ).
        ENDIF.
        t91 = t92->key.
        DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t148) = me->conf.
        t147 = t148->zlnt_view_read_sr_15c06369f827( ).
        DATA t149 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t149.
        DATA(t150) = abap_true.
        IF t150 = abap_true.
          DATA(t151) = t79.
          t149 = t151.
        ELSE.
          DATA t152 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t152.
          t149 = t152.
        ENDIF.
        t86 = zcl_lnt_issue=>at_token( i_file = t87 i_token = t88 i_message_26cb = t90 i_key = t91 i_severity = t147 i_fix = t149 ).
        t85 = t86.
        DATA(t153) = t2.
        DATA(t154) = t85.
        t153->load( ).
        APPEND t154 TO t153->items.
        t153->save( ).
      ENDIF.
    ENDDO.
    DATA t155 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t156 TYPE REF TO zcl_lnt_structure_node.
    DATA(t157) = t4.
    t156 = t157.
    DATA(t158) = zlnt_runtime_desc_78196487750d=>zlnt_member_d594_a2664c6b8771.
    t155 = t156->find_all_statements( i_type_9913 = t158 ).
    DATA t159 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t159.
    DATA t160 TYPE REF TO object.
    CLEAR t160.
    DATA(t161) = VALUE i( ).
    DO.
      t155->load( ).
      IF t161 >= lines( t155->items ).
        EXIT.
      ENDIF.
      CLEAR t160.
      READ TABLE t155->items INDEX t161 + 1 INTO t160.
      t161 = t161 + 1.
      DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t162.
      CLEAR t159.
      IF t160 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t162 ?= t160.
        DATA t163 TYPE REF TO object.
        t163 = t162->as_ref( ).
        t159 ?= t163.
      ELSE.
        t159 ?= t160.
      ENDIF.
      DATA t164 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t164.
      DATA t165 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t165.
      DATA t166 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t166.
      DATA t167 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t167.
      DATA t168 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t168.
      DATA t169 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t169.
      DATA t170 TYPE REF TO zcl_lnt_expression_node.
      DATA t171 TYPE REF TO zcl_lnt_expression_node.
      DATA(t172) = t159.
      DATA(t173) = |INDEX|.
      t171 = t172->find_expression_after_token( i_text = t173 ).
      t170 = t171.
      DATA t174 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t174.
      DATA(t175) = VALUE abap_bool( ).
      DATA(t176) = t170.
      IF t176 IS INITIAL.
        t175 = abap_true.
      ENDIF.
      IF t175 = abap_true.
        DATA t177 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t177.
        t174 = t177.
      ELSE.
        DATA t178 TYPE REF TO zcl_lnt_expression_node.
        DATA t179 TYPE REF TO zcl_lnt_expression_node.
        DATA(t180) = t170.
        t179 = t180.
        DATA(t181) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
        t178 = t179->find_direct_expression( i_type_9913 = t181 ).
        t174 = t178.
      ENDIF.
      t169 = t174.
      t168 = t169.
      DATA t182 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t182.
      DATA(t183) = VALUE abap_bool( ).
      DATA(t184) = t168.
      IF t184 IS INITIAL.
        t183 = abap_true.
      ENDIF.
      IF t183 = abap_true.
        DATA t185 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t185.
        t182 = t185.
      ELSE.
        DATA t186 TYPE REF TO zcl_lnt_expression_node.
        DATA t187 TYPE REF TO zcl_lnt_expression_node.
        DATA(t188) = t168.
        t187 = t188.
        DATA(t189) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
        t186 = t187->find_first_expression( i_type_9913 = t189 ).
        t182 = t186.
      ENDIF.
      t167 = t182.
      t166 = t167.
      DATA t190 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t190.
      DATA(t191) = VALUE abap_bool( ).
      DATA(t192) = t166.
      IF t192 IS INITIAL.
        t191 = abap_true.
      ENDIF.
      IF t191 = abap_true.
        DATA t193 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t193.
        t190 = t193.
      ELSE.
        DATA t194 TYPE REF TO zcl_lnt_abstract_token.
        DATA t195 TYPE REF TO zcl_lnt_expression_node.
        DATA(t196) = t166.
        t195 = t196.
        t194 = t195->get_first_token( ).
        t190 = t194.
      ENDIF.
      t165 = t190.
      t164 = t165.
      DATA(t197) = VALUE abap_bool( ).
      DATA t198 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t199) = t164.
      t198 = t199.
      DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t201.
      t200 = t201.
      DATA(t202) = VALUE abap_bool( ).
      DATA(t203) = t198.
      IF t203 IS INITIAL.
        t202 = abap_true.
      ENDIF.
      t197 = t202.
      IF t197 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t204 TYPE abap_bool.
      DATA t205 TYPE string.
      DATA t206 TYPE REF TO zcl_lnt_abstract_token.
      DATA t207 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t208) = t164.
      t207 = t208.
      t206 = t207.
      DATA t209 TYPE string.
      DATA(t210) = t206.
      t209 = t210->str.
      t205 = t209.
      DATA(t211) = |0|.
      t204 = xsdbool( t205 = t211 ).
      IF t204 = abap_true.
        DATA t212 TYPE string.
        DATA(t213) = |Table index starts from 1|.
        t212 = t213.
        DATA t214 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA t215 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        DATA(t216) = t1.
        DATA t217 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t218) = t164.
        t217 = t218.
        DATA(t219) = |1|.
        t215 = zcl_lnt_edit_helper=>replace_token( i_file = t216 i_token = t217 i_text = t219 ).
        t214 = t215.
        DATA t220 TYPE REF TO zcl_lnt_issue.
        CLEAR t220.
        DATA t221 TYPE REF TO zcl_lnt_issue.
        CLEAR t221.
        DATA(t222) = t1.
        DATA t223 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t224) = t164.
        t223 = t224.
        DATA(t225) = t212.
        DATA(t226) = VALUE string( ).
        DATA t227 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t227.
        DATA t228 TYPE string.
        DATA(t229) = |invalid_table_index|.
        t228 = t229.
        DATA t230 TYPE string.
        DATA(t231) = |Invalid Table Index|.
        t230 = t231.
        DATA t232 TYPE string.
        DATA(t233) = |Issues error for constant table index zero, as ABAP starts f|.
        t233 = t233 && |rom 1|.
        t232 = t233.
        DATA t234 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t234.
        DATA t235 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t235.
        DATA(t236) = abap_true.
        IF t236 = abap_true.
          DATA t237 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t238 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t239 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t239.
          t238 = t239.
          DATA(t240) = t238.
          DATA(t241) = |SingleFile|.
          t240->load( ).
          APPEND t241 TO t240->items.
          t240->save( ).
          DATA(t242) = t238.
          DATA(t243) = |Quickfix|.
          t242->load( ).
          APPEND t243 TO t242->items.
          t242->save( ).
          DATA(t244) = t238.
          t237 = t244.
          t235 = t237.
        ELSE.
          DATA t245 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t245.
          t235 = t245.
        ENDIF.
        t234 = t235.
        DATA t246 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t246.
        DATA t247 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t247.
        DATA(t248) = abap_true.
        IF t248 = abap_true.
          DATA(t249) = |DATA(first) = table[ 0 ].\nREAD TABLE gt_stack ASSIGNING <ls_|.
          t249 = t249 && |stack> INDEX 0.|.
          DATA(t250) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t250->has = abap_true.
          t250->value = t249.
          t247 = t250.
        ELSE.
          DATA t251 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t251.
          t247 = t251.
        ENDIF.
        t246 = t247.
        DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t252.
        DATA t253 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t253.
        DATA(t254) = abap_true.
        IF t254 = abap_true.
          DATA(t255) = |DATA(first) = table[ 1 ].\nREAD TABLE gt_stack ASSIGNING <ls_|.
          t255 = t255 && |stack> INDEX 1.|.
          DATA(t256) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t256->has = abap_true.
          t256->value = t255.
          t253 = t256.
        ELSE.
          DATA t257 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t257.
          t253 = t257.
        ENDIF.
        t252 = t253.
        DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t259.
        t258 = t259.
        DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t261.
        t260 = t261.
        DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t263.
        t262 = t263.
        t227 = NEW zcl_lnt_irule_metadata( i_key = t228 i_title = t230 i_short_description = t232 i_bad_example = t246 i_good_example = t252 i_extended_information = t258 i_tags = t234 i_pragma = t260 i_pseudo_comment = t262 ).
        CREATE OBJECT t227->zlnt_view_ownkeys_b0e8086400eb.
        t227->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t264.
        IF t227->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t227->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t264 ).
        ENDIF.
        DATA t265 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t265.
        IF t227->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t227->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t265 ).
        ENDIF.
        DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t266.
        IF t227->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t227->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t266 ).
        ENDIF.
        DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t267.
        IF t227->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t227->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t267 ).
        ENDIF.
        DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t268.
        IF t227->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t227->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t268 ).
        ENDIF.
        DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t269.
        IF t227->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t227->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t269 ).
        ENDIF.
        CREATE OBJECT t227->zlnt_json_ownkeys_70e5fd461788.
        t227->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t270) = |key|.
        DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t271.
        IF t227->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t227->zlnt_json_ownkeys_70e5fd461788->put( p0 = t270 p1 = t271 ).
        ENDIF.
        DATA(t272) = |title|.
        DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t273.
        IF t227->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t227->zlnt_json_ownkeys_70e5fd461788->put( p0 = t272 p1 = t273 ).
        ENDIF.
        DATA(t274) = |shortDescription|.
        DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t275.
        IF t227->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t227->zlnt_json_ownkeys_70e5fd461788->put( p0 = t274 p1 = t275 ).
        ENDIF.
        DATA(t276) = |tags|.
        DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t277.
        IF t227->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t227->zlnt_json_ownkeys_70e5fd461788->put( p0 = t276 p1 = t277 ).
        ENDIF.
        DATA(t278) = |badExample|.
        DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t279.
        IF t227->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t227->zlnt_json_ownkeys_70e5fd461788->put( p0 = t278 p1 = t279 ).
        ENDIF.
        DATA(t280) = |goodExample|.
        DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t281.
        IF t227->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t227->zlnt_json_ownkeys_70e5fd461788->put( p0 = t280 p1 = t281 ).
        ENDIF.
        t226 = t227->key.
        DATA t282 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t283) = me->conf.
        t282 = t283->zlnt_view_read_sr_15c06369f827( ).
        DATA t284 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t284.
        DATA(t285) = abap_true.
        IF t285 = abap_true.
          DATA(t286) = t214.
          t284 = t286.
        ELSE.
          DATA t287 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t287.
          t284 = t287.
        ENDIF.
        t221 = zcl_lnt_issue=>at_token( i_file = t222 i_token = t223 i_message_26cb = t225 i_key = t226 i_severity = t282 i_fix = t284 ).
        t220 = t221.
        DATA(t288) = t2.
        DATA(t289) = t220.
        t288->load( ).
        APPEND t289 TO t288->items.
        t288->save( ).
      ENDIF.
    ENDDO.
    DATA(t290) = t2.
    result = t290.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_invld_tbl_indx_cnf( me->g_c_i_s_r_in_tb_in_ts_in_tb_in( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_invld_tbl_indx_cnf( me->g_c_i_s_r_in_tb_in_ts_in_tb_in( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_invld_tbl_indx_cnf.
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
        t1 = NEW zcl_lnt_invld_tbl_indx_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_in_tb_in_ts_in_tb_in( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_in_tb_in_ts_in_tb_in( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1552_612790e805d8.
  ENDMETHOD.
ENDCLASS.
