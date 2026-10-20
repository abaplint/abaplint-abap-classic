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
    me->conf = NEW zcl_lnt_invld_tbl_indx_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t6 TYPE string.
    DATA(t7) = |Issues error for constant table index zero, as ABAP starts f|.
    t7 = t7 && |rom 1|.
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
    DATA(t23) = |DATA(first) = table[ 0 ].\nREAD TABLE gt_stack ASSIGNING <ls_|.
    t23 = t23 && |stack> INDEX 0.|.
    DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t24->has = abap_true.
    t24->value = t23.
    t20 = t24.
    DATA(t29) = |DATA(first) = table[ 1 ].\nREAD TABLE gt_stack ASSIGNING <ls_|.
    t29 = t29 && |stack> INDEX 1.|.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t29.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |invalid_table_index| i_title = |Invalid Table Index| i_short_description = t6 i_bad_example = t20 i_good_example = t30 i_extended_information = t32 i_tags = t8 i_pragma = t34 i_pseudo_comment = t36 ).
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

  METHOD g_c_i_s_r_in_tb_in_ts_in_tb_in.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_in_tb_in_ts_in_tb_in.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_in_tb_in_ts_in_tb_in.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    t4 = t1->structure.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
      result = t2.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zcl_lnt_structure_node.
    t20 = t4.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d101_98dd83adae1d.
    t18 = t20->find_all_expressions_recursive( i_type_9913 = t22 ).
    DATA t24 TYPE REF TO zcl_lnt_expression_node.
    DATA t25 TYPE REF TO object.
    DATA(t26) = VALUE i( ).
    DO.
      t18->load( ).
      IF t26 >= lines( t18->items ).
        EXIT.
      ENDIF.
      CLEAR t25.
      READ TABLE t18->items INDEX t26 + 1 INTO t25.
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
      DATA t31 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t31.
      DATA t33 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t33.
      DATA t35 TYPE REF TO zcl_lnt_expression_node.
      DATA(t38) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t35 = t24->find_direct_expression( i_type_9913 = t38 ).
      DATA t39 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t39.
      IF xsdbool( t35 IS INITIAL ) = abap_true.
        CLEAR t39.
      ELSE.
        DATA t44 TYPE REF TO zcl_lnt_expression_node.
        t44 = t35.
        DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
        t39 = t44->find_direct_expression( i_type_9913 = t46 ).
      ENDIF.
      t33 = t39.
      DATA t47 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t47.
      IF xsdbool( t33 IS INITIAL ) = abap_true.
        CLEAR t47.
      ELSE.
        DATA t52 TYPE REF TO zcl_lnt_expression_node.
        t52 = t33.
        DATA(t54) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
        t47 = t52->find_first_expression( i_type_9913 = t54 ).
      ENDIF.
      t31 = t47.
      DATA t55 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t55.
      IF xsdbool( t31 IS INITIAL ) = abap_true.
        CLEAR t55.
      ELSE.
        t55 = t31->get_first_token( ).
      ENDIF.
      t29 = t55.
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t65.
      IF xsdbool( t29 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      IF xsdbool( t29->str = |0| ) = abap_true.
        DATA t80 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t80 = zcl_lnt_edit_helper=>replace_token( i_file = t1 i_token = t29 i_text = |1| ).
        DATA t86 TYPE REF TO zcl_lnt_issue.
        CLEAR t86.
        DATA t88 TYPE REF TO zcl_lnt_abstract_token.
        t88 = t29.
        DATA(t91) = VALUE string( ).
        DATA t92 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t97 TYPE string.
        DATA(t98) = |Issues error for constant table index zero, as ABAP starts f|.
        t98 = t98 && |rom 1|.
        t97 = t98.
        DATA t99 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t99.
        DATA t103 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t103.
        t103->load( ).
        APPEND |SingleFile| TO t103->items.
        t103->save( ).
        t103->load( ).
        APPEND |Quickfix| TO t103->items.
        t103->save( ).
        t99 = t103.
        DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t111.
        DATA(t114) = |DATA(first) = table[ 0 ].\nREAD TABLE gt_stack ASSIGNING <ls_|.
        t114 = t114 && |stack> INDEX 0.|.
        DATA(t115) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t115->has = abap_true.
        t115->value = t114.
        t111 = t115.
        DATA t117 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t117.
        DATA(t120) = |DATA(first) = table[ 1 ].\nREAD TABLE gt_stack ASSIGNING <ls_|.
        t120 = t120 && |stack> INDEX 1.|.
        DATA(t121) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t121->has = abap_true.
        t121->value = t120.
        t117 = t121.
        DATA t123 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t123.
        DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t125.
        DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t127.
        t92 = NEW zcl_lnt_irule_metadata( i_key = |invalid_table_index| i_title = |Invalid Table Index| i_short_description = t97 i_bad_example = t111 i_good_example = t117 i_extended_information = t123 i_tags = t99 i_pragma = t125 i_pseudo_comment = t127 ).
        CREATE OBJECT t92->zlnt_view_ownkeys_b0e8086400eb.
        t92->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t129.
        t92->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t129 ).
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
        DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t136.
        t92->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t136 ).
        DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t138.
        IF t92->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t92->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t138 ).
        ENDIF.
        DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t140.
        IF t92->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t92->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t140 ).
        ENDIF.
        DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t142.
        IF t92->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t92->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t142 ).
        ENDIF.
        DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t144.
        IF t92->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t92->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t144 ).
        ENDIF.
        DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t146.
        IF t92->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t92->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t146 ).
        ENDIF.
        t91 = t92->key.
        t86 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t88 i_message_26cb = |Table index starts from 1| i_key = t91 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t80 ).
        t2->load( ).
        APPEND t86 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    DATA t155 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t156 TYPE REF TO zcl_lnt_structure_node.
    t156 = t4.
    DATA(t158) = zlnt_runtime_desc_78196487750d=>zlnt_member_d594_a2664c6b8771.
    t155 = t156->find_all_statements( i_type_9913 = t158 ).
    DATA t159 TYPE REF TO zcl_lnt_statement_node.
    DATA t160 TYPE REF TO object.
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
      DATA t166 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t166.
      DATA t168 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t168.
      DATA t170 TYPE REF TO zcl_lnt_expression_node.
      t170 = t159->find_expression_after_token( i_text = |INDEX| ).
      DATA t174 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t174.
      IF xsdbool( t170 IS INITIAL ) = abap_true.
        CLEAR t174.
      ELSE.
        DATA t179 TYPE REF TO zcl_lnt_expression_node.
        t179 = t170.
        DATA(t181) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
        t174 = t179->find_direct_expression( i_type_9913 = t181 ).
      ENDIF.
      t168 = t174.
      DATA t182 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t182.
      IF xsdbool( t168 IS INITIAL ) = abap_true.
        CLEAR t182.
      ELSE.
        DATA t187 TYPE REF TO zcl_lnt_expression_node.
        t187 = t168.
        DATA(t189) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
        t182 = t187->find_first_expression( i_type_9913 = t189 ).
      ENDIF.
      t166 = t182.
      DATA t190 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t190.
      IF xsdbool( t166 IS INITIAL ) = abap_true.
        CLEAR t190.
      ELSE.
        t190 = t166->get_first_token( ).
      ENDIF.
      t164 = t190.
      DATA t200 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t200.
      IF xsdbool( t164 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      IF xsdbool( t164->str = |0| ) = abap_true.
        DATA t215 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t215 = zcl_lnt_edit_helper=>replace_token( i_file = t1 i_token = t164 i_text = |1| ).
        DATA t221 TYPE REF TO zcl_lnt_issue.
        CLEAR t221.
        DATA t223 TYPE REF TO zcl_lnt_abstract_token.
        t223 = t164.
        DATA(t226) = VALUE string( ).
        DATA t227 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t232 TYPE string.
        DATA(t233) = |Issues error for constant table index zero, as ABAP starts f|.
        t233 = t233 && |rom 1|.
        t232 = t233.
        DATA t234 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t234.
        DATA t238 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t238.
        t238->load( ).
        APPEND |SingleFile| TO t238->items.
        t238->save( ).
        t238->load( ).
        APPEND |Quickfix| TO t238->items.
        t238->save( ).
        t234 = t238.
        DATA t246 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t246.
        DATA(t249) = |DATA(first) = table[ 0 ].\nREAD TABLE gt_stack ASSIGNING <ls_|.
        t249 = t249 && |stack> INDEX 0.|.
        DATA(t250) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t250->has = abap_true.
        t250->value = t249.
        t246 = t250.
        DATA t252 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t252.
        DATA(t255) = |DATA(first) = table[ 1 ].\nREAD TABLE gt_stack ASSIGNING <ls_|.
        t255 = t255 && |stack> INDEX 1.|.
        DATA(t256) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t256->has = abap_true.
        t256->value = t255.
        t252 = t256.
        DATA t258 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t258.
        DATA t260 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t260.
        DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t262.
        t227 = NEW zcl_lnt_irule_metadata( i_key = |invalid_table_index| i_title = |Invalid Table Index| i_short_description = t232 i_bad_example = t246 i_good_example = t252 i_extended_information = t258 i_tags = t234 i_pragma = t260 i_pseudo_comment = t262 ).
        CREATE OBJECT t227->zlnt_view_ownkeys_b0e8086400eb.
        t227->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t264.
        t227->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t264 ).
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
        DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t271.
        t227->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t271 ).
        DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t273.
        IF t227->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t227->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t273 ).
        ENDIF.
        DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t275.
        IF t227->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t227->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t275 ).
        ENDIF.
        DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t277.
        IF t227->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t227->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t277 ).
        ENDIF.
        DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t279.
        IF t227->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t227->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t279 ).
        ENDIF.
        DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t281.
        IF t227->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t227->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t281 ).
        ENDIF.
        t226 = t227->key.
        t221 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t223 i_message_26cb = |Table index starts from 1| i_key = t226 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t215 ).
        t2->load( ).
        APPEND t221 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_invld_tbl_indx_cnf( me->g_c_i_s_r_in_tb_in_ts_in_tb_in( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_invld_tbl_indx_cnf( me->g_c_i_s_r_in_tb_in_ts_in_tb_in( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_invld_tbl_indx_cnf.
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
        t1 = NEW zcl_lnt_invld_tbl_indx_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_in_tb_in_ts_in_tb_in( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_in_tb_in_ts_in_tb_in( i_file = i_file ) ).

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
